<template>
  <div class="p-grid crud-demo">
    <div class="p-col-12">
      <div class="card">
        <Toast />
        <ConfirmDialog> </ConfirmDialog>
        <Toolbar class="p-mb-4">
          <template v-slot:left>
				        <h4>ICT Request (Detail) </h4>
          </template>
        </Toolbar>
        <DataTable
          :value="detail"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request (Detail)"
          responsiveLayout="scroll"
        >
        
       <template #header>
              <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
                  <label style="width:110px">No. Request: {{kode.noreq}}</label>
                    <span class="p-input-icon-left">
                        <i class="pi pi-search" />
                        <InputText
                        v-model="filters['global'].value"
                        placeholder="Search. . ."
                        />
                    </span>
            </div>
          </template>
           <template #empty>
            Not Found
          </template>
          <template #loading>
            Loading data. Please wait.
          </template>
          <Column field="invent_code" header="Kode" :sortable="true" style="min-width:12rem"/>
          <Column field="invent_desc" header="Deskripsi" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_assigned_to" header="Petugas(ICT)" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_status" header="Status" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
                <Button
                    v-if="slotProps.data.ireq_status != 'Close'"
                    class="p-button-raised p-button-text p-mr-2 p-mb-2"
                    label="Closing"
                    @click="ClosingPerDetail(slotProps.data.ireqd_id)"
                />
            </template>  
          </Column>
          <template #footer>
               <div class="p-grid p-dir-col">
			        <div class="p-col">
				      <div class="box">
                        <Button
                            label="Back"
                            class="p-button-raised p-button p-mr-2 p-mb-2"
                            icon="pi pi-chevron-left"
                            @click="$router.push({
                            name: 'Ict Request Divisi 4'})"
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
import {FilterMatchMode} from 'primevue/api';
export default {
  data() {
    return {
        loading: true,
        detail: [],
        petugas: [],
        assign:[],
        kode:[],
        filters: { 'global': {value: null, matchMode: FilterMatchMode.CONTAINS} },
        code : this.$route.params.code,
        token: localStorage.getItem('token'),
        checkname : [],
        checkto : [],
        id : localStorage.getItem('id'),
    };
  },
  mounted() {
    this.getIctDetail();
  },
  methods: {
    cekUser(){
      this.axios.get('/api/cek-user/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.checkto = response.data.map((x)=> x.to)
        this.checkname = response.data.map((x)=> x.name)
        if(this.checkname.includes("Closing Request") || this.checkto.includes("/ict-request-divisi4")){ 
          this.getIctDetail();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/Dashboard'),2000);
        }
      });
    },
    getIctDetail(){
      this.axios.get('/api/ict-detail/' + this.$route.params.code, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.detail = response.data;
        this.getNoreq();
        this.loading = false;
      }).catch(error=>{
          if (error.response.status == 401) {
            this.$toast.add({
            severity:'error', summary: 'Error', detail:'Sesi Login Expired'
          });
          localStorage.clear();
          localStorage.setItem('Expired','true')
          setTimeout( () => this.$router.push('/login'),2000);
           }
      });
    },
    ClosingPerDetail(ireqd_id){
         this.$confirm.require({
        message: "Closing Permohonan Dilanjutkan?",
        header: "Closing Per Detail",
        icon: "pi pi-info-circle",
        acceptClass: "p-button",
        acceptLabel: "Ya",
        rejectLabel: "Tidak",
        accept: () => {
          this.$toast.add({
            severity: "info",
            summary: "Confirmed",
            detail: "Berhasil Diclosing",
            life: 3000,
          });
          this.axios.get('/api/updateStatusClosingDetail/' +ireqd_id + '/' + this.$route.params.code, {headers: {'Authorization': 'Bearer '+this.token}});
          this.getIctDetail();
        },
        reject: () => {},
      });
    },
    getNoreq(){
      this.axios.get('/api/get-noreq/'+ this.$route.params.code, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.kode = response.data;
      });
    },
  },
};
</script>