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
            <a-form-item label="计量周期">
              <a-select placeholder="请选择" v-model="queryParam.cycleDay">
                <a-select-option value="30">30天</a-select-option>
                <a-select-option value="60">60天</a-select-option>
                <a-select-option value="90">90天</a-select-option>
                <a-select-option value="120">120天</a-select-option>
              </a-select>
            </a-form-item>
          </a-col>
          <a-col :xl="6" :lg="7" :md="8" :sm="24">
            <span style="float: left;overflow: hidden;" class="table-page-search-submitButtons">
              <a-button type="primary" @click="searchQuery" icon="search">查询</a-button>
              <a-button type="primary" @click="searchReset" icon="reload" style="margin-left: 8px">重置</a-button>
              <a @click="handleToggleSearch" style="margin-left: 8px">
                {{ toggleSearchStatus ? '收起' : '展开' }}
                <a-icon :type="toggleSearchStatus ? 'up' : 'down'"/>
              </a>
            </span>
          </a-col>
        </a-row>
      </a-form>
    </div>
    <!-- 查询区域-END -->

    <!-- 操作按钮区域 -->
    <div class="table-operator">
      <a-button :disabled="selectedRowKeys.length === 0" @click="handleAddCallback" type="primary" icon="plus">加入计划</a-button>
      <a-button type="primary" icon="download" @click="handleExportXls('设备计量记录')">导出</a-button>
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
<!--          <a @click="handleEdit(record)">编辑</a>-->
              <a-popconfirm v-if="record.id && record.MeasureStatus === '0'" title="确定从计划撤销吗?" @confirm="() => handleDelete(record.id)">
                <a>撤销</a>
              </a-popconfirm>
<!--          <a-divider type="vertical" />-->
<!--          <a-dropdown v-if="record.id">-->
<!--            <a class="ant-dropdown-link">更多 <a-icon type="down" /></a>-->
<!--            <a-menu slot="overlay">-->
<!--              <a-menu-item>-->
<!--                <a-popconfirm title="确定撤销吗?" @confirm="() => handleDelete(record.id)">-->
<!--                  <a>撤销</a>-->
<!--                </a-popconfirm>-->
<!--              </a-menu-item>-->
<!--            </a-menu>-->
<!--          </a-dropdown>-->
        </span>

      </a-table>
    </div>

    <wmMeasureHistory-modal ref="modalForm" @ok="modalFormOk"></wmMeasureHistory-modal>
  </a-card>
</template>

<script>

  import { JeecgListMixin } from '@/mixins/JeecgListMixin'
  import WmMeasureHistoryModal from './modules/WmMeasureHistoryModal'
  import {filterMultiDictText} from '@comp/dict/JDictSelectUtil'

  export default {
    name: "WmMeasureHistoryList",
    mixins:[JeecgListMixin],
    components: {
      WmMeasureHistoryModal
    },
    data () {
      return {
        description: '设备计量记录管理页面',
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
            title:'设备编号',
            align:"center",
            dataIndex: 'equipmentCode'
          },
          {
            title:'设备型号',
            align:"center",
            dataIndex: 'equipmentModel'
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
            title:'安放位置',
            align:"center",
            dataIndex: 'chargeArea_dictText'
          },
          {
            title:'计量周期(天)',
            align:"center",
            dataIndex: 'measureDay'
          },
          {
            title:'所属计量计划',
            align:"center",
            dataIndex: 'measurePlanId_dictText'
          },
          {
            title:'计量厂商',
            align:"center",
            dataIndex: 'manufacturerId_dictText'
          },
          {
            title:'计量人',
            align:"center",
            dataIndex: 'manufacturerPerson'
          },
          {
            title:'计量剩余时间(天)',
            align:"center",
            dataIndex: 'subDay'
          },
          {
            title:'计量状态',
            align:"center",
            dataIndex: 'measureStatus_dictText'
          },
          // {
          //   title:'计量时间',
          //   align:"center",
          //   dataIndex: 'MeasureTime',
          //   customRender:function (text) {
          //     return !text?"":(text.length>10?text.substr(0,10):text)
          //   }
          // },
          // {
          //   title:'计量费用',
          //   align:"center",
          //   dataIndex: 'MeasureFee'
          // },
          // {
          //   title:'计量结果',
          //   align:"center",
          //   dataIndex: 'MeasureResult_dictText'
          // },
          // {
          //   title:'验收状态',
          //   align:"center",
          //   dataIndex: 'MeasureCheck'
          // },
          {
            title: '操作',
            dataIndex: 'action',
            align:"center",
            scopedSlots: { customRender: 'action' }
          }
        ],
        url: {
          list: "/medical/wmMeasureHistory/selfList",
          delete: "/medical/wmMeasureHistory/delete",
          deleteBatch: "/medical/wmMeasureHistory/deleteBatch",
          exportXlsUrl: "/medical/wmMeasureHistory/exportXls",
          importExcelUrl: "medical/wmMeasureHistory/importExcel",
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
       * 添加到计划
       */
      handleAddCallback() {
        // console.log('row select ----------> ', this.selectionRows)
        let check = true
        this.selectionRows.forEach(it => {
          if (it.MeasureStatus === '0') {
            check = false
            return
          }
        })
        if (!check) {
          this.$message.warn('请勿选择已列入计划的设备!')
          return
        }
        this.$refs.modalForm.add(this.selectionRows);
        this.$refs.modalForm.title = "设备计量";
        this.$refs.modalForm.disableSubmit = false;
      }
    }
  }
</script>
<style scoped>
  @import '~@assets/less/common.less';
</style>