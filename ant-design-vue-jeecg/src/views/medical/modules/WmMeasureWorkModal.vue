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
        <!-- 计量设备信息 -->
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
            <a-form-item label="计量周期" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.measureDay"></a-input>
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

        <!-- 上次计量信息 -->
        <a-row>
          <a-col :span="12">
            <a-form-item label="上次计量日期" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="lastmeasureRecord.measureTime" style="width: 100%;"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="上次计量单位" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="lastmeasureRecord.manufacturerId" style="width: 100%;"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="上次计量人" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="lastmeasureRecord.manufacturerPerson" style="width: 100%;"/>
            </a-form-item>
          </a-col>
        </a-row>

        <!-- 本次计量信息 -->
        <a-row>
          <a-col :span="12">
            <a-form-item label="计量单位" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.manufacturerId_dictText" style="width: 100%;"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="计量人" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.manufacturerPerson" style="width: 100%;"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="预计时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.planTime" style="width: 100%;"/>
            </a-form-item>
          </a-col>

          <a-col :span="12">
            <a-form-item label="计量费用" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input v-decorator="[ 'measureFee', validatorRules.measureFee]" placeholder="请输入金额" style="width: 100%;"/>
            </a-form-item>
          </a-col>

          <a-col :span="12">
            <a-form-item label="计量结果" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-dict-select-tag type="list" v-decorator="[ 'measureResult', validatorRules.measureResult]"
                                 :trigger-change="true" dictCode="maintenance_measure_result" placeholder="请选择计量结果"/>
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
    name: "WmMeasureWorkModal",
    components: {
      JDate,
      JDictSelectTag,
    },
    data () {
      return {
        /**
         * 当前设备计量信息
         */
        currentRecord: {},
        /*
        * 上次计量信息
        */
        lastmeasureRecord: {},
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
          measurePlanId: {rules: [
              {required: true}
          ]},
          equipmentId: {rules: [
          ]},
          manufacturerId: {rules: [
          ]},
          manufacturerPerson: {rules: [
          ]},
          measureStatus: {rules: [
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
          // add: "/medical/wmMeasureHistory/add",
          add: "/medical/wmMeasureHistory/addPlan",
          edit: "/medical/wmMeasureHistory/edit",
          getPlanUrl: "/medical/wmMeasurePlan/queryById",
          getLastMeasureInfo: "/medical/wmMeasureHistory/getLastMeasureInfo",
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
        this.getLastMeasureInfo(record["equipmentId"])
        this.$nextTick(() => {
          this.form.setFieldsValue(pick(this.model,'measureFee','measureResult'))
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
            // console.log("表单提交数据",formData)
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
        this.form.setFieldsValue(pick(row,'measurePlanId','equipmentId','manufacturerId','manufacturerPerson'))
      },
      /** 获取上次计量信息 */
      getLastMeasureInfo(equipmentId) {
        let _this = this;
        getAction(this.url.getLastMeasureInfo, {equipmentId:equipmentId}).then(res => {
          if (res['success']) {
            let records = res["result"]
            if (records) {
              console.log('lastmeasureRecord', records)
              _this.lastmeasureRecord = records
            }
          }else{
            _this.lastmeasureRecord = {}
          }
        })
      }
    }
  }
</script>