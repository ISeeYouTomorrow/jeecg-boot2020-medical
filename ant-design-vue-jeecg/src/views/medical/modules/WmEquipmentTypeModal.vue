<template>
  <a-modal
    :title="title"
    :width="width"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleOk"
    @cancel="handleCancel"
    :destroyOnClose="true"
    cancelText="关闭">
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">

        <a-form-item label="上级类别" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-tree-select
            ref="treeSelect"
            placeholder="请选择上级类别"
            v-decorator="['pid', validatorRules.pid]"
            dict="wm_equipment_type,type_name,id"
            pidField="pid"
            pidValue="0"
            hasChildField="has_child">
          </j-tree-select>
        </a-form-item>
        <a-form-item label="序号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'sortNumber', validatorRules.sortNumber]" placeholder="请输入序号" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="设备类别" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'typeName', validatorRules.typeName]" placeholder="请输入设备类别"></a-input>
        </a-form-item>
        <a-form-item label="2018类别代号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'typeAlias18', validatorRules.typeAlias18]" placeholder="请输入2018类别代号"></a-input>
        </a-form-item>
        <a-form-item label="是否计量设备" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="radio" v-decorator="['measureState', validatorRules.measureState]" :trigger-change="true" dictCode="yn" placeholder="请选择是否计量设备"/>
        </a-form-item>
        <a-form-item label="2012类别代号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'remark', validatorRules.remark]" placeholder="请输入2012类别代号"></a-input>
        </a-form-item>
        
      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JDictSelectTag from "@/components/dict/JDictSelectTag"
  import JTreeSelect from '@/components/jeecg/JTreeSelect'
  
  export default {
    name: "WmEquipmentTypeModal",
    components: { 
      JDictSelectTag,
      JTreeSelect
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
          pid: {rules: [
          ]},
          sortNumber: {rules: [
            {required: true, message: '请输入序号!'},
          ]},
          typeName: {rules: [
            {required: true, message: '请输入设备类别!'},
          ]},
          typeAlias18: {rules: [
            {required: true, message: '请输入2018类别代号!'},
          ]},
          measureState: {rules: [
            {required: true, message: '请输入是否计量设备!'},
          ]},
          remark: {rules: [
          ]},
        },
        url: {
          add: "/medical/wmEquipmentType/add",
          edit: "/medical/wmEquipmentType/edit",
        },
        expandedRowKeys:[],
        pidField:"pid"
     
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
          this.form.setFieldsValue(pick(this.model,'pid','sortNumber','typeName','typeAlias18','measureState','remark'))
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
            let old_pid = this.model[this.pidField]
            let formData = Object.assign(this.model, values);
            let new_pid = this.model[this.pidField]
            console.log("表单提交数据",formData)
            httpAction(httpurl,formData,method).then((res)=>{
              if(res.success){
                that.$message.success(res.message);
                that.submitSuccess(formData,old_pid==new_pid)
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
        this.form.setFieldsValue(pick(row,'pid','sortNumber','typeName','typeAlias18','measureState','remark'))
      },
      submitSuccess(formData,flag){
        if(!formData.id){
          let treeData = this.$refs.treeSelect.getCurrTreeData()
          this.expandedRowKeys=[]
          this.getExpandKeysByPid(formData[this.pidField],treeData,treeData)
          this.$emit('ok',formData,this.expandedRowKeys.reverse());
        }else{
          this.$emit('ok',formData,flag);
        }
      },
      getExpandKeysByPid(pid,arr,all){
        if(pid && arr && arr.length>0){
          for(let i=0;i<arr.length;i++){
            if(arr[i].key==pid){
              this.expandedRowKeys.push(arr[i].key)
              this.getExpandKeysByPid(arr[i]['parentId'],all,all)
            }else{
              this.getExpandKeysByPid(pid,arr[i].children,all)
            }
          }
        }
      }
      
      
    }
  }
</script>