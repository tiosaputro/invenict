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
            <form @submit.prevent="CreateCash" v-if="this.ca">
              <div class="card"> <!-- card-->
              <div class="p-fluid p-formgrid p-grid">
               <div class="p-field p-grid p-col">
                    <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">No. Request</label>
                    <div class="p-col-8 p-md-6">
                      <Dropdown
                        v-model="noreq"
                        :options="req"
                        optionLabel="name"
                        optionValue="code"
                        :showClear="true"
                        @change="get(noreq)"
                        placeholder="Pilih No. Request"
                        :class="{ 'p-invalid': errors.noreq }"
                        autofocus
                      />
                      <small v-if="errors.noreq" class="p-error">
                          {{ errors.noreq[0] }}
                      </small>
                      
                      <small v-if="error.noreq" class="p-error">
                          {{ error.noreq }}
                      </small> 
                    </div>
                  </div>
                   <div class="p-field p-grid p-col" v-if="noreq">
                    <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">Requester</label>
                    <div class="p-col-8 p-md-6">
                        <InputText
                            type ="text"
                            v-model="ca.req"
                            disabled
                        />
                     </div>
                    </div>
                 </div>
                 <div class="p-fluid p-formgrid p-grid" v-if="noreq">
                  <div class="p-field p-grid p-col">
                      <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">Tgl. Request</label>
                    <div class="p-col-10 p-md-6">
                       <InputText
                            type ="text"
                            v-model="ca.ireq_date"
                            disabled
                        />
                  </div>
                  </div>
                  <div class="p-field p-grid p-col" v-if="noreq">
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
                 </div><!-- card-->
                 <div class="card-body"><!-- card body -->
                  <div class="p-fluid">
                      <div class="p-field p-grid">
                      <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">Jumlah</label>
                      <div class="p-col-2">
                              <InputNumber
                                  mode="currency" 
                                  currency="IDR" 
                                  locale="id"
                                  v-model="jum"
                                  placeholder="Masukan Jumlah"
                                  :class="{ 'p-invalid': errors.jum }"
                              />
                            <small v-if="errors.jum" class="p-error">
                                {{ errors.jum[0] }}
                            </small> 
                      </div>
                        </div>
                    </div>
                <div class="p-fluid">
                <div class="p-field p-grid">
                  <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">Tgl. Submit</label>
                    <div class="p-col-3">
                    <div class="p-inputgroup">
                      <DatePicker v-model="tglsub" :masks="mask" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            readonly
                            placeholder="Pilih Tgl. Submit"
                          />
                      <Button icon="pi pi-calendar" v-if="!tglsub" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="tglsub = ''" />
                        </template>
                      </DatePicker>
                      </div>
                        <small v-if="errors.tglsub" class="p-error">
                          {{ errors.tglsub[0] }}
                        </small> 
                 </div>
                  </div>
              </div>
              <div class="p-fluid">
               <div class="p-field p-grid">
                    <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">Tgl. Terima Cash</label>
                    <div class="p-col-3">
                     <div class="p-inputgroup">
                      <DatePicker v-model="tglrecvcash" :min-date="this.tglsub" :masks="mask" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            readonly
                            placeholder="Pilih Tgl. Terima Cash"
                          />
                      <Button icon="pi pi-calendar" v-if="!tglrecvcash" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="tglrecvcash = ''" />
                        </template>
                      </DatePicker>
                      </div>
                       <small v-if="errors.tglrecvcash" class="p-error">
                          {{ errors.tglrecvcash[0] }}
                        </small> 
                  </div>
                  </div>
                </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                  <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">Tgl. Pembelian</label>
                    <div class="p-col-3">
                    <div class="p-inputgroup">
                      <DatePicker v-model="tglbuy" :min-date="this.tglrecvcash" :masks="mask" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            readonly
                            placeholder="Pilih Tgl. Pembelian"
                          />
                      <Button icon="pi pi-calendar" v-if="!tglbuy" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="tglbuy = ''" />
                        </template>
                      </DatePicker>
                      </div>
                       <small v-if="errors.tglbuy" class="p-error">
                          {{ errors.tglbuy[0] }}
                        </small> 
                    </div>
                </div>
              </div>
              <div class="p-fluid">
               <div class="p-field p-grid">
                <label for="fax" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">Tgl. Terima Barang</label>
                 <div class="p-col-3">
                     <div class="p-inputgroup">
                      <DatePicker v-model="tglrecvunit" :min-date="this.tglbuy" :masks="mask" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            readonly
                            placeholder="Pilih Tgl Terima Barang"
                          />
                      <Button icon="pi pi-calendar" v-if="!tglrecvunit" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="tglrecvunit = ''" />
                        </template>
                      </DatePicker>
                      </div>
                       <small v-if="errors.tglrecvunit" class="p-error">
                          {{ errors.tglrecvunit[0] }}
                        </small>
                 </div>
               </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                 <label for="notlp1" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:160px">Tgl. Penyerahan Ke User</label>
                    <div class="p-col-3">
                      <div class="p-inputgroup">
                      <DatePicker v-model="tgltouser" :min-date="this.tglrecvunit" :masks="mask" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            readonly
                            placeholder="Pilih Tgl Penyerahan"
                          />
                      <Button icon="pi pi-calendar" v-if="!tgltouser" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="tgltouser = ''" />
                        </template>
                      </DatePicker>
                      </div>
                       <small v-if="errors.tgltouser" class="p-error">
                          {{ errors.tgltouser[0] }}
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
              </div><!-- card body -->
            </form>
      </div><!-- card -->
    </div>
</template>
<script>
export default {
  data() {
    return {
      errors: [],
      error:[],
      req:[],
      ca:[],
      noreq:'',
      jum:null,
      tglsub: new Date(),
      tglrecvcash:'',
      tglbuy:'',
      tglrecvunit:'',
      tgltouser:'',
      mask:{
        input: 'DD MMM YYYY'
      },
      token: localStorage.getItem('token'),
      id : localStorage.getItem('id'),
      checkname : [],
      checkto : []
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
        if(this.checkname.includes("Cash Advance") || this.checkto.includes("/cash-advance")){
            this.getNoreq();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/Dashboard'),2000);
        }
      });
    },
    get(noreq){
      if(this.noreq){
      this.axios.get('api/getNameBu/'+noreq,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.ca = response.data;
      });
      }
    }, 
    getNoreq(){
      this.axios.get('api/getNoreq',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.req = response.data;
      }).catch(error=>{
          if (error.response.status == 403){
            this.$toast.add({
              severity:'error', summary: 'Error', detail:'Cannot Access This Page'
            });
            setTimeout( () => this.$router.push('/Dashboard'),2000);

          }else if (error.response.status == 401){
            this.$toast.add({
            severity:'error', summary: 'Error', detail:'Sesi Login Expired'
            });
            localStorage.clear();
            localStorage.setItem('Expired','true')
            setTimeout( () => this.$router.push('/login'),2000);
          }
        });
    },   
    CreateCash() {
      this.errors=[];
      this.error = [];
      if( this.noreq != null){
      
        const data = new FormData();
        data.append("noreq", this.noreq);
        data.append("jum", this.jum);
        data.append("tglrecvunit", this.tglrecvunit);
        data.append("tglbuy", this.tglbuy);
        data.append("tglrecvcash", this.tglrecvcash);
        data.append("tglsub", this.tglsub);
        data.append("tgltouser", this.tgltouser);

        this.axios.post('api/add-cash', data,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
          setTimeout( () => this.$router.push('/cash-advance'),1000);
          this.$toast.add({
            severity: "success",
            summary: "Success Message",
            detail: "Success Create",
          });
        }).catch(error=>{
            this.errors = error.response.data.errors;
        });
      }else{
        this.error.noreq = "No Request Wajib Diisi"
      }
    }
  },
};
</script>
<style scoped lang="scss">
.pegawai-image {
  width: 100px;
  box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
}
</style>