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
          <Column field="ireq_assigned_to" header="Petugas (ICT)" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
                <Button
                    class="p-button-raised p-button-text p-mr-2 p-mb-2"
                    label="Assign"
                    @click="AssignPerDetail(slotProps.data.ireqd_id)"
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
                    name: 'Ict Request Divisi 2'})"
                  />
                </div>
			        </div>
            </div>
           </template>
        </DataTable>   
        <Dialog
                v-model:visible="dialogAssign"
                :style="{ width: '400px' }"
                header="Assign Per-Detail Request"
                :modal="true"
                :closable="false"
                class="p-fluid"
            >
            <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:100px">No Request</label>
                 <div class="p-col-3 p-md-6">
                     <InputText
                        v-model="assign.ireq_no"
                        disabled
                     />
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:100px">Kode</label>
                 <div class="p-col-3 p-md-6">
                     <InputText
                        v-model="assign.name"
                        disabled
                     />
                  </div>
                </div>
              </div>
                <div class="p-fluid">
                <div class="p-field p-grid">
                    <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:100px">Petugas (ICT)</label>
                    <div class="p-col-3 p-md-6">
                        <Dropdown
                            v-model="assign.ireq_assigned_to"
                            :options="petugas"
                            optionValue="name"
                            optionLabel="name"
                            placeholder="Pilih Petugas (ICT)"
                            :class="{ 'p-invalid': submitted && !assign.ireq_assigned_to }"
                        />
                        <small v-if="submitted && !assign.ireq_assigned_to" class="p-error">
                            Petugas(ICT) Harus Diisi
                        </small>
                    </div>
                </div>
                </div>
                <template #footer>
                    <Button label="Simpan" @click="updateAssign()" class="p-button" autofocus />
                    <Button label="Cancel" @click="cancelAssign()" class="p-button-text" />
                </template>
            </Dialog>
      </div>
    </div>
  </div>
</template>
<script>
import {FilterMatchMode} from 'primevue/api';
export default {
  data() {
    return {
        submitted: false,
        loading: true,
        dialogAssign: false,
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
    this.cekUser();
  },
  methods: {
    cekUser(){
      this.axios.get('/api/cek-user/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.checkto = response.data.map((x)=> x.to)
        this.checkname = response.data.map((x)=> x.name)
        if(this.checkname.includes("Assign Request Ke ICT Personnel") || this.checkto.includes("/ict-request-divisi2")){ 
         this.getIctDetail();
         this.getNoreq();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/dashboard'),2000);
        }
      });
    },
      cancelAssign(){
          this.assign = [];
          this.petugas = [];
          this.dialogAssign = false;
      },
    AssignPerDetail(ireqd_id){
          this.axios.get('/api/detail/'+ ireqd_id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.assign = response.data;
          });
          this.axios.get('/api/get-pekerja', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.petugas = response.data;
          });
          this.dialogAssign = true; 
    },
    cancelAssign(){
        this.submitted = false;
        this.assign = [];
        this.dialogAssign = false;
    },
     updateAssign(){
        this.submitted = true;
        if(this.assign.name != null){
          this.axios.put('/api/updateAssignPerDetail/'+ this.$route.params.code ,this.assign, {headers: {'Authorization': 'Bearer '+this.token}}).then(()=>{
            this.assign = [];
            this.dialogAssign = false;
            this.submitted = false;
            this.$toast.add({
              severity: "info",
              summary: "Confirmed",
              detail: "Berhasil Assign",
              life: 3000,
            });
            this.getIctDetail();
          });
        }
      },
    getIctDetail(){
      this.axios.get('/api/ict-detail/' + this.$route.params.code, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.detail = response.data;
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
    getNoreq(){
      this.axios.get('/api/get-noreq/'+ this.$route.params.code, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.kode = response.data;
      });
    },
  },
};
</script>