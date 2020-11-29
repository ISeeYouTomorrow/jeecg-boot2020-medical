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

        <a-form-item label="计划名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'palnName', validatorRules.palnName]" placeholder="请输入计划名称"></a-input>
        </a-form-item>
        <a-form-item label="计划时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择计划时间" v-decorator="[ 'planTime', validatorRules.planTime]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="预估经费" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'planFee', validatorRules.planFee]" placeholder="请输入预估经费" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="备注信息" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-textarea v-decorator="[ 'planRemark', validatorRules.planRemark]" placeholder="请输入备注信息"></a-textarea>
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
    name: "WmMaintenancePlanModal",
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
          palnName: {rules: [
            {required: true, message: '请输入计划名称!'},
            {pattern:/^.{3,18}$/, message: '请输入3到18位任意字符!'},
          ]},
          planTime: {rules: [
              {required: true, message: '请选择计划时间!'},
          ]},
          planFee: {rules: [
            {required: true, message: '请输入预估经费!'},
           {pattern:/^(([1-9][0-9]*)|([0]\.\d{0,2}|[1-9][0-9]*\.\d{0,2}))$/, message: '请输入正确的金额!'},
          ]},
          planRemark: {rules: [
            {pattern:/^.{6,50}$/, message: '请输入6到18位任意字符!'},
          ]},
        },
        url: {
          add: "/medical/wmMaintenancePlan/add",
          edit: "/medical/wmMaintenancePlan/edit",
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
          this.form.setFieldsValue(pick(this.model,'palnName','planTime','planFee','planRemark','finishedNumber','notFinishedNumber'))
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
        this.form.setFieldsValue(pick(row,'palnName','planTime','planFee','planRemark','finishedNumber','notFinishedNumber'))
      },


    }
  }
</script>