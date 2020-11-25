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
        <a-col :span="0">
          <a-form-item label="转科设备" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-input v-decorator="['equipmentId', validatorRules.equipmentId]"  style="width: 100%;"/>
          </a-form-item>
          <a-form-item label="原启用时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-input disabled v-decorator="['oldStartTime', validatorRules.oldStartTime]"></a-input>
          </a-form-item>
        </a-col>
        <a-form-item label="转科设备" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <j-select-biz-component @select="changeEquipment" v-bind="equipmentConfigs" value="" :multiple="selectEquipment.multiple" :display-key="selectEquipment.displayKey"/>
        </a-form-item>
        <a-form-item label="资产编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input disabled v-model="equipmentRow.equipmentCode"></a-input>
        </a-form-item>
        <a-form-item label="原科室" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input disabled v-decorator="['oldDept', validatorRules.oldDept]"></a-input>
        </a-form-item>
        <a-form-item label="原使用人" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input disabled v-decorator="['oldPerson', validatorRules.oldPerson]"></a-input>
        </a-form-item>
        <a-form-item label="原位置" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input disabled v-decorator="['oldArea', validatorRules.oldArea]"></a-input>
        </a-form-item>

        <a-form-item label="转入科室" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-select-depart v-decorator="['transferDept', validatorRules.transferDept]" :trigger-change="true"/>
        </a-form-item>
        <a-form-item label="接收人" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-select-user-by-dep v-decorator="['transferPerson', validatorRules.transferPerson]" :trigger-change="true" :multi="selectMulti"/>
        </a-form-item>
        <a-form-item label="接收位置" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-tree-select dict="wm_area_space,area_name,id"
                         pidField="pid"
                         pidValue="0"
                         hasChildField="has_child" v-decorator="[ 'transferArea', validatorRules.transferArea]"
                         placeholder="请输入安放位置"></j-tree-select>
        </a-form-item>
        <a-form-item label="转科附件" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload :multiple="multiple" :biz-path="bizPath" v-decorator="['transferFile', validatorRules.transferFile]" :trigger-change="true"></j-upload>
        </a-form-item>
        <a-form-item label="转科备注" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-textarea v-decorator="['remark', validatorRules.remark]" rows="4" placeholder="请输入转科备注"/>
        </a-form-item>

      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import JUpload from '@/components/jeecg/JUpload'
  import JSelectDepart from '@/components/jeecgbiz/JSelectDepart'
  import JSelectUserByDep from '@/components/jeecgbiz/JSelectUserByDep'
  import JTreeSelect from "@comp/jeecg/JTreeSelect"
  import JSelectBizComponent from '@/components/jeecgbiz/JSelectBizComponent'

  export default {
    name: "WmEquipmentTransferModal",
    components: { 
      JUpload,
      JSelectDepart,
      JSelectUserByDep,
      JTreeSelect,
      JSelectBizComponent,
    },
    data () {
      return {
        multiple: false,
        selectMulti: false,
        equipmentEditable: true,
        /**
         * 选择的设备信息
         */
        equipmentRow: {
          id: '',
          equipmentName: '',
          equipmentModel: '',
          equipmentCode: '',
          equipmentType: '',
          chargePerson_dictText: '',
          useDept_dictText: '',
          chargeArea_dictText: ''
        },
        selectEquipment: {
          value: '',
          multiple: false,
          displayKey: 'equipmentName',
          settings: {
            name: '公共设备选择',
            displayKey: 'equipmentName',
            returnKeys: ['id', 'equipmentName','equipmentModel','equipmentCode'],//返回出去的数据，通常是id
            listUrl: '/medical/wmEquipmentInfo/listUsed',//查询数据的接口
            queryParamCode: 'equipmentName',//搜索定义，通过name实体类字段搜索记录
            queryParamText: '设备名称',//相当于label
            columns: [//返回的记录根据此处配置显示出来，此处显示俩个字段
              { title: '名称', dataIndex: 'equipmentName', align: 'center', width: 120 },
              // { title: '类型', dataIndex: 'equipmentType', align: 'center', width: 120 },
              { title: '型号', dataIndex: 'equipmentModel', align: 'center', width: 120 },
              { title: '编号', dataIndex: 'equipmentCode', align: 'center', width: 120 }

            ]
          }
        },
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
            {required: true, message: '请选择设备!'},
          ]},
          oldDept: {rules: [
            {required: true, message: '请选择设备!'},
          ]},
          oldPerson: {rules: [
            {required: true, message: '请选择设备'},
          ]},
          oldArea: {rules: [
              {required: true, message: '请选择设备'},
            ]},
          oldStartTime: {
            // rules: [
            //   {required: true, message: ''},
            // ]
          },
          transferDept: {rules: [
            {required: true, message: '请输入转入科室!'},
          ]},
          transferPerson: {rules: [
            {required: true, message: '请输入接收人!'},
          ]},
          transferArea: {rules: [
            {required: true, message: '请输入接收位置!'},
          ]},
          transferFile: {rules: [
          ]},
          remark: {rules: [
           {pattern:/^.{6,50}$/, message: '请输入6到50位任意字符!'},
          ]},
        },
        url: {
          add: "/medical/wmEquipmentTransfer/add",
          edit: "/medical/wmEquipmentTransfer/edit",
        }
      }
    },
    created () {
    },
    computed:{
      /**
       * 文件路径
       */
      bizPath() {
        let date = new Date()
        let year = date.getFullYear()
        let mon = date.getMonth()+1
        mon = mon<10?"0"+mon:mon
        let day = date.getDate()
        day = day<10?"0"+day:day
        let temp = year+"-"+mon+"-"+day
        let bizPath = "transfer/"+temp+"/"
        // console.log('bizPath -------> ', bizPath)
        return bizPath
      },
      equipmentConfigs() {
        return Object.assign({ value: this.selectEquipment.value }, this.selectEquipment.settings, this.$attrs)
      }
    },
    methods: {
      /**
       * 选择数据回调方法
       * @param rows
       */
      changeEquipment(rows) {
        // console.log('select data -------> ', rows)
        if (rows && rows.length > 0) {
          this.equipmentRow = rows[0]
        }else{
          this.equipmentRow = {}
        }
        this.form.setFieldsValue({'equipmentId': this.equipmentRow.id})
        this.form.setFieldsValue({'oldDept': this.equipmentRow.useDept_dictText})
        this.form.setFieldsValue({'oldPerson': this.equipmentRow.chargePerson_dictText})
        this.form.setFieldsValue({'oldArea': this.equipmentRow.chargeArea_dictText})
        this.form.setFieldsValue({'oldStartTime': this.equipmentRow.startUseTime})
      },
      add () {
        // this.equipmentRow = {}
        this.edit({});
      },
      edit (record) {
        this.form.resetFields();
        this.model = Object.assign({}, record);
        this.visible = true;
        this.$nextTick(() => {
          this.form.setFieldsValue(pick(this.model,'equipmentId','oldDept','oldPerson','oldStartTime','oldArea','transferDept','transferPerson','transferArea','transferFile','remark'))
          //添加选择
          if (!(this.model.id)) {
            // console.log('this.equipmentRow ----> ',this.equipmentRow)
            if (Object.keys(this.equipmentRow).length > 0) {
              this.changeEquipment([this.equipmentRow])
            }
          }
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
            //todo .. 校验转科信息
            let formData = Object.assign(this.model, values);

            formData["oldDept"] = this.equipmentRow.useDept
            formData["oldPerson"] = this.equipmentRow.chargePerson
            formData["oldArea"] = this.equipmentRow.chargeArea
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