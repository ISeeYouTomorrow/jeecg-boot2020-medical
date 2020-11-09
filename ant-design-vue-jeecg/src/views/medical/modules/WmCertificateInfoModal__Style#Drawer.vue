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

        <a-form-item label="证书名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'certificateName', validatorRules.certificateName]" placeholder="请输入证书名称"></a-input>
        </a-form-item>
        <a-form-item label="证书编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'certificateCode', validatorRules.certificateCode]" placeholder="请输入证书编号"></a-input>
        </a-form-item>
        <a-form-item label="所属厂商" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="list" v-decorator="['wmManufacturerId', validatorRules.wmManufacturerId]" :trigger-change="true" dictCode="wm_manufacturer_info,," placeholder="请选择所属厂商"/>
        </a-form-item>
        <a-form-item label="到期时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择到期时间" v-decorator="[ 'expireTime', validatorRules.expireTime]" :trigger-change="true" :show-time="true" date-format="YYYY-MM-DD HH:mm:ss" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="证书附件" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="['certificateFile', validatorRules.certificateFile]" :trigger-change="true"></j-upload>
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
  import JDictSelectTag from "@/components/dict/JDictSelectTag"
  
  export default {
    name: "WmCertificateInfoModal",
    components: { 
      JDate,
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
          certificateName: {rules: [
            {required: true, message: '请输入证书名称!'},
          ]},
          certificateCode: {rules: [
            {required: true, message: '请输入证书编号!'},
          ]},
          wmManufacturerId: {rules: [
            {required: true, message: '请输入所属厂商!'},
          ]},
          expireTime: {rules: [
            {required: true, message: '请输入到期时间!'},
          ]},
          certificateFile: {rules: [
            {required: true, message: '请输入证书附件!'},
          ]},
        },
        url: {
          add: "/medical/wmCertificateInfo/add",
          edit: "/medical/wmCertificateInfo/edit",
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
          this.form.setFieldsValue(pick(this.model,'certificateName','certificateCode','wmManufacturerId','expireTime','certificateFile'))
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
        this.form.setFieldsValue(pick(row,'certificateName','certificateCode','wmManufacturerId','expireTime','certificateFile'))
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