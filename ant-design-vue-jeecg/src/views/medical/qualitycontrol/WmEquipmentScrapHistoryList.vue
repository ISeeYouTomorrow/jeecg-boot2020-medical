<template>
  <a-card :bordered="false">
    <!-- 查询区域 -->
    <div class="table-page-search-wrapper">
      <a-form layout="inline" @keyup.enter.native="searchQuery">
        <a-row :gutter="24">
          <a-col :xl="6" :lg="7" :md="8" :sm="24">
            <a-form-item label="设备名称">
              <a-input placeholder="请输入设备名称" v-model="queryParam.equipmentName"></a-input>
            </a-form-item>
          </a-col>
          <a-col :xl="6" :lg="7" :md="8" :sm="24">
            <a-form-item label="设备编号">
              <a-input placeholder="请输入设备编号" v-model="queryParam.equipmentCode"></a-input>
            </a-form-item>
          </a-col>
          <a-col :xl="6" :lg="7" :md="8" :sm="24">
            <span style="float: left;overflow: hidden;" class="table-page-search-submitButtons">
              <a-button type="primary" @click="searchQuery" icon="search">查询</a-button>
              <a-button type="primary" @click="searchReset" icon="reload" style="margin-left: 8px">重置</a-button>
              <!--              <a @click="handleToggleSearch" style="margin-left: 8px">-->
              <!--                {{ toggleSearchStatus ? '收起' : '展开' }}-->
              <!--                <a-icon :type="toggleSearchStatus ? 'up' : 'down'"/>-->
              <!--              </a>-->
            </span>
          </a-col>
        </a-row>
      </a-form>
    </div>
    <!-- 查询区域-END -->

    <!-- 操作按钮区域 -->
    <div class="table-operator">
      <a-button @click="handleAdd('报废设备')" type="primary" icon="plus">报废设备</a-button>
      <a-button type="primary" icon="download" @click="handleExportXls('设备报废记录')">导出</a-button>
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
<!--          <a @click="handleCancel(record)">撤销</a>-->
              <a-popconfirm title="确定删除吗?" @confirm="() => handleCancel(record)">
                <a>删除</a>
              </a-popconfirm>
<!--          <a-divider type="vertical" />-->
<!--          <a-dropdown>-->
<!--            <a class="ant-dropdown-link">更多 <a-icon type="down" /></a>-->
            <a-menu slot="overlay">
              <a-menu-item>
                <a-popconfirm title="确定删除吗?" @confirm="() => handleDelete(record.id)">
                  <a>删除</a>
                </a-popconfirm>
              </a-menu-item>
            </a-menu>
<!--          </a-dropdown>-->
        </span>

      </a-table>
    </div>

    <wmEquipmentScrapHistory-modal ref="modalForm" @ok="modalFormOk"></wmEquipmentScrapHistory-modal>
  </a-card>
</template>

<script>

  import { JeecgListMixin } from '@/mixins/JeecgListMixin'
  import WmEquipmentScrapHistoryModal from './modules/WmEquipmentScrapHistoryModal'
  import { deleteAction } from '@api/manage'

  export default {
    name: "WmEquipmentScrapHistoryList",
    mixins:[JeecgListMixin],
    components: {
      WmEquipmentScrapHistoryModal
    },
    data () {
      return {
        description: '设备报废记录管理页面',
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
            title:'备注信息',
            align:"center",
            dataIndex: 'remark'
          },
          {
            title:'报废附件',
            align:"center",
            dataIndex: 'scrapFile',
            scopedSlots: {customRender: 'fileSlot'}
          },
          {
            title:'报废状态',
            align:"center",
            dataIndex: 'scrapState_dictText'
          },
          {
            title: '操作',
            dataIndex: 'action',
            align:"center",
            scopedSlots: { customRender: 'action' }
          }
        ],
        url: {
          list: "/medical/wmEquipmentScrapHistory/list",
          delete: "/medical/wmEquipmentScrapHistory/delete",
          deleteBatch: "/medical/wmEquipmentScrapHistory/deleteBatch",
          exportXlsUrl: "/medical/wmEquipmentScrapHistory/exportXls",
          importExcelUrl: "medical/wmEquipmentScrapHistory/importExcel",
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
      },
      /**
       * 撤销
       * @param record
       */
      handleCancel (record) {
        if(!this.url.delete){
          this.$message.error("请设置url.delete属性!")
          return
        }
        let that = this;
        deleteAction(that.url.delete, {id: record.id,equipmentId:record.equipmentId}).then((res) => {
          if (res.success) {
            that.$message.success(res.message);
            that.loadData();
          } else {
            that.$message.warning(res.message);
          }
        });
      }
    }
  }
</script>
<style scoped>
  @import '~@assets/less/common.less';
</style>