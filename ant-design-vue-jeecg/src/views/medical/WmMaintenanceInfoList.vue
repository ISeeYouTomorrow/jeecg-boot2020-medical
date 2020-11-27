<template>
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
    <div class="table-operator">
      <a-button @click="handleAdd" type="primary" icon="plus">报修</a-button>
      <a-button type="primary" icon="download" @click="handleExportXls('设备维修')">导出</a-button>
      <a-upload name="file" :showUploadList="false" :multiple="false" :headers="tokenHeader" :action="importExcelUrl" @change="handleImportExcel">
        <a-button type="primary" icon="import">导入</a-button>
      </a-upload>
      <a-dropdown v-if="selectedRowKeys.length > 0">
        <a-menu slot="overlay">
          <a-menu-item key="1" @click="batchDel"><a-icon type="delete"/>删除</a-menu-item>
        </a-menu>
        <a-button style="margin-left: 8px"> 批量操作 <a-icon type="down" /></a-button>
      </a-dropdown>
    </div>

    <!-- table区域-begin -->
    <div>
      <div class="ant-alert ant-alert-info" style="margin-bottom: 16px;">
        <i class="anticon anticon-info-circle ant-alert-icon"></i> 已选择 <a style="font-weight: 600">{{ selectedRowKeys.length }}</a>项
        <a style="margin: 0px 24px" @click="onClearSelected">清空</a>
        <a-tag color="orange">只有待派工的才能撤销</a-tag>
      </div>
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
          <a-popconfirm v-if="record.maintenanceStatus === '0'" title="确定撤销吗?" @confirm="() => handleDelete(record.id)">
            <a>撤销</a>
          </a-popconfirm>

<!--          <a-divider type="vertical" />-->
<!--          <a-dropdown>-->
<!--            <a class="ant-dropdown-link">更多 <a-icon type="down" /></a>-->
<!--            <a-menu slot="overlay">-->
<!--              <a-menu-item>-->
<!--                <a-popconfirm title="确定删除吗?" @confirm="() => handleDelete(record.id)">-->
<!--                  <a>删除</a>-->
<!--                </a-popconfirm>-->
<!--              </a-menu-item>-->
<!--            </a-menu>-->
<!--          </a-dropdown>-->
        </span>

      </a-table>
    </div>

    <wmMaintenanceInfo-modal ref="modalForm" @ok="modalFormOk"></wmMaintenanceInfo-modal>
  </a-card>
</template>

<script>

import { JeecgListMixin } from '@/mixins/JeecgListMixin'
import WmMaintenanceInfoModal from './modules/WmMaintenanceInfoModal'
import {filterMultiDictText} from '@/components/dict/JDictSelectUtil'

export default {
  name: "WmMaintenanceInfoList",
  mixins:[JeecgListMixin],
  components: {
    WmMaintenanceInfoModal
  },
  data () {
    return {
      description: '设备维修管理页面',
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
          title:'设备编号',
          align:"center",
          dataIndex: 'equipmentCode'
        },
        {
          title:'维修设备',
          align:"center",
          dataIndex: 'equipmentName'
        },
        {
          title:'设备型号',
          align:"center",
          dataIndex: 'equipmentModel'
        },
        {
          title:'报修科室',
          align:"center",
          dataIndex: 'applyDept_dictText'
        },
        {
          title:'报修时间',
          align:"center",
          dataIndex: 'createTime'
        },
        {
          title:'报修人',
          align:"center",
          dataIndex: 'applyPerson'
        },
        {
          title:'问题类型',
          align:"center",
          dataIndex: 'problemType_dictText'
        },
        {
          title:'问题描述',
          align:"center",
          dataIndex: 'problemRemark'
        },
        {
          title:'问题图片',
          align:"center",
          dataIndex: 'problemPictures',
          scopedSlots: {customRender: 'imgSlot'}
        },
        {
          title:'维修状态',
          align:"center",
          dataIndex: 'maintenanceStatus_dictText'
        },
        {
          title: '操作',
          dataIndex: 'action',
          align:"center",
          scopedSlots: { customRender: 'action' }
        }
      ],
      url: {
        list: "/medical/wmMaintenanceInfo/list",
        delete: "/medical/wmMaintenanceInfo/delete",
        deleteBatch: "/medical/wmMaintenanceInfo/deleteBatch",
        exportXlsUrl: "/medical/wmMaintenanceInfo/exportXls",
        importExcelUrl: "medical/wmMaintenanceInfo/importExcel",
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
    initDictConfig(){
    }
  }
}
</script>
<style scoped>
@import '~@assets/less/common.less';
</style>