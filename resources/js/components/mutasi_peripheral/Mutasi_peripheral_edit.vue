<template>
  <div>
        <Toast />
        <div class="card">
          <Toolbar class="p-mb-4">
            <template v-slot:left>
              <div class="p-grid p-dir-col">
                <div class="p-col">
                  <h4>Mutasi Peripheral ICT</h4>
			          </div>
              </div>
            </template>
          </Toolbar>
          <div class="row">
          <div class="col-sm-6">
            <form @submit.prevent="UpdateMutasi">
              <div class="p-fluid p-formgrid p-grid">
               <div class="p-field p-grid p-col">
                    <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Kode Peripheral</label>
                    <div class="p-col-2 p-md-6">
                      <InputText
                        type="text" 
                        v-model="mutasi.invent_code"
                        disabled
                      /> 
                    </div>
                  </div>
                 </div>
                 <div class="p-fluid p-formgrid p-grid">
                  <div class="p-field p-grid p-col">
                      <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Dari Tgl</label>
                    <div class="p-col-2 p-md-6">
                      <div class="p-inputgroup">
                      <DatePicker v-model="mutasi.imutasi_tgl_dari" :masks="mask" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            placeholder="Pilih Tanggal"
                            readonly
                          />
                      <Button icon="pi pi-calendar" v-if="!mutasi.imutasi_tgl_dari" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="mutasi.imutasi_tgl_dari = ''" /> 
                        </template>
                      </DatePicker> 
                      </div>
                      <small class="p-error" v-if="submitted && !mutasi.imutasi_tgl_dari"
                        > Wajib Diisi.
                      </small>
                    </div>
                  </div>
                  </div>
             <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">SD Tgl</label>
                 <div class="p-col-2 p-md-6">
                     <div class="p-inputgroup">
                      <DatePicker v-model="mutasi.imutasi_tgl_sd" :min-date="mutasi.imutasi_tgl_dari" :masks="mask" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            placeholder="Pilih Tanggal"
                            readonly
                          />
                      <Button icon="pi pi-calendar" v-if="!mutasi.imutasi_tgl_sd" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="mutasi.imutasi_tgl_sd = ''" />
                        </template>
                      </DatePicker>
                      </div>
                 </div>
                  </div>
              </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                  <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Lokasi</label>
                    <div class="p-col-2 p-md-6">
                    <InputText
                      type ="text"
                      v-model="mutasi.imutasi_lokasi"
                      placeholder="Masukan Lokasi. . ."
                      :class="{ 'p-invalid': submitted && !mutasi.imutasi_lokasi }"
                    />
                      <small class="p-error" v-if="submitted && !mutasi.imutasi_lokasi"
                        >Lokasi Wajib Diisi.
                      </small>
                 </div>
                  </div>
              </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                  <label for="email" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Pengguna</label>
                    <div class="p-col-2 p-md-6">
                      <InputText
                          type="text"
                          v-model="mutasi.imutasi_pengguna"
                          placeholder="Masukan Pengguna . . ."
                          :class="{ 'p-invalid': submitted && !mutasi.imutasi_pengguna }"
                        />
                        
                      <small class="p-error" v-if="submitted && !mutasi.imutasi_pengguna"
                        >Pengguna Wajib Diisi.
                      </small>
                    </div>
                </div>
              </div>
              <div class="p-fluid">
               <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Keterangan</label>
                 <div class="p-col-2 p-md-6">
                  <Textarea
                    v-model="mutasi.imutasi_keterangan"
                    :autoResize="true" 
                    rows="5" 
                    cols="30"
                    placeholder="Masukan Keterangan . . ."
                    :class="{ 'p-invalid': submitted && !mutasi.imutasi_keterangan }"
                  />
                      <small class="p-error" v-if="submitted && !mutasi.imutasi_keterangan"
                        >Keterangan Wajib Diisi.
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
                  @click="$router.push('/mutasi-peripheral')"
                />
              </div>
            </form>
          </div>
              <div class="col-sm-6">
                    <img :src="'/master_peripheral/' +mutasi.invent_photo" class="mutasi-image" />
              </div>
      </div>
      </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      mutasi:[],
      submitted:false,
      mask:{
        input: 'DD MMM YYYY'
      },
      token: localStorage.getItem('token'),
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
      this.axios.get('/api/cek-user/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.checkto = response.data.map((x)=> x.to)
        this.checkname = response.data.map((x)=> x.name)
        if(this.checkname.includes("Mutasi Peripheral") || this.checkto.includes("/mutasi-peripheral")){
          this.getMutasi();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/dashboard'),2000);
        }
      });
    },
    
    getMutasi(){
      this.axios.get('/api/edit-mut/' + this.$route.params.code, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.mutasi = response.data;
      }).catch(error=>{
          if (error.response.status == 401){
            this.$toast.add({
            severity:'error', summary: 'Error', detail:'Sesi Login Expired'
          });
          localStorage.clear();
          localStorage.setItem('Expired','true')
          setTimeout( () => this.$router.push('/login'),2000);
           }
        });
    },
    UpdateMutasi() {
      this.submitted=true;
      this.errors = [];
      if (
        this.mutasi.imutasi_tgl_dari != '' &&
        this.mutasi.imutasi_lokasi != null &&
        this.mutasi.imutasi_pengguna != null &&
        this.mutasi.imutasi_keterangan != null 
      ) {
        this.axios.put('/api/update-mut/' + this.$route.params.code, this.mutasi, {headers: {'Authorization': 'Bearer '+this.token}}).then(()=>{
          setTimeout( () => this.$router.push('/mutasi-peripheral'),1000);
          this.$toast.add({
            severity: "success",
            summary: "Success Message",
            detail: "Success Update",
          });
        }).catch(error=>{
            this.errors = error.response.data.errors;
            this.submitted = false;
        });
      }
    }
  },
};
</script>
<style scoped lang="scss">
.mutasi-image {
  width: 485px;
  box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
}
</style>