<template>
  <a-modal
    :title="title"
    :width="width"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleOk"
    @cancel="handleCancel"
    cancelText="关闭">
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">

        <a-form-item label="巡检计划名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'examineName', validatorRules.examineName]" placeholder="请输入巡检计划名称"></a-input>
        </a-form-item>
        <a-form-item label="巡检科室" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-select-depart pla v-decorator="['examineDept', validatorRules.examineDept]" :trigger-change="true"/>
        </a-form-item>
        <a-form-item label="设备类型" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-tree-select dict="wm_equipment_type,type_name,id"
                         pidField="pid"
                         pidValue="0"
                         hasChildField="has_child" v-decorator="[ 'equipmentType', validatorRules.equipmentType]"
                         placeholder="请输入设备类型(默认全部)"></j-tree-select>
        </a-form-item>
        <a-form-item label="巡检区域" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-tree-select dict="wm_area_space,area_name,id"
                         pidField="pid"
                         pidValue="0"
                         hasChildField="has_child" v-decorator="[ 'examineArea', validatorRules.examineArea]"
                         placeholder="请选择巡检区域(默认全部)"></j-tree-select>
        </a-form-item>
        <a-form-item label="巡检人" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-select-user-by-dep v-decorator="['examinePerson', validatorRules.examinePerson]" :trigger-change="true"/>
        </a-form-item>
        <a-form-item label="巡检时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择巡检时间" v-decorator="[ 'examineTime', validatorRules.examineTime]" :trigger-change="true" :show-time="true" date-format="YYYY-MM-DD HH:mm:ss" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="巡检备注" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-textarea v-decorator="['examineRemark', validatorRules.examineRemark]" rows="4" placeholder="请输入巡检备注"/>
        </a-form-item>

      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

  import { httpAction } from '@api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JDate from '@comp/jeecg/JDate'
  import JSelectUserByDep from '@comp/jeecgbiz/JSelectUserByDep'
  import JDictSelectTag from "@comp/dict/JDictSelectTag"
  import JSelectDepart from '@/components/jeecgbiz/JSelectDepart'
  import JTreeSelect from "@comp/jeecg/JTreeSelect"
  export default {
    name: "WmEquipmentExamineModal",
    components: {
      JDate,
      JSelectUserByDep,
      JDictSelectTag,
      JSelectDepart,
      JTreeSelect
    },
    data () {
      return {
        form: this.$form.createForm(this),
        title:"操作",
        width:800,
        visible: false,
        model: {},
        labelCol: {
          xs: { span: 24 },
          sm: { span: 5 },
        },
        wrapperCol: {
          xs: { span: 24 },
          sm: { span: 16 },
        },
        confirmLoading: false,
        validatorRules: {
          examineName: {rules: [
              {required: true, message: '请输入巡检计划名称!'},
              {
                validator: (rule, value, callback) => {
                  let pattern = /^.{4,18}$/
                  if (!pattern.test(value)) {
                    callback('请输入6到18位任意字符')
                  } else {
                    validateDuplicateValue('wm_equipment_examine', 'examine_name', value, this.model.id, callback)
                  }
                }
              }
          ]},
          examineDept: {rules: [
            {required: true, message: '请输入巡检科室!'},
          ]},
          equipmentType: {rules: [
            {required: true, message: '请输入设备类型!'},
          ]},
          examineArea: {rules: [
            {required: true, message: '请输入巡检区域!'},
          ]},
          examinePerson: {rules: [
            {required: true, message: '请输入巡检人!'},
          ]},
          examineTime: {rules: [
          ]},
          examineRemark: {rules: [
            {pattern:/^.{6,18}$/, message: '请输入6到18位任意字符!'},
          ]},
        },
        url: {
          add: "/medical/wmEquipmentExamine/add",
          edit: "/medical/wmEquipmentExamine/edit",
        }
      }
    },
    created () {
    },
    methods: {
      add () {
        this.edit({});
      },
      edit (record) {
        this.form.resetFields();
        this.model = Object.assign({}, record);
        this.visible = true;
        this.$nextTick(() => {
          this.form.setFieldsValue(pick(this.model,'examineName','examineDept','equipmentType','examineArea','examinePerson','examineTime','examineRemark','examineState'))
        })
      },
      close () {
        this.$emit('close');
        this.visible = false;
      },
      handleOk () {
        const that = this;
        // 触发表单验证
        this.form.validateFields((err, values) => {
          if (!err) {
            that.confirmLoading = true;
            let httpurl = '';
            let method = '';
            if(!this.model.id){
              httpurl+=this.url.add;
              method = 'post';
            }else{
              httpurl+=this.url.edit;
               method = 'put';
            }
            let formData = Object.assign(this.model, values);
            console.log("表单提交数据",formData)
            httpAction(httpurl,formData,method).then((res)=>{
              if(res.success){
                that.$message.success(res.message);
                that.$emit('ok');
              }else{
                that.$message.warning(res.message);
              }
            }).finally(() => {
              that.confirmLoading = false;
              that.close();
            })
          }

        })
      },
      handleCancel () {
        this.close()
      },
      popupCallback(row){
        this.form.setFieldsValue(pick(row,'examineName','examineDept','equipmentType','examineArea','examinePerson','examineTime','examineRemark','examineState'))
      },


    }
  }
</script>