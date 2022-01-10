<template>
  <div class="p-grid crud-demo">
    <div class="p-col-12">
      <div class="card">
        <Toast />
        <ConfirmDialog> </ConfirmDialog>
        <Toolbar class="p-mb-4">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
			        <div class="p-col">
				        <h4>Laporan Request Divisi Requestor Per Bulan</h4>
			        </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          :value="req"
          :rows="25"
          :rowHover="true"
          responsiveLayout="scroll"
          :loading="loading"
          stripedRows
        >
         <template #loading>
            Loading data. Please wait.
         </template>
         <template #header>
            <div class="table-header p-text-left">
                <Dropdown @change="getTahunRequestor()" :showClear="true" v-model="bulanRequestor" :options="bulan" optionValue="code" optionLabel="name" placeholder="Pilih Bulan" class="p-mr-2 p-mb-2" />
                <Dropdown @change="getPerDivisiRequestorBulan()" :showClear="true" v-model="tahunnRequestor" :options="tahun" optionValue="tahun" optionLabel="tahun" placeholder="Pilih Tahun" class="p-mr-2 p-mb-2" v-if="this.bulanRequestor" />
            </div>
          </template>
          <Column field="div_name" header="Divisi Requestor" style="min-width:10rem" v-if="tahunnRequestor"/>
          <Column field="jumlah" header="Jumlah Request" style="min-width:10rem" v-if="tahunnRequestor"/>
          <template #footer v-if="tahunnRequestor">
            <div class="p-grid p-dir-col">
			        <div class="p-col">
				        <div class="box">
                  <SplitButton 
                    label="Print" 
                    :model="items"
                  />
                </div>
			        </div>
            </div>
           </template>
        </DataTable>   
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
         bulanRequestor:null,
         tahunnRequestor:null,
         bulan:[],
         tahun:[],
         loading: false,
         req: [],
         token: localStorage.getItem('token'),
         checkname : [],
         checkto : [],
         id : localStorage.getItem('id'),
            items: [
                {
                    label: 'Pdf',
                    icon: 'bi bi-file-earmark-pdf text-danger',
                    command: () => {
                        window.open('api/req-div-req-per-bulan-pdf/'+this.tahunnRequestor +'/'+this.bulanRequestor);
                    }
                },
                {
                    label: 'Excel',
                    icon: 'bi bi-file-earmark-excel text-success',
                    command: () => {
                        window.open('api/req-div-req-per-bulan-excel/'+this.tahunnRequestor +'/'+this.bulanRequestor);
                    }
                }
            ],
    };
  },
  created() {
    this.cekUser();
  },
  methods: {
    cekUser(){
      this.axios.get('api/cek-user/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.checkto = response.data.map((x)=> x.to)
        this.checkname = response.data.map((x)=> x.name)
        if(this.checkname.includes("Menu") || this.checkto.includes("/report-div-req-per-bulan")){
          this.getBulan();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/dashboard'),2000);
        }
      });
    },
    getBulan(){
        this.axios.get('api/get-tahun', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.bulan = response.data.grafik2;
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
    getTahunRequestor(){
        this.tahunnRequestor = null;
        if(this.bulanRequestor != null){
            this.axios.get('api/get-tahun-requestor/'+this.bulanRequestor, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.tahun = response.data;
            });
        }
    },
    
    getPerDivisiRequestorBulan(){
        if(this.tahunnRequestor != null &&
            this.bulanRequestor != null){
            this.loading = true;
            this.axios.get('api/count-per-divreq-bulan/'+this.tahunnRequestor +'/'+this.bulanRequestor, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{ 
                this.req = response.data;
                this.loading = false;
            });
            }
        },
  },
};
</script>