<!-- 设备报废页面 -->
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
          <a-form-item label="借用设备名称" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <j-select-biz-component @select="changeEquipment" v-bind="equipmentConfigs" :multiple="selectEquipment.multiple" :display-key="selectEquipment.displayKey"/>
          </a-form-item>
        <a-col :span="24">
          <a-form-item label="设备型号" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-input :disabled="equipmentEditable" v-model="equipmentRow.equipmentModel"  style="width: 100%"/>
          </a-form-item>
        </a-col>
        <a-col :span="24">
          <a-form-item label="设备编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-input :disabled="equipmentEditable" v-model="equipmentRow.equipmentCode"  style="width: 100%"/>
          </a-form-item>
        </a-col>
        <a-col :span="24">
          <a-form-item label="启用时间" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-input :disabled="equipmentEditable" v-model="equipmentRow.startUseTime"  style="width: 100%"/>
          </a-form-item>
        </a-col>
        <a-col :span="24">
          <a-form-item label="维修次数" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-input :disabled="equipmentEditable" v-model="equipmenntCount.fixedCount"  style="width: 100%"/>
          </a-form-item>
        </a-col>
        <a-col :span="24">
          <a-form-item label="保养次数" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-input :disabled="equipmentEditable" v-model="equipmenntCount.maintenanceCount"  style="width: 100%"/>
          </a-form-item>
        </a-col>
        <a-col :span="0">
          <a-form-item label="报废设备" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-input v-decorator="[ 'equipmentId', validatorRules.equipmentId]" placeholder="请输入报废设备"></a-input>
          </a-form-item>
        </a-col>
        <a-form-item label="备注信息" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-textarea v-decorator="['remark', validatorRules.remark]" rows="4" placeholder="请输入备注信息"/>
        </a-form-item>
        <a-form-item label="报废附件" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-upload v-decorator="['scrapFile', validatorRules.scrapFile]" :trigger-change="true"></j-upload>
        </a-form-item>
      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

import { getAction, httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import { validateDuplicateValue } from '@/utils/util'
  import JUpload from '@/components/jeecg/JUpload'
  import JSelectBizComponent from '@/components/jeecgbiz/JSelectBizComponent'

  export default {
    name: "WmEquipmentScrapHistoryModal",
    components: {
      JUpload,
      JSelectBizComponent
    },
    data () {
      return {
        equipmentEditable: true,
        equipmenntCount: {},
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
            listUrl: '/medical/wmEquipmentScrapHistory/listEquipment',//查询数据的接口
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
        title:"报废设备",
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
          ]},
          remark: {rules: [
          ]},
          scrapFile: {rules: [
          ]},
        },
        url: {
          add: "/medical/wmEquipmentScrapHistory/add",
          edit: "/medical/wmEquipmentScrapHistory/edit",
          queryCount: '/medical/wmEquipmentScrapHistory/queryCount'
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
          let _this = this;
          getAction(this.url.queryCount, {equipmentId: this.equipmentRow.id}).then(res => {
            if (res['success']) {
              let records = res["result"]
              // console.log('records === ', records)
              if (records) {
                this.$nextTick(() => {
                  // console.log('getManufacturer', records)
                  this.equipmenntCount = records
                })
              }
            }
          })

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
          this.form.setFieldsValue(pick(this.model,'equipmentId','remark','scrapFile','scrapState'))
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
        this.form.setFieldsValue(pick(row,'equipmentId','remark','scrapFile','scrapState'))
      },


    }
  }
</script>