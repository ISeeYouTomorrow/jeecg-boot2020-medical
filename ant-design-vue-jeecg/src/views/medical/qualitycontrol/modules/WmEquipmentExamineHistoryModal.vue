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
        <!-- 巡检设备信息 -->
        <a-row>
          <a-col :span="12">
            <a-form-item label="设备名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.equipmentName" style="width: 100%;"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="设备编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.equipmentCode"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="设备型号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.equipmentModel"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="使用科室" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.useDept_dictText"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="使用人" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.chargePerson_dictText"></a-input>
            </a-form-item>
          </a-col>
        </a-row>

        <!-- 巡检信息 -->
        <a-row>
          <a-col :span="12">
            <a-form-item label="计划名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.examineName"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="巡检人" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-select-user-by-dep v-decorator="['examinePerson', validatorRules.examinePerson]" :trigger-change="true"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="巡检时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-date placeholder="请选择巡检时间" v-decorator="[ 'examineTime', validatorRules.examineTime]" :trigger-change="true" :show-time="true" date-format="YYYY-MM-DD HH:mm:ss" style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="巡检结果" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-dict-select-tag type="list" v-decorator="['examineResult', validatorRules.examineResult]" :trigger-change="true" dictCode="examine_result" placeholder="请选择巡检结果"/>
            </a-form-item>
          </a-col>
        </a-row>
        <a-row>
          <a-col :span="12">
            <a-form-item label="备注" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-textarea v-decorator="['remark', validatorRules.remark]" rows="4" placeholder="请输入备注"/>
            </a-form-item>
          </a-col>
        </a-row>
      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JDate from '@/components/jeecg/JDate'
  import JSelectUserByDep from '@/components/jeecgbiz/JSelectUserByDep'
  import JDictSelectTag from "@/components/dict/JDictSelectTag"

  export default {
    name: "WmEquipmentExamineHistoryModal",
    components: {
      JDate,
      JSelectUserByDep,
      JDictSelectTag,
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
          equipmentId: {rules: [
          ]},
          examineId: {rules: [
          ]},
          examinePerson: {rules: [
          ]},
          examineResult: {rules: [
          ]},
          remark: {rules: [
            {pattern:/^.{6,18}$/, message: '请输入6到18位任意字符!'},
          ]},
          examineTime: {rules: [
          ]},
        },
        url: {
          add: "/medical/wmEquipmentExamineHistory/add",
          edit: "/medical/wmEquipmentExamineHistory/edit",
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
        console.log('record == ', record)
        this.form.resetFields();
        this.model = Object.assign({}, record);
        this.visible = true;
        this.$nextTick(() => {
          this.form.setFieldsValue(pick(this.model,'examinePerson','examineResult','remark','examineTime'))
          if (!this.model.examinePerson) {
            this.form.setFieldsValue({'examinePerson':this.model["planPerson"]})
            this.form.setFieldsValue({'examineTime':this.model["planTime"]})
          }else{
            this.form.setFieldsValue({'examinePerson':this.model["examinePerson"]})
            this.form.setFieldsValue({'examineTime':this.model["examineTime"]})
          }
        })
      },
      close () {
        this.$emit('close');
        this.visible = false;
      },
      handleOk () {
        const that = this;
        // 'equipmentId','examineId',
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
      }

    }
  }
</script>