<template>
</template>
<script>
import moment from 'moment';
export default {
  data() {
    return {
        verif:[],
        ireq_id:null,
        todayyy : null
    };
  },
  mounted() {
    this.verifId();
  },
  methods: {
    verifId(){
      localStorage.setItem("loggedIn", "true");
        this.axios.get('/api/cek-verif-id/'+this.$route.params.code).then((res)=>{
            this.verif = res.data;
            this.ireq_id = res.data.ireq_id;
            this.todayyy = moment(new Date()).format('YYYY-MM-DD H:mm:s')
            if(this.verif.expired_at <= this.todayyy){
              this.axios.get('/sanctum/csrf-cookie').then(() => {
              this.axios.post('/api/login-approval',this.verif).then((res)=>{
                localStorage.clear();
                localStorage.setItem("loggedIn", "true");
                localStorage.setItem("token", res.data.token);
                localStorage.setItem("id", res.data.id);
                localStorage.setItem("usr_name", res.data.usr_name);
                this.$router.push('/page-error-410');
              });
            });
            }
            if (this.verif.expired_at >= this.todayyy){
              this.loginUser();
            }
        });
      },
    loginUser(){
      this.axios.get('/sanctum/csrf-cookie').then(() => {
        this.axios.post('/api/login-approval',this.verif).then((res)=>{
          localStorage.clear();
          localStorage.setItem("loggedIn", "true");
          localStorage.setItem("token", res.data.token);
          localStorage.setItem("id", res.data.id);
          localStorage.setItem("usr_name", res.data.usr_name);
          this.$router.push({ name: 'Ict Request Verifikasi From Email', params: { code: this.ireq_id, status: this.$route.params.status } })
        });
      });
    },
  },
};
</script>