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

        <a-form-item label="合同名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'contractName', validatorRules.contractName]" placeholder="请输入合同名称"></a-input>
        </a-form-item>
        <a-form-item label="合同编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'contractCode', validatorRules.contractCode]" placeholder="请输入合同编号"></a-input>
        </a-form-item>
        <a-form-item label="所属厂商" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'wmManufacturerId', validatorRules.wmManufacturerId]" placeholder="请输入所属厂商"></a-input>
        </a-form-item>
        <a-form-item label="合同额度" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'contractLimit', validatorRules.contractLimit]" placeholder="请输入合同额度" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="签订日期" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择签订日期" v-decorator="[ 'contractTime', validatorRules.contractTime]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="合同附件" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="['contractFile', validatorRules.contractFile]" :trigger-change="true"></j-upload>
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
  import JDate from '@/components/jeecg/JDate'  
  import JUpload from '@/components/jeecg/JUpload'
  
  export default {
    name: "WmContractInfoModal",
    components: { 
      JDate,
      JUpload,
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
          contractName: {rules: [
            {required: true, message: '请输入合同名称!'},
            {pattern:/^.{6,18}$/, message: '请输入6到18位任意字符!'},
          ]},
          contractCode: {rules: [
            {required: true, message: '请输入合同编号!'},
            {pattern:/^.{6,18}$/, message: '请输入6到18位任意字符!'},
          ]},
          wmManufacturerId: {rules: [
            {required: true, message: '请输入所属厂商!'},
          ]},
          contractLimit: {rules: [
            {required: true, message: '请输入合同额度!'},
           {pattern:/^(([1-9][0-9]*)|([0]\.\d{0,2}|[1-9][0-9]*\.\d{0,2}))$/, message: '请输入正确的金额!'},
          ]},
          contractTime: {rules: [
          ]},
          contractFile: {rules: [
          ]},
        },
        url: {
          add: "/medical/wmContractInfo/add",
          edit: "/medical/wmContractInfo/edit",
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
          this.form.setFieldsValue(pick(this.model,'contractName','contractCode','wmManufacturerId','contractLimit','contractTime','contractFile'))
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
        this.form.setFieldsValue(pick(row,'contractName','contractCode','wmManufacturerId','contractLimit','contractTime','contractFile'))
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