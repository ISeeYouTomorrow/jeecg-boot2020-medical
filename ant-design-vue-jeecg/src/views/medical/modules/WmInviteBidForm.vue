<template>
  <div>
    <a-form :form="form">
      <a-row>

        <a-col :span="12">
          <a-form-item label="代理机构" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-input v-decorator="[ 'proxyOrganization', validatorRules.proxyOrganization]" placeholder="请输入代理机构"></a-input>
          </a-form-item>
        </a-col>
        <a-col :span="12">
          <a-form-item label="开标时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <j-date placeholder="请选择开标时间" v-decorator="[ 'bidTime', validatorRules.bidTime]" :trigger-change="true" style="width: 100%"/>
          </a-form-item>
        </a-col>
        <a-col :span="12">
          <a-form-item label="招标文件" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <j-upload v-decorator="['bidFile']" :trigger-change="true"></j-upload>
          </a-form-item>
        </a-col>
      </a-row>
    </a-form>
  </div>
</template>
<script>
  import pick from 'lodash.pick'
  import { getAction } from '@/api/manage'
  import JDate from '@/components/jeecg/JDate'  
  import JUpload from '@/components/jeecg/JUpload'

  export default {
    name: 'WmInviteBidForm',
    components: { 
      JDate,
      JUpload,
    },
    data () {
      return {
        form: this.$form.createForm(this),
        model: {},
        labelCol: {
          span: 6
        },
        wrapperCol: {
          span: 16
        },
        labelCol2: {
          span: 3
        },
        wrapperCol2: {
          span: 20
        },
        confirmLoading: false,
        validatorRules:{
          proxyOrganization:{rules: [{ required: true, message: '请输入代理机构!' }]},
          bidTime:{rules: [{ required: true, message: '请输入开标时间!' }]},
          bidFile:{},
        },
        
      }
    },
    methods:{
      initFormData(url,id){
        this.clearFormData()
        if(!id){
          this.edit({})
        }else{
          getAction(url,{id:id}).then(res=>{
            if(res.success){
              let records = res.result
              if(records && records.length>0){
                this.edit(records[0])
              }
            }
          })
        }
      },
      edit(record){
        this.model = Object.assign({}, record)
        console.log("WmInviteBidForm-edit",this.model);
        let fieldval = pick(this.model,'proxyOrganization','bidTime','bidFile')
        this.$nextTick(() => {
          this.form.setFieldsValue(fieldval)
        })
      },
      getFormData(){
        let formdata_arr = []
        this.form.validateFields((err, values) => {
          if (!err) {
            let formdata = Object.assign(this.model, values)
            let isNullObj = true
            Object.keys(formdata).forEach(key=>{
              if(formdata[key]){
                isNullObj = false
              }
            })
            if(!isNullObj){
              formdata_arr.push(formdata)
            }
          }else{
            this.$emit("validateError","设备招标信息表单校验未通过");
          }
        })
        console.log("设备招标信息表单数据集",formdata_arr);
        return formdata_arr;
      },
      popupCallback(row){
        this.form.setFieldsValue(pick(row,'proxyOrganization','bidTime','bidFile'))
      },
      clearFormData(){
        this.form.resetFields()
        this.model={}
      }
    
    }
  }
</script>
