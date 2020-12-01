<!-- 设备计量验收 -->
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
              <a-input disabled v-model="model.measureFee" style="width: 100%;"/>
            </a-form-item>
          </a-col>

          <a-col :span="12">
            <a-form-item label="计量结果" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <j-dict-select-tag disabled type="list" v-model="model.measureResult"
                                 :trigger-change="true" dictCode="maintenance_measure_result" placeholder="请选择计量结果"/>
            </a-form-item>
          </a-col>
        </a-row>

        <!-- 验收信息 -->
        <a-row>
          <a-col :span="12">
            <a-form-item label="验收人" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.checkPerson" style="width: 100%;"/>
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="验收时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input disabled v-model="model.checkTime" style="width: 100%;"/>
            </a-form-item>
          </a-col>
        </a-row>
      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

  import store from "@/store"
  import { getAction, httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import moment from "moment"
  import JDate from '@/components/jeecg/JDate'
  import JDictSelectTag from "@/components/dict/JDictSelectTag"

  export default {
    name: "WmMeasureCheckModal",
    components: {
      JDate,
      JDictSelectTag,
    },
    data () {
      return {
        isDetail: {

        },
        userInfo: {
        },
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
           // {pattern:/^(([1-9][0-9]*)|([0]\.\d{0,2}|[1-9][0-9]*\.\d{0,2}))$/, message: '请输入正确的金额!'},
          ]},
          measureResult: {rules: [
            // {required: true, message: '请输入计量结果!'},
          ]},
          checkPerson: {
            rules: []
          },
          checkTime: {
            rules: []
          }
        },
        url: {
          // add: "/medical/wmMeasureHistory/add",
          add: "/medical/wmMeasureHistory/addPlan",
          edit: "/medical/wmMeasureHistory/checkHistory",
          getPlanUrl: "/medical/wmMeasurePlan/queryById",
        }
      }
    },
    created () {
      this.userInfo = store.getters.userInfo
    },
    methods: {
      /**
       * 验收
       * @param record
       */
      checkHandler (record, isDetail) {
        // console.log('workHandler ------> ', record)
        this.isDetail = isDetail
        this.form.resetFields();
        this.model = Object.assign({}, record);
        this.visible = true;
        // console.log('this.userinfo', isDetail,this.userInfo)
        this.$nextTick(() => {
          if (!isDetail) {
            this.model.checkPerson = this.userInfo.realname
            this.model.checkTime = moment(new Date()).format("YYYY-MM-DD HH:mm:ss");
          }
          // this.form.setFieldsValue(pick(this.model,'measureFee','measureResult'))
        })
      },
      close () {
        this.$emit('close');
        this.visible = false;
      },
      handleOk () {
        if (this.isDetail) {
          this.close()
          return
        }
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
            formData.measureCheck = '1'
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
      }
    }
  }
</script>