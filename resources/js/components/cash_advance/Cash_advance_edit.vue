<template>
  <div>
        <Toast />
        <div class="card">
          <Toolbar class="p-mb-4">
            <template v-slot:left>
              <div class="p-grid p-dir-col">
                <div class="p-col">
                  <h4>Cash Advance</h4>
			          </div>
              </div>
            </template>
          </Toolbar>
          <div class="card-body">
            <form @submit.prevent="UpdateCash">
              <div class="p-fluid p-formgrid p-grid">
               <div class="p-field p-grid p-col">
                    <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">No. Request</label>
                    <div class="p-col-10 p-md-6">
                      <InputText
                      type="text"
                      v-model="ca.ca_idd"
                      disabled
                       />
                    </div>
                  </div>
                   <div class="p-field p-grid p-col">
                    <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">Requester</label>
                    <div class="p-col-10 p-md-6">
                        <InputText
                            type ="text"
                            v-model="ca.req"
                            disabled
                        />
                     </div>
                    </div>
                 </div>
                 <div class="p-fluid p-formgrid p-grid">
                  <div class="p-field p-grid p-col">
                      <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">Tgl. Request</label>
                    <div class="p-col-10 p-md-6">
                      <div class="p-inputgroup">
                      <DatePicker v-model="ca.ireq_date" :masks="mask" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            disabled
                          />
                        </template>
                      </DatePicker>
                      </div>
                  </div>
                  </div>
                  <div class="p-field p-grid p-col">
                  <label for="file" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">Bisnis Unit</label>
                    <div class="p-col-10 p-md-6">
                        <InputText
                            type ="text"
                            v-model="ca.bu"
                            disabled
                        />
                      </div>
                    </div>
                 </div>
             <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">Jumlah</label>
                 <div class="p-col-3">
                        <InputNumber
                            mode="currency" 
                            currency="IDR" 
                            locale="id"
                            v-model="ca.ca_pic_name"
                            placeholder="Masukan Jumlah"
                            :class="{ 'p-invalid': errors.ca_pic_name }"
                        />
                       <small v-if="errors.ca_pic_name" class="p-error">
                          {{ errors.ca_pic_name[0] }}
                        </small>
                 </div>
                  </div>
              </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                  <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">Tgl. Submit</label>
                    <div class="p-col-3">
                    <div class="p-inputgroup">
                      <DatePicker v-model="ca.ca_submit_date" :masks="mask" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            readonly
                            placeholder="Pilih Tgl. Submit"
                          />
                      <Button icon="pi pi-calendar" v-if="!ca.ca_submit_date" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="ca.ca_submit_date = ''" />
                        </template>
                      </DatePicker>
                      </div>
                       <small v-if="errors.ca_submit_date" class="p-error">
                          {{ errors.ca_submit_date[0] }}
                        </small>
                 </div>
                  </div>
              </div>
              <div class="p-fluid">
               <div class="p-field p-grid">
                    <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">Tgl. Terima Cash</label>
                    <div class="p-col-3">
                     <div class="p-inputgroup">
                      <DatePicker v-model="ca.ca_recv_cash_date" :min-date="this.ca.ca_submit_date" :masks="mask" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            readonly
                            placeholder="Pilih Tgl. Terima Cash"
                          />
                      <Button icon="pi pi-calendar" v-if="!ca.ca_recv_cash_date" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="ca.ca_recv_cash_date = ''" />
                        </template>
                      </DatePicker>
                      </div>
                       <small v-if="errors.ca_recv_cash_date" class="p-error">
                          {{ errors.ca_recv_cash_date[0] }}
                        </small>
                  </div>
                  </div>
                </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                  <label for="email" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">Tgl. Pembelian</label>
                    <div class="p-col-3">
                    <div class="p-inputgroup">
                      <DatePicker v-model="ca.ca_purchase_date" :min-date="this.ca.ca_recv_cash_date" :masks="mask" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            readonly
                            placeholder="Pilih Tgl. Pembelian"
                          />
                      <Button icon="pi pi-calendar" v-if="!ca.ca_purchase_date" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="ca.ca_purchase_date = ''" />
                        </template>
                      </DatePicker>
                      </div>
                       <small v-if="errors.ca_purchase_date" class="p-error">
                          {{ errors.ca_purchase_date[0] }}
                        </small>
                    </div>
                </div>
              </div>
              <div class="p-fluid">
               <div class="p-field p-grid">
                <label for="fax" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">Tgl. Terima Barang</label>
                 <div class="p-col-3">
                     <div class="p-inputgroup">
                      <DatePicker v-model="ca.ca_recv_item_date" :min-date="this.ca.ca_purchase_date" :masks="mask" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            readonly
                            placeholder="Pilih Tgl Terima Barang"
                          />
                      <Button icon="pi pi-calendar" v-if="!ca.ca_recv_item_date" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="ca.ca_recv_item_date = ''" />
                        </template>
                      </DatePicker>
                      </div>
                       <small v-if="errors.ca_recv_item_date" class="p-error">
                          {{ errors.ca_recv_item_date[0] }}
                        </small>
                 </div>
               </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                 <label for="notlp1" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">Tgl. Penyerahan Ke User</label>
                    <div class="p-col-3">
                      <div class="p-inputgroup">
                      <DatePicker v-model="ca.ca_hand_over_date" :min-date="this.ca.ca_recv_item_date" :masks="mask" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            readonly
                            placeholder="Pilih Tgl Penyerahan"
                          />
                      <Button icon="pi pi-calendar" v-if="!ca.ca_hand_over_date" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="ca.ca_hand_over_date = ''" />
                        </template>
                      </DatePicker>
                      </div>
                       <small v-if="errors.ca_hand_over_date" class="p-error">
                          {{ errors.ca_hand_over_date[0] }}
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
                  @click="$router.push('/cash-advance')"
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
      ca:[],
      mask:{
        input: 'DD MMM YYYY'
      }, 
      token: localStorage.getItem('token'),
    };
  },
  created(){
      this.getCash();
  },
  methods: {
    getCash(){
      this.axios.get('/api/edit-cash/' + this.$route.params.code, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.ca = response.data;
      }).catch(error=>{
          if ((error.response.status == 403)) {
           this.$toast.add({
            severity:'error', summary: 'Error', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/Dashboard'),2000);
          }
           else if ((error.response.status == 401)){
            this.$toast.add({
            severity:'error', summary: 'Error', detail:'Sesi Login Expired'
          });
          localStorage.clear();
          localStorage.setItem("Expired","true")
          setTimeout( () => this.$router.push('/login'),2000);
           }
        });
    },   
    UpdateCash() {
      this.errors = [];
  
        this.axios.put('/api/update-cash/'+this.$route.params.code, this.ca, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
          setTimeout( () => this.$router.push('/cash-advance'),1000);
          this.$toast.add({
            severity: "success",
            summary: "Success Message",
            detail: "Success Update",
          });
        }).catch(error=>{
            this.errors = error.response.data.errors;
        });
    }
  },
};
</script>