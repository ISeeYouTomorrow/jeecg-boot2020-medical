<template>
  <a-drawer
    :title="title"
    :width="width"
    placement="right"
    :closable="false"
    @close="close"
    :visible="visible">
  
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">

        <a-form-item label="维修设备" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-popup
            v-decorator="['equipmentId', validatorRules.equipmentId]"
            :trigger-change="true"
            org-fields=""
            dest-fields=""
            code=""
            @callback="popupCallback"/>
        </a-form-item>
        <a-form-item label="报修科室" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'applyDept', validatorRules.applyDept]" placeholder="请输入报修科室"></a-input>
        </a-form-item>
        <a-form-item label="报修人" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'applyPerson', validatorRules.applyPerson]" placeholder="请输入报修人"></a-input>
        </a-form-item>
        <a-form-item label="问题类型" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="list" v-decorator="['problemType', validatorRules.problemType]" :trigger-change="true" dictCode="problem_type" placeholder="请选择问题类型"/>
        </a-form-item>
        <a-form-item label="问题描述" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'problemRemark', validatorRules.problemRemark]" placeholder="请输入问题描述"></a-input>
        </a-form-item>
        <a-form-item label="问题图片" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="['problemPictures', validatorRules.problemPictures]" :trigger-change="true"></j-upload>
        </a-form-item>
        <a-form-item label="维修单位" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'maintenanceProducer', validatorRules.maintenanceProducer]" placeholder="请输入维修单位"></a-input>
        </a-form-item>
        <a-form-item label="维修人" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'maintenancePerson', validatorRules.maintenancePerson]" placeholder="请输入维修人"></a-input>
        </a-form-item>
        <a-form-item label="预计时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'maintenanceDate', validatorRules.maintenanceDate]" placeholder="请输入预计时间"></a-input>
        </a-form-item>
        <a-form-item label="维修费用" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'maintenanceFee', validatorRules.maintenanceFee]" placeholder="请输入维修费用" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="维修备注" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'maintenanceRemark', validatorRules.maintenanceRemark]" placeholder="请输入维修备注"></a-input>
        </a-form-item>
        <a-form-item label="维修结果" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="list" v-decorator="['maintenanceResult', validatorRules.maintenanceResult]" :trigger-change="true" dictCode="maintenance_result,," placeholder="请选择维修结果"/>
        </a-form-item>
        
      </a-form>
    </a-spin>
    <a-button type="primary" @click="handleOk">确定</a-button>
    <a-button type="primary" @click="handleCancel">取消</a-button>
  </a-drawer>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JUpload from '@/components/jeecg/JUpload'
  import JDictSelectTag from "@/components/dict/JDictSelectTag"
  
  export default {
    name: "WmMaintenanceInfoModal",
    components: { 
      JUpload,
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
            {required: true, message: '请输入维修设备!'},
          ]},
          applyDept: {rules: [
            {required: true, message: '请输入报修科室!'},
          ]},
          applyPerson: {rules: [
            {required: true, message: '请输入报修人!'},
          ]},
          problemType: {rules: [
            {required: true, message: '请输入问题类型!'},
          ]},
          problemRemark: {rules: [
           {pattern:/^.{6,16}$/, message: '请输入6到16位任意字符!'},
          ]},
          problemPictures: {rules: [
          ]},
          maintenanceProducer: {rules: [
          ]},
          maintenancePerson: {rules: [
          ]},
          maintenanceDate: {rules: [
          ]},
          maintenanceFee: {rules: [
           {pattern:/^(([1-9][0-9]*)|([0]\.\d{0,2}|[1-9][0-9]*\.\d{0,2}))$/, message: '请输入正确的金额!'},
          ]},
          maintenanceRemark: {rules: [
           {pattern:/^.{6,16}$/, message: '请输入6到16位任意字符!'},
          ]},
          maintenanceResult: {rules: [
          ]},
        },
        url: {
          add: "/medical/wmMaintenanceInfo/add",
          edit: "/medical/wmMaintenanceInfo/edit",
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
          this.form.setFieldsValue(pick(this.model,'equipmentId','applyDept','applyPerson','problemType','problemRemark','problemPictures','maintenanceStatus','maintenanceProducer','maintenancePerson','maintenanceDate','maintenanceFee','maintenanceRemark','maintenanceResult'))
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
        this.form.setFieldsValue(pick(row,'equipmentId','applyDept','applyPerson','problemType','problemRemark','problemPictures','maintenanceStatus','maintenanceProducer','maintenancePerson','maintenanceDate','maintenanceFee','maintenanceRemark','maintenanceResult'))
      }
      
    }
  }
</script>

<style lang="less" scoped>
/** Button按钮间距 */
  .ant-btn {
    margin-left: 30px;
    margin-bottom: 30px;
    float: right;
  }
</style>