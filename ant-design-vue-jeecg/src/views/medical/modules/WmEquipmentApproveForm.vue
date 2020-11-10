<template>
  <div>
    <a-form :form="form">
      <a-row>

        <a-col :span="12">
          <a-form-item label="申购时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <j-date placeholder="请选择申购时间" v-decorator="[ 'subscribeTime', validatorRules.subscribeTime]" :trigger-change="true" style="width: 100%"/>
          </a-form-item>
        </a-col>
        <a-col :span="12">
          <a-form-item label="申购科室" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <j-select-depart v-decorator="['subscribeDept']" :trigger-change="true"/>
          </a-form-item>
        </a-col>
        <a-col :span="12">
          <a-form-item label="申购人" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <j-select-user-by-dep v-decorator="['subscribePerson']" :trigger-change="true"/>
<!--            <j-dict-select-tag type="list" v-decorator="['subscribePerson']" :trigger-change="true" dictCode="" placeholder="请选择申购人"/>-->
          </a-form-item>
        </a-col>
        <a-col :span="12">
          <a-form-item label="审批文件" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <j-upload v-decorator="['approveFile']" :trigger-change="true"></j-upload>
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
  import JDictSelectTag from "@/components/dict/JDictSelectTag"
  import JSelectDepart from '@/components/jeecgbiz/JSelectDepart'
  import JSelectUserByDep from '@/components/jeecgbiz/JSelectUserByDep'

  export default {
    name: 'WmEquipmentApproveForm',
    components: { 
      JDate,
      JUpload,
      JDictSelectTag,
      JSelectDepart,
      JSelectUserByDep,
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
          subscribeTime:{},
          subscribeDept:{},
          subscribePerson:{},
          approveFile:{},
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
        console.log("WmEquipmentApproveForm-edit",this.model);
        let fieldval = pick(this.model,'subscribeTime','subscribeDept','subscribePerson','approveFile')
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
            this.$emit("validateError","设备审批信息表单校验未通过");
          }
        })
        console.log("设备审批信息表单数据集",formdata_arr);
        return formdata_arr;
      },
      popupCallback(row){
        this.form.setFieldsValue(pick(row,'subscribeTime','subscribeDept','subscribePerson','approveFile'))
      },
      clearFormData(){
        this.form.resetFields()
        this.model={}
      }
    
    }
  }
</script>
