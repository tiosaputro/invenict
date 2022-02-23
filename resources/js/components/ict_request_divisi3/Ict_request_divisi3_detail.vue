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
          <Column field="ireq_status" header="Status" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                v-if="slotProps.data.ireq_status == 'Penugasan'"
                class="p-button-rounded p-button-info p-mr-2 p-mb-2"
                icon="pi pi-pencil"
                @click="edit(slotProps.data.ireqd_id)"
              />
            </template>
          </Column>
          <template #footer>
               <div class="p-grid p-dir-col">
			        <div class="p-col">
				        <div class="box">
                   <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="pi pi-chevron-left"
                    @click="$router.push({
                    name: 'Ict Request Divisi 3'})"
                  />
                </div>
			        </div>
            </div>
           </template>
        </DataTable>
        <Dialog
        v-model:visible="dialogEdit"
        :style="{ width: '400px' }"
        header="ICT Request"
        :modal="true"
        class="p-fluid"
      >
        <div class="p-fluid">
          <div class="p-field p-grid">
            <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:100px">No. Request</label>
              <div class="p-col-3 p-md-6">
                <InputText
                  v-model="editDetail.ireq_no"
                  disabled
                />
              </div>
            </div>
        </div>
        <div class="p-fluid">
          <div class="p-field p-grid">
            <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:100px">Nama Peripheral</label>
              <div class="p-col-3 p-md-6">
                <InputText
                  v-model="editDetail.name"
                  disabled
                />
              </div>
            </div>
        </div>
        <div class="p-fluid">
          <div class="p-field p-grid">
            <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:100px">Status</label>
              <div class="p-col-3 p-md-6">
                <Dropdown
                  v-model="editDetail.status"
                  :options="status"
                  optionLabel="name"
                  optionValue="code"
                  :showClear="true"
                  :class="{ 'p-invalid': submitted && !editDetail.status }"
                />
                <small class="p-error" v-if="submitted && !editDetail.status"
                  >Status Wajib Diisi.
                </small>
              </div>
            </div>
        </div>
        <template #footer>
            <Button label="Yes" @click="submit()" class="p-button" autofocus />
            <Button label="No" @click="cancel()" class="p-button-text" />
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
        submitted : false,
        loading: true,
        dialogEdit: false,
        detail: [],
        status:[],
        editDetail:[],
        kode:[],
        filters: { 'global': {value: null, matchMode: FilterMatchMode.CONTAINS} },
        token: localStorage.getItem('token'),
        user:[],
        checkname : [],
        checkto : [],
        id : localStorage.getItem('id'),
    };
  },
  created() {
    this.cekUser();
  },
  methods: {
    cekUser(){
      if(this.id){
      this.axios.get('/api/cek-user/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.checkto = response.data.map((x)=> x.to)
        this.checkname = response.data.map((x)=> x.name)
        if(this.checkname.includes("Status Change Request") || this.checkto.includes("/ict-request-divisi3")){ 
          this.getUser();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/dashboard'),2000);
        }
      });
      } else {
        this.$router.push('/login');
      }
    },
    getUser(){
        this.axios.get('/api/user',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.user = response.data;
        this.getIctDetail();
        this.getNoreq();
        });
      },
    edit(ireqd_id){
      this.dialogEdit = true;
      this.axios.get('/api/detail/'+ ireqd_id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.editDetail = response.data;
      });
      this.getStatus();
    },
    getStatus(){
      this.axios.get('/api/getStatusIct', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.status = response.data;
      });
    },
    cancel(){
      this.dialogEdit = false;
      this.status = [];
      this.editDetail = [];
      this.submitted = false;
    },
    submit(){
      this.submitted = true;
      if(this.editDetail.status != null){
        this.axios.put('/api/update-status-done/'+this.$route.params.code, this.editDetail, {headers: {'Authorization': 'Bearer '+this.token}}).then(()=>{
          this.$toast.add({
            severity:'success', summary: 'Success', detail:'Status Berhasil Dirubah', life: 3000
          });
          this.cancel();
          this.create();
        });
      }
      
    },
    getIctDetail(){
      this.axios.get('/api/get-detail-done/' + this.$route.params.code + '/' + this.user.usr_fullname, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.detail = response.data;
        this.loading = false;
      }).catch((error)=>{
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