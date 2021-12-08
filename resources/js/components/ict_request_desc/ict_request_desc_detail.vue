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
          <template v-slot:right>
            <div>
                <label style="width:110px">No. Request: {{this.kode}}</label>
                </div>
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
         <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between" v-if="this.status == null">
                <Button
                  label="Add"
                  class="p-button-raised"
                  icon="pi pi-plus"
                  @click="$router.push({
                    name: 'Add Ict Request Detail',
                    params: { code: code },
                  })"
              />
              <span class="p-input-icon-left">
                <i class="pi pi-search" />
                <InputText
                  v-model="filters['global'].value"
                  placeholder="Search. . ."
                />
              </span>
            </div>
            <div class="table-header p-text-right" v-else-if="this.status != null">
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
          <Column field="ireq_type" header="Tipe Request" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ slotProps.data.ireq_type }}
            </template>
          </Column>
          <Column field="invent_code" header="Kode" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ slotProps.data.invent_code }}
            </template>
          </Column>
          <Column field="invent_desc" header="Deskripsi" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ slotProps.data.invent_desc }}
            </template>
          </Column>
          <Column field="ireq_status" header="Status" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ slotProps.data.ireq_status }}
            </template>
          </Column>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                        v-if="slotProps.data.ireq_status == null"
                        class="p-button-rounded p-button-info p-mr-2 p-mb-2"
                        icon="pi pi-pencil"
                        @click="
                          $router.push({
                            name: 'Edit Ict Request',
                            params: { code: slotProps.data.ireq_id },})"
                      />
                      <Button
                        v-if="slotProps.data.ireq_status == null"
                        icon="pi pi-trash"
                        class="p-button-rounded p-button-danger p-mr-2 p-mb-2"
                        @click="DeleteIct(slotProps.data.ireq_id)"
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
                    name: 'Desc'})"
                  />
                  <Button
                    v-if="this.status == 'Reject'"
                    label="Pdf"
                    class="p-button-raised p-button-danger p-mr-2 p-mb-2"
                    icon="pi pi-file-pdf"
                    @click="CetakPdfReject()"
                  />
                  <Button
                    v-if="this.status == 'Reject'" 
                    label="Excel"
                    class="p-button-raised p-button-success p-mr-2 p-mb-2"
                    icon="pi pi-print"
                    @click="CetakExcelReject()" 
                  />
                  <Button
                    v-if="this.status != 'Reject'" 
                    label="Pdf"
                    class="p-button-raised p-button-danger p-mr-2 p-mb-2"
                    icon="pi pi-file-pdf"
                    @click="CetakPdf()"
                  />
                  <Button
                    v-if="this.status != 'Reject'" 
                    label="Excel"
                    class="p-button-raised p-button-success p-mr-2 p-mb-2"
                    icon="pi pi-print"
                    @click="CetakExcel()" 
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
        status:'',
        kode:'',
        filters: { 'global': {value: null, matchMode: FilterMatchMode.CONTAINS} },
        code : this.$route.params.code,
        token: localStorage.getItem('token'),
    };
  },
  mounted() {
    this.getIctDetail();
    this.getNoreq();
  },
  methods: {
    getIctDetail(){
      this.axios.get('/api/ict-detail/' + this.$route.params.code, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.detail = response.data;
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
          localStorage.setItem('Expired','true')
          setTimeout( () => this.$router.push('/login'),2000);
           }
      });
    },
    getNoreq(){
      this.axios.get('/api/get-noreq/'+ this.$route.params.code, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.kode = response.data.noreq;
        this.status = response.data.ireq_status;
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
    CetakPdfReject(){
      window.open('/api/report-ict-detail-pdf-reject/' +this.code);
    },
    CetakExcelReject(){
      window.open('/api/report-ict-detail-excel-reject/' +this.code);
    },
  },
};
</script>