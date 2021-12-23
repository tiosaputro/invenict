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
				        <h4>Laporan Request Divisi User Per Tahun</h4>
			        </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          :value="req"
          :rows="25"
          :loading="loading"
          :rowHover="true"
          responsiveLayout="scroll"
          stripedRows
        >
         <template #loading>
            Loading data. Please wait.
         </template>
         <template #header>
            <div class="table-header p-text-left">
               <Dropdown @change="getPerDivisiUserTahun()" :showClear="true" v-model="tahunUser" :options="tahunn" optionValue="tahun" optionLabel="tahun" placeholder="Pilih Tahun" />
            </div>
          </template>
          <Column field="div_name" header="Divisi User" style="min-width:8rem" v-if="tahunUser"/>
          <Column field="jumlah" header="Jumlah Request" style="min-width:8rem" v-if="tahunUser"/>
          <template #footer v-if="tahunUser">
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
         tahunUser:null,
         tahunn:[],
         loading: false,
         req: [],
         token: localStorage.getItem('token'),
            items: [
                {
                    label: 'Pdf',
                    icon: 'bi bi-file-earmark-pdf text-danger',
                    command: () => {
                        window.open('api/req-div-user-per-tahun-pdf/'+this.tahunUser);
                    }
                },
                {
                    label: 'Excel',
                    icon: 'bi bi-file-earmark-excel text-success',
                    command: () => {
                        window.open('api/req-div-user-per-tahun-excel/'+this.tahunUser);
                    }
                }
            ],
    };
  },
  created() {
    this.getTahun();
  },
  methods: {
        getPerDivisiUserTahun(){
            if(this.tahunUser != null){
            this.loading = true;
                this.axios.get('api/count-per-divuser-tahun/'+this.tahunUser, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{ 
                    this.req = response.data;
                    this.loading = false;
                });
            }
        },
        getTahun(){
            this.axios.get('api/get-tahun', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.tahunn = response.data.grafik;
            });
        },
  },
};
</script>