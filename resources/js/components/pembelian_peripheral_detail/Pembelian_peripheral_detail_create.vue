<template>
  <div>
        <Toast />
        <div class="card">
          <Toolbar class="p-mb-4">
            <template v-slot:left>
              <div class="p-grid p-dir-col">
                <div class="p-col">
                  <h4>Pembelian Peripheral(Detail)</h4>
			          </div>
              </div>
            </template>
          </Toolbar>
          <div class="card-body">
            <form @submit.prevent="CreateDetail">
              <div class="p-fluid p-formgrid p-grid">
               <div class="p-field p-grid p-col">
                    <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Kode Peripheral</label>
                    <div class="p-col-3">
                      <Dropdown 
                        v-model="kode"
                        :options="kodeperi"
                        optionLabel="name"
                        optionValue="code"
                        :showClear="true"
                        :filter="true"
                        placeholder="Pilih Kode"
                        :class="{ 'p-invalid': submitted && !kode }"
                      />
                      <small class="p-error" v-if="submitted && !kode"
                        >Kode Peripheral Wajib Diisi.
                      </small>
                      <small v-if="errors.invent_code" class="p-error">
                      {{ errors.invent_code[0] }}
                  </small>
                    </div>
                  </div>
                  </div>
                 <div class="p-fluid p-formgrid p-grid">
                  <div class="p-field p-grid p-col">
                      <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Jumlah (Qty)</label>
                    <div class="p-col-3">
                        <InputNumber
                         v-model="qty"
                         placeholder="Masukan Jumlah (Qty)"
                         :change="getTotal()"
                         :class="{ 'p-invalid': submitted && !qty }"
                         />
                      <small class="p-error" v-if="submitted && !qty"
                        >Jumlah (Qty) Wajib Diisi.
                      </small>
                      </div>
                  </div>
                </div>
             <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Satuan</label>
                 <div class="p-col-3">
                     <Dropdown 
                        v-model="satuan"
                        :options="sat"
                        :showClear="true"
                        optionLabel="name"
                        optionValue="code"
                        placeholder="Pilih Satuan"
                        :class="{ 'p-invalid': submitted && !satuan }"
                     />
                      <small class="p-error" v-if="submitted && !satuan"
                        >Satuan Wajib Diisi.
                      </small>
                 </div>
                  </div>
              </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                  <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Harga Satuan</label>
                    <div class="p-col-3">
                    <InputNumber
                       mode="currency"
                      :change="getTotal()"
                      :locale="locale"
                      :currency="currency"
                      v-model="hrgsatuan"
                      placeholder="Masukan Harga Satuan"
                      :class="{ 'p-invalid': submitted && !hrgsatuan }"
                    />
                      <small class="p-error" v-if="submitted && !hrgsatuan"
                        >Harga Satuan Wajib Diisi.
                      </small>
                 </div>
                  </div>
              </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                  <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Total Harga</label>
                    <div class="p-col-3">
                     <InputNumber
                         mode="currency"
                        :currency="currency"
                        :locale="locale"
                        v-model="pricetotal"
                        placeholder="Masukan Total Pembayaran"
                        :class="{ 'p-invalid': submitted && !pricetotal }"
                        readonly
                    />
                      <small class="p-error" v-if="submitted && !pricetotal"
                        >Total Harga Wajib Diisi.
                      </small>
                    </div>
                </div>
              </div>
              <div class="p-fluid">
               <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Keterangan</label>
                 <div class="p-col-3">
                  <Textarea
                    v-model="ket"
                    :autoResize="true" 
                    rows="5" 
                    cols="30"
                    placeholder="Masukan Keterangan"
                    :class="{ 'p-invalid': submitted && !ket }"
                  />
                      <small class="p-error" v-if="submitted && !ket"
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
                  @click="$router.go(-1)"
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
      locale:'id-ID',
      currency:'IDR',
      submitted: false,
      errors: [],
      kode: null,
      satuan:null,
      ket:null,
      pricetotal:null,
      qty:null,
      hrgsatuan:null,
      sat:[],
      kodeperi:[],
      valuta:[],
      token: localStorage.getItem('token')
    };
  },
  created(){
      this.getValutaCode();
      this.getKode();
  },
  methods: {
    getKode(){
      this.axios.get('/api/get-kode', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.kodeperi = response.data;
        this.getSatuan();
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
          localStorage.setItem('Expired','true')
          setTimeout( () => this.$router.push('/login'),2000);
           }
        });
    },
    getSatuan(){
        this.axios.get('/api/getSatuan', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
            this.sat = response.data
        });
    },
    getValutaCode(){
      this.axios.get('/api/getValuta/'+ this.$route.params.code, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.valuta = response.data;
        if(this.valuta.valuta_code == '$'){
          this.locale = 'en-US';
          this.currency = 'USD';
        }
        if(this.valuta.valuta_code == 'Rp'){
          this.locale = 'id-ID';
          this.currency = 'IDR';
        }
        if(this.valuta.valuta_code == '¥'){
          this.locale = 'zh-CN';
          this.currency = 'CNY';
        }
      });
    },
    getTotal(){
      if(this.qty && this.hrgsatuan){
      this.pricetotal = this.qty * this.hrgsatuan
      }
    },
    CreateDetail() {
      this.submitted=true;
      this.errors = [];
      if (
        this.kode != null &&
        this.satuan != null &&
        this.ket != null &&
        this.pricetotal != null &&
        this.hrgsatuan != null &&
        this.qty != null 
      ) {
        const data = new FormData();
        data.append("invent_code", this.kode);
        data.append("satuan", this.satuan);
        data.append("ket", this.ket);
        data.append("pricetotal", this.pricetotal);
        data.append("hrgsatuan", this.hrgsatuan);
        data.append("qty", this.qty);
        this.axios.post('/api/add-detail-pem/'+ this.$route.params.code, data, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
          setTimeout( () => this.$router.push('/pembelian-peripheral-detail/'+ this.$route.params.code),1000);
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