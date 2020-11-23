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
      <a-button @click="handleAdd('设备转科')" type="primary" icon="plus">新增</a-button>
      <a-button type="primary" icon="download" @click="handleExportXls('设备转科')">导出</a-button>
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
        <a style="margin-left: 24px" @click="onClearSelected">清空</a>
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
          <a @click="handleEdit(record)">编辑</a>

          <a-divider type="vertical" />
          <a-dropdown>
            <a class="ant-dropdown-link">更多 <a-icon type="down" /></a>
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

    <wmEquipmentTransfer-modal ref="modalForm" @ok="modalFormOk"></wmEquipmentTransfer-modal>
  </a-card>
</template>

<script>

  import { JeecgListMixin } from '@/mixins/JeecgListMixin'
  import WmEquipmentTransferModal from './modules/WmEquipmentTransferModal'

  export default {
    name: "WmEquipmentTransferList",
    mixins:[JeecgListMixin],
    components: {
      WmEquipmentTransferModal
    },
    data () {
      return {
        description: '设备转科管理页面',
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
            title:'设备名称',
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
            title:'原科室',
            align:"center",
            dataIndex: 'oldDept_dictText'
          },
          {
            title:'原使用人',
            align:"center",
            dataIndex: 'oldPerson_dictText'
          },
          {
            title:'转入科室',
            align:"center",
            dataIndex: 'transferDept_dictText'
          },
          {
            title:'接收人',
            align:"center",
            dataIndex: 'transferPerson_dictText'
          },
          {
            title:'接收位置',
            align:"center",
            dataIndex: 'transferArea_dictText'
          },
          {
            title:'转科附件',
            align:"center",
            dataIndex: 'transferFile',
            scopedSlots: {customRender: 'fileSlot'}
          },
          {
            title:'转科备注',
            align:"center",
            dataIndex: 'remark'
          },
          {
            title:'转科时间',
            align:"center",
            dataIndex: 'createTime'
          }
          // {
          //   title: '操作',
          //   dataIndex: 'action',
          //   align:"center",
          //   scopedSlots: { customRender: 'action' }
          // }
        ],
        url: {
          list: "/medical/wmEquipmentTransfer/list",
          delete: "/medical/wmEquipmentTransfer/delete",
          deleteBatch: "/medical/wmEquipmentTransfer/deleteBatch",
          exportXlsUrl: "/medical/wmEquipmentTransfer/exportXls",
          importExcelUrl: "medical/wmEquipmentTransfer/importExcel",
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