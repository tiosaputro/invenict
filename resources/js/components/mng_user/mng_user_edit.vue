<template>
  <div>
        <Toast />
        <div class="card">
        <Toolbar class="p-mb-4">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
			        <div class="p-col">
				        <h4>Management User</h4>
			        </div>
            </div>
          </template>
        </Toolbar>
             <div class="row">
                <div class="col-sm-6">
             <form @submit.prevent="UpdateUser">
                 <div class="card-body">
                     <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="tipe" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">User ID</label>
                 <div class="p-col-3 p-md-6">
                <InputText
                  v-model="user.usr_id"
                  disabled
                />
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="kode" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Username</label>
                 <div class="p-col-3 p-md-6">
                  <InputText
                    v-model="user.usr_name"
                    disabled
                  />
                  </div>
                </div>
              </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="tipe" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Full Name</label>
                 <div class="p-col-3 p-md-6">
                <InputText
                  type="text"
                  v-model="user.usr_fullname"
                  placeholder="Masukan Full Name"
                  :class="{ 'p-invalid': errors.usr_fullname }"
                  autofocus
                />
                   <small v-if="errors.usr_fullname" class="p-error">
                      {{ errors.usr_fullname[0] }}
                  </small>
                  </div>
                </div>
              </div>

              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="kode" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Email</label>
                 <div class="p-col-3 p-md-6">
                  <InputText
                    type="email"
                    v-model="user.usr_email"
                    placeholder="Masukan Email"
                    :class="{ 'p-invalid': errors.usr_email  }"
                  />
                    <small v-if="errors.usr_email" class="p-error">
                      {{ errors.usr_email[0] }}
                  </small>
                  </div>
                </div>
              </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="kode" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Password</label>
                 <div class="p-col-3 p-md-6">
                   <Password
                    v-model="user.usr_password"
                    placeholder="Password Baru(Optional)"
                    toggleMask
                    :feedback="false"
                   />
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Deskripsi" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Alamat</label>
                 <div class="p-col-3 p-md-6">
                <Textarea
                  v-model="user.usr_alamat"
                    :autoResize="true" 
                    rows="5" 
                    cols="30"
                    placeholder="Masukan Keterangan . . ."
                    :class="{ 'p-invalid': errors.usr_alamat }"
                />
                   <small v-if="errors.usr_alamat" class="p-error">
                      {{ errors.usr_alamat[0] }}
                  </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Status" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Divisi</label>
                 <div class="p-col-3 p-md-6">
               <Dropdown
                  v-model="user.div_id"
                  :options="divisi"
                  :showClear="true"
                  :filter="true"
                  optionLabel="name"
                  optionValue="code"
                  placeholder="Select A Divisi"
                  :class="{ 'p-invalid': errors.div_id }"
                />
                   <small v-if="errors.div" class="p-error">
                      {{ errors.div_id[0] }}
                  </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Status" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Status</label>
                 <div class="p-col-3 p-md-6">
               <Dropdown
                  v-model="user.usr_stat"
                  :options="stat"
                  :showClear="true"
                  :filter="true"
                  optionLabel="nama"
                  optionValue="code"
                  placeholder="Select A Status"
                  :class="{ 'p-invalid': errors.usr_stat }"
                />
                   <small v-if="errors.usr_stat" class="p-error">
                      {{ errors.usr_stat[0] }}
                  </small>
                  </div>
                </div>
              </div>
              </div>
              <div class="card" style="width: 33rem;">
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Status" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Roles</label>
                 <div class="p-col-3 p-md-6">
               <MultiSelect 
                v-model="role.role" 
                :options="roles" 
                optionValue="code"
                optionLabel="name" 
                display="chip"
                placeholder="Select Roles" 
                :class="{ 'p-invalid': errors.role }"
               />
                   <small v-if="errors.role" class="p-error">
                      {{ errors.role[0] }}
                  </small>
                  </div>
              </div>
              </div>
              </div>
              <div class="form-group">
                 <Button
                  class="p-button-rounded p-button-primary p-mr-2 p-mb-2"
                  icon="pi pi-check"
                  label="Simpan"
                  type="submit"
                />
                <Button
                  label="Cancel"
                  class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                  icon="pi pi-times"
                  @click="$router.push('/mng-user')"
                />
              </div>
            </form>
          </div>
          
              <div class="col-sm-6">
                  <div class="p-fluid">
                    <div class="p-field p-grid">
                      <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px"></label>
                      <div class="p-col-10 p-md-6">
                        <div class="card" style="height: 23.5rem;">
                          <img :src="preview" class="user-image" v-if="preview"/>
                          <img :src="'/profile/' +user.usr_foto" class="user-image" v-else />
                        </div>
                    </div>
                 </div>
                 </div>
                 <div class="p-fluid">
                    <div class="p-field p-grid">
                      <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px"></label>
                    <div class="p-col-10 p-md-6">
                      <InputText type="file" name="foto" ref="fileInput" class="form-control" @change="fileImage" />
                    </div>
                 </div>
                 </div>
              </div>
      </div>
      </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      errors: [],
      preview:'',
      user:[],
      role: {
        role : null
      },
      foto:'',
      stat: [
        { nama: "Aktif", code: "T" },
        { nama: "Tidak Aktif", code: "F" },
      ],
      token: localStorage.getItem('token'),
      roles: [],
      divisi:[],
      checkname : [],
      checkto : [],
      id : localStorage.getItem('id'),
    };
  },
  created(){
      this.cekUser();
  },
  methods: {
    cekUser(){
      if(this.id){
      this.axios.get('/api/cek-user/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.checkto = response.data.map((x)=> x.to)
        this.checkname = response.data.map((x)=> x.name)
        if(this.checkname.includes("User") || this.checkto.includes("/mng-user")){ 
          this.getUser();
          this.getRole();
          this.getRoles();
          this.getDivisi();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/dashboard'),2000);
        }
      });
      } else {
        this.$router.push('/login');
      }
    },
    getRole(){
      this.axios.get('/api/edit-usr-role/'+this.$route.params.code,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.role.role = response.data;
      });
    },
    getDivisi(){
      this.axios.get('/api/get-divisi', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.divisi = response.data;
      });
    },
      getUser(){
          this.axios.get('/api/edit-user/' +this.$route.params.code, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
              this.user = response.data
          })
      },
      getRoles(){
        this.axios.get('/api/get-role', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
            this.roles = response.data;
            }).catch(error=>{
               if ((error.response.status == 401)){
                    this.$toast.add({
                    severity:'error', summary: 'Error', detail:'Sesi Login Expired'
                });
                localStorage.clear();
                localStorage.setItem("Expired","true")
                setTimeout( () => this.$router.push('/login'),2000);
                }
            });
        },
      fileImage(event) {
        this.foto = event.target.files[0];
        this.displayImage = true;
        this.preview = URL.createObjectURL(event.target.files[0]);
        this.createImage(this.foto);
      },
      createImage(foto) {
        var image = new Image();
        var reader = new FileReader();
        var vm = this.user;
        reader.onload = function (e) {
            vm.image = e.target.result;
        };
        reader.readAsDataURL(foto);
      },
      UpdateUser() {
        this.errors = [];

        this.axios.put('/api/update-user/' +this.$route.params.code , this.user,{headers: {'Authorization': 'Bearer '+this.token}}).then(()=>{
        this.axios.put('/api/update-usr-role/'+this.$route.params.code, this.role ,{headers: {'Authorization': 'Bearer '+this.token}});
          this.$toast.add({
            severity: "success",
            summary: "Success Message",
            detail: "Success Update",
          });
          setTimeout( () => this.$router.push('/mng-user'),1000);
        }).catch(error=>{
          this.errors = error.response.data.errors;
         });
      },
  },
};
</script>
<style scoped lang="scss">
.user-image {
  height:227pt;
  box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
}
@media screen and (max-width: 640px) {
    .p-multiselect {
        width: 100%;
    }
}
</style>