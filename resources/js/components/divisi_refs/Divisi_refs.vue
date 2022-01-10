<template>
  <div class="p-grid crud-demo">
    <div class="p-col-12">
      <div class="card">
        <Toast />
        <ConfirmDialog/> 
        <Toolbar class="p-mb-4">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
			        <div class="p-col">
				        <h4>Referensi - Divisi</h4>
			        </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          :value="divisi"
          :paginator="true"
          :rows="25"
          v-model:filters="filters"
          :loading="loading"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5,10,25]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} Divisi Refs">
        <template #header>
            <div class="table-header p-text-right">
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
          <Column field="div_code" header="Divisi Code" :sortable="true" style="min-width:10rem"/>
          <Column field="div_name" header="Divisi Name" :sortable="true" style="min-width:10rem"/>
          <Column field="div_verificator" header="Divisi Verificator" :sortable="true" style="min-width:10rem"/>
          <Column style="min-width:10rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-info p-mr-2 p-mb-2"
                icon="pi pi-pencil"
                @click="
                  $router.push({
                    name: 'Edit Divisi Refs',
                    params: { code: slotProps.data.div_id},
                    })"/>
              <Button
                icon="pi pi-trash"
                class="p-button-rounded p-button-danger p-mr-2 p-mb-2"
                @click="DeleteDivisi(slotProps.data.div_id)"/>
            </template>
          </Column>
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
        id : localStorage.getItem('id'),
        checkname : [],
        checkto : [],
        divisi: [],
        filters: { 'global': {value: null, matchMode: FilterMatchMode.CONTAINS} },
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
        if(this.checkname.includes("Divisi") || this.checkto.includes("/divisi-refs")){
          this.getDivisi();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/dashboard'),2000);
        }
      });
    },
    getDivisi(){
      this.axios.get('api/divisi', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.divisi = response.data;
        this.loading = false;
      }).catch(error=>{
          if (error.response.status == 401){
            this.$toast.add({
            severity:'error', summary: 'Error', detail:'Sesi Login Expired'
          });
          localStorage.clear();
          localStorage.setItem("Expired","true")
          setTimeout( () => this.$router.push('/login'),2000);
           }
      });
    },
    DeleteDivisi(div_id){
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
          this.axios.delete('api/delete-divisi/' +div_id ,{headers: {'Authorization': 'Bearer '+this.token}});
          this.getDivisi();
        },
        reject: () => {},
      });
    },
    CetakPdf(){
      window.open("api/report-lookups-pdf");
    },
    CetakExcel(){
      window.open('api/report-lookups-excel');
    },
  },
};
</script>