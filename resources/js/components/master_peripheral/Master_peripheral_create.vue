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
            <form @submit.prevent="CreateMaster">
               <div class="p-fluid">
               <div class="p-field p-grid">
                    <label for="kode" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Kode</label>
                    <div class="p-col-3 p-md-6">
                      <InputText
                        type="text"
                        v-model="code"
                        placeholder="Masukan Kode"
                        :class="{ 'p-invalid': errors.code }"
                        autofocus
                      />
                      <small v-if="errors.code" class="p-error">
                          {{ errors.code[0] }}
                      </small>  
                    </div>
                  </div>
                  </div>
                 <div class="p-fluid">
                    <div class="p-field p-grid">
                      <label for="contactperson" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Merk</label>
                    <div class="p-col-3 p-md-6">
                      <Dropdown
                        v-model="merk"
                        :options="merks"
                        optionLabel="name"
                        optionValue="code"
                        :showClear="true"
                        :filter="true"
                        placeholder="Pilih Merk"
                        :class="{ 'p-invalid': errors.merk }"
                      />
                      <small v-if="errors.merk" class="p-error">
                          {{ errors.merk[0] }}
                      </small>
                      <small v-if="error.merk" class="p-error">
                          {{ error.merk }}
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
                        v-model= "type"
                        placeholder= "Masukan Tipe"
                        :class="{ 'p-invalid': errors.type }"
                      />
                      <small v-if="errors.type" class="p-error">
                          {{ errors.type[0] }}
                      </small>
                      <small v-if="error.type" class="p-error">
                          {{ error.type }}
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
                      v-model="sn"
                      placeholder="Masukan S/N"
                      :class="{ 'p-invalid': errors.sn }"
                    />
                      <small v-if="errors.sn" class="p-error">
                          {{ errors.sn[0] }}
                      </small>
                 </div>
                  </div>
              </div>
              <div class="p-fluid">
               <div class="p-field p-grid">
                    <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Tgl. Perolehan</label>
                    <div class="p-col-3 p-md-6">
                     <div class="p-inputgroup">
                      <DatePicker v-model="tgl" :masks="mask" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            placeholder="Pilih Tanggal"
                            readonly
                          />
                      <Button icon="pi pi-calendar" v-if="!tgl" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="tgl = null" />
                        </template>
                      </DatePicker>
                      </div>
                      <small v-if="errors.tgl" class="p-error">
                          {{ errors.tgl[0] }}
                      </small>
                  </div>
                  </div>
                </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                  <label for="email" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Lama Garansi</label>
                    <div class="p-col-3 p-md-6">
                      <div class="p-inputgroup">
                      <InputNumber
                          v-model="garansi"
                          placeholder="Masukan Garansi"
                          :class="{ 'p-invalid': errors.garansi }"
                        />
                        <span class="p-inputgroup-addon"> Tahun </span> 
                    </div>
                      <small v-if="errors.garansi" class="p-error">
                          {{ errors.garansi[0] }}
                      </small>
                    </div>
                </div>
              </div>
              <div class="p-fluid">
               <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Kondisi</label>
                 <div class="p-col-3 p-md-6">
                  <Dropdown 
                    v-model="kondisi"
                    :options="kondi"
                    :showClear="true"
                    :filter="true" 
                    optionLabel="name"
                    optionValue="code"
                    placeholder="Pilih Kondisi"
                    :class="{ 'p-invalid': errors.kondisi }"
                  />
                      <small v-if="errors.kondisi" class="p-error">
                          {{ errors.kondisi[0] }}
                      </small>
                 </div>
               </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="notlp1" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Barcode</label>
                <div class="p-col-3 p-md-6">
                <div class="p-inputgroup">
                  <InputText v-model="barcode" readonly  v-if="barcode"/>
                  <Button icon="pi pi-trash" class="p-button-danger" v-if="barcode" @click="hapus()"/>
                  <Button icon="bi bi-qr-code-scan" v-if="aktif" class="p-button p-button-info" @click="Scan()" />
                  </div>
                      <small v-if="errors.barcode" class="p-error">
                          {{ errors.barcode[0] }}
                      </small>
                </div>
                </div>
              </div> 
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="notlp2" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Bisnis Unit</label>
                <div class="p-col-3 p-md-6">
                    <Dropdown 
                    v-model="bu"
                    :options="bisnis"
                    optionLabel="name"
                    optionValue="code"
                    :showClear="true"
                    :filter="true"
                    placeholder="Pilih Bisnis Unit"
                    :class="{ 'p-invalid': errors.bu }"
                    />
                      <small v-if="errors.bu" class="p-error">
                          {{ errors.bu[0] }}
                      </small>
                      <small v-if="error.bu" class="p-error">
                          {{ error.bu }}
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
                        v-model="lastloct"
                        :class="{ 'p-invalid': errors.lastloct }"
                        placeholder="Masukan Lokasi terakhir"
                      />
                      <small v-if="errors.lastloct" class="p-error">
                          {{ errors.lastloct[0] }}
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
                        v-model="lastuser"
                        :class="{ 'p-invalid': errors.lastuser }"
                        placeholder="Masukan Pengguna Terakhir"
                    />
                      <small v-if="errors.lastuser" class="p-error">
                          {{ errors.lastuser[0] }}
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
                            v-model="nama"
                            placeholder="Masukan Nama"
                            :class="{ 'p-invalid': errors.nama }"
                        />
                      <small v-if="errors.nama" class="p-error">
                          {{ errors.nama[0] }}
                      </small>
                     </div>
                    </div>
                 </div> 
                 <div class="p-fluid">
                    <div class="p-field p-grid">
                      <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px"></label>
                      <div class="p-col-10 p-md-6">
                        <div class="card" style="height: 23.5rem;">
                          <img :src="preview" class="master-image"/>
                        </div>
                    </div>
                 </div>
                 </div>
                 <div class="p-fluid">
                    <div class="p-field p-grid">
                      <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px"></label>
                    <div class="p-col-10 p-md-6">
                      <input type="file" :class="{ 'p-invalid': error.foto }" name="foto" ref="fileInput" class="form-control" @change="fileImage" />
                      <small class="p-error" v-if="error.foto">
                        {{ error.foto }}
                      </small>
                    </div>
                 </div>
                 </div>
                    <div class="p-fluid">
                    <div class="p-field p-grid">   
                  <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Lokasi Sebelumnya</label>
                    <div class="p-col-10 p-md-6">
                    <InputText
                        type="text"
                        v-model="prevloct"
                        :class="{ 'p-invalid': errors.prevloct }"
                        placeholder="Masukan Lokasi sebelumnya"
                    />
                      <small class="p-error" v-if="errors.prevloct">
                        {{ errors.prevloct[0] }}
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
                        v-model="prevuser"
                        :class="{ 'p-invalid': errors.prevuser  }"
                        placeholder="Masukan Pengguna sebelumnya"
                    />
                      <small class="p-error" v-if="errors.prevuser">
                        {{ errors.prevuser[0] }}
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
      aktif:true,
      displayImage:false,
      preview:'',
      errors: [],
      error : [],
      merks: [],
      kondi:[],
      bisnis:[],
      code:'',
      nama:'',
      tgl:'',
      sn:'',
      bu:'',
      merk:'',
      type:'',
      foto: null,
      prevuser:'',
      lastuser:'',
      prevloct:'',
      lastloct:'',
      kondisi:'',
      barcode:'',
      garansi:null,
      mask:{
        input: 'DD MMM YYYY'
      },
      token: localStorage.getItem('token')
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
        if(this.checkname.includes("Master Peripheral") || this.checkto.includes("/master-peripheral")){
          this.getMerk();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/Dashboard'),2000);
        }
      });
    },
      getMerk(){
        this.axios.get('api/getMerk',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.merks = response.data;
            this.getKondisi();
            this.getBisnis();
        });
      },
      getKondisi(){
        this.axios.get('api/getKondisi',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.kondi = response.data;
        });
      },
    Scan(){
      this.aktif = false;
      let routeData = this.$router.resolve({name: 'Scan'});
      window.open(routeData.href, '_blank');
      setTimeout( () => this.getBarcode(),2000);
    },
    getBarcode(){
      this.barcode = localStorage.getItem('barcode');
      if(!this.barcode){
        setTimeout( () => this.getBarcode(),3000);
      }
    },
    hapus(){
      localStorage.removeItem('barcode');
      this.barcode = null;
      this.aktif = true;
    },
    getBisnis(){
        this.axios.get('api/get-bisnis',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
          this.bisnis = response.data;
        });
      },    
    fileImage(event) {
      this.foto = event.target.files[0];
      this.displayImage = true;
      this.preview = URL.createObjectURL(event.target.files[0]);
      this.createImage(this.foto);
      },
    createImage(invent_photo) {
      var image = new Image();
      var reader = new FileReader();
      var vm = this;
      reader.onload = function (e) {
        vm.image = e.target.result;
      };
      reader.readAsDataURL(invent_photo);
    },
    CreateMaster() {
      this.errors = [];
      this.error = [];
      if (
        this.bu != null &&
        this.merk != null &&
        this.foto != null
      ) {
        const data = new FormData();
        data.append("nama", this.nama);
        data.append("code", this.code);
        data.append("tgl", this.tgl);
        data.append("sn", this.sn);
        data.append("bu", this.bu);
        data.append("merk", this.merk);
        data.append("type", this.type);
        data.append("lastuser", this.lastuser);
        data.append("prevuser", this.prevuser);
        data.append("prevloct", this.prevloct);
        data.append("lastloct", this.lastloct);
        data.append("foto", this.image);
        data.append("kondisi", this.kondisi);
        data.append("barcode", this.barcode);
        data.append("garansi", this.garansi);
        this.axios.post('api/add-mas',data,{headers: {'Authorization': 'Bearer '+this.token}}).then(()=>{
          localStorage.removeItem("barcode");
          setTimeout( () => this.$router.push('/master-peripheral'),1000);
          this.$toast.add({
            severity: "success",
            summary: "Success Message",
            detail: "Success Create",
          });
        }).catch(error=>{
            this.errors = error.response.data.errors;
        });
      }else{
        if(this.bu == null){
          this.error.bu = "Bisnis Unit Wajib Diisi"
        }
        if(this.merk == null){
          this.error.merk = "Merk Wajib Diisi"
        }
        if(this.foto == null){
          this.error.foto = "Foto Wajib Diisi"
        }
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