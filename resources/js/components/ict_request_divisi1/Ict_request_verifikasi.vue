<template>
  <div class="p-grid crud-demo">
    <div class="p-col-12">
      <div class="card">
        <Toast />
        <ConfirmDialog> </ConfirmDialog>
        <Toolbar class="p-mb-4">
          <template v-slot:left>
				        <h4>ICT Request (Verifikasi) </h4>
          </template>
        </Toolbar>
        <DataTable
          :value="verif"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request (Verifikasi)"
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
            Loading ICT Request (Detail) data. Please wait.
          </template>
          <Column field="ireq_type" header="Tipe Request" :sortable="true" style="min-width:12rem"/>
          <Column field="invent_code" header="Kode" :sortable="true" style="min-width:12rem"/>
          <Column field="invent_desc" header="Deskripsi" :sortable="true" style="min-width:12rem"/>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                        <Button
                            label="Kembali"
                            class="p-button-raised p-button p-mr-2 p-mb-2"
                            icon="pi pi-chevron-left"
                            @click="$router.push({
                            name: 'Ict Request Divisi 1'})"
                        />
                        <Button
                            label="Approve"
                            class="p-button-raised p-button-success p-mr-2 p-mb-2"
                            icon="pi pi-check-square"
                            @click="Approve()"
                        />
                        <Button 
                            label="Reject"
                            class="p-button-raised p-button-danger p-mr-2 p-mb-2"
                            icon="pi pi-times-circle"
                            @click="this.dialogReject = true" 
                        />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>   
        <Dialog
        v-model:visible="dialogReject"
        :style="{ width: '400px' }"
        header="ICT Request"
        :modal="true"
        class="p-fluid"
      >
        <div class="p-fluid">
          <div class="p-field p-grid">
            <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:100px">Alasan</label>
              <div class="p-col-3 p-md-6">
                <Textarea
                    :autoResize="true"
                    type="text"
                    v-model="reason.ket"
                    rows="5" 
                    cols="30"
                    placeholder="Masukan Alasan"
                    :class="{ 'p-invalid': submitted && !reason.ket }"
                  />
                    <small v-if="submitted && !reason.ket" class="p-error">
                    Alasan Harus Diisi
                    </small>
              </div>
            </div>
        </div>
        <template #footer>
            <Button label="Yes" @click="updateReject()" class="p-button" autofocus />
            <Button label="No" @click="cancelReject()" class="p-button-text" />
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
        loading: true,
        dialogReject: false,
        submitted:false,
        verif: [],
        kode:[],
        reason:{
            ket:null,
        },
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
      if(this.id){
      this.axios.get('/api/cek-user/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.checkto = response.data.map((x)=> x.to)
        this.checkname = response.data.map((x)=> x.name)
        if(this.checkname.includes("Approval Atasan") || this.checkto.includes("/ict-request-divisi1")){ 
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
      } else {
        this.$router.push('/login');
      }
    },
      Approve(){
      this.$confirm.require({
        message: "Approval Permohonan Dilanjutkan?",
        header: "ICT Request    ",
        icon: "pi pi-info-circle",
        acceptClass: "p-button",
        acceptLabel: "Ya",
        rejectLabel: "Tidak",
        accept: () => {
          this.$toast.add({
            severity: "info",
            summary: "Confirmed",
            detail: "Permohonan Dilanjutkan",
          });
          this.axios.get('/api/updateStatusPermohonan/' +this.$route.params.code, {headers: {'Authorization': 'Bearer '+this.token}});
          setTimeout( () =>  this.$router.push('/ict-request-divisi1'),1000);
        },
        reject: () => {},
      });
      },
      updateReject(){
          this.submitted = true;
           if(this.reason.ket != null){
            this.axios.put('/api/updateStatusReject/'+this.$route.params.code, this.reason, {headers: {'Authorization': 'Bearer '+this.token}}).then(()=>{
              this.dialogReject = false;
              this.$toast.add({
                severity: "info",
                summary: "Confirmed",
                detail: "Berhasil Direject",
              });
              setTimeout( () => this.$router.push('/ict-request-divisi1'),1000);
            });
          }
      },
      cancelReject(){
        this.dialogReject = false;
        this.reason.ket = null;
        this.submitted = false;
      },
    getIctDetail(){
      this.axios.get('/api/get-verif/' + this.$route.params.code, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.verif = response.data;
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
    DeleteIct(ireqd_id){
       this.$confirm.require({
        message: "Data ini benar-benar akan dihapus?",
        header: "Delete Confirmation",
        icon: "pi pi-info-circle",
        acceptClass: "p-button-danger",
        acceptLabel: "Ya",
        rejectLabel: "Tidak",
        accept: () => {
          this.$toast.add({
            severity: "info",
            summary: "Confirmed",
            detail: "Record deleted",
            life: 3000,
          });
          this.axios.delete('/api/delete-ict-detail/' +ireqd_id, {headers: {'Authorization': 'Bearer '+this.token}});
          this.getIctDetail();
        },
        reject: () => {},
      });
    },
    CetakPdf(){
      window.open('/api/report-ict-detail-pdf/' +this.code);
    },
    CetakExcel(){
      window.open('/api/report-ict-detail-excel/' +this.code);
    },
  },
};
</script>