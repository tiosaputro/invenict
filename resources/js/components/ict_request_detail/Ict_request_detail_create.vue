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
        <div class="row">
          <div class="col-sm-6">
             <form @submit.prevent="CreateIctDetail">
               <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="tipe" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">No. Request</label>
                 <div class="p-col-2 p-md-6">
                <InputText
                  type="text"
                  v-model="detail.noreq"
                  disabled
                />
                  </div>
                </div>
              </div>
            <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Tipe Request</label>
                 <div class="p-col-2 p-md-6">
                     <Dropdown 
                        v-model ="tipereq"
                        :options="type"
                        optionLabel="name"
                        optionValue="code"
                        placeholder="Pilih Tipe Request"
                        :showClear="true"
                        :class="{ 'p-invalid': errors.tipereq }"
                     />
                     <small v-if="errors.tipereq" class="p-error">
                      {{ errors.tipereq[0] }}
                  </small>
                     <small v-if="error.tipereq" class="p-error">
                      {{ error.tipereq }}
                  </small>
                  </div>
                </div>
              </div>

              <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Nama Peripheral</label>
                 <div class="p-col-2 p-md-6">
                     <Dropdown 
                        v-model="kode"
                        :options="kodeperi"
                        optionLabel="name"
                        optionValue="code"
                        placeholder="Pilih Nama Peripheral "
                        @change="getImage()"
                        :showClear="true"
                        :class="{ 'p-invalid': errors.invent_code }"
                     />
                     <small v-if="errors.invent_code" class="p-error">
                      {{ errors.kodeper[0] }}
                    </small>
                     <small v-if="error.kode" class="p-error">
                      {{ error.kode }}
                  </small>
                  </div>
                </div>
              </div>

              <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Deskripsi</label>
                 <div class="p-col-2 p-md-6">
                     <InputText
                        type="text"
                        v-model="desk"
                        placeholder="Masukan Deskripsi"
                        :class="{ 'p-invalid': errors.desk }"
                     />
                     <small v-if="errors.desk" class="p-error">
                      {{ errors.desk[0] }}
                    </small>
                  </div>
                </div>
              </div>

              <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Qty</label>
                 <div class="p-col-2 p-md-6">
                     <InputNumber
                        v-model="qty"
                        placeholder="Masukan Qty"
                        :class="{ 'p-invalid': errors.qty }"
                     />
                     <small v-if="errors.qty" class="p-error">
                      {{ errors.qty[0] }}
                    </small>
                  </div>
                </div>
              </div>

              <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Keterangan</label>
                 <div class="p-col-2 p-md-6">
                     <Textarea
                        :autoResize="true"
                        type="text"
                        v-model="ket"
                        rows="5" 
                        cols="30"
                        placeholder="Masukan Keterangan"
                        :class="{ 'p-invalid': errors.ket }"
                     />
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
                  @click="$router.go(-1)"
                />
              </div>
            </form>
          </div>
              <div class="col-sm-6">
                    <img :src="'/master_peripheral/' + photo.photo" class="ict-image" v-if="this.kode" />
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
      error:[],
      detail: [],
      photo:[],
      kode:null,
      desk:'',
      qty:null,
      ket:'',
      tipereq: null,
      kodeperi:[],
      type: [],
      bu: [],
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
        if(this.checkname.includes("Request") || this.checkto.includes("/ict-request")){ 
           this.getNoreq();
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
      this.axios.get('/api/getImage/'+this.kode, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.photo = response.data;
      });
      }
    },   
    getNoreq(){
        this.axios.get('/api/get-noreq/'+ this.$route.params.code, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
          this.detail = response.data;
          this.getKode();
          this.getType();
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
      getType(){
        this.axios.get('/api/getType', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
          this.type = response.data;
          });
      },
      getKode(){
        this.axios.get('/api/get-kode', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
          this.kodeperi = response.data;
          });
      },
    CreateIctDetail() {
      this.errors = [];
      this.error = [];
       if (
        this.kode != null &&
        this.tipereq != null
      ) {
        const data = new FormData();
        data.append("invent_code", this.kode);
        data.append("desk", this.desk);
        data.append("qty", this.qty);
        data.append("ket", this.ket);
        data.append("tipereq", this.tipereq);

        this.axios.post('/api/add-ict-detail/' + this.$route.params.code, data, {headers: {'Authorization': 'Bearer '+this.token}}).then(()=>{
        this.$toast.add({
          severity: "success",
          summary: "Success Message",
          detail: "Success Create",
        });
        setTimeout( () => this.$router.push('/ict-request-detail/' +this.$route.params.code),1000);
        }).catch(error=>{
          this.errors = error.response.data.errors;
         });
      }else{
        if(this.kode == null){
          this.error.kode = "Nama Peripheral Wajib Diisi"
        }
        if(this.tipereq == null){
          this.error.tipereq = "Tipe Request Wajib Diisi"
        }
      }
      },
  },
};
</script>
<style scoped lang="scss">
.ict-image {
  width: 485px;
  box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
}
</style>