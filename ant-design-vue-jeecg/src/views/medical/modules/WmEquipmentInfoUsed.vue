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
          <div style="margin: 0px 0px 5px 20px">
            <span style="font-weight: bold">基础信息</span>
          </div>

          <a-col :span="8">
            <a-form-item label="设备名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input :disabled="visible" v-decorator="[ 'equipmentName', validatorRules.equipmentName]" placeholder="请输入设备名称"></a-input>
            </a-form-item>
          </a-col>
          <!--          <a-col :span="8">-->
          <!--            <a-form-item label="设备别名" :labelCol="labelCol" :wrapperCol="wrapperCol">-->
          <!--              <a-input v-decorator="[ 'equipmentAliasName', validatorRules.equipmentAliasName]" placeholder="请输入设备别名"></a-input>-->
          <!--            </a-form-item>-->
          <!--          </a-col>-->
          <a-col :span="8">
            <a-form-item label="设备型号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input :disabled="visible" v-decorator="[ 'equipmentModel', validatorRules.equipmentModel]" placeholder="请输入设备型号"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="设备编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input :disabled="visible" v-decorator="[ 'equipmentCode']"></a-input>
            </a-form-item>
          </a-col>
          <a-divider type="horizontal" />
          <div style="margin: 0px 0px 5px 20px">
            <span style="font-weight: bold">使用信息</span>
          </div>
          <a-col :span="8">
            <a-form-item label="使用科室" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-select-depart v-decorator="['useDept', validatorRules.useDept]" :trigger-change="true"/>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="使用人" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-select-user-by-dep v-decorator="['chargePerson', validatorRules.chargePerson]" :trigger-change="true"/>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="安放位置" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-tree-select dict="wm_area_space,area_name,id"
                             pidField="pid"
                             pidValue="0"
                             hasChildField="has_child" v-decorator="[ 'chargeArea', validatorRules.chargeArea]"
                             placeholder="请输入安放位置"></j-tree-select>
            </a-form-item>
          </a-col>
        </a-row>
      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

import pick from 'lodash.pick'
import {FormTypes, getRefPromise} from '@/utils/JEditableTableUtil'
import {JEditableTableMixin} from '@/mixins/JEditableTableMixin'
import WmInviteBidForm from './WmInviteBidForm.vue'
import WmEquipmentApproveForm from './WmEquipmentApproveForm.vue'
import JDate from '@/components/jeecg/JDate'
import JUpload from '@/components/jeecg/JUpload'
import JSelectDepart from '@/components/jeecgbiz/JSelectDepart'
import JSelectUserByDep from '@/components/jeecgbiz/JSelectUserByDep'
import JDictSelectTag from "@/components/dict/JDictSelectTag"
import JTreeSelect from "@comp/jeecg/JTreeSelect";
import {getAction} from "@api/manage";

export default {
  name: 'WmEquipmentInfoUsed',
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
        equipmentType: {
        },
        equipmentName: {
        },
        equipmentModel: {
        },
        equipmentCode: {
          rules: []
        },
        useDept: {
          rules: [
            {required: true, message: '请选择使用科室!'},
          ]
        },
        chargePerson: {
          rules: [
            {required: true, message: '请选择使用人!'},
          ]
        },
        chargeArea: {
          rules: [
            {required: true, message: '请选择安装位置!!'}
          ]
        },
      },
      refKeys: ['wmInviteBid', 'wmEquipmentApprove',],
      tableKeys: [],
      activeKey: 'wmInviteBid',
      url: {
        getContract: "/medical/wmContractInfo/queryDetailById",
        getManufacturer: "/medical/wmManufacturerInfo/queryById",
        add: "/medical/wmEquipmentInfo/add",
        edit: "/medical/wmEquipmentInfo/editUsed",
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
    /* 图片预览 */
    getImgView(text){
      if(text && text.indexOf(",")>0){
        text = text.substring(0,text.indexOf(","))
      }
      return window._CONFIG['staticDomainURL']+"/"+text
    },
    /** 合同信息 */
    contractChange(value) {
      let _this = this;
      getAction(this.url.getContract,{id:value}).then(res=>{
        if(res['success']){
          let records = res.result
          // console.log('records === ', records)
          if(records){
            // console.log('getManufacturer', records)
            _this.contractInfo = records
          }
        }
      })
    },

    /** 生产厂商获取联系人 */
    originManufacturerChange(value) {
      // console.log("originManufacturerId ----> ", value)
      let _this = this;
      getAction(this.url.getManufacturer, {id: value}).then(res => {
        if (res['success']) {
          let records = res.result
          // console.log('records === ', records)
          if (records) {
            // console.log('getManufacturer', records)
            _this.originManufacturer = records
          }
        }
      })
    },
    /** 销售厂商获取联系人 */
    saleManufacturerChange(value) {
      // console.log("saleManufacturerId ----> ", value)
      let _this = this;
      getAction(this.url.getManufacturer, {id: value}).then(res => {
        if (res['success']) {
          let records = res.result
          // console.log('records === ', records)
          if (records) {
            // console.log('getManufacturer', records)
            _this.saleManufacturer = records
          }
        }
      })
    },
    /** 选择设备类型*/
    equipmentHandler(value,label) {
      // console.log('选择设备类型 ', value,label)
      //设置表单字段默认值
      this.form.setFieldsValue({'equipmentName': label})
    },
    getAllTable() {
      let values = this.tableKeys.map(key => getRefPromise(this, key))
      return Promise.all(values)
    },
    /** 调用完edit()方法之后会自动调用此方法 */
    editAfter() {
      // let fieldval = pick(this.model, 'equipmentType', 'equipmentName', 'equipmentAliasName', 'equipmentModel', 'depreciationRate', 'procurementPrice', 'procurementNumber', 'measureState', 'equipmentScrap', 'equipmentLogo', 'originManufacturerId', 'saleManufacturerId', 'useDept', 'chargePerson', 'chargeArea', 'startUseTime', 'maintainDay', 'measuerDay', 'contractCode')
      let fieldval = pick(this.model, 'equipmentName', 'equipmentModel','equipmentCode', 'useDept', 'chargePerson', 'chargeArea')
      this.$nextTick(() => {
        this.form.setFieldsValue(fieldval)
        // this.$refs.wmInviteBidForm.initFormData(this.url.wmInviteBid.list, this.model.id)
      })
      // 加载子表数据
      if (this.model.id) {
        let params = {id: this.model.id}
      }
    },
    /** 整理成formData */
    classifyIntoFormData(allValues) {
      let main = Object.assign(this.model, allValues.formValue)

      return {
        ...main, // 展开
        // wmInviteBidList: this.$refs.wmInviteBidForm.getFormData(),
        // wmEquipmentApproveList: this.$refs.wmEquipmentApproveForm.getFormData(),
      }
    },
    validateError(msg) {
      this.$message.error(msg)
    },
    popupCallback(row) {
      // 'equipmentAliasName',
      this.form.setFieldsValue(pick(row,  'equipmentName','equipmentCode',  'equipmentModel','useDept', 'chargePerson', 'chargeArea'))
    },

  }
}
</script>

<style scoped>
</style>