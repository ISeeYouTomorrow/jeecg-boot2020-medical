<template>
  <a-card :bordered="false">
    <!-- 查询区域 -->
    <div class="table-page-search-wrapper">
      <a-form layout="inline" @keyup.enter.native="searchQuery">
        <a-row :gutter="24">
          <a-col :xl="6" :lg="7" :md="8" :sm="24">
            <a-form-item label="巡检计划">
              <j-search-select-tag
                placeholder="请选择巡检计划"
                v-model="queryParam.examineId"
                dict="wm_equipment_examine,examine_name,id"
                :async="false">
              </j-search-select-tag>
<!--              {{ queryParam.examineId }}-->
            </a-form-item>
          </a-col>
          <a-col :xl="6" :lg="7" :md="8" :sm="24">
            <span style="float: left;overflow: hidden;" class="table-page-search-submitButtons">
              <a-button type="primary" @click="searchQuery" icon="search">查询</a-button>
              <a-button type="primary" @click="searchReset" icon="reload" style="margin-left: 8px">重置</a-button>
            </span>
          </a-col>
        </a-row>
      </a-form>
    </div>
    <!-- 查询区域-END -->

    <!-- 操作按钮区域 -->
    <div class="table-operator">
      <a-button @click="handleExamine" type="primary" icon="plus">巡检</a-button>
      <a-button type="primary" icon="download" @click="handleExportXls('设备巡检记录')">导出</a-button>
      <a-upload name="file" :showUploadList="false" :multiple="false" :headers="tokenHeader" :action="importExcelUrl" @change="handleImportExcel">
        <a-button type="primary" icon="import">导入</a-button>
      </a-upload>
<!--      <a-dropdown v-if="selectedRowKeys.length > 0">-->
<!--        <a-menu slot="overlay">-->
<!--          <a-menu-item key="1" @click="batchDel"><a-icon type="delete"/>删除</a-menu-item>-->
<!--        </a-menu>-->
<!--        <a-button style="margin-left: 8px"> 批量操作 <a-icon type="down" /></a-button>-->
<!--      </a-dropdown>-->
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
        rowKey="equipmentId"
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
          <a @click="equipmentExamine(record)">巡检</a>

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

    <wmEquipmentExamineHistory-modal ref="modalForm" @ok="modalFormOk"></wmEquipmentExamineHistory-modal>
  </a-card>
</template>

<script>

  import { JeecgListMixin } from '@/mixins/JeecgListMixin'
  import WmEquipmentExamineHistoryModal from './modules/WmEquipmentExamineHistoryModal'
  import JSearchSelectTag from '@/components/dict/JSearchSelectTag'

  export default {
    name: "WmEquipmentExamineHistoryList",
    mixins:[JeecgListMixin],
    components: {
      WmEquipmentExamineHistoryModal,
      JSearchSelectTag
    },
    data () {
      return {
        description: '设备巡检记录管理页面',
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
          },
          {
            title:'巡检时间',
            align:"center",
            dataIndex: 'examineTime'
          },
          {
            title:'巡检人',
            align:"center",
            dataIndex: 'examinePerson_dictText'
          },
          {
            title:'巡检结果',
            align:"center",
            dataIndex: 'examineResult_dictText'
          },
          {
            title:'备注信息',
            align:"center",
            dataIndex: 'remark'
          },
          {
            title: '操作',
            dataIndex: 'action',
            align:"center",
            scopedSlots: { customRender: 'action' }
          }
        ],
        url: {
          list: "/medical/wmEquipmentExamineHistory/selfList",
          delete: "/medical/wmEquipmentExamineHistory/delete",
          deleteBatch: "/medical/wmEquipmentExamineHistory/deleteBatch",
          exportXlsUrl: "/medical/wmEquipmentExamineHistory/exportXls",
          importExcelUrl: "medical/wmEquipmentExamineHistory/importExcel",
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
      //设备巡检
      handleExamine () {
        if (this.selectionRows.length === 0) {
          this.$message.warning('请选择巡检设备');
          return
        }
        this.equipmentExamine(this.selectionRows[0])
      },
      equipmentExamine (record) {
        if (!record.examineId) {
          record.examineId = this.queryParam.examineId
        }
        this.handleEdit(record,'设备巡检')
      }
    }
  }
</script>
<style scoped>
  @import '~@assets/less/common.less';
</style>