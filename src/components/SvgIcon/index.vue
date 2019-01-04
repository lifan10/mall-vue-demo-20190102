<template>
 <svg :class="svgClass"></svg>
</template>

<script>
export default {
  name: 'index',
  props: {
    iconClass: {
      type: String,
      required: true
    },
    className: {
      type: String
    }
  },
  computed: {
    svgClass () {
      if (this.className) {
        return 'svg-icon' + this.className
      } else {
        return 'svg-icon'
      }
    }
  }
}
</script>

<style scoped>

</style>
