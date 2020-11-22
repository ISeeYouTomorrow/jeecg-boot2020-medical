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
      <a-button @click="handleAdd('设备借用')" type="primary" icon="plus">设备借用</a-button>
      <a-button type="primary" icon="download" @click="handleExportXls('设备借用信息')">导出</a-button>
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
          <span v-if="text == 0" style="color: #f5222d">未归还</span>
          <span v-else style="color: #00C1B3">已归还</span>
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
<!--          <a @click="handleEdit(record)">编辑</a>-->
          <a v-if="record.onloanStatus == 0" @click="handleReturn(record)">归还</a>
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

    <wmEquipmentOnloan-modal ref="modalForm" @ok="modalFormOk"></wmEquipmentOnloan-modal>
  </a-card>
</template>

<script>

  import { JeecgListMixin } from '@/mixins/JeecgListMixin'
  import WmEquipmentOnloanModal from './modules/WmEquipmentOnloanModal'
  import {httpAction} from "@api/manage";

  export default {
    name: "WmEquipmentOnloanList",
    mixins:[JeecgListMixin],
    components: {
      WmEquipmentOnloanModal,
    },
    data () {
      return {
        description: '设备借用信息管理页面',
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
            title:'借用设备',
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
            title:'借用科室',
            align:"center",
            dataIndex: 'onloanDept_dictText'
          },
          {
            title:'借用人',
            align:"center",
            dataIndex: 'onloanPerson_dictText'
          },
          {
            title:'安放位置',
            align:"center",
            dataIndex: 'onloanArea_dictText'
          },
          {
            title:'是否已归还',
            align:"center",
            dataIndex: 'onloanStatus',
            scopedSlots: { customRender: 'htmlSlot' }
          },
          {
            title:'借用日期',
            align:"center",
            dataIndex: 'onloanDate',
            customRender:function (text) {
              return !text?"":(text.length>10?text.substr(0,10):text)
            }
          },
          {
            title:'归还日期',
            align:"center",
            dataIndex: 'returnDate',
            customRender:function (text) {
              return !text?"":(text.length>10?text.substr(0,10):text)
            }
          },
          {
            title: '操作',
            dataIndex: 'action',
            align:"center",
            scopedSlots: { customRender: 'action' }
          }
        ],
        url: {
          // list: "/medical/wmEquipmentOnloan/list",
          list: "/medical/wmEquipmentOnloan/querySelfPageList",
          delete: "/medical/wmEquipmentOnloan/delete",
          deleteBatch: "/medical/wmEquipmentOnloan/deleteBatch",
          exportXlsUrl: "/medical/wmEquipmentOnloan/exportXls",
          importExcelUrl: "medical/wmEquipmentOnloan/importExcel",
          returnEquipmentUrl:'/medical/wmEquipmentOnloan/returnBack'
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
      /**
       * 设备归还
       * @param record
       */
      handleReturn(record) {
        let httpurl = this.url.returnEquipmentUrl
        let formData = record
        let method = 'PUT'
        const that = this;
        httpAction(httpurl,formData,method).then((res)=>{
          console.log('设备归还结果: ', res)
          if(res.success){
            that.$message.success(res.message);
            that.loadData();
          }else{
            that.$message.warning(res.message);
          }
        }).finally(() => {
          that.confirmLoading = false;
          that.close();
        })
      },
      initDictConfig(){
      }
    }
  }
</script>
<style scoped>
  @import '~@assets/less/common.less';
</style>