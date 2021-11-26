<template>
<div class="container py-2">
    <div class="col-md-8 text-center mb-10">
        <Toast />
        <img src="/assets/layout/images/logo_emp.png" class="rounded" width="400"/>
        <div class="card">
          <Message severity="success" v-if="this.logOut" >Berhasil Logout, Silahkan Login Kembali</Message>
          <Message severity="warn" v-else-if ="this.Expired">Sesi Login Telah Berakhir, Silahkan Login Kembali</Message> 
           <Message severity="info" v-else >Selamat Datang, Silahkan Login</Message>
            <div class="card-body">
             <form @submit.prevent="Login">

              <div class="p-fluid p-jc-center">
                <div class="p-field p-grid p-jc-center">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:100px">Email</label>
                 <div class="p-col-4">
                  <InputText
                    type="email"
                    v-model="email"
                    placeholder="Masukan Email. . ."
                    :class="{ 'p-invalid': submitted && !email }"
                  />
                   <small class="p-error" v-if="submitted && !email"
                      >Email Wajib Diisi.
                   </small>
                   <small v-if="errors.email" class="p-error"
                    > Email doesnt exist.   
                  </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid p-jc-center">
                <div class="p-field p-grid p-jc-center">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:100px">Password</label>
                 <div class="p-col-4">
                <Password
                  v-model="password"
                  placeholder="Masukan Password. . ."
                  :class="{ 'p-invalid': submitted && !password }"
                  toggleMask
                  :feedback="false"
                  />
                   <small class="p-error" v-if="submitted && !password"
                      >Password Wajib Diisi.
                   </small>
                   <small v-if="errors.password" class="p-error"
                    > Unable to login. Incorrect password.  
                  </small>
                  </div>
                </div>
                <br>
              </div>
                 <Button
                  type="submit"
                  icon="pi pi-check"
                  class="p-button-raised p-button-info p-button-text"
                  label="Login"
                  iconPos="right"
                />
            </form>
          </div>
      </div>
      </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
        logOut:null,
        Expired:null,
        loggedIn:null,
        email: '',
        password: '',
        errors :[],
        submitted: false
    };
  },
  mounted(){
    this.cekStatus();
  },
    methods:{
    cekStatus(){
      this.logOut = localStorage.getItem("logOut");
      this.Expired = localStorage.getItem("Expired");
      this.loggedIn = localStorage.getItem("loggedIn");
      if(this.loggedIn){
        this.$router.push('/dashboard')
      }
      },
    Login() {
      this.errors = [];
      this.submitted = true;
        if (
        this.email != '' &&
        this.password != ''
        )
        {
            const data = new FormData();
            data.append("email", this.email);
            data.append("password", this.password);

            this.axios.get('/sanctum/csrf-cookie').then(() => {
            this.axios.post('api/login', data).then((response) => {
              this.$toast.add({
                severity: "success",
                summary: "Success Message",
                detail: "Success Login",
                life: 1000,
              });
              localStorage.clear();
              localStorage.setItem("loggedIn", "true");
              localStorage.setItem("token", response.data.token);
              localStorage.setItem("id", response.data.id);
              localStorage.setItem("usr_name", response.data.usr_name);
              setTimeout( () => this.$router.push('/'), 1000);
            }).catch(error=> {
               if (error.response.status == 422) {
                   this.errors = error.response.data;
                   };
                  });
                });
              }
            },
          },
        }
</script>
<style scoped lang="scss">
.card {
  background-color: #eeee;
  box-shadow: 6px 6px 6px rgba(0, 0, 0, 0.16), 0 6px 6px rgba(0, 0, 0, 0.23);
}
</style>