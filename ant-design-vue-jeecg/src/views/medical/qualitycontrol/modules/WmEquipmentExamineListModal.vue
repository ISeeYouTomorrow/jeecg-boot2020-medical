<!-- 巡检计划-设备明细列表 -->
<template>
  <a-modal
    :title="title"
    :width="width"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="close"
    @cancel="close"
    cancelText="关闭">
    <a-card :bordered="false">
      <!-- 查询区域 -->
      <div class="table-page-search-wrapper">
        <a-form layout="inline" @keyup.enter.native="searchQuery">
          <a-row :gutter="24">

          </a-row>
        </a-form>
      </div>
      <!-- 查询区域-END -->

      <!-- 操作按钮区域 -->
<!--      <div class="table-operator">-->
<!--        <a-button @click="handleAdd" type="primary" icon="plus">新增</a-button>-->
<!--        <a-button type="primary" icon="download" @click="handleExportXls('设备巡检计划')">导出</a-button>-->
<!--        <a-upload name="file" :showUploadList="false" :multiple="false" :headers="tokenHeader" :action="importExcelUrl" @change="handleImportExcel">-->
<!--          <a-button type="primary" icon="import">导入</a-button>-->
<!--        </a-upload>-->
<!--        <a-dropdown v-if="selectedRowKeys.length > 0">-->
<!--          <a-menu slot="overlay">-->
<!--            <a-menu-item key="1" @click="batchDel"><a-icon type="delete"/>删除</a-menu-item>-->
<!--          </a-menu>-->
<!--          <a-button style="margin-left: 8px"> 批量操作 <a-icon type="down" /></a-button>-->
<!--        </a-dropdown>-->
<!--      </div>-->

      <!-- table区域-begin -->
      <div>
<!--        <div class="ant-alert ant-alert-info" style="margin-bottom: 16px;">-->
<!--          <i class="anticon anticon-info-circle ant-alert-icon"></i> 已选择 <a style="font-weight: 600">{{ selectedRowKeys.length }}</a>项-->
<!--          <a style="margin-left: 24px" @click="onClearSelected">清空</a>-->
<!--        </div>-->

        <a-table
          ref="table"
          size="middle"
          bordered
          rowKey="id"
          :columns="columns"
          :dataSource="dataSource"
          :pagination="ipagination"
          :loading="loading"
          :rowSelection="{fixed:true,selectedRowKeys: selectedRowKeys, onChange: onSelectChange}"

          @change="handleTableChange">

          <template slot="htmlSlot" slot-scope="text">
            <div v-html="text"></div>
          </template>
          <template slot="imgSlot" slot-scope="text">
            <span v-if="!text" style="font-size: 12px;font-style: italic;">无此图片</span>
            <img v-else :src="getImgView(text)" height="25px" alt="图片不存在" style="max-width:80px;font-size: 12px;font-style: italic;"/>
          </template>
          <template slot="fileSlot" slot-scope="text">
            <span v-if="!text" style="font-size: 12px;font-style: italic;">无此文件</span>
            <a-button
              v-else
              :ghost="true"
              type="primary"
              icon="download"
              size="small"
              @click="uploadFile(text)">
              下载
            </a-button>
          </template>

          <span slot="action" slot-scope="text, record">
            <a @click="handleEdit(record)">设备明细</a>
            <a-divider type="vertical"/>
            <a @click="handleEdit(record)">编辑</a>
            <a-divider type="vertical"/>
            <a-dropdown>
              <a class="ant-dropdown-link">更多 <a-icon type="down"/></a>
              <a-menu slot="overlay">
                <a-menu-item>
                  <a-popconfirm title="确定删除吗?" @confirm="() => handleDelete(record.id)">
                    <a>删除</a>
                  </a-popconfirm>
                </a-menu-item>
              </a-menu>
            </a-dropdown>
        </span>

        </a-table>
      </div>
    </a-card>
  </a-modal>
</template>

<script>
import { JeecgListMixin } from '@/mixins/JeecgListMixin'
import pick from 'lodash.pick'

export default {
  name: "WmEquipmentExamineListModal",
  mixins:[JeecgListMixin],
  components: {

  },
  data () {
    return {
      title:"巡检计划-设备列表",
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
      description: '巡检计划设备列表',
      // 表头
      columns: [
        {
          title: '#',
          dataIndex: '',
          key:'rowIndex',
          width:60,
          align:"center",
          customRender:function (t,r,index) {
            return parseInt(index)+1;
          }
        },
        {
          title:'巡检设备',
          align:"center",
          dataIndex: 'equipmentName'
        },
        {
          title:'设备型号',
          align:"center",
          dataIndex: 'equipmentModel'
        },
        {
          title:'设备编号',
          align:"center",
          dataIndex: 'equipmentCode'
        },
        {
          title:'使用科室',
          align:"center",
          dataIndex: 'useDept_dictText'
        },
        {
          title:'使用人',
          align:"center",
          dataIndex: 'chargePerson_dictText'
        }
      ],
      url: {
        list: "/medical/wmEquipmentExamineHistory/selfList",
        delete: "/medical/wmEquipmentExamine/delete",
        deleteBatch: "/medical/wmEquipmentExamine/deleteBatch",
        exportXlsUrl: "/medical/wmEquipmentExamine/exportXls",
        importExcelUrl: "medical/wmEquipmentExamine/importExcel",
      },
      dictOptions:{},
    }
  },
  computed: {
    importExcelUrl: function(){
      return `${window._CONFIG['domianURL']}/${this.url.importExcelUrl}`;
    }
  },
  methods: {
    detailList (record) {
      if (!record) {
        return
      }
      this.visible = true;
      this.queryParam.examineId = record.id
      this.loadData(1)
    },
    initDictConfig(){
    },
    close () {
      this.$emit('close');
      this.visible = false;
    },
  }
}
</script>