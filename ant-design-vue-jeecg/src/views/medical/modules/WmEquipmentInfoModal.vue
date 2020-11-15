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
            <a-form-item label="设备类型" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-tree-select dict="wm_equipment_type,type_name,id"
                             pidField="pid"
                             :disabled="visible"
                             pidValue="0" @change="equipmentHandler"
                             hasChildField="has_child" v-decorator="[ 'equipmentType', validatorRules.equipmentType]"
                             placeholder="请输入设备类型"></j-tree-select>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="设备名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-decorator="[ 'equipmentName', validatorRules.equipmentName]" placeholder="请输入设备名称"></a-input>
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
            <a-form-item label="折旧率" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input-number v-decorator="[ 'depreciationRate', validatorRules.depreciationRate]" placeholder="请输入折旧率"
                              style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="采购单价" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input-number v-decorator="[ 'procurementPrice', validatorRules.procurementPrice]" placeholder="请输入采购单价"
                              style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="采购数量" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input-number :disabled="visible" v-decorator="[ 'procurementNumber', validatorRules.procurementNumber]"
                              placeholder="请输入采购数量" style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="计量设备" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-dict-select-tag type="radio" v-decorator="['measureState', validatorRules.measureState,{'initialValue':1}]"
                                 :trigger-change="true" dictCode="yn" placeholder="请选择计量设备"/>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="设备残值" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input-number v-decorator="[ 'equipmentScrap', validatorRules.equipmentScrap]" placeholder="请输入设备残值"
                              style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="设备图片" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-upload v-decorator="['equipmentLogo', validatorRules.equipmentLogo]" :trigger-change="true"></j-upload>
            </a-form-item>
          </a-col>
          <a-divider type="horizontal" />
          <div style="margin: 0px 0px 5px 20px">
            <span style="font-weight: bold">厂家信息</span>
          </div>
          <a-col :span="8">
            <a-form-item label="生产厂家" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-dict-select-tag type="list" v-decorator="['originManufacturerId', validatorRules.originManufacturerId]"
                                 @change="originManufacturerChange" :trigger-change="true"
                                 dictCode="wm_manufacturer_info,manufacturer_name,id"
                                 placeholder="请选择生产厂家"/>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="联系人" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-model="originManufacturer.linkPerson"  :disabled="true"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="联系电话" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-model="originManufacturer.linkPersonPhone" :disabled="true" placeholder="请输入设备型号"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="销售厂家" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-dict-select-tag type="list" v-decorator="['saleManufacturerId', validatorRules.saleManufacturerId]"
                                 @change="saleManufacturerChange" :trigger-change="true"
                                 dictCode="wm_manufacturer_info,manufacturer_name,id"
                                 placeholder="请选择销售厂家"/>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="联系人" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-model="saleManufacturer.linkPerson"  :disabled="true"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="联系电话" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-model="saleManufacturer.linkPersonPhone" :disabled="true" placeholder="请输入设备型号"></a-input>
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
          <a-divider type="horizontal" />
          <div style="margin: 0px 0px 5px 20px">
            <span style="font-weight: bold">维保信息</span>
          </div>
          <a-col :span="8">
            <a-form-item label="启用时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-date placeholder="请选择启用时间" v-decorator="[ 'startUseTime', validatorRules.startUseTime]"
                      :trigger-change="true" style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="保养周期(天)" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input-number v-decorator="[ 'maintainDay', validatorRules.maintainDay]" placeholder="请输入保养周期(天)"
                              style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="计量周期(天)" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input-number v-decorator="[ 'measuerDay', validatorRules.measuerDay]" placeholder="请输入计量周期(天)"
                              style="width: 100%"/>
            </a-form-item>
          </a-col>
          <a-divider type="horizontal" />
          <div style="margin: 0px 0px 5px 20px">
            <span style="font-weight: bold">合同信息</span>
          </div>
          <a-col :span="8">
            <a-form-item label="合同编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-dict-select-tag type="list" v-decorator="['contractCode', validatorRules.contractCode]"
                                @change="contractChange" :trigger-change="true" dictCode="wm_contract_info,contract_name,id"
                                 placeholder="请选择合同编号"/>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="供应商" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-model="contractInfo.wmManufacturerName"  :disabled="true"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="合同名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-model="contractInfo.contractName"  :disabled="true"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="合同额度" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-model="contractInfo.contractLimit"  :disabled="true"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="签订日期" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-model="contractInfo.contractTime"  :disabled="true"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="合同附件" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <span v-if="!contractInfo.contractFile" style="font-size: 12px;font-style: italic;">无此图片</span>
              <img v-else :src="getImgView(contractInfo.contractFile)" height="25px" alt="图片不存在" style="max-width:80px;font-size: 12px;font-style: italic;"/>
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
          <wm-equipment-approve-form ref="wmEquipmentApproveForm"
                                     @validateError="validateError"></wm-equipment-approve-form>
        </a-tab-pane>

      </a-tabs>

    </a-spin>
  </a-modal>
</template>

<script>

import pick from 'lodash.pick'
import {FormTypes, getRefPromise} from '@/utils/JEditableTableUtil'
import {JEditableTableMixin} from '@/mixins/JEditableTableMixin'
import {validateDuplicateValue} from '@/utils/util'
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
      //生产厂商
      originManufacturer: {
        linkPersonPhone: '',
        linkPerson: ''
      },
      //销售厂商
      saleManufacturer: {
        linkPersonPhone: '',
        linkPerson: ''
      },
      //合同信息
      contractInfo: {
        contractName: '',
        contractCode: '',
        wmManufacturerName: '',
        contractLimit: '',
        contractTime: '',
        contractFile: ''
      },
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
          rules: [
            {required: true, message: '请输入设备类型!'},
          ]
        },
        equipmentName: {
          rules: [
            {required: true, message: '请输入设备名称!'},
          ]
        },
        // equipmentAliasName: {
        //   rules: [
        //     {required: true, message: '请输入设备别名!'},
        //   ]
        // },
        equipmentModel: {
          rules: [
            {required: true, message: '请输入设备型号!'},
          ]
        },
        depreciationRate: {
          rules: [
            {required: true, message: '请输入折旧率!'},
            {pattern: /^-?\d+\.?\d*$/, message: '请输入数字!'},
          ]
        },
        procurementPrice: {
          rules: [
            {required: true, message: '请输入采购单价!'},
            {pattern: /^(([1-9][0-9]*)|([0]\.\d{0,2}|[1-9][0-9]*\.\d{0,2}))$/, message: '请输入正确的金额!'},
          ]
        },
        procurementNumber: {
          rules: [
            {required: true, message: '请输入采购数量!'},
            {pattern: /^-?\d+$/, message: '请输入整数!'},
          ]
        },
        measureState: {
          rules: [
            {required: true, message: '请输入计量设备!'},
          ]
        },
        equipmentScrap: {
          rules: [
            {pattern: /^-?\d+\.?\d*$/, message: '请输入数字!'},
          ]
        },
        equipmentLogo: {
          rules: []
        },
        equipmentCode: {
          rules: []
        },
        originManufacturerId: {
          rules: []
        },
        saleManufacturerId: {
          rules: []
        },
        useDept: {
          rules: [
            {required: true, message: '请输入使用科室!'},
          ]
        },
        chargePerson: {
          rules: [
            {required: true, message: '请输入使用人!'},
          ]
        },
        chargeArea: {
          rules: []
        },
        startUseTime: {
          rules: []
        },
        maintainDay: {
          rules: [
            {pattern: /^-?\d+$/, message: '请输入整数!'},
          ]
        },
        measuerDay: {
          rules: [
            {pattern: /^-?\d+$/, message: '请输入整数!'},
          ]
        },
        contractCode: {
          rules: [
            {required: true, message: '请输入合同编号!'},
          ]
        },
      },
      refKeys: ['wmInviteBid', 'wmEquipmentApprove',],
      tableKeys: [],
      activeKey: 'wmInviteBid',
      // 设备招标信息
      wmInviteBidTable: {
        loading: false,
        dataSource: [],
        columns: []
      },
      // 设备审批信息
      wmEquipmentApproveTable: {
        loading: false,
        dataSource: [],
        columns: []
      },
      url: {
        getContract: "/medical/wmContractInfo/queryDetailById",
        getManufacturer: "/medical/wmManufacturerInfo/queryById",
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
      let fieldval = pick(this.model, 'equipmentType', 'equipmentName', 'equipmentModel', 'depreciationRate', 'procurementPrice', 'procurementNumber', 'measureState', 'equipmentScrap', 'equipmentLogo', 'originManufacturerId', 'saleManufacturerId', 'useDept', 'chargePerson', 'chargeArea', 'startUseTime', 'maintainDay', 'measuerDay', 'contractCode')
      this.$nextTick(() => {
        this.form.setFieldsValue(fieldval)
        this.$refs.wmInviteBidForm.initFormData(this.url.wmInviteBid.list, this.model.id)
        this.$refs.wmEquipmentApproveForm.initFormData(this.url.wmEquipmentApprove.list, this.model.id)
        // console.log('this.model.originManufacturerId', this.model.originManufacturerId)
        this.originManufacturerChange(this.model.originManufacturerId)
        this.saleManufacturerChange(this.model.saleManufacturerId)
        this.contractChange(this.model.contractCode)
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
        wmInviteBidList: this.$refs.wmInviteBidForm.getFormData(),
        wmEquipmentApproveList: this.$refs.wmEquipmentApproveForm.getFormData(),
      }
    },
    validateError(msg) {
      this.$message.error(msg)
    },
    popupCallback(row) {
      // 'equipmentAliasName',
      this.form.setFieldsValue(pick(row, 'equipmentType', 'equipmentName','equipmentCode',  'equipmentModel', 'depreciationRate', 'procurementPrice', 'procurementNumber', 'measureState', 'equipmentScrap', 'equipmentLogo', 'originManufacturerId', 'saleManufacturerId', 'useDept', 'chargePerson', 'chargeArea', 'startUseTime', 'maintainDay', 'measuerDay', 'contractCode'))
    },

  }
}
</script>

<style scoped>
</style>