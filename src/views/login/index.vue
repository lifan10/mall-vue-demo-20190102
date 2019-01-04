<template>
<div>
  <Card class="login-card">
    <p slot="title">The standard card</p>
    <p>Content of card</p>
    <p>Content of card</p>
    <p>Content of card</p>
  </Card>
  <img src="../../images/login_center_bg.png" class="login-bg" alt="">
</div>
</template>

<script>
export default {
  name: 'index'
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
