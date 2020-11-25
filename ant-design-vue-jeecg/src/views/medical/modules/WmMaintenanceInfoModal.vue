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
        <a-col :span="0">
          <a-form-item label="转科设备" :labelCol="labelCol" :wrapperCol="wrapperCol">
            <a-input v-decorator="['equipmentId', validatorRules.equipmentId]"  style="width: 100%;"/>
          </a-form-item>
        </a-col>
        <a-form-item label="维修设备" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-select-biz-component @select="changeEquipment" v-bind="equipmentConfigs" value="" :multiple="selectEquipment.multiple" :display-key="selectEquipment.displayKey"/>
        </a-form-item>
<!--        <a-form-item label="设备类型" :labelCol="labelCol" :wrapperCol="wrapperCol">-->
<!--          <a-input disabled v-model="equipmentRow.equipmentType_dictText"></a-input>-->
<!--        </a-form-item>-->
        <a-form-item label="设备编号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input disabled v-model="equipmentRow.equipmentCode"></a-input>
        </a-form-item>
        <a-form-item label="设备型号" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input disabled v-model="equipmentRow.equipmentModel"></a-input>
        </a-form-item>
        <a-form-item label="报修科室" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-select-depart v-decorator="['applyDept', validatorRules.applyDept]" :trigger-change="true"/>
        </a-form-item>
        <a-form-item label="报修人" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-input disabled v-decorator="[ 'applyPerson', validatorRules.applyPerson]" placeholder="请输入报修人"></a-input>
        </a-form-item>
        <a-form-item label="问题类型" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-dict-select-tag type="list" v-decorator="['problemType', validatorRules.problemType]" :trigger-change="true" dictCode="problem_type" placeholder="请选择问题类型"/>
        </a-form-item>
        <a-form-item label="问题描述" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <a-textarea v-decorator="[ 'problemRemark', validatorRules.problemRemark]" placeholder="请输入问题描述"></a-textarea>
        </a-form-item>
        <a-form-item label="问题图片" :labelCol="labelCol" :wrapperCol="wrapperCol">
          <j-image-upload :isMultiple="isMultiple" v-decorator="['problemPictures', validatorRules.problemPictures]" :trigger-change="true"></j-image-upload>
        </a-form-item>
      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>

  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import JUpload from '@/components/jeecg/JUpload'
  import JDictSelectTag from "@/components/dict/JDictSelectTag"
  import JSelectBizComponent from '@/components/jeecgbiz/JSelectBizComponent'
  import JImageUpload from "@comp/jeecg/JImageUpload"
  import store from "@/store"
  import JSelectDepart from '@/components/jeecgbiz/JSelectDepart'

  export default {
    name: "WmMaintenanceInfoModal",
    components: {
      JImageUpload,
      JUpload,
      JDictSelectTag,
      JSelectBizComponent,
      JSelectDepart,
    },
    data () {
      return {
        isMultiple: true,
        /**
         * 选择的设备信息
         */
        equipmentRow: {
          id: '',
          equipmentName: '',
          equipmentModel: '',
          equipmentCode: '',
          equipmentType: '',
          equipmentType_dictText: ''
        },
        selectEquipment: {
          value: '',
          multiple: false,
          displayKey: 'equipmentName',
          settings: {
            name: '公共设备选择',
            displayKey: 'equipmentName',
            returnKeys: ['id', 'equipmentName','equipmentModel','equipmentCode'],//返回出去的数据，通常是id
            listUrl: '/medical/wmEquipmentInfo/listUsed',//查询数据的接口
            queryParamCode: 'equipmentName',//搜索定义，通过name实体类字段搜索记录
            queryParamText: '设备名称',//相当于label
            columns: [//返回的记录根据此处配置显示出来，此处显示俩个字段
              { title: '名称', dataIndex: 'equipmentName', align: 'center', width: 120 },
              // { title: '类型', dataIndex: 'equipmentType', align: 'center', width: 120 },
              { title: '型号', dataIndex: 'equipmentModel', align: 'center', width: 120 },
              { title: '编号', dataIndex: 'equipmentCode', align: 'center', width: 120 }

            ]
          }
        },
        form: this.$form.createForm(this),
        title:"设备报修",
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
            {required: true, message: '请输入维修设备!'},
          ]},
          applyDept: {rules: [
            {required: true, message: '请选择报修科室!'},
          ]},
          applyPerson: {rules: [
            {required: true, message: '请输入报修人!'},
          ]},
          problemType: {rules: [
            {required: true, message: '请输入问题类型!'},
          ]},
          problemRemark: {rules: [
           {pattern:/^.{6,50}$/, message: '请输入6到50位任意字符!'},
          ]},
          problemPictures: {rules: [
          ]},
          maintenanceProducer: {rules: [
          ]},
          maintenancePerson: {rules: [
          ]},
          maintenanceDate: {rules: [
          ]},
          maintenanceFee: {rules: [
           {pattern:/^(([1-9][0-9]*)|([0]\.\d{0,2}|[1-9][0-9]*\.\d{0,2}))$/, message: '请输入正确的金额!'},
          ]},
          maintenanceRemark: {rules: [
           {pattern:/^.{6,16}$/, message: '请输入6到16位任意字符!'},
          ]},
          maintenanceResult: {rules: [
          ]},
        },
        url: {
          add: "/medical/wmMaintenanceInfo/add",
          edit: "/medical/wmMaintenanceInfo/edit",
        }
      }
    },
    created () {
    },
    computed:{
      userName() {
        let userName = store.getters.userInfo.useName
        console.log('userInfo', this.userInfo())
        return userName
      },
      /**
       * 文件路径
       */
      bizPath() {
        let date = new Date()
        let year = date.getFullYear()
        let mon = date.getMonth()+1
        mon = mon<10?"0"+mon:mon
        let day = date.getDate()
        day = day<10?"0"+day:day
        let temp = year+"-"+mon+"-"+day
        let bizPath = "maintenance/"+temp+"/"
        // console.log('bizPath -------> ', bizPath)
        return bizPath
      },
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
        }else{
          this.equipmentRow = {}
        }
        this.form.setFieldsValue({'equipmentId': this.equipmentRow.id})
        // this.form.setFieldsValue({'oldDept': this.equipmentRow.useDept_dictText})
        // this.form.setFieldsValue({'oldPerson': this.equipmentRow.chargePerson_dictText})
        // this.form.setFieldsValue({'oldArea': this.equipmentRow.chargeArea_dictText})
        // this.form.setFieldsValue({'oldStartTime': this.equipmentRow.startUseTime})
      },
      add () {
        this.edit({});
      },
      edit (record) {
        this.form.resetFields();
        this.model = Object.assign({}, record);
        this.visible = true;
        let userInfo = store.getters.userInfo

        console.log('userInfo ------>', userInfo)

        this.$nextTick(() => {
          this.form.setFieldsValue(pick(this.model,'equipmentId','applyDept','applyPerson','problemType','problemRemark','problemPictures'))
          this.form.setFieldsValue({'applyPerson': userInfo["realname"]})
          this.form.setFieldsValue({'applyDept': userInfo["departIds"]})
        })
      },
      close () {
        this.$emit('close');
        this.visible = false;
      },
      handleOk () {
        const that = this;
        if (!this.equipmentRow.id) {
          this.$message.error('请选择设备!',2);
          return;
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
            console.log("表单提交数据",formData);
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
        this.form.setFieldsValue(pick(row,'equipmentId','applyDept','applyPerson','problemType','problemRemark','problemPictures','maintenanceStatus','maintenanceProducer','maintenancePerson','maintenanceDate','maintenanceFee','maintenanceRemark','maintenanceResult'))
      },

      
    }
  }
</script>