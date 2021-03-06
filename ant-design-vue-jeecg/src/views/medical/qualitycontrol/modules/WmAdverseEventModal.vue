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
        <a-form-item label="设备名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-select-biz-component @select="changeEquipment" v-bind="equipmentConfigs" :multiple="selectEquipment.multiple" :display-key="selectEquipment.displayKey"/>
        </a-form-item>
        <a-col :span="0">
          <a-form-item label="设备型号" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-input v-decorator="['equipmentId', validatorRules.equipmentId]"  style="width: 100%;"/>
          </a-form-item>
        </a-col>
        <a-form-item label="患者姓名" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'personName', validatorRules.personName]" placeholder="请输入患者姓名"></a-input>
        </a-form-item>
        <a-form-item label="患者年龄" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input-number v-decorator="[ 'personAge', validatorRules.personAge]" placeholder="请输入患者年龄" style="width: 100%"/>
        </a-form-item>
        <a-form-item label="联系方式" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'personMobile', validatorRules.personMobile]" placeholder="请输入联系方式"></a-input>
        </a-form-item>
        <a-form-item label="联系地址" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'personAddress', validatorRules.personAddress]" placeholder="请输入联系地址"></a-input>
        </a-form-item>
        <a-form-item label="设备使用场所" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="list" v-decorator="['useAddress', validatorRules.useAddress]" :trigger-change="true" dictCode="use_address" placeholder="请选择设备使用场所"/>
        </a-form-item>
        <a-form-item label="事件后果" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="list" v-decorator="['eventResult', validatorRules.eventResult]" :trigger-change="true" dictCode="event_result" placeholder="请选择事件后果"/>
        </a-form-item>
        <a-form-item label="事件描述" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-textarea v-decorator="['eventRemark', validatorRules.eventRemark]" rows="4" placeholder="请输入事件描述"/>
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
  import JSelectBizComponent from '@/components/jeecgbiz/JSelectBizComponent'

  export default {
    name: "WmAdverseEventModal",
    components: {
      JDictSelectTag,
      JSelectBizComponent
    },
    data () {
      return {
        equipmentEditable: true,
        /**
         * 选择的设备信息
         */
        equipmentRow: {
          id: '',
          equipmentName: '',
          equipmentModel: '',
          equipmentCode: ''
        },
        selectEquipment: {
          value: '',
          multiple: false,
          displayKey: 'equipmentName',
          settings: {
            name: '公共设备选择',
            displayKey: 'equipmentName',
            returnKeys: ['id', 'equipmentName','equipmentModel','equipmentCode'],//返回出去的数据，通常是id
            listUrl: '/medical/wmEquipmentInfo/list',//查询数据的接口
            queryParamCode: 'equipmentName',//搜索定义，通过name实体类字段搜索记录
            queryParamText: '设备名称',//相当于label
            columns: [//返回的记录根据此处配置显示出来，此处显示俩个字段
              { title: '名称', dataIndex: 'equipmentName', align: 'center', width: 120 },
              { title: '型号', dataIndex: 'equipmentModel', align: 'center', width: 120 },
              { title: '编号', dataIndex: 'equipmentCode', align: 'center', width: 120 }
            ]
          }
        },
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
              {required:true,}
          ]},
          personName: {rules: [
              {required:true,maxlength:20}
          ]},
          personAge: {rules: [
            {required:true,pattern:/^-?\d+$/, message: '请输入整数!'},
          ]},
          personMobile: {rules: [
            {required:true,pattern:/^1[3456789]\d{9}$/, message: '请输入正确的手机号码!'},
          ]},
          personAddress: {rules: [
              {required:true}
          ]},
          useAddress: {rules: [
              {required:true}
          ]},
          eventResult: {rules: [{
              required:true
            }
          ]},
          eventRemark: {rules: [
              {required:true}
          ]},
        },
        url: {
          add: "/medical/wmAdverseEvent/add",
          edit: "/medical/wmAdverseEvent/edit",
          listUrl: '/medical/wmEquipmentInfo/listNoUse'//查询数据的接口
        }
      }
    },
    created () {
    },
    computed:{
      equipmentConfigs() {
        return Object.assign({ value: this.selectEquipment.value }, this.selectEquipment.settings, this.$attrs)
      }
    },
    methods: {
      /**
       * 选择数据回调方法
       * @param rows
       */
      changeEquipment(rows) {
        // console.log('select data -------> ', rows)
        if (rows && rows.length > 0) {
          this.equipmentRow = rows[0]
          this.form.setFieldsValue({'equipmentId': this.equipmentRow.id})
        }
      },
      add () {
        this.edit({});
      },
      edit (record) {
        this.form.resetFields();
        this.model = Object.assign({}, record);
        this.visible = true;
        this.$nextTick(() => {
          this.form.setFieldsValue(pick(this.model,'equipmentId','personName','personAge','personMobile','personAddress','useAddress','eventResult','eventRemark'))
        })
      },
      close () {
        this.$emit('close');
        this.visible = false;
      },
      handleOk () {
        const that = this;
        if (!this.equipmentRow.id) {
          this.$message.error('请选择设备',2)
        }
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
        this.form.setFieldsValue(pick(row,'equipmentId','personName','personAge','personMobile','personAddress','useAddress','eventResult','eventRemark'))
      },


    }
  }
</script>