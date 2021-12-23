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
				        <h4>Laporan Request Per Status</h4>
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
           <template #empty>
            Not Found
          </template>
          <template #loading>
            Loading. Please wait.
          </template>
          <Column field="ireq_status" header="Status ICT Request" style="min-width:10rem"/>
          <Column field="jumlah" header="Jumlah Request" style="min-width:10rem"/>
          <template #footer>
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
         loading: true,
         req: [],
         token: localStorage.getItem('token'),
            items: [
                {
                    label: 'Pdf',
                    icon: 'bi bi-file-earmark-pdf text-danger',
                    command: () => {
                        window.open('api/req-per-status-pdf');
                    }
                },
                {
                    label: 'Excel',
                    icon: 'bi bi-file-earmark-excel text-success',
                    command: () => {
                        window.open('api/req-per-status-excel');
                    }
                }
            ],
    };
  },
  created() {
    this.getReq();
  },
  methods: {
    getReq(){
      this.axios.get('api/get-tahun', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.req = response.data.grafik3;
        this.loading = false;
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
  },
};
</script>