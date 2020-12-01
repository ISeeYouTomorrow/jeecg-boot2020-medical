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
        <!-- 已选设备 -->
        <a-form-item label="已选设备" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-table
            size="small"
            rowKey="equipmentId"
            :pagination="notPage"
            :columns="equipmentColumns"
            :data-source="equipments"
            :scroll="{ y: 120 }"
          />
        </a-form-item>
        <a-form-item label="设备计量计划" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="list" @change="planChange" v-decorator="['measurePlanId', validatorRules.measurePlanId]" :trigger-change="true" dictCode="wm_measure_plan,plan_name,id" placeholder="请选择设备计量计划"/>
        </a-form-item>
        <a-form-item label="计量计划时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-model="plan.planTime" disabled></a-input>
        </a-form-item>
        <a-form-item label="预计计量费用" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-model="plan.planFee" disabled></a-input>
        </a-form-item>
        <a-form-item label="备注信息" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-model="plan.planRemark" disabled></a-input>
        </a-form-item>
        <a-form-item label="计量厂商" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="list" v-decorator="[ 'manufacturerId', validatorRules.manufacturerId]"
                             @change="measureProducerChange" :trigger-change="true"
                             dictCode="wm_manufacturer_info,manufacturer_name,id"
                             placeholder="请选择计量厂商"/>
        </a-form-item>
        <a-form-item label="计量人" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input v-decorator="[ 'manufacturerPerson', validatorRules.manufacturerPerson]" placeholder="请输入计量人"></a-input>
        </a-form-item>
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
    name: "WmMeasureHistoryModal",
    components: {
      JDate,
      JDictSelectTag,
    },
    data () {
      return {
        notPage: false,
        equipmentColumns: [
          {
            title: '已选设备名称',
            dataIndex: 'equipmentName',
            width: 150,
          },
          {
            title: '设备编号',
            dataIndex: 'equipmentCode',
            width: 150,
          },
          {
            title: '设备型号',
            dataIndex: 'equipmentModel',
            width: 150,
          }
        ],

        /**
         * 已选设备
         */
        equipments:[],
        plan: {},
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
          measurePlanId: {rules: [
              {required: true}
          ]},
          equipmentId: {rules: [
          ]},
          manufacturerId: {rules: [
            {required: true, message: '请输入计量厂商!'},
          ]},
          manufacturerPerson: {rules: [
            {required: true, message: '请输入计量人!'},
          ]},
          measureStatus: {rules: [
            {required: true, message: '请输入计量状态!'},
          ]},
          measureTime: {rules: [
          ]},
          measureFee: {rules: [
           {pattern:/^(([1-9][0-9]*)|([0]\.\d{0,2}|[1-9][0-9]*\.\d{0,2}))$/, message: '请输入正确的金额!'},
          ]},
          measureResult: {rules: [
            {required: true, message: '请输入计量结果!'},
          ]},
        },
        url: {
          // add: "/medical/wmmeasureHistory/add",
          add: "/medical/wmMeasureHistory/addPlan",
          edit: "/medical/wmMeasureHistory/edit",
          getPlanUrl: "/medical/wmMeasurePlan/queryById",
          getManufacturer: "/medical/wmManufacturerInfo/queryById"
        }
      }
    },
    created () {
    },
    methods: {
      add (equipments) {
        // console.log('select rows -----> ', equipments)
        this.equipments = equipments
        this.plan = {}
        this.edit({});
      },
      edit (record) {
        this.form.resetFields();
        this.model = Object.assign({}, record);
        this.visible = true;
        this.$nextTick(() => {
          this.form.setFieldsValue(pick(this.model,'measurePlanId','manufacturerId','manufacturerPerson'))
        })
      },
      /**
       * 获取所有计划设备
       */
      getEquipmentIds() {
        let equipmentIds = []
        if (this.equipments.length === 0) {
          return equipmentIds
        }
        this.equipments.forEach(it => {
          equipmentIds.push(it["equipmentId"])
        })
        return equipmentIds
      },
      close () {
        this.$emit('close');
        this.visible = false;
      },
      handleOk () {
        const that = this;
        if (this.getEquipmentIds().length == 0) {
          this.$message.error('请选择设备后添加计划')
          return
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
            formData["equipmentList"] = this.getEquipmentIds()
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
        this.form.setFieldsValue(pick(row,'measurePlanId','equipmentId','manufacturerId','manufacturerPerson'))
      },
      planChange (value) {
        let _this = this;
        getAction(this.url.getPlanUrl, {id: value}).then(res => {
          if (res['success']) {
            let records = res["result"]
            console.log('records === ', records)
            if (records) {
              // console.log('getManufacturer', records)
              _this.plan = records
            }
          }
        })
      },
      /** 维修厂商获取联系人 */
      measureProducerChange(value) {
        let _this = this;
        getAction(this.url.getManufacturer, {id: value}).then(res => {
          if (res['success']) {
            let records = res["result"]
            if (records) {
              console.log('getManufacturer', records)
              _this.form.setFieldsValue({'manufacturerPerson': records.linkPerson})
            }
          }
        })
      }
    }
  }
</script>