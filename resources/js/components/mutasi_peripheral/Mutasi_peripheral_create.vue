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
            <form @submit.prevent="CreateMutasi">
              <div class="p-fluid">
               <div class="p-field p-grid">
                    <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:145px">Nama Peripheral</label>
                    <div class="p-col-2 p-md-6">
                      <Dropdown 
                        v-model="kode"
                        :options="kodeperi"
                        optionLabel="name"
                        optionValue="code"
                        :showClear="true"
                        :filter="true"
                        @change="getImage()"
                        placeholder="Pilih Nama Peripheral"
                        :class="{ 'p-invalid': submitted && !kode }"
                      />
                      <small v-if="errors.code" class="p-error">
                          {{ errors.kode[0] }}
                      </small>  
                    </div>
                  </div>
                 </div>
                 <div class="p-fluid">
                  <div class="p-field p-grid ">
                      <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:145px">Dari Tgl</label>
                    <div class="p-col-2 p-md-6">
                     <div class="p-inputgroup">
                      <DatePicker v-model="fromdate" :masks="mask" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            placeholder="Pilih Dari Tanggal"
                            readonly
                          />
                      <Button icon="pi pi-calendar" v-if="!fromdate" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="fromdate = ''" />
                        </template>
                      </DatePicker>
                      </div>
                      <small class="p-error" v-if="submitted && !fromdate"
                        > Wajib Diisi.
                      </small>
                      </div>
                  </div>
                </div>
             <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:145px">SD Tgl</label>
                 <div class="p-col-3 p-md-6">
                     <div class="p-inputgroup">
                      <DatePicker v-model="todate" :masks="mask" :min-date="fromdate" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            placeholder="Pilih SD Tanggal"
                            readonly
                          />
                      <Button icon="pi pi-calendar" v-if="!todate" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="todate = ''" />
                        </template>
                      </DatePicker>
                      </div>
                 </div>
                  </div>
              </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                  <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:145px">Lokasi</label>
                    <div class="p-col-3 p-md-6">
                    <InputText
                      type ="text"
                      v-model="lokasi"
                      placeholder="Masukan Lokasi. . ."
                      :class="{ 'p-invalid': submitted && !lokasi }"
                    />
                      <small class="p-error" v-if="submitted && !lokasi"
                        >Lokasi Wajib Diisi.
                      </small>
                 </div>
                  </div>
              </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                  <label for="email" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:145px">Pengguna</label>
                    <div class="p-col-3 p-md-6">
                      <InputText
                          type="text"
                          v-model="user"
                          placeholder="Masukan Pengguna . . ."
                          :class="{ 'p-invalid': submitted && !user }"
                        />
                        
                      <small class="p-error" v-if="submitted && !user"
                        >Pengguna Wajib Diisi.
                      </small>
                      <small v-if="errors.garansi" class="p-error">
                          {{ errors.user[0] }}
                      </small>
                    </div>
                </div>
              </div>
              <div class="p-fluid">
               <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:145px">Keterangan</label>
                 <div class="p-col-3 p-md-6">
                  <Textarea
                    v-model="ket"
                    :autoResize="true" 
                    rows="5" 
                    cols="30"
                    placeholder="Masukan Keterangan . . ."
                    :class="{ 'p-invalid': submitted && !ket }"
                  />
                      <small class="p-error" v-if="submitted && !ket"
                        >Keterangan Wajib Diisi.
                      </small>
                      <small v-if="errors.ket" class="p-error">
                        {{ errors.ket[0] }}
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
                    <img :src="'/master_peripheral/' + detail.photo" class="mutasi-image" v-if="this.kode" />
              </div>
       </div>
      </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      submitted: false,
      errors: [],
      kode: null,
      fromdate: new Date(),
      todate: '',
      ket:null,
      user:null,
      lokasi:null,
      detail:[],
      kodeperi:[],
      mutasi:[],
      mask:{
        input: 'DD MMM YYYY'
      },
      token: localStorage.getItem('token'),
        checkname : [],
        checkto : [],
        id : localStorage.getItem('id'),
    };
  },
  mounted(){
    this.cekUser();
  },
  methods: {
  cekUser(){
      this.axios.get('api/cek-user/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.checkto = response.data.map((x)=> x.to)
        this.checkname = response.data.map((x)=> x.name)
        if(this.checkname.includes("Mutasi Peripheral") || this.checkto.includes("/mutasi-peripheral")){
          this.getKode();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/dashboard'),2000);
        }
      });
    },
    getImage(){
      if(this.kode){
      this.axios.get('api/getImage/'+this.kode, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.detail = response.data;
      });
      }
    },   
    getKode(){
      this.axios.get('api/get-kode', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.kodeperi = response.data;
      }).catch(error=>{
          if (error.response.status == 401){
            this.$toast.add({
            severity:'error', summary: 'Error', detail:'Sesi Login Expired'
          });
          localStorage.clear();
          localStorage.setItem("Expired","true")
          setTimeout( () => this.$router.push('/login'),2000);
           }
        });
    },
    CreateMutasi() {
      this.submitted=true;
      if (
        this.kode != null &&
        this.fromdate != null &&
        this.ket != null &&
        this.user != null &&
        this.lokasi != null 
      ) {
        const data = new FormData();
        data.append("kode", this.kode);
        data.append("fromdate", this.fromdate);
        data.append("ket", this.ket);
        data.append("todate", this.todate);
        data.append("user", this.user);
        data.append("lokasi", this.lokasi);
        this.axios.post('api/add-mut', data, {headers: {'Authorization': 'Bearer '+this.token}}).then(()=>{
          setTimeout( () => this.$router.push('/mutasi-peripheral'),1000);
          this.$toast.add({
            severity: "success",
            summary: "Success Message",
            detail: "Success Create",
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