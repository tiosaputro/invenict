<template>
 <Message v-if="this.expired" severity="error">Link Was Expired</Message>
 <Message v-else-if="this.notvalid" severity="error">Link Not Valid</Message>
</template>
<script>
export default {
  data() {
    return {
        expired: false,
        notvalid: false,
    };
  },
  mounted() {
    this.cekStatus();
  },
  methods: {
      cekStatus(){
          if(this.$route.params.stat == 'expired'){
              this.expired = true;
          }
          else {
              this.notvalid = true;
          }
      },
  },
};
</script>