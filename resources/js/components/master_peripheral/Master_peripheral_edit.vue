<template>
  <div>
        <Toast />
        <div class="card">
          <Toolbar class="p-mb-4">
            <template v-slot:left>
              <div class="p-grid p-dir-col">
                <div class="p-col">
                  <h4>Master Peripheral</h4>
			          </div>
              </div>
            </template>
          </Toolbar>
           <div class="row">
            <div class="col-sm-6">
            <form @submit.prevent="UpdateMaster">
              <div class="p-fluid">
                <div class="p-field p-grid">
                    <label for="kode" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Kode</label>
                    <div class="p-col-3 p-md-6">
                      <InputText
                        type="text"
                        v-model="master.invent_code"
                        disabled
                      /> 
                    </div>
                  </div>
                  </div>
                 <div class="p-fluid">
                  <div class="p-field p-grid">
                      <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Merk</label>
                    <div class="p-col-3 p-md-6">
                      <Dropdown
                        v-model="master.invent_brand"
                        :options="merks"
                        optionLabel="name"
                        optionValue="code"
                        :showClear="true"
                        :filter="true"
                        placeholder="Pilih Merk"
                        :class="{ 'p-invalid': submitted && !master.invent_brand }"
                      />
                      <small class="p-error" v-if="submitted && !master.invent_brand"
                        >Merk Wajib Diisi.
                      </small>
                  </div>
                  </div>
                  </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Tipe</label>
                 <div class="p-col-3 p-md-6">
                     <InputText
                        type="text"
                        v-model="master.invent_type"
                        placeholder= "Masukan Tipe"
                        :class="{ 'p-invalid': submitted && !master.invent_type }"
                      />
                      <small class="p-error" v-if="submitted && !master.invent_type"
                        >Type Wajib Diisi.
                      </small>
                 </div>
                 </div>
              </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                  <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">S/N</label>
                    <div class="p-col-3 p-md-6">
                    <InputText
                      type ="text"
                      v-model="master.invent_sn"
                      placeholder="Masukan S/N"
                      :class="{ 'p-invalid': submitted && !master.invent_sn }"
                    />
                    <small class="p-error" v-if="submitted && !master.invent_sn"
                        >S/N Wajib Diisi.
                      </small>
                 </div>
                  </div>
              </div>
              <div class="p-fluid">
               <div class="p-field p-grid">
                    <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Tgl. Perolehan</label>
                    <div class="p-col-3 p-md-6">
                      <div class="p-inputgroup">
                      <DatePicker v-model="master.invent_tgl_perolehan" :masks="mask">
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            placeholder="Pilih Tanggal"
                            readonly
                          />
                      <Button icon="pi pi-calendar" v-if="!master.invent_tgl_perolehan" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="master.invent_tgl_perolehan = null" />
                        </template>
                      </DatePicker>
                      </div>
                      <small class="p-error" v-if="submitted && !master.invent_tgl_perolehan"
                        > Wajib Diisi.
                      </small>
                  </div>
                  </div>
                </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                  <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Lama Garansi</label>
                    <div class="p-col-3 p-md-6">
                      <div class="p-inputgroup">
                      <InputNumber
                          v-model="master.invent_lama_garansi"
                          placeholder="Masukan Garansi"
                          :class="{ 'p-invalid': submitted && !master.invent_lama_garansi }"
                        />
                        <span class="p-inputgroup-addon"> Tahun </span>
                        
                      <small class="p-error" v-if="submitted && !master.invent_lama_garansi"
                        >Garansi Wajib Diisi.
                      </small>
                    </div>
                    </div>
                </div>
              </div>
              <div class="p-fluid">
               <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Kondisi</label>
                 <div class="p-col-3 p-md-6">
                  <Dropdown 
                    v-model="master.invent_kondisi"
                    :options="kondi"
                    :showClear="true"
                    :filter="true"
                    optionLabel="name"
                    optionValue="code"
                    placeholder="Pilih Kondisi"
                    :class="{ 'p-invalid': submitted && !master.invent_kondisi }"
                  />                 
                    <small class="p-error" v-if="submitted && !master.invent_kondisi"
                        >Bisnis Unit Wajib Diisi.
                      </small>
                 </div>
               </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Barcode</label>
                 <div class="p-col-3 p-md-6">
                <div class="p-inputgroup">
                  <InputText v-model="master.invent_barcode" readonly v-if="master.invent_barcode"/>
                  <Button icon="pi pi-trash" class="p-button-danger" v-if="master.invent_barcode" @click="hapus()"/>
                  <Button label="Scan" v-if="aktif" class="p-button" @click="Scan()" />
                  </div>
                </div>
                </div>
              </div> 
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Bisnis Unit</label>
                <div class="p-col-3 p-md-6">
                    <Dropdown 
                    v-model="master.invent_bu"
                    :options="bisnis"
                    optionLabel="name"
                    :showClear="true"
                    :filter="true"
                    optionValue="code"
                    placeholder="Pilih Bisnis Unit"
                    :class="{ 'p-invalid': submitted && !master.invent_bu }"
                    />
                    <small class="p-error" v-if="submitted && !master.invent_bu"
                        >Bisnis Unit Wajib Diisi.
                      </small>
                    </div>
                </div>
              </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                      <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Lokasi Terakhir</label>
                    <div class="p-col-3 p-md-6">
                      <InputText
                        type="text"
                        v-model="master.invent_lokasi_update"
                        :class="{ 'p-invalid': submitted && !master.invent_lokasi_update }"
                        placeholder="Masukan Lokasi terakhir"
                        disabled
                      />
                      <small class="p-error" v-if="submitted && !master.invent_lokasi_update"
                        >Lokasi Terakhir Wajib Diisi.
                      </small>
                  </div>
                  </div>
                  </div>
                 <div class="p-fluid">
                    <div class="p-field p-grid">  
                      <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Pengguna Terakhir</label>
                    <div class="p-col-3 p-md-6">
                      <InputText
                        type="text"
                        v-model="master.invent_pengguna_update"
                        :class="{ 'p-invalid': submitted && !master.invent_pengguna_update }"
                        placeholder="Masukan Pengguna Terakhir"
                        disabled
                    />
                      <small class="p-error" v-if="submitted && !master.invent_pengguna_update"
                        >Pengguna Terakhir Wajib Diisi.
                      </small>
                  </div>
                  </div>
                  </div>
              <div class="p-p-0 p-p-sm-1 p-p-md-2 p-p-lg-3">
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
                  @click="$router.push('/master-peripheral')"
                />
              </div>
            </form>
           </div>
          <div class="col-sm-6">
            <div class="p-fluid">
                      <div class="p-field p-grid">
                    <label for="kode" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Nama</label>
                    <div class="p-col-10 p-md-6">
                       <InputText
                            type ="text"
                            v-model="master.invent_desc"
                            placeholder="Masukan Nama"
                            :class="{ 'p-invalid': submitted && !master.invent_desc }"
                            autofocus
                        />
                      <small class="p-error" v-if="submitted && !master.invent_desc"
                        >Nama Wajib Diisi.
                      </small>
                     </div>
                    </div>
                 </div> 
                 <div class="p-fluid">
                    <div class="p-field p-grid">
                      <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px"></label>
                      <div class="p-col-10 p-md-6">
                        <div class="card" style="height: 23.5rem;">
                          <img :src="preview" class="master-image" v-if="preview"/>
                          <img :src="'/master_peripheral/' +master.invent_photo" class="master-image" v-else />
                        </div>
                    </div>
                 </div>
                 </div>
                 <div class="p-fluid">
                    <div class="p-field p-grid">
                      <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px"></label>
                    <div class="p-col-10 p-md-6">
                      <input type="file" name="foto" ref="fileInput" class="form-control" @change="fileImage" />
                    </div>
                 </div>
                 </div>
                    <div class="p-fluid">
                    <div class="p-field p-grid">   
                  <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Lokasi Sebelumnya</label>
                    <div class="p-col-10 p-md-6">
                   <InputText
                        type="text"
                        v-model="master.invent_lokasi_previous"
                        :class="{ 'p-invalid': submitted && !master.invent_lokasi_previous }"
                        placeholder="Masukan Lokasi sebelumnya"
                        disabled
                    />
                      <small class="p-error" v-if="submitted && !master.invent_lokasi_previous"
                        >Lokasi Sebelumnya Wajib Diisi.
                      </small>
                      </div>
                    </div>
                 </div>
                 <div class="p-fluid">
                    <div class="p-field p-grid">
                  <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Penguna Sebelumnya</label>
                    <div class="p-col-3 p-md-6">
                       <InputText
                        type="text"
                        v-model="master.invent_pengguna_previous"
                        :class="{ 'p-invalid': submitted && !master.invent_pengguna_previous }"
                        placeholder="Masukan Pengguna sebelumnya"
                        disabled
                    />
                      <small class="p-error" v-if="submitted && !master.invent_pengguna_previous"
                        >Pengguna Terakhir Wajib Diisi.
                      </small>
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
      aktif: false,
      displayImage:false,
      submitted: false,
      errors: [],
      merks: [],
      kondi:[],
      bisnis:[],
      master:[],
      preview:null,
      invent_photo:null,
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
        if(this.checkname.includes("Master Peripheral") || this.checkto.includes("/master-peripheral")){
          this.getMaster();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/dashboard'),2000);
        }
      });
    },
    Scan(){
      this.aktif = false;
      let routeData = this.$router.resolve({name: 'Scan'});
      window.open(routeData.href, '_blank');
      setTimeout( () => this.getBarcode(),2000);
    },
    hapus(){
      this.master.invent_barcode = null;
      this.aktif = true;
    },
    getBarcode(){
      this.master.invent_barcode = localStorage.getItem("barcode");
      if(!this.master.invent_barcode){
        setTimeout( () => this.getBarcode(),3000);
      }
    }, 
      getBisnis(){
        this.axios.get('/api/get-bisnis', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
          this.bisnis = response.data;
        });
      },
      getMerk(){
        this.axios.get('/api/getMerk', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.merks = response.data;
        });
      },
      getKondisi(){
        this.axios.get('/api/getKondisi', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.kondi = response.data;
        });
      },
      getMaster(){
          this.axios.get('/api/edit-mas/' + this.$route.params.code, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
              this.master = response.data;
              this.getMerk();
              this.getBisnis();
              this.getKondisi();
          }).catch(error=>{
         if (error.response.status == 401) {
            this.$toast.add({
            severity:'error', summary: 'Error', detail:'Sesi Login Expired'
          });
          localStorage.clear();
          localStorage.setItem('Expired','true')
          setTimeout( () => this.$router.push('/login'),2000);
           }
        });
      },
      fileImage(event) {
      this.invent_photo = event.target.files[0];
      this.displayImage = true;
      this.preview = URL.createObjectURL(event.target.files[0]);
      this.createImage(this.invent_photo);
      },
      createImage(invent_photo) {
      var image = new Image();
      var reader = new FileReader();
      var vm = this.master;
      reader.onload = function (e) {
        vm.image = e.target.result;
      };
      reader.readAsDataURL(invent_photo);
    },
    UpdateMaster() {
      this.submitted=true;
      if (
        this.master.invent_desc != null &&
        this.master.invent_brand != null &&
        this.master.invent_type != null &&
        this.master.invent_sn != null &&
        this.master.invent_tgl_perolehan != null &&
        this.master.invent_lama_garansi != null &&
        this.master.invent_kondisi != null &&
        this.master.invent_barcode != null &&
        this.master.invent_bu != null &&
        this.master.invent_lokasi_update != null &&
        this.master.invent_pengguna_update != null &&
        this.master.invent_lokasi_previous != null &&
        this.master.invent_pengguna_previous != null  
      ) {
        this.axios.put('/api/update-mas/' + this.$route.params.code ,this.master, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
          localStorage.removeItem("barcode");
          setTimeout( () => this.$router.push('/master-peripheral'),1000);
          this.$toast.add({
            severity: "success",
            summary: "Success Message",
            detail: "Success Update",
          });
          console.log(response.data); 
        }).catch(error=>{
          if (error.response.status == 422) {
            this.submitted = false;
            this.errors = error.response.data.errors;
          }
        });
      }
    }
  },
};
</script>
<style scoped lang="scss">
.master-image {
  height:227pt;
  box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
}
</style>