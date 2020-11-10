<template>
  <a-modal
    :title="title"
    :width="1200"
    :visible="visible"
    :maskClosable="false"
    :confirmLoading="confirmLoading"
    @ok="handleOk"
    @cancel="handleCancel">
    <a-spin :spinning="confirmLoading">
      <!-- 主表单区域 -->
      <a-form :form="form">
        <a-row>

          <a-col :span="12">
            <a-form-item label="设备类型" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-tree-select dict="wm_equipment_type,type_name,id"
                             pidField="pid"
                             pidValue="0"
                             hasChildField="has_child" v-decorator="[ 'equipmentType', validatorRules.equipmentType]" placeholder="请输入设备类型"></j-tree-select>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="设备名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-decorator="[ 'equipmentName', validatorRules.equipmentName]" placeholder="请输入设备名称"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="设备别名" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-decorator="[ 'equipmentAliasName', validatorRules.equipmentAliasName]" placeholder="请输入设备别名"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="设备型号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-decorator="[ 'equipmentCode', validatorRules.equipmentCode]" placeholder="请输入设备型号"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="折旧率" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input-number v-decorator="[ 'depreciationRate', validatorRules.depreciationRate]" placeholder="请输入折旧率" style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="采购单价" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input-number v-decorator="[ 'procurementPrice', validatorRules.procurementPrice]" placeholder="请输入采购单价" style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="采购数量" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input-number v-decorator="[ 'procurementNumber', validatorRules.procurementNumber]" placeholder="请输入采购数量" style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="计量设备" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-dict-select-tag type="radio" v-decorator="['measureState', validatorRules.measureState]" :trigger-change="true" dictCode="yn" placeholder="请选择计量设备"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="设备残值" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input-number v-decorator="[ 'equipmentScrap', validatorRules.equipmentScrap]" placeholder="请输入设备残值" style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="设备图片" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-upload v-decorator="['equipmentLogo', validatorRules.equipmentLogo]" :trigger-change="true"></j-upload>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="生产厂家" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-dict-select-tag type="list" v-decorator="['originManufacturerId', validatorRules.originManufacturerId]" :trigger-change="true" dictCode="wm_manufacturer_info,manufacturer_name,id" placeholder="请选择生产厂家"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="销售厂家" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-dict-select-tag type="list" v-decorator="['saleManufacturerId', validatorRules.saleManufacturerId]" :trigger-change="true" dictCode="wm_manufacturer_info,manufacturer_name,id" placeholder="请选择销售厂家"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="使用科室" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-select-depart v-decorator="['useDept', validatorRules.useDept]" :trigger-change="true"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="使用人" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-select-user-by-dep v-decorator="['chargePerson', validatorRules.chargePerson]" :trigger-change="true"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="安放位置" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-tree-select dict="wm_area_space,area_name,id"
                             pidField="pid"
                             pidValue="0"
                             hasChildField="has_child" v-decorator="[ 'chargeArea', validatorRules.chargeArea]" placeholder="请输入安放位置"></j-tree-select>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="启用时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-date placeholder="请选择启用时间" v-decorator="[ 'startUseTime', validatorRules.startUseTime]" :trigger-change="true" style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="保养周期(天)" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input-number v-decorator="[ 'maintainDay', validatorRules.maintainDay]" placeholder="请输入保养周期(天)" style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="计量周期(天)" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input-number v-decorator="[ 'measuerDay', validatorRules.measuerDay]" placeholder="请输入计量周期(天)" style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="合同编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-dict-select-tag type="list" v-decorator="['contractCode', validatorRules.contractCode]" :trigger-change="true" dictCode="wm_contract_info,contract_name,id" placeholder="请选择合同编号"/>
            </a-form-item>
          </a-col>

        </a-row>
      </a-form>

      <!-- 子表单区域 -->
      <a-tabs v-model="activeKey" @change="handleChangeTabs">
        <a-tab-pane tab="设备招标信息" :key="refKeys[0]" :forceRender="true">
          <wm-invite-bid-form ref="wmInviteBidForm" @validateError="validateError"></wm-invite-bid-form>
        </a-tab-pane>
      
        <a-tab-pane tab="设备审批信息" :key="refKeys[1]" :forceRender="true">
          <wm-equipment-approve-form ref="wmEquipmentApproveForm" @validateError="validateError"></wm-equipment-approve-form>
        </a-tab-pane>
      
      </a-tabs>

    </a-spin>
  </a-modal>
</template>

<script>

  import pick from 'lodash.pick'
  import { FormTypes,getRefPromise } from '@/utils/JEditableTableUtil'
  import { JEditableTableMixin } from '@/mixins/JEditableTableMixin'
  import { validateDuplicateValue } from '@/utils/util'
  import WmInviteBidForm from './WmInviteBidForm.vue'
  import WmEquipmentApproveForm from './WmEquipmentApproveForm.vue'
  import JDate from '@/components/jeecg/JDate'  
  import JUpload from '@/components/jeecg/JUpload'
  import JSelectDepart from '@/components/jeecgbiz/JSelectDepart'
  import JSelectUserByDep from '@/components/jeecgbiz/JSelectUserByDep'
  import JDictSelectTag from "@/components/dict/JDictSelectTag"
  import JTreeSelect from "@comp/jeecg/JTreeSelect";

  export default {
    name: 'WmEquipmentInfoModal',
    mixins: [JEditableTableMixin],
    components: {
      JTreeSelect,
    WmInviteBidForm,
    WmEquipmentApproveForm,
      JDate,
      JUpload,
      JSelectDepart,
      JSelectUserByDep,
      JDictSelectTag,
    },
    data() {
      return {
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
        // 新增时子表默认添加几行空数据
        addDefaultRowNum: 1,
        validatorRules: {
          equipmentType: {rules: [
            {required: true, message: '请输入设备类型!'},
          ]},
          equipmentName: {rules: [
            {required: true, message: '请输入设备名称!'},
          ]},
          equipmentAliasName: {rules: [
            {required: true, message: '请输入设备别名!'},
          ]},
          equipmentCode: {rules: [
            {required: true, message: '请输入设备型号!'},
          ]},
          depreciationRate: {rules: [
            {required: true, message: '请输入折旧率!'},
           {pattern:/^-?\d+\.?\d*$/, message: '请输入数字!'},
          ]},
          procurementPrice: {rules: [
            {required: true, message: '请输入采购单价!'},
           {pattern:/^(([1-9][0-9]*)|([0]\.\d{0,2}|[1-9][0-9]*\.\d{0,2}))$/, message: '请输入正确的金额!'},
          ]},
          procurementNumber: {rules: [
            {required: true, message: '请输入采购数量!'},
            {pattern:/^-?\d+$/, message: '请输入整数!'},
          ]},
          measureState: {rules: [
            {required: true, message: '请输入计量设备!'},
          ]},
          equipmentScrap: {rules: [
           {pattern:/^-?\d+\.?\d*$/, message: '请输入数字!'},
          ]},
          equipmentLogo: {rules: [
          ]},
          originManufacturerId: {rules: [
          ]},
          saleManufacturerId: {rules: [
          ]},
          useDept: {rules: [
            {required: true, message: '请输入使用科室!'},
          ]},
          chargePerson: {rules: [
            {required: true, message: '请输入使用人!'},
          ]},
          chargeArea: {rules: [
          ]},
          startUseTime: {rules: [
          ]},
          maintainDay: {rules: [
            {pattern:/^-?\d+$/, message: '请输入整数!'},
          ]},
          measuerDay: {rules: [
            {pattern:/^-?\d+$/, message: '请输入整数!'},
          ]},
          contractCode: {rules: [
            {required: true, message: '请输入合同编号!'},
          ]},
        },
        refKeys: ['wmInviteBid', 'wmEquipmentApprove', ],
        tableKeys:[],
        activeKey: 'wmInviteBid',
        // 设备招标信息
        wmInviteBidTable: {
          loading: false,
          dataSource: [],
          columns: [
          ]
        },
        // 设备审批信息
        wmEquipmentApproveTable: {
          loading: false,
          dataSource: [],
          columns: [
          ]
        },
        url: {
          add: "/medical/wmEquipmentInfo/add",
          edit: "/medical/wmEquipmentInfo/edit",
          wmInviteBid: {
            list: '/medical/wmEquipmentInfo/queryWmInviteBidByMainId'
          },
          wmEquipmentApprove: {
            list: '/medical/wmEquipmentInfo/queryWmEquipmentApproveByMainId'
          },
        }
      }
    },
    methods: {
      getAllTable() {
        let values = this.tableKeys.map(key => getRefPromise(this, key))
        return Promise.all(values)
      },
      /** 调用完edit()方法之后会自动调用此方法 */
      editAfter() {
        let fieldval = pick(this.model,'equipmentType','equipmentName','equipmentAliasName','equipmentCode','depreciationRate','procurementPrice','procurementNumber','measureState','equipmentScrap','equipmentLogo','originManufacturerId','saleManufacturerId','useDept','chargePerson','chargeArea','startUseTime','maintainDay','measuerDay','contractCode')
        this.$nextTick(() => {
          this.form.setFieldsValue(fieldval)
          this.$refs.wmInviteBidForm.initFormData(this.url.wmInviteBid.list,this.model.id)
          this.$refs.wmEquipmentApproveForm.initFormData(this.url.wmEquipmentApprove.list,this.model.id)
        })
        // 加载子表数据
        if (this.model.id) {
          let params = { id: this.model.id }
        }
      },
      /** 整理成formData */
      classifyIntoFormData(allValues) {
        let main = Object.assign(this.model, allValues.formValue)

        return {
          ...main, // 展开
          wmInviteBidList: this.$refs.wmInviteBidForm.getFormData(),
          wmEquipmentApproveList: this.$refs.wmEquipmentApproveForm.getFormData(),
        }
      },
      validateError(msg){
        this.$message.error(msg)
      },
     popupCallback(row){
       this.form.setFieldsValue(pick(row,'equipmentType','equipmentName','equipmentAliasName','equipmentCode','depreciationRate','procurementPrice','procurementNumber','measureState','equipmentScrap','equipmentLogo','originManufacturerId','saleManufacturerId','useDept','chargePerson','chargeArea','startUseTime','maintainDay','measuerDay','contractCode'))
     },

    }
  }
</script>

<style scoped>
</style>