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

        <a-form-item label="厂商名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'manufacturerName', validatorRules.manufacturerName]" placeholder="请输入厂商名称"></a-input>
        </a-form-item>
        <a-form-item label="统一机构信用代码" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'unionCreditCode', validatorRules.unionCreditCode]" placeholder="请输入统一机构信用代码"></a-input>
        </a-form-item>
        <a-form-item label="厂商地址" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'manufacturerAddress', validatorRules.manufacturerAddress]" placeholder="请输入厂商地址"></a-input>
        </a-form-item>
        <a-form-item label="法人" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'leagalPerson', validatorRules.leagalPerson]" placeholder="请输入法人"></a-input>
        </a-form-item>
        <a-form-item label="法人联系方式" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'leagalPersonPhone', validatorRules.leagalPersonPhone]" placeholder="请输入法人联系方式"></a-input>
        </a-form-item>
        <a-form-item label="联系人" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'linkPerson', validatorRules.linkPerson]" placeholder="请输入联系人"></a-input>
        </a-form-item>
        <a-form-item label="联系方式" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'linkPersonPhone', validatorRules.linkPersonPhone]" placeholder="请输入联系方式"></a-input>
        </a-form-item>
        <a-form-item label="厂商属性" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-multi-select-tag type="checkbox" v-decorator="['manufacturerFeature', validatorRules.manufacturerFeature]" :trigger-change="true" dictCode="manufactureDict" placeholder="请选择厂商属性"/>
        </a-form-item>

      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JMultiSelectTag from "@/components/dict/JMultiSelectTag"

  export default {
    name: "WmManufacturerInfoModal",
    components: { 
      JMultiSelectTag,
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
          manufacturerName: {rules: [
            {required: true, message: '请输入厂商名称!'},
          ]},
          unionCreditCode: {rules: [
            {required: true, message: '请输入统一机构信用代码!'},
          ]},
          manufacturerAddress: {rules: [
          ]},
          leagalPerson: {rules: [
            {required: true, message: '请输入法人!'},
          ]},
          leagalPersonPhone: {rules: [
            {required: true, message: '请输入法人联系方式!'},
            {pattern:/^1[3456789]\d{9}$/, message: '请输入正确的手机号码!'},
          ]},
          linkPerson: {rules: [
            {required: true, message: '请输入联系人!'},
          ]},
          linkPersonPhone: {rules: [
            {required: true, message: '请输入联系方式!'},
            {pattern:/^1[3456789]\d{9}$/, message: '请输入正确的手机号码!'},
          ]},
          manufacturerFeature: {rules: [
            {required: true, message: '请输入厂商属性!'},
          ]},
        },
        url: {
          add: "/medical/wmManufacturerInfo/add",
          edit: "/medical/wmManufacturerInfo/edit",
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
          this.form.setFieldsValue(pick(this.model,'manufacturerName','unionCreditCode','manufacturerAddress','leagalPerson','leagalPersonPhone','linkPerson','linkPersonPhone','manufacturerFeature'))
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
        this.form.setFieldsValue(pick(row,'manufacturerName','unionCreditCode','manufacturerAddress','leagalPerson','leagalPersonPhone','linkPerson','linkPersonPhone','manufacturerFeature'))
      },

      
    }
  }
</script>