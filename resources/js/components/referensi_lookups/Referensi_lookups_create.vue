<template>
  <div class="container py-4">
    <div class="col-md-10">
        <Toast />
        <div class="card">
        <Toolbar class="p-mb-4">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
			        <div class="p-col">
				        <h4>Referensi - Lookups</h4>
			        </div>
            </div>
          </template>
        </Toolbar>
            <div class="card-body">
             <form @submit.prevent="CreateLookup">
               <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="tipe" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Tipe</label>
                 <div class="p-col-3">
                <InputText
                  type="text"
                  v-model="lookup_type"
                  placeholder="Masukan Tipe. . ."
                  :class="{ 'p-invalid': errors.lookup_type }"
                />
                   <small v-if="errors.lookup_type" class="p-error">
                      {{ errors.lookup_type[0] }}
                  </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="kode" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Kode</label>
                 <div class="p-col-3">
                  <InputText
                    type="text"
                    v-model="lookup_code"
                    placeholder="Masukan Kode. . ."
                    :class="{ 'p-invalid': errors.lookup_code  }"
                  />
                    <small v-if="errors.lookup_code" class="p-error">
                      {{ errors.lookup_code[0] }}
                  </small>
                  </div>
                </div>
              </div>
              
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Deskripsi" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Deskripsi</label>
                 <div class="p-col-3">
                <InputText
                  type="text"
                  v-model="lookup_desc"
                  placeholder="Masukan Deskripsi. . ."
                  :class="{ 'p-invalid': errors.lookup_desc }"
                />
                   <small v-if="errors.lookup_desc" class="p-error">
                      {{ errors.lookup_desc[0] }}
                  </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Status" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Status</label>
                 <div class="p-col-3">
               <Dropdown
                  v-model="lookup_status"
                  :options="stat"
                  :showClear="true"
                  optionLabel="nama"
                  optionValue="code"
                  placeholder="Select A Status"
                  :class="{ 'p-invalid': errors.lookup_status }"
                />
                   <small v-if="errors.lookup_status" class="p-error">
                      {{ errors.lookup_status[0] }}
                  </small>
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
                  @click="$router.push('/referensi-lookups')"
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
      lookup_type:'' ,
      lookup_code:'' ,
      lookup_desc: '',
      lookup_status: '',
      stat: [
        { nama: "Aktif", code: "T" },
        { nama: "Tidak Aktif", code: "F" },
      ],
      token: localStorage.getItem('token')
    };
  },
  created(){
      this.cekUser();
  },
  methods: {
    cekUser(){
     this.axios.get('api/ref', {headers: {'Authorization': 'Bearer '+this.token}}).then(()=> {
      }).catch(error=>{
           if ((error.response.status == 403)) {
           this.$toast.add({
            severity:'error', summary: 'Error', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/Dashboard'),2000);
          }
           else if ((error.response.status == 401)){
            this.$toast.add({
            severity:'error', summary: 'Error', detail:'Sesi Login Expired'
          });
          localStorage.clear();
          localStorage.setItem("Expired","true")
          setTimeout( () => this.$router.push('/login'),2000);
           }
         });
    },
    CreateLookup() {
        this.errors = [];

        const data = new FormData();
        data.append("lookup_type", this.lookup_type);
        data.append("lookup_code", this.lookup_code);
        data.append("lookup_desc", this.lookup_desc);
        data.append("lookup_status", this.lookup_status);

        this.axios.post('api/add-ref', data,{headers: {'Authorization': 'Bearer '+this.token}}).then((resoonse)=>{
        this.$toast.add({
          severity: "success",
          summary: "Success Message",
          detail: "Success Create",
        });
        setTimeout( () => this.$router.push('/referensi-lookups'),1000);
        }).catch(error => {
          this.errors = error.response.data.errors;
         });
      },
  },
};
</script>