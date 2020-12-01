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
        <!-- 保养设备信息 -->
        <a-row>
          <a-col :span="12">
            <a-form-item label="设备名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.equipmentName" style="width: 100%;"/>
            </a-form-item>
          </a-col>
<!--          <a-col :span="12">-->
<!--            <a-form-item label="设备类型" :labelCol="labelCol" :wrapperCol="wrapperCol">-->
<!--              <a-input disabled v-model="model.equipmentType_dictText"></a-input>-->
<!--            </a-form-item>-->
<!--          </a-col>-->
          <a-col :span="12">
            <a-form-item label="设备编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.equipmentCode"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="保养周期" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.maintainDay"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="设备型号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.equipmentModel"></a-input>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="启用时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.startUseTime"></a-input>
            </a-form-item>
          </a-col>
        </a-row>

        <!-- 上次保养信息 -->
        <a-row>
          <a-col :span="12">
            <a-form-item label="上次保养日期" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="lastMaintenanceRecord.maintenanceTime" style="width: 100%;"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="上次保养单位" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="lastMaintenanceRecord.manufacturerId" style="width: 100%;"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="上次保养人" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="lastMaintenanceRecord.manufacturerPerson" style="width: 100%;"/>
            </a-form-item>
          </a-col>
        </a-row>

        <!-- 本次保养信息 -->
        <a-row>
          <a-col :span="12">
            <a-form-item label="保养单位" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.manufacturerId_dictText" style="width: 100%;"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="保养人" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.manufacturerPerson" style="width: 100%;"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="预计时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.planTime" style="width: 100%;"/>
            </a-form-item>
          </a-col>

          <a-col :span="12">
            <a-form-item label="保养费用" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-decorator="[ 'maintenanceFee', validatorRules.maintenanceFee]" placeholder="请输入金额" style="width: 100%;"/>
            </a-form-item>
          </a-col>

          <a-col :span="12">
            <a-form-item label="保养结果" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-dict-select-tag type="list" v-decorator="[ 'maintenanceResult', validatorRules.maintenanceResult]"
                                 :trigger-change="true" dictCode="maintenance_measure_result" placeholder="请选择保养结果"/>
            </a-form-item>
          </a-col>
        </a-row>
      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

import { getAction, httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JDate from '@/components/jeecg/JDate'
  import JDictSelectTag from "@/components/dict/JDictSelectTag"

  export default {
    name: "WmEquipmentImplementModal",
    components: {
      JDate,
      JDictSelectTag,
    },
    data () {
      return {
        /**
         * 当前设备保养信息
         */
        currentRecord: {},
        /*
        * 上次保养信息
        */
        lastMaintenanceRecord: {},
        form: this.$form.createForm(this),
        title:"操作",
        width:1000,
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
          maintenancePlanId: {rules: [
              {required: true}
          ]},
          equipmentId: {rules: [
          ]},
          manufacturerId: {rules: [
          ]},
          manufacturerPerson: {rules: [
          ]},
          maintenanceStatus: {rules: [
          ]},
          maintenanceTime: {rules: [
          ]},
          maintenanceFee: {rules: [
           {pattern:/^(([1-9][0-9]*)|([0]\.\d{0,2}|[1-9][0-9]*\.\d{0,2}))$/, message: '请输入正确的金额!'},
          ]},
          maintenanceResult: {rules: [
            {required: true, message: '请输入保养结果!'},
          ]},
        },
        url: {
          // add: "/medical/wmMaintenanceHistory/add",
          add: "/medical/wmMaintenanceHistory/addPlan",
          edit: "/medical/wmMaintenanceHistory/edit",
          getPlanUrl: "/medical/wmMaintenancePlan/queryById",
          getLastMaintainInfo: "/medical/wmMaintenanceHistory/getLastMaintainInfo",
        }
      }
    },
    created () {
    },
    methods: {
      workHandler (record) {
        // console.log('workHandler ------> ', record)
        this.form.resetFields();
        this.model = Object.assign({}, record);
        this.visible = true;
        this.getLastMaintainInfo(record["equipmentId"])
        this.$nextTick(() => {
          this.form.setFieldsValue(pick(this.model,'maintenanceFee','maintenanceResult'))
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
            formData.id = this.model.id
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
        this.form.setFieldsValue(pick(row,'maintenancePlanId','equipmentId','manufacturerId','manufacturerPerson'))
      },
      /** 获取上次保养信息 */
      getLastMaintainInfo(equipmentId) {
        let _this = this;
        getAction(this.url.getLastMaintainInfo, {equipmentId:equipmentId}).then(res => {
          if (res['success']) {
            let records = res["result"]
            if (records) {
              console.log('lastMaintenanceRecord', records)
              _this.lastMaintenanceRecord = records
            }
          }else{
            _this.lastMaintenanceRecord = {}
          }
        })
      }
    }
  }
</script>