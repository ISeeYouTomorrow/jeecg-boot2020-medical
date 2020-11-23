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
        <a-row>
          <div style="margin: 0px 0px 5px 20px">
            <span style="font-weight: bold">基础信息</span>
          </div>
          <a-col :span="24">
            <a-form-item label="借用设备名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-select-biz-component @select="changeEquipment" v-bind="equipmentConfigs" :multiple="selectEquipment.multiple" :display-key="selectEquipment.displayKey"/>
            </a-form-item>
          </a-col>
          <a-col :span="0">
            <a-form-item label="设备型号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-decorator="['equipmentId', validatorRules.equipmentId]"  style="width: 100%;"/>
            </a-form-item>
          </a-col>
          <a-col :span="24">
            <a-input v-decorator="['equipmentId', validatorRules.equipmentId]"  style="width: 100%;display: none;"/>
            <a-form-item label="设备型号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input :disabled="equipmentEditable" v-model="equipmentRow.equipmentModel"  style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="24">
            <a-form-item label="设备编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input :disabled="equipmentEditable" v-model="equipmentRow.equipmentCode"  style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-divider type="horizontal" />
          <div style="margin: 0px 0px 5px 20px">
            <span style="font-weight: bold">借用信息</span>
          </div>
          <a-col :span="24">
            <a-form-item label="借用科室" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-select-depart v-decorator="['onloanDept', validatorRules.onloanDept]" :trigger-change="true"/>
            </a-form-item>
          </a-col>
          <a-col :span="24">
            <a-form-item label="借用人" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-select-user-by-dep v-decorator="['onloanPerson', validatorRules.onloanPerson]" :trigger-change="true"/>
            </a-form-item>
          </a-col>
          <a-col :span="24">
            <a-form-item label="安放位置" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-tree-select dict="wm_area_space,area_name,id"
                             pidField="pid"
                             pidValue="0"
                             hasChildField="has_child" v-decorator="[ 'onloanArea', validatorRules.onloanArea]"
                             placeholder="请输入安放位置"></j-tree-select>
            </a-form-item>
          </a-col>
          <a-col :span="24">
            <a-form-item label="借用日期" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-date placeholder="请选择借用日期" v-decorator="[ 'onloanDate', validatorRules.onloanDate]" :trigger-change="true" style="width: 100%"/>
            </a-form-item>
          </a-col>
        </a-row>
<!--        <a-form-item label="借用设备id" :labelCol="labelCol" :wrapperCol="wrapperCol">-->
<!--          <j-popup-->
<!--            v-decorator="['equipmentId', validatorRules.equipmentId]"-->
<!--            :trigger-change="true"-->
<!--            org-fields="equipment_name,id"-->
<!--            dest-fields="popupok,popback"-->
<!--            code="wm_equipment_info"-->
<!--            @callback="popupCallback"/>-->
<!--        </a-form-item>-->
<!--        <a-form-item label="是否已归还" :labelCol="labelCol" :wrapperCol="wrapperCol">-->
<!--          <a-input-number v-decorator="[ 'onloanStatus', validatorRules.onloanStatus]" placeholder="请输入是否已归还" style="width: 100%"/>-->
<!--        </a-form-item>-->

<!--        <a-form-item label="归还日期" :labelCol="labelCol" :wrapperCol="wrapperCol">-->
<!--          <j-date placeholder="请选择归还日期" v-decorator="[ 'retrunDate', validatorRules.retrunDate]" :trigger-change="true" style="width: 100%"/>-->
<!--        </a-form-item>-->

      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import JDate from '@/components/jeecg/JDate'
  import JSelectDepart from '@/components/jeecgbiz/JSelectDepart'
  import JSelectUserByDep from '@/components/jeecgbiz/JSelectUserByDep'
  import JSelectBizComponent from '@/components/jeecgbiz/JSelectBizComponent'
  import JTreeSelect from "@comp/jeecg/JTreeSelect"
  import {getAction} from "@api/manage"

  export default {
    name: "WmEquipmentOnloanModal",
    components: { 
      JDate,
      JSelectDepart,
      JSelectUserByDep,
      JSelectBizComponent,
      JTreeSelect,
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
            listUrl: '/medical/wmEquipmentInfo/listNoUse',//查询数据的接口
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
            {required: true, message: '请选择借用设备!'},
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
          // onloanStatus: {rules: [
          //   {required: true, message: '请输入是否已归还!'},
          // ]},
          onloanDate: {rules: [
            {required: true, message: '请输入借用日期!'},
          ]},
          // retrunDate: {rules: [
          // ]},
        },
        url: {
          add: "/medical/wmEquipmentOnloan/add",
          edit: "/medical/wmEquipmentOnloan/edit",
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
          this.form.setFieldsValue(pick(this.model,'equipmentId','onloanDept','onloanPerson','onloanArea','onloanDate'))
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
      },

      
    }
  }
</script>