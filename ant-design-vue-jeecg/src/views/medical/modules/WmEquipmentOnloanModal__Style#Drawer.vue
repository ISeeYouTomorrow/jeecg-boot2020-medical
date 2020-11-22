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

        <a-form-item label="借用设备id" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-popup
            v-decorator="['equipmentId', validatorRules.equipmentId]"
            :trigger-change="true"
            org-fields="equipment_name,id"
            dest-fields="popupok,popback"
            code="wm_equipment_info"
            @callback="popupCallback"/>
        </a-form-item>
        <a-form-item label="借用科室" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-select-depart v-decorator="['onloanDept', validatorRules.onloanDept]" :trigger-change="true"/>
        </a-form-item>
        <a-form-item label="借用人" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-select-user-by-dep v-decorator="['onloanPerson', validatorRules.onloanPerson]" :trigger-change="true"/>
        </a-form-item>
        <a-form-item label="安放位置" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'onloanArea', validatorRules.onloanArea]" placeholder="请输入安放位置"></a-input>
        </a-form-item>
        <a-form-item label="是否已归还" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'onloanStatus', validatorRules.onloanStatus]" placeholder="请输入是否已归还" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="借用日期" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择借用日期" v-decorator="[ 'onloanDate', validatorRules.onloanDate]" :trigger-change="true" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="归还日期" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-date placeholder="请选择归还日期" v-decorator="[ 'retrunDate', validatorRules.retrunDate]" :trigger-change="true" style="width: 100%"/>
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
  import JSelectDepart from '@/components/jeecgbiz/JSelectDepart'
  import JSelectUserByDep from '@/components/jeecgbiz/JSelectUserByDep'
  
  export default {
    name: "WmEquipmentOnloanModal",
    components: { 
      JDate,
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
            {required: true, message: '请输入借用设备id!'},
          ]},
          onloanDept: {rules: [
            {required: true, message: '请输入借用科室!'},
          ]},
          onloanPerson: {rules: [
            {required: true, message: '请输入借用人!'},
          ]},
          onloanArea: {rules: [
            {required: true, message: '请输入安放位置!'},
          ]},
          onloanStatus: {rules: [
            {required: true, message: '请输入是否已归还!'},
          ]},
          onloanDate: {rules: [
            {required: true, message: '请输入借用日期!'},
          ]},
          retrunDate: {rules: [
          ]},
        },
        url: {
          add: "/medical/wmEquipmentOnloan/add",
          edit: "/medical/wmEquipmentOnloan/edit",
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
          this.form.setFieldsValue(pick(this.model,'equipmentId','onloanDept','onloanPerson','onloanArea','onloanStatus','onloanDate','retrunDate'))
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
        this.form.setFieldsValue(pick(row,'equipmentId','onloanDept','onloanPerson','onloanArea','onloanStatus','onloanDate','retrunDate'))
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