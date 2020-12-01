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

        <a-form-item label="设备保养计划" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="list" v-decorator="['maintenancePlanId', validatorRules.maintenancePlanId]" :trigger-change="true" dictCode="wm_maintenance_plan,paln_name,id" placeholder="请选择设备保养计划"/>
        </a-form-item>
        <a-form-item label="保养设备id" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'equipmentId', validatorRules.equipmentId]" placeholder="请输入保养设备id"></a-input>
        </a-form-item>
        <a-form-item label="保养厂商" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'manufacturerId', validatorRules.manufacturerId]" placeholder="请输入保养厂商"></a-input>
        </a-form-item>
        <a-form-item label="保养人" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'manufacturerPerson', validatorRules.manufacturerPerson]" placeholder="请输入保养人"></a-input>
        </a-form-item>
        <a-form-item label="保养状态" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'maintenanceStatus', validatorRules.maintenanceStatus]" placeholder="请输入保养状态"></a-input>
        </a-form-item>
        <a-form-item label="保养时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择保养时间" v-decorator="[ 'maintenanceTime', validatorRules.maintenanceTime]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="保养费用" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'maintenanceFee', validatorRules.maintenanceFee]" placeholder="请输入保养费用" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="保养结果" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="list" v-decorator="['maintenanceResult', validatorRules.maintenanceResult]" :trigger-change="true" dictCode="maintenance_measure_result" placeholder="请选择保养结果"/>
        </a-form-item>

      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JDate from '@/components/jeecg/JDate'  
  import JDictSelectTag from "@/components/dict/JDictSelectTag"

  export default {
    name: "WmMaintenanceHistoryModal",
    components: { 
      JDate,
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
          maintenancePlanId: {rules: [
          ]},
          equipmentId: {rules: [
          ]},
          manufacturerId: {rules: [
            {required: true, message: '请输入保养厂商!'},
          ]},
          manufacturerPerson: {rules: [
            {required: true, message: '请输入保养人!'},
          ]},
          maintenanceStatus: {rules: [
            {required: true, message: '请输入保养状态!'},
          ]},
          maintenanceTime: {rules: [
          ]},
          maintenanceFee: {rules: [
           {pattern:/^(([1-9][0-9]*)|([0]\.\d{0,2}|[1-9][0-9]*\.\d{0,2}))$/, message: '请输入正确的金额!'},
          ]},
          maintenanceResult: {rules: [
            {required: true, message: '请输入保养结果!'},
          ]},
        },
        url: {
          add: "/medical/wmMaintenanceHistory/add",
          edit: "/medical/wmMaintenanceHistory/edit",
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
          this.form.setFieldsValue(pick(this.model,'maintenancePlanId','equipmentId','manufacturerId','manufacturerPerson','maintenanceStatus','maintenanceTime','maintenanceFee','maintenanceResult','maintenanceCheck'))
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
        this.form.setFieldsValue(pick(row,'maintenancePlanId','equipmentId','manufacturerId','manufacturerPerson','maintenanceStatus','maintenanceTime','maintenanceFee','maintenanceResult','maintenanceCheck'))
      },

      
    }
  }
</script>