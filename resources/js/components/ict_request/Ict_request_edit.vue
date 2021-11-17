<template>
  <div>
        <Toast />
        <div class="card">
        <Toolbar class="p-mb-4">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
			        <div class="p-col">
				        <h4>ICT Request</h4>
			        </div>
            </div>
          </template>
        </Toolbar>
            <div class="card-body">
             <form @submit.prevent="UpdateIct">
               <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="tipe" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">No. Request</label>
                 <div class="p-col-3">
                <InputText
                  type="text"
                  v-model="mutasi.ireq_no"
                  disabled
                />
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="kode" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Tgl. Request</label>
                 <div class="p-col-3">
                  <div class="p-inputgroup">
                      <DatePicker v-model="mutasi.ireq_date" :masks="mask" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            placeholder="Pilih Tgl. Request"
                            readonly
                          />
                      <Button icon="pi pi-calendar" v-if="!mutasi.ireq_date" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="mutasi.ireq_date = ''" />
                        </template>
                      </DatePicker>
                      </div>
                        <small v-if="errors.ireq_date" class="p-error">
                          {{ errors.ireq_date[0] }}
                        </small>
                  </div>
                </div>
              </div>
              
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Deskripsi" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Tipe Request</label>
                 <div class="p-col-3">
                     <Dropdown 
                        v-model ="mutasi.ireq_type"
                        :options="type"
                        optionLabel="name"
                        optionValue="code"
                        placeholder="Pilih Tipe Request"
                        :showClear="true"
                        :class="{ 'p-invalid': errors.ireq_type }"
                     />
                        <small v-if="errors.ireq_type" class="p-error">
                          {{ errors.ireq_type[0] }}
                        </small>
                        <small v-if="error.ireq_type" class="p-error">
                          {{ error.ireq_type }}
                        </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Status" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">User</label>
                 <div class="p-col-3">
                     <InputText
                        type="text"
                        v-model="mutasi.ireq_user"
                        placeholder="Masukan User"
                        :class="{ 'p-invalid': errors.ireq_user }"
                     />
                        <small v-if="errors.ireq_user" class="p-error">
                          {{ errors.ireq_user[0] }}
                        </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Deskripsi" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Divisi User</label>
                 <div class="p-col-3">
                     <Dropdown 
                        v-model ="mutasi.ireq_divisi_user"
                        :options="divisi"
                        optionLabel="name"
                        optionValue="code"
                        placeholder="Pilih Divisi User"
                        :showClear="true"
                        :filter="true"
                        :class="{ 'p-invalid': error.usr_divisi }"
                     />
                        <small v-if="error.usr_divisi" class="p-error">
                          {{error.usr_divisi}}
                        </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Deskripsi" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Bisnis Unit</label>
                 <div class="p-col-3">
                     <Dropdown 
                        v-model ="mutasi.ireq_bu"
                        :options="bu"
                        optionLabel="name"
                        optionValue="code"
                        placeholder="Pilih Bisnis Unit"
                        :showClear="true"
                        :filter="true"
                        :class="{ 'p-invalid': errors.ireq_bu }"
                     />
                        <small v-if="errors.ireq_bu" class="p-error">
                          {{ errors.ireq_bu[0] }}
                        </small>
                        <small v-if="error.ireq_bu" class="p-error">
                          {{ error.ireq_bu }}
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
                  @click="$router.push('/ict-request')"
                />
              </div>
            </form>
          </div>
      </div>
      </div>
</template>
<script>
export default {
  data() {
    return {
      errors: [],
      error:[],
      mutasi:[],
      type: [],
      divisi: [],
      bu: [],
      mask:{
        input: 'DD MMM YYYY'
      },
      token: localStorage.getItem('token'),
    };
  },
  created(){
      this.getIct();
      this.getDivisi();
  },
  methods: {
      getIct(){
          this.axios.get('/api/edit-ict/' + this.$route.params.code, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
          this.mutasi = response.data;
          this.getBisnis();
          this.getReq();
          }).catch(error=>{
          if (error.response.status == 403) {
           this.$toast.add({
            severity:'error', summary: 'Error', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/Dashboard'),2000);
          }
           else if (error.response.status == 401) {
            this.$toast.add({
            severity:'error', summary: 'Error', detail:'Sesi Login Expired'
          });
          localStorage.clear();
          localStorage.setItem("Expired","true")
          setTimeout( () => this.$router.push('/login'),2000);
           }
        });
      },
      getDivisi(){
        this.axios.get('/api/get-divisi', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.divisi = response.data;
      });
      },
      getReq(){
          this.axios.get('/api/getType', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
              this.type = response.data;
          });
      },
      getBisnis(){
          this.axios.get('/api/get-bisnis', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
              this.bu = response.data;
          });
      },
    UpdateIct() {
      this.errors = [] ;
      this.error = [];
      if(
        this.mutasi.ireq_bu != null &&
        this.mutasi.ireq_type != null
      ){
        this.axios.put('/api/update-ict/'+ this.$route.params.code, this.mutasi, {headers: {'Authorization': 'Bearer '+this.token}}).then(()=>{
        this.$toast.add({
          severity: "success",
          summary: "Success Message",
          detail: "Success Update",
        });
        setTimeout( () => this.$router.push('/ict-request'),1000);
        }).catch(error=>{
          this.errors = error.response.data.errors;
         });
      }
      else{
        if(this.mutasi.ireq_type == null){
          this.error.ireq_type = "Tipe Request Wajib Diisi"
        }
        if(this.mutasi.ireq_bu == null){
          this.error.ireq_bu = "Bisnis Unit Wajib Diisi"
        }
      }
      },
  },
};
</script>