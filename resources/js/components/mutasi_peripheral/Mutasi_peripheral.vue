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
				        <h4>Mutasi Peripheral ICT</h4>
			        </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          :value="mutasi"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} Mutasi Peripheral ICT"
          responsiveLayout="scroll"
        >
       <template #header>
            <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
              <Button
              label="Add"
              class="p-button-raised"
              icon="pi pi-plus"
              @click="$router.push('/Add-mutasi-peripheral')"
            />
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
            Loading Mutasi Peripheral data. Please wait.
          </template>
          <Column field="invent_code" header="Kode" :sortable="true">
            <template #body="slotProps">
              {{ slotProps.data.invent_code }}
            </template>
          </Column>
          <Column field="invent_desc" header="Nama" :sortable="true">
            <template #body="slotProps">
              {{ slotProps.data.invent_desc }}
            </template>
          </Column>
          <Column field="imutasi_pengguna" header="Pengguna" :sortable="true">
            <template #body="slotProps">
              {{ slotProps.data.imutasi_pengguna }}
            </template>
          </Column>
          <Column field="imutasi_lokasi" header="Lokasi" :sortable="true">
            <template #body="slotProps">
              {{ slotProps.data.imutasi_lokasi }}
            </template>
          </Column>
          <Column header="">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-info p-mr-2 p-mb-2"
                icon="pi pi-pencil"
                @click="
                  $router.push({
                    name: 'Edit Mutasi Peripheral',
                    params: { code: slotProps.data.imutasi_id },
                  })
                "
              />
              <Button
                icon="pi pi-trash"
                class="p-button-rounded p-button-danger p-mr-2 p-mb-2"
                @click="DeleteMut(slotProps.data.imutasi_id)"
              />
            </template>
          </Column>
          <template #footer>
               <div class="p-grid p-dir-col">
			        <div class="p-col">
				        <div class="box">
                  <Button
                    label="Pdf"
                    class="p-button-raised p-button-danger p-mr-2 p-mb-2"
                    icon="pi pi-file-pdf"
                    @click="CetakPdf()"
                  />
                  <Button 
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
        token: localStorage.getItem('token'),
        mutasi: [],
        filters: { 'global': {value: null, matchMode: FilterMatchMode.CONTAINS} },
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
      this.axios.get('api/cek-user/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.checkto = response.data.map((x)=> x.to)
        this.checkname = response.data.map((x)=> x.name)
        if(this.checkname.includes("Mutasi Peripheral") || this.checkto.includes("/mutasi-peripheral")){
          this.getMutasi();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/Dashboard'),2000);
        }
      });
    },
    getMutasi(){
      this.axios.get('api/mut',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.mutasi = response.data;
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
    DeleteMut(imutasi_id){
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
          this.axios.delete('api/delete-mut/' +imutasi_id,{headers: {'Authorization': 'Bearer '+this.token}});  
          this.getMutasi();
        },
        reject: () => {},
      });
    },
    CetakPdf(){
      window.open('api/report-mutasi-pdf');
    },
    CetakExcel(){
      window.open('api/report-mutasi-excel',{headers: {'Authorization': 'Bearer '+this.token}});
    },
  },
};
</script>