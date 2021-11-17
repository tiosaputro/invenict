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
            <div class="card-body">
             <form @submit.prevent="CreateIct">
               <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">No. Request</label>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="kode" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Tgl. Request</label>
                 <div class="p-col-5">
                  <div class="p-inputgroup">
                      <DatePicker v-model="tgl" :masks="mask" >
                        <template v-slot="{ inputValue, togglePopover }">
                          <input
                            class="bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none"
                            :value="inputValue"
                            @click="togglePopover"
                            placeholder="Pilih Tgl. Request"
                            readonly
                          />
                      <Button icon="pi pi-calendar" v-if="!tgl" @click="togglePopover"/>
                      <Button icon="pi pi-trash" class="p-button-danger" v-else @click="tgl = '' " />
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
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Tipe Request</label>
                 <div class="p-col-3">
                     <Dropdown 
                        v-model ="tipereq"
                        :options="type"
                        optionLabel="name"
                        optionValue="code"
                        placeholder="Pilih Tipe Request"
                        :showClear="true"
                        :class="{ 'p-invalid': error.tipereq }"
                     />
                        <small v-if="error.tipereq" class="p-error">
                          {{error.tipereq}}
                        </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Pengguna</label>
                 <div class="p-col-3">
                     <InputText
                        type="text"
                        v-model="usr_name"
                        placeholder="Masukan User"
                        :class="{ 'p-invalid': error.usr_name }"
                     />
                        <small v-if="error.usr_name" class="p-error">
                          {{error.bisnis}}
                        </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Deskripsi" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Divisi Pengguna</label>
                 <div class="p-col-3">
                     <Dropdown 
                        v-model ="usr_divisi"
                        :options="divisi"
                        optionLabel="name"
                        optionValue="code"
                        placeholder="Pilih Divisi User"
                        :showClear="true"
                        :filter="true"
                        :class="{ 'p-invalid': error.usr_divisi }"
                     />
                        <small v-if="error.usr_divisi" class="p-error">
                          {{error.usr_divisi}}
                        </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Deskripsi" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Bisnis Unit</label>
                 <div class="p-col-3">
                     <Dropdown 
                        v-model ="bisnis"
                        :options="bu"
                        optionLabel="name"
                        optionValue="code"
                        placeholder="Pilih Bisnis Unit"
                        :showClear="true"
                        :filter="true"
                        :class="{ 'p-invalid': error.bisnis }"
                     />
                        <small v-if="error.bisnis" class="p-error">
                          {{error.bisnis}}
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
                  @click="$router.push('/ict-request')"
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
      error:[],
      tgl: new Date(),
      tipereq: null,
      usr_name:null,
      usr_divisi : null,
      divisi:[],
      bisnis: null,
      type: [],
      bu: [],
      mask:{
        input: 'DD MMM YYYY'
      },
      token: localStorage.getItem('token'),
    };
  },
  created(){
      this.getBisnis();
      this.getDivisi();
  },
  methods: {
    getDivisi(){
      this.axios.get('api/get-divisi', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.divisi = response.data;
      });
    },
    getBisnis(){
      this.axios.get('api/get-bisnis', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.bu = response.data;
        this.getType();
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
          localStorage.setItem("Expired","true")
          setTimeout( () => this.$router.push('/login'),2000);
           }
        });
      },
    getType(){
      this.axios.get('api/getType', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.type = response.data;
      });
    },
    CreateIct() {
      this.errors = [];
      this.error = [];
      if (
        this.tipereq != null &&
        this.bisnis != null &&
        this.usr_name != null &&
        this.usr_divisi != null
      ){
        const data = new FormData();
        data.append("tgl", this.tgl);
        data.append("tipereq", this.tipereq);
        data.append("bisnis", this.bisnis);
        data.append("user_name", this.usr_name);
        data.append("user_divisi", this.usr_divisi);

        this.axios.post('api/add-ict', data,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.$toast.add({
          severity: "success",
          summary: "Success Message",
          detail: "Success Create",
        });
        setTimeout( () => this.$router.push('/ict-request'),1000);
        }).catch(error=>{
          this.errors = error.response.data.errors;
         });
      }else{
        if(this.tipereq == null){
          this.error.tipereq = "Tipe Request Wajib Diisi"
        }
        if(this.bisnis == null){
          this.error.bisnis = "Bisnis Unit Wajib Diisi"
        }
        if(this.usr_name == null){
          this.error.usr_name = "Pengguna Wajib Diisi"
        }
        if(this.usr_divisi == null){
          this.error.usr_divisi = "Divisi Pengguna Wajib Diisi"
        }
        
      }
      },
  },
};
</script>