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
				        <h4>Laporan Request Divisi User Per Bulan</h4>
			        </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          :value="req"
          :rows="25"
          :rowHover="true"
          responsiveLayout="scroll"
          stripedRows
        >
         <template #header>
            <div class="table-header p-text-left">
                <Dropdown @change="getTahunUser()" :showClear="true" v-model="bulanUser" :options="bulan" optionValue="code" optionLabel="name" placeholder="Pilih Bulan" class="p-mr-2 p-mb-2" />
                <Dropdown @change="getPerDivisiUserBulan()" :showClear="true" v-model="tahunnUser" :options="tahunn" optionValue="tahun" optionLabel="tahun" placeholder="Pilih Tahun" class="p-mr-2 p-mb-2" v-if="this.bulanUser" />
            </div>
          </template>
          <Column field="div_name" header="Divisi User" style="min-width:12rem" v-if="tahunnUser"/>
          <Column field="jumlah" header="Jumlah Request" style="min-width:12rem" v-if="tahunnUser"/>
          <template #footer v-if="tahunnUser">
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
         bulanUser:null,
         tahunnUser:null,
         bulan:[],
         tahunn:[],
         loading: false,
         req: [],
         token: localStorage.getItem('token'),
            items: [
                {
                    label: 'Pdf',
                    icon: 'bi bi-file-earmark-pdf text-danger',
                    command: () => {
                        window.open('api/req-div-user-per-bulan-pdf/'+this.tahunnUser +'/'+this.bulanUser);
                    }
                },
                {
                    label: 'Excel',
                    icon: 'bi bi-file-earmark-excel text-success',
                    command: () => {
                        window.open('api/req-div-user-per-bulan-excel/'+this.tahunnUser +'/'+this.bulanUser);
                    }
                }
            ],
    };
  },
  created() {
    this.getBulan();
  },
  methods: {
        getBulan(){
            this.axios.get('api/get-tahun', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.bulan = response.data.grafik2;
            });
        },
        getTahunUser(){
            this.tahunnUser = null;
            if(this.bulanUser != null){
                this.axios.get('api/get-tahun-user/'+this.bulanUser, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                    this.tahunn = response.data;
                });
            }
        },
        getPerDivisiUserBulan(){
            if(this.tahunnUser != null &&
                this.bulanUser != null){
                this.axios.get('api/count-per-divuser-bulan/'+this.tahunnUser +'/'+this.bulanUser, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{ 
                    this.req = response.data
                }).catch(error => console.log(error.response))
            }
        },
  },
};
</script>