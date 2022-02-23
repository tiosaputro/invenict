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
				        <h4>Management Menu</h4>
			        </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          :value="menu"
          :paginator="true"
          :rows="10"
          v-model:filters="filters"
          :loading="loading"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5,10,25]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} Management Menu">
       <template #header>
            <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
              <Button
              label="Add"
              class="p-button-raised"
              icon="pi pi-plus"
              @click="$router.push('/Add-mng-menu')"
            />
              <span class="p-input-icon-left">
                <i class="pi pi-search" />
                <InputText v-model="filters['global'].value" placeholder="Search. . ." />
              </span>
            </div>
          </template>
          <template #empty>
            Not Found
          </template>
          <template #loading>
            Loading data. Please wait.
          </template>
          <Column field="menu_id" header="ID Menu" :sortable="true" style="min-width:10rem"/>
          <Column field="mod_name" header="Name Module" :sortable="true" style="min-width:10rem"/>
          <Column field="menu_name" header="Menu Name" :sortable="true" style="min-width:10rem"/>
          <Column field="menu_desc" header="Description Menu" :sortable="true" style="min-width:10rem"/>
          <Column field="menu_display" header="Display Menu" :sortable="true" style="min-width:10rem"/>
          <Column style="min-width:10rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-info p-mr-2 p-mb-2"
                icon="pi pi-pencil"
                @click="$router.push({name: 'Edit Management Menu',params: { code: slotProps.data.menu_id},})"
              />
              <Button
                icon="pi pi-trash"
                class="p-button-rounded p-button-danger p-mr-2 p-mb-2"
                @click="DeleteMenu(slotProps.data.menu_id)"
              />
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
        menu: [],
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
      if(this.id){
      this.axios.get('api/cek-user/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.checkto = response.data.map((x)=> x.to)
        this.checkname = response.data.map((x)=> x.name)
        if(this.checkname.includes("Menu") || this.checkto.includes("/mng-menu")){
          this.getMenu();
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
    getMenu(){
      this.axios.get('api/menu', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.menu = response.data;
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
    DeleteMenu(menu_id){
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
          this.axios.delete('api/delete-menu/' +menu_id ,{headers: {'Authorization': 'Bearer '+this.token}});
          this.getMenu();
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