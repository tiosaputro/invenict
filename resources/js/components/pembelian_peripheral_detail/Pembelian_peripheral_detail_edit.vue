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
            <form @submit.prevent="UpdateDetail">
              <div class="p-fluid p-formgrid p-grid">
               <div class="p-field p-grid p-col">
                    <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Kode Peripheral</label>
                    <div class="p-col-3">
                      <Dropdown 
                        v-model="detail.invent_code"
                        :options="kodeperi"
                        optionLabel="name"
                        optionValue="code"
                        disabled
                      />
                    </div>
                  </div>
                 </div>
                 <div class="p-fluid p-formgrid p-grid">
                  <div class="p-field p-grid p-col">
                      <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:155px">Jumlah (Qty)</label>
                    <div class="p-col-3">
                        <InputNumber
                         v-model="detail.dpurchase_qty"
                         placeholder="Masukan Jumlah (Qty)"
                         :change="getTotal()"
                         :class="{ 'p-invalid': submitted && !detail.dpurchase_qty }"
                         />
                      <small class="p-error" v-if="submitted && !detail.dpurchase_qty"
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
                        v-model="detail.dpurchase_sat"
                        :options="sat"
                        :showClear="true"
                        optionLabel="name"
                        optionValue="code"
                        placeholder="Pilih Satuan"
                        :class="{ 'p-invalid': submitted && !detail.dpurchase_sat }"
                     />
                      <small class="p-error" v-if="submitted && !detail.dpurchase_sat"
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
                      :locale="locale"
                      :currency="currency"
                      :change="getTotal()"
                      v-model="detail.dpurchase_prc_sat"
                      placeholder="Masukan Harga Satuan"
                      :class="{ 'p-invalid': submitted && !detail.dpurchase_prc_sat }"
                    />
                      <small class="p-error" v-if="submitted && !detail.dpurchase_prc_sat"
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
                          :locale="locale"
                          :currency="currency"
                          v-model="detail.dpurchase_prc"
                          placeholder="Masukan Total Harga"
                          :class="{ 'p-invalid': submitted && !detail.dpurchase_prc }"
                          v-if="this.detail.dpurchase_prc_sat"
                          readonly
                        />
                        
                      <small class="p-error" v-if="submitted && !detail.dpurchase_prc"
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
                    v-model="detail.dpurchase_remark"
                    :autoResize="true" 
                    rows="5" 
                    cols="30"
                    placeholder="Masukan Keterangan"
                    :class="{ 'p-invalid': submitted && !detail.dpurchase_remark }"
                  />
                      <small class="p-error" v-if="submitted && !detail.dpurchase_remark"
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
      sat:[],
      kodeperi:[],
      detail:[],
      token: localStorage.getItem('token')
    };
  },
  created(){
      this.getValutaCode();
      this.getDetail();
  },
  methods:{
    getTotal(){
      this.detail.dpurchase_prc = this.detail.dpurchase_qty * this.detail.dpurchase_prc_sat
    },
    getDetail(){
        this.axios.get('/api/edit-detail-pem/'+this.$route.params.purchase,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.detail = response.data;
            this.getKode();
            this.getSatuan();
        }).catch(error=>{
          if (error.response.status == 403) {
           this.$toast.add({
            severity:'error', summary: 'Error', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/Dashboard'),2000);
          }
           else if (error.response.status == 401){
            this.$toast.add({
            severity:'error', summary: 'Error', detail:'Sesi Login Expired'
          });
          localStorage.clear();
          localStorage.setItem('Expired','true')
          setTimeout( () => this.$router.push('/login'),2000);
           }
        });
    },
    getKode(){
      this.axios.get('/api/get-kode',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.kodeperi = response.data;
      });
    },
    getSatuan(){
        this.axios.get('/api/getSatuan',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
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
    UpdateDetail() {
      this.submitted=true;
      if (
        this.detail.dpurchase_qty != null &&
        this.detail.dpurchase_sat != null &&
        this.detail.dpurchase_prc_sat != null &&
        this.detail.dpurchase_prc != null &&
        this.detail.dpurchase_remark != null &&
        this.detail.invent_code != null 
      ) {
        this.axios.put('/api/update-detail-pem/'+ this.$route.params.code + '/' +this.$route.params.purchase, this.detail,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
          setTimeout( () => this.$router.push('/pembelian-peripheral-detail/'+ this.$route.params.code),1000);
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