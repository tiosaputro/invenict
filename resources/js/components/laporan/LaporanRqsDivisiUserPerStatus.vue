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
				    <h4>Laporan Request Divisi User Per Status</h4>
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
                <Dropdown @change="getStatusDivisiUser()" :showClear="true" v-model="statusUser" :options="status" optionValue="code" optionLabel="name" placeholder="Pilih Status"/>
            </div>
          </template>
          <Column field="div_name" header="Divisi User" style="min-width:10rem" v-if="statusUser"/>
          <Column field="jumlah" header="Jumlah Request" style="min-width:10rem" v-if="statusUser"/>
          <template #footer v-if="statusUser">
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
         statusUser:null,
         status:[],
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
                        window.open('api/req-div-user-per-status-pdf/'+this.statusUser);
                    }
                },
                {
                    label: 'Excel',
                    icon: 'bi bi-file-earmark-excel text-success',
                    command: () => {
                        window.open('api/req-div-user-per-status-excel/'+this.statusUser);
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
        if(this.checkname.includes("Laporan Request Divisi User Per Status") || this.checkto.includes("/report-div-user-per-status")){
          this.getStatus();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/Dashboard'),2000);
        }
      });
    },
        getStatus(){
            this.axios.get('api/get-tahun', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.status = response.data.grafik1;
            });
        },
        getStatusDivisiUser(){
            if(this.statusUser != null){
                this.loading = true;
                this.axios.get('api/count-per-divuser-status/'+this.statusUser, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                    this.req = response.data;
                    this.loading = false;
                });
            }
        },
  },
};
</script>