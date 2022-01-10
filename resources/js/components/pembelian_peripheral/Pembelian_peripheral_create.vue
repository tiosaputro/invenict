<template>
  <div class="container py-4">
    <div class="col-md-10">
        <Toast />
        <div class="card">
        <Toolbar class="p-mb-4">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
			        <div class="p-col">
				        <h4>Pembelian Peripheral</h4>
			        </div>
            </div>
          </template>
        </Toolbar>
            <div class="card-body">
             <form @submit.prevent="CreatePurch">
               <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="tipe" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:150px">Suplier</label>
                 <div class="p-col-4">
                <Dropdown
                  :options="suplier"
                  optionLabel="name"
                  optionValue="code"
                  :showClear="true"
                  :filter="true"
                  v-model="supp"
                  placeholder="Pilih Suplier"
                  :class="{ 'p-invalid': submitted && !supp }"
                />
                   <small class="p-error" v-if="submitted && !supp"
                      >Suplier Wajib Diisi.
                   </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:150px">Tgl. Pembelian</label>
                 <div class="p-col-10 p-md-6">
                  <div class="p-inputgroup">
                      <DatePicker v-model="purch_date" :masks="mask" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            readonly
                            placeholder="Pilih Tanggal Pembelian"
                          />
                      <Button icon="pi pi-calendar" v-if="!purch_date" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="purch_date = null" />
                        </template>
                      </DatePicker>
                      </div>
                   <small class="p-error" v-if="submitted && !purch_date"
                      >Tgl. Pembelian Wajib Diisi.
                   </small>
                  </div>
                </div>
              </div>
              
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:150px">Cara Pembayaran</label>
                 <div class="p-col-4">
                <Dropdown
                  v-model="pay"
                  :options="methode_pay"
                  optionLabel="name"
                  optionValue="code"
                  :showClear="true"
                  :filter="true"
                  placeholder="Pilih Cara Pembayaran"
                  :class="{ 'p-invalid': submitted && !pay }"
                />
                   <small class="p-error" v-if="submitted && !pay"
                      >Cara Pembayaran Wajib Diisi.
                   </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:150px">Petugas</label>
                 <div class="p-col-4">
                <InputText
                  type="text"
                  v-model="petugas"
                  placeholder="Masukan Petugas"
                  :class="{ 'p-invalid': submitted && !petugas }"
                />
                   <small class="p-error" v-if="submitted && !petugas"
                      >Petugas Wajib Diisi.
                   </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:150px">Mata Uang</label>
                 <div class="p-col-3">
               <Dropdown
                  v-model="money"
                  :options="code_money"
                  :showClear="true"
                  optionLabel="name"
                  optionValue="code"
                  :filter="true"
                  placeholder="Pilih Mata Uang"
                  :class="{ 'p-invalid': submitted && !money }"
                />
                   <small class="p-error" v-if="submitted && !money"
                      >Mata Uang Wajib Diisi.
                   </small>
                  </div>
                </div>
              </div>
              <!-- <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:150px">Total Pembayaran</label>
                 <div class="p-col-3">
                   <div class="p-inputgroup">
                    <span class="p-inputgroup-addon" v-if="money">{{money}}</span>
                     <InputNumber
                        v-model="purchase_total"
                        placeholder="Masukan Total Pembayaran"
                    />
                   </div>
                  </div>
                </div>
              </div> -->
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:150px">Keterangan</label>
                 <div class="p-col-4">
                   <Textarea
                        type="text"
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
              <!-- <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:150px">Status</label>
                 <div class="p-col-3">
               <Dropdown
                  v-model="status"
                  :options="stat"
                  :showClear="true"
                  optionLabel="nama"
                  optionValue="code"
                  placeholder="Pilih Status"
                  :class="{ 'p-invalid': submitted && !stat }"
                />
                   <small class="p-error" v-if="submitted && !stat"
                      >Status Wajib Diisi.
                   </small>
                  </div>
                </div>
              </div> -->

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
                  @click="$router.push('/pembelian-peripheral')"
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
      checkname : [],
      checkto : [],
      id : localStorage.getItem('id'),
      errors: [],
      suplier:[],
      code_money:[],
      methode_pay:[],
      purch_date:null,
      status:null,
      money:null,
      petugas:null,
      purchase_total:null,
      pay:null,
      supp:null,
      ket:null,
      submitted: false,
      stat: [
        { nama: "Aktif", code: "T" },
        { nama: "Tidak Aktif", code: "F" },
      ],
      mask:{
        input: 'DD MMM YYYY'
      },
      token: localStorage.getItem('token'),
      checkname : [],
      ceckto : [],
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
        if(this.checkname.includes("Pembelian Peripheral") || this.checkto.includes("/pembelian-peripheral")){ 
          this.getSupplier();
          this.getCodeMoney();
          this.getMethodePurchase();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/dashboard'),2000);
        }
      });
    },
    getCodeMoney(){
        this.axios.get('api/getMataUang',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
            this.code_money = response.data;
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
    getSupplier(){
        this.axios.get('api/get-supp',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
            this.suplier = response.data;
        });
    },
    getMethodePurchase(){
        this.axios.get('api/getMethodePurch',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.methode_pay = response.data;
        });
    },
    CreatePurch() {
      this.submitted=true;
      if (
        this.supp != null &&
        this.purch_date != null &&
        this.pay != null &&
        this.petugas != null &&
        this.money != null &&
        this.ket != null 
      ) {
        const data = new FormData();
        data.append("supp", this.supp);
        data.append("purch_date", this.purch_date);
        data.append("pay", this.pay);
        data.append("ket", this.ket);
        data.append("petugas", this.petugas);
        data.append("money", this.money);
        data.append("purchase_total", this.purchase_total);
        data.append("status", this.status);
        this.axios.post('api/add-pem', data,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
          setTimeout( () => this.$router.push('/pembelian-peripheral'),1000);
          this.$toast.add({
            severity: "success",
            summary: "Success Message",
            detail: "Success Create",
          });
        }).catch(error=>{
            this.submitted = false;
            this.errors = error.response.data.errors;
        });
      }
    }
  },
};
</script>