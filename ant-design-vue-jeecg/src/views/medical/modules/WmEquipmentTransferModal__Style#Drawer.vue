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

        <a-form-item label="设备id" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'equipmentId', validatorRules.equipmentId]" placeholder="请输入设备id"></a-input>
        </a-form-item>
        <a-form-item label="原科室" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'oldDept', validatorRules.oldDept]" placeholder="请输入原科室"></a-input>
        </a-form-item>
        <a-form-item label="原使用人" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'oldPerson', validatorRules.oldPerson]" placeholder="请输入原使用人"></a-input>
        </a-form-item>
        <a-form-item label="转入科室" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-select-depart v-decorator="['transferDept', validatorRules.transferDept]" :trigger-change="true"/>
        </a-form-item>
        <a-form-item label="接收人" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-select-user-by-dep v-decorator="['transferPerson', validatorRules.transferPerson]" :trigger-change="true"/>
        </a-form-item>
        <a-form-item label="接收位置" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'transferArea', validatorRules.transferArea]" placeholder="请输入接收位置"></a-input>
        </a-form-item>
        <a-form-item label="转科附件" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="['transferFile', validatorRules.transferFile]" :trigger-change="true"></j-upload>
        </a-form-item>
        <a-form-item label="转科备注" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-textarea v-decorator="['remark', validatorRules.remark]" rows="4" placeholder="请输入转科备注"/>
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
  import JSelectDepart from '@/components/jeecgbiz/JSelectDepart'
  import JSelectUserByDep from '@/components/jeecgbiz/JSelectUserByDep'
  
  export default {
    name: "WmEquipmentTransferModal",
    components: { 
      JUpload,
      JSelectDepart,
      JSelectUserByDep,
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
            {required: true, message: '请输入设备id!'},
          ]},
          oldDept: {rules: [
            {required: true, message: '请输入原科室!'},
          ]},
          oldPerson: {rules: [
            {required: true, message: '请输入原使用人!'},
          ]},
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
           {pattern:/^.{6,16}$/, message: '请输入6到16位任意字符!'},
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
    methods: {
      add () {
        this.edit({});
      },
      edit (record) {
        this.form.resetFields();
        this.model = Object.assign({}, record);
        this.visible = true;
        this.$nextTick(() => {
          this.form.setFieldsValue(pick(this.model,'equipmentId','oldDept','oldPerson','transferDept','transferPerson','transferArea','transferFile','remark'))
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
        this.form.setFieldsValue(pick(row,'equipmentId','oldDept','oldPerson','transferDept','transferPerson','transferArea','transferFile','remark'))
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