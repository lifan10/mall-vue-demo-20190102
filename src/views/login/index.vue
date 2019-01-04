<template>
<div>
  <Card class="login-card">
    <Form ref="formInline" :model="formInline" :rules="ruleInline">
      <FormItem prop="user">
        <i-input type="text" v-model="formInline.user" placeholder="Username">
          <Icon type="ios-person-outline" slot="prepend"></Icon>
        </i-input>
      </FormItem>
      <FormItem prop="password">
        <i-input type="password" v-model="formInline.password" placeholder="Password">
          <Icon type="ios-lock-outline" slot="prepend"></Icon>
        </i-input>
      </FormItem>
      <FormItem>
        <Button type="primary" style="width: 306px;" @click="handleSubmit">登录</Button>
      </FormItem>
    </Form>
  </Card>
  <img src="../../images/login_center_bg.png" class="login-bg" alt="">
</div>
</template>

<script>
export default {
  name: 'index',
  data () {
    return {
      formInline: {
        user: '',
        password: ''
      },
      ruleInline: {
        user: [
          { required: true, message: 'Please fill in the user name', trigger: 'blur' }
        ],
        password: [
          { required: true, message: 'Please fill in the password.', trigger: 'blur' },
          { type: 'string', min: 6, message: 'The password length cannot be less than 6 bits', trigger: 'blur' }
        ]
      }
    }
  },
  methods: {
    handleSubmit () {
      console.log(this.formInline.user, this.formInline.password)
    }
  }
}
</script>

<style scoped>
 .login-card {
   height: 380px;
   width: 340px;
   z-index: 1000;
   margin: 160px auto;
   border-top: 10px solid #7272d6;
 }
 .login-bg {
   background-color: #7272d6;
   position: absolute;
   left: 0;
   top: 0;
   height: 300px;
   margin-top: 200px;

 }
</style>
