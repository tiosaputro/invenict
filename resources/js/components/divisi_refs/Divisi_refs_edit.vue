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
             <form @submit.prevent="UpdateDivisi" v-if="this.div">
                 <div class="card-body">
                <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="tipe" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Divisi ID</label>
                 <div class="p-col-3 p-md-6">
                <InputText
                  v-model="div.div_id"
                  disabled
                />
                  </div>
                </div>
              </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="tipe" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Divisi Code</label>
                 <div class="p-col-3 p-md-6">
                <InputText
                  v-model="div.div_code"
                  placeholder="Masukan Divisi Code"
                  :class="{ 'p-invalid': errors.div_code }"
                  autofocus
                />
                   <small v-if="errors.div_code" class="p-error">
                      {{ errors.div_code[0] }}
                  </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="kode" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Divisi Name</label>
                 <div class="p-col-3 p-md-6">
                  <InputText
                    v-model="div.div_name"
                    placeholder="Masukan Divisi Name"
                    :class="{ 'p-invalid': errors.div_name  }"
                  />
                    <small v-if="errors.div_name" class="p-error">
                      {{ errors.div_name[0] }}
                  </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Status" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Divisi Verificator</label>
                 <div class="p-col-3 p-md-6">
               <Dropdown
                  v-model="div.div_verificator"
                  :options="verif"
                  :showClear="true"
                  optionLabel="name"
                  optionValue="name"
                  placeholder="Select A Verificator"
                  :class="{ 'p-invalid': errors.div_verificator }"
                />
                   <small v-if="errors.div_verificator" class="p-error">
                      {{ errors.div_verificator[0] }}
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
                  @click="$router.push('/divisi-refs')"
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
      div:[],
      verif:[],
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
      this.axios.get('/api/cek-user/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.checkto = response.data.map((x)=> x.to)
        this.checkname = response.data.map((x)=> x.name)
        if(this.checkname.includes("Divisi") || this.checkto.includes("/divisi-refs")){
          this.getDivisi();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/Dashboard'),2000);
        }
      });
    },
    getDivisi(){
        this.axios.get('/api/edit-divisi/'+ this.$route.params.code,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
          this.div = response.data;
          this.getVerificator();
      });
    },
    getVerificator(){
        this.axios.get('/api/get-verificator/'+ this.div.div_id,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
          this.verif = response.data;
      });
    },
    UpdateDivisi() {
        this.errors = [];

        this.axios.put('/api/update-divisi/'+this.$route.params.code, this.div, {headers: {'Authorization': 'Bearer '+this.token}}).then(()=>{
        this.$toast.add({
          severity: "success",
          summary: "Success Message",
          detail: "Success Update",
        });
        setTimeout( () => this.$router.push('/divisi-refs'),1000);
        }).catch(error=>{
          this.errors = error.response.data.errors;
         });
      },
  },
};
</script>