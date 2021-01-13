<template>
  <div id="userLayout" :class="['user-layout-wrapper', device]">
    <div class="container">
      <div class="top">
        <div class="header">
          <a href="/">
            <img src="~@/assets/logo_green.png" class="logo" alt="logo">
<!--            <span class="title">九福云</span>-->
          </a>
        </div>
<!--        <div class="desc">-->
<!--          河南九福云网络科技有限公司-->
<!--        </div>-->
      </div>

      <route-view></route-view>

      <div class="footer">
<!--        <div class="links">-->
<!--          <a href="http://www.9fuy.com/" target="_blank">帮助</a>-->
<!--          <a href="http://www.9fuy.com/" target="_blank">隐私</a>-->
<!--          <a href="http://www.9fuy.com/" target="_blank">条款</a>-->
<!--&lt;!&ndash;          <a href="https://github.com/zhangdaiscott/jeecg-boot/blob/master/LICENSE" target="_blank">条款</a>&ndash;&gt;-->
<!--        </div>-->
        <div class="copyright">
<!--          Copyright &copy; 2020 <a href="http://www.9fuy.com/" target="_blank">九福云</a> 出品-->
          @ 智慧医疗设备全生命周期管控平台
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  import RouteView from "@/components/layouts/RouteView"
  import { mixinDevice } from '@/utils/mixin.js'

  export default {
    name: "UserLayout",
    components: { RouteView },
    mixins: [mixinDevice],
    data () {
      return {}
    },
    mounted () {
      document.body.classList.add('userLayout')
    },
    beforeDestroy () {
      document.body.classList.remove('userLayout')
    },
  }
</script>

<style lang="less" scoped>
  #userLayout.user-layout-wrapper {
    height: 100%;

    &.mobile {
      .container {
        .main {
          max-width: 368px;
          width: 98%;
        }
      }
    }

    .container {
      width: 100%;
      min-height: 100%;
      //background: #f0f2f5 url(~@/assets/background.svg) no-repeat 50%;
      background: #f0f2f5 url(~@/assets/backg.png) no-repeat 50%;
      background-size: 100%;
      padding: 110px 0 144px;
      position: relative;

      a {
        text-decoration: none;
      }

      .top {
        text-align: center;

        .header {
          height: 100px;
          line-height: 44px;

          .badge {
            position: absolute;
            display: inline-block;
            line-height: 1;
            vertical-align: middle;
            margin-left: -12px;
            margin-top: -10px;
            opacity: 0.8;
          }

          .logo {
            margin-top: 60px;
            width: 80px;
            height: 117px;
            vertical-align: top;
            margin-right: 16px;
            border-style: none;
          }

          .title {
            font-size: 33px;
            color: rgba(0, 0, 0, .85);
            font-family: "Chinese Quote", -apple-system, BlinkMacSystemFont, "Segoe UI", "PingFang SC", "Hiragino Sans GB", "Microsoft YaHei", "Helvetica Neue", Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
            font-weight: 600;
            position: relative;
            top: 2px;
          }
        }
        .desc {
          font-size: 18px;
          color: rgba(0, 0, 0, 0.45);
          font-weight: bold;
          margin-top: 12px;
          margin-bottom: 20px;
        }
      }

      .main {
        padding-top: 80px;
        min-width: 300px;
        width: 480px;
        margin: 0 auto;
        background: #ffffff;
        border-radius: 10px;
      }

      .footer {
        position: absolute;
        width: 100%;
        bottom: 0;
        padding: 0 16px;
        margin: 48px 0 24px;
        text-align: center;

        .links {
          margin-bottom: 8px;
          font-size: 14px;
          a {
            color: rgba(0, 0, 0, 0.45);
            transition: all 0.3s;
            &:not(:last-child) {
              margin-right: 40px;
            }
          }
        }
        .copyright {
          color: rgba(0, 0, 0, 0.45);
          font-size: 14px;
        }
      }
    }
  }
</style>