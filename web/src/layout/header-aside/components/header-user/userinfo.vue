<!--
 * @创建文件时间: 2021-07-26 23:08:16
 * @Auther: 猿小天
 * @最后修改人: 猿小天
 * @最后修改时间: 2021-08-12 11:32:30
 * 联系Qq:1638245306
 * @文件介绍: 用户信息
-->
<template>
  <d2-container class="page">
    <el-tabs v-model="activeName" @tab-click="handleClick">
      <el-tab-pane label="用户设置" name="userInfo">
        <el-row :gutter="20">
          <el-col :span="10" :offset="6">
            <el-form
              ref="userInfoForm"
              :model="userInfo"
              required-asterisk
              :rules="userInforules"
              :label-position="position"
              center
            >
              <el-form-item prop="avatar" required label="头像">
                <el-upload
                  class="avatar-uploader"
                  list-type="picture-card"
                  :file-list="fileList"
                  :action="action"
                  :headers="headers"
                  :limit="1"
                  :disabled="fileList.length===1"
                  :on-success="handleAvatarSuccess">
<!--                  <el-image v-if="userInfo.avatar" :src="userInfo.avatar" :preview-src-list="[userInfo.avatar]" style="width: 100px;height: 100px" alt="头像"></el-image>-->
<!--                  <i v-else class="el-icon-plus avatar-uploader-icon" style="width: 100px;height: 100px"></i>-->
                  <i class="el-icon-plus"></i>
                </el-upload>
              </el-form-item>
              <el-form-item prop="name" required label="昵称">
                <el-input v-model="userInfo.name" clearable></el-input>
              </el-form-item>
              <el-form-item label="电话号码" prop="mobile">
                <el-input v-model="userInfo.mobile" clearable></el-input>
              </el-form-item>
              <el-form-item label="邮箱" prop="email">
                <el-input v-model="userInfo.email" clearable></el-input>
              </el-form-item>
              <el-form-item label="性別" prop="gender">
                <el-radio-group v-model="userInfo.gender">
                  <el-radio :label="1">男</el-radio>
                  <el-radio :label="0">女</el-radio>
                  <el-radio :label="-1">未知</el-radio>
                </el-radio-group>
              </el-form-item>
              <el-form-item>
                <el-button @click="updateInfo" type="primary">
                  <i class="fa fa-check"></i>
                  更新
                </el-button>
                <el-button @click="resetForm('info')" type="info">
                  <i class="fa fa-reply-all"></i>
                  重置
                </el-button>
              </el-form-item>
            </el-form>
          </el-col>
        </el-row>
      </el-tab-pane>
      <el-tab-pane label="密码设置" name="passwrod">
        <el-row :gutter="20">
          <el-col :span="10" :offset="6">
            <el-form
              ref="userPasswordForm"
              :model="userPasswordInfo"
              required-asterisk
              :label-position="position"
              :rules="passwordRules"
              center
            >
              <el-form-item label="原密码" required prop="oldPassword">
                <el-input
                  v-model="userPasswordInfo.oldPassword"
                  clearable
                ></el-input>
              </el-form-item>
              <el-form-item required prop="newPassword" label="新密码">
                <el-input
                  type="password"
                  v-model="userPasswordInfo.newPassword"
                  clearable
                ></el-input>
              </el-form-item>
              <el-form-item required prop="newPassword2" label="确认密码">
                <el-input
                  type="password"
                  v-model="userPasswordInfo.newPassword2"
                  clearable
                ></el-input>
              </el-form-item>
              <el-form-item>
                <el-button type="primary" @click="settingPassword">
                  <i class="fa fa-check"></i>提交
                </el-button>
                <el-button @click="resetForm('passwordForm')" type="info">
                  <i class="fa fa-reply-all"></i>重置
                </el-button>
              </el-form-item>
            </el-form>
          </el-col>
        </el-row>
      </el-tab-pane>
    </el-tabs>
  </d2-container>
</template>
<script>
import util from '@/libs/util.js'
import { request } from '@/api/service'
import { mapActions } from 'vuex'
export default {
  name: 'userInfo',
  data () {
    var validatePass = (rule, value, callback) => {
      const pwdRegex = new RegExp('(?=.*[0-9])(?=.*[a-zA-Z]).{8,30}')
      if (value === '') {
        callback(new Error('请输入密码'))
      } else if (value === this.userPasswordInfo.oldPassword) {
        callback(new Error('原密码与新密码一致'))
      } else if (!pwdRegex.test(value)) {
        callback(new Error('您的密码复杂度太低(密码中必须包含字母、数字)'))
      } else {
        if (this.userPasswordInfo.newPassword2 !== '') {
          this.$refs.userPasswordForm.validateField('newPassword2')
        }
        callback()
      }
    }
    var validatePass2 = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请再次输入密码'))
      } else if (value !== this.userPasswordInfo.newPassword) {
        callback(new Error('两次输入密码不一致!'))
      } else {
        callback()
      }
    }
    return {
      position: 'left',
      activeName: 'userInfo',
      action: util.baseURL() + 'api/system/file/',
      headers: {
        Authorization: 'JWT ' + util.cookies.get('token')
      },
      fileList:[],
      userInfo: {
        name: '',
        gender: '',
        mobile: '',
        avatar: '',
        email: ''
      },
      userInforules: {
        name: [{ required: true, message: '请输入昵称', trigger: 'blur' }],
        mobile: [
          { pattern: /^1[3|4|5|7|8]\d{9}$/, message: '请输入正确手机号' }
        ]
      },
      userPasswordInfo: {
        oldPassword: '',
        newPassword: '',
        newPassword2: ''
      },
      passwordRules: {
        oldPassword: [
          {
            required: true,
            message: '请输入原密码',
            trigger: 'blur'
          }
        ],
        newPassword: [{ validator: validatePass, trigger: 'blur' }],
        newPassword2: [{ validator: validatePass2, trigger: 'blur' }]
      }
    }
  },
  mounted () {
    this.getCurrentUserInfo()
  },
  methods: {
    ...mapActions('d2admin/account', ['logout']),
    /**
     * 获取当前用户信息
     */
    getCurrentUserInfo () {
      const _self = this
      return request({
        url: '/api/system/user/user_info/',
        method: 'get',
        params: {}
      }).then((res) => {
        _self.userInfo = res.data
        _self.fileList = [{name:'avatar.png',url:res.data.avatar}]
      })
    },
    /**
     * 更新用户信息
     */
    updateInfo () {
      const _self = this

      _self.$refs.userInfoForm.validate((valid) => {
        if (valid) {
          request({
            url: '/api/system/user/user_info/',
            method: 'put',
            data: _self.userInfo
          }).then((res) => {
            _self.$message.success('修改成功')
            _self.getCurrentUserInfo()
          })
        } else {
          // 校验失败
          // 登录表单校验失败
          this.$message.error('表单校验失败，请检查')
        }
      })
    },
    // 重置
    resetForm (name) {
      const _self = this
      if (name === 'info') {
        _self.getCurrentUserInfo()
      } else {
        _self.userPasswordForm = {}
      }
    },
    // tab切换
    handleClick (tab, event) {
      const _self = this
      if (tab.paneName === 'userInfo') {
        _self.$refs.userPasswordForm.resetFields()
        _self.getCurrentUserInfo()
      } else {
        _self.$refs.userInfoForm.resetFields()
      }
    },
    /**
     * 重新设置密码
     */
    settingPassword () {
      const _self = this

      _self.$refs.userPasswordForm.validate((valid) => {
        if (valid) {
          const userId = util.cookies.get('uuid')
          if (userId) {
            const params = JSON.parse(JSON.stringify(_self.userPasswordInfo))
            params.oldPassword = _self.$md5(params.oldPassword)
            params.newPassword = _self.$md5(params.newPassword)
            params.newPassword2 = _self.$md5(params.newPassword2)
            request({
              url: '/api/system/user/change_password/' + userId + '/',
              method: 'put',
              data: params
            }).then((res) => {
              _self.activeName = 'userInfo'
              _self.$message.success('修改成功')
              _self.logout({})
            })
          }
        } else {
          // 校验失败
          // 登录表单校验失败
          this.$message.error('表单校验失败，请检查')
        }
      })
    },
    /**
     * 头像上传
     * @param res
     * @param file
     */
    handleAvatarSuccess(res, file) {
      console.log(11,res)
      this.fileList =[{ url: util.baseURL() + res.data.url, name:file.name }]
      this.userInfo.avatar = util.baseURL() + res.data.url;
    }
  }
}
</script>
