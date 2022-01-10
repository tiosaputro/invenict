<template>
  <div>
        <Toast />
        <div class="card">
        <Toolbar class="p-mb-4">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
			        <div class="p-col">
				        <h4>Divisi Refs</h4>
			        </div>
            </div>
          </template>
        </Toolbar>
             <div class="row">
                <div class="col-sm-6">
             <form @submit.prevent="DivisiRefs">
                 <div class="card-body">
               <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="tipe" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Role Name</label>
                 <div class="p-col-3 p-md-6">
                <InputText
                  v-model="role.rol_name"
                  placeholder="Masukan Role Name"
                  :class="{ 'p-invalid': errors.rol_name }"
                />
                   <small v-if="errors.rol_name" class="p-error">
                      {{ errors.rol_name[0] }}
                  </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="kode" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Role Deskripsi</label>
                 <div class="p-col-3 p-md-6">
                  <InputText
                    v-model="role.rol_desc"
                    placeholder="Masukan Role Deskripsi"
                    :class="{ 'p-invalid': errors.rol_desc  }"
                  />
                    <small v-if="errors.rol_desc" class="p-error">
                      {{ errors.rol_desc[0] }}
                  </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Status" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Role Status</label>
                 <div class="p-col-3 p-md-6">
               <Dropdown
                  v-model="role.rol_stat"
                  :options="stat"
                  :showClear="true"
                  optionLabel="nama"
                  optionValue="code"
                  placeholder="Select A Status"
                  :class="{ 'p-invalid': errors.rol_stat }"
                />
                   <small v-if="errors.rol_stat" class="p-error">
                      {{ errors.rol_stat[0] }}
                  </small>
                  </div>
                </div>
              </div>
              </div>
              <div class="card" style="width: 33rem;">
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Status" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Menu</label>
                 <div class="p-col-3 p-md-6">
               <MultiSelect 
                v-model="role.menu" 
                :options="menus" 
                optionValue="code"
                optionLabel="name" 
                display="chip"
                placeholder="Select Menu" 
                :class="{ 'p-invalid': errors.menu }"
               />
                   <small v-if="errors.menu" class="p-error">
                      {{ errors.menu[0] }}
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
                  @click="$router.push('/mng-role')"
                />
              </div>
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
      errors: [],
      role : {
        rol_name:'',
        rol_desc:'',
        rol_stat:'',
        menu:'',
      },
      menus:[],
      stat: [
        { nama: "Aktif", code: "T" },
        { nama: "Tidak Aktif", code: "F" },
      ],
      token: localStorage.getItem('token'),
      id : localStorage.getItem('id'),
      checkname : [],
      checkto : [],
    };
  },
  created(){
    this.cekUser();
  },
  methods: {
    cekUser(){
      this.axios.get('api/cek-user/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.checkto = response.data.map((x)=> x.to)
        this.checkname = response.data.map((x)=> x.name)
        if(this.checkname.includes("Divisi") || this.checkto.includes("/divisi-refs")){
          this.getMenu();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/dashboard'),2000);
        }
      });
    },
    getMenu(){
    this.axios.get('api/get-menu',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
      this.menus = response.data
    })
    },
    CreateRole() {
        this.errors = [];
        this.axios.post('api/save-role',this.role,{headers: {'Authorization': 'Bearer '+this.token}}).then(()=>{
          this.axios.post('api/save-role-menu',this.role,{headers: {'Authorization': 'Bearer '+this.token}});
          this.$toast.add({
            severity: "success",
            summary: "Success Message",
            detail: "Success Create",
          });
          setTimeout( () => this.$router.push('/mng-role'),1000);
        }).catch(error=>{
          this.errors = error.response.data.errors;
         });
      },
  },
};
</script>