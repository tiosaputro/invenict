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
				        <h4>Management User</h4>
			        </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          :value="user"
          :paginator="true"
          :rows="25"
          v-model:filters="filters"
          :loading="loading"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5,10,25]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} Management User">
        <template #header>
            <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
              <Button
              label="Add"
              class="p-button-raised"
              icon="pi pi-plus"
              @click="$router.push('/Add-mng-user')"
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
          <Column field="usr_id" header="User ID" :sortable="true" style="min-width:8 rem"/>
          <Column field="usr_fullname" header="User Fullname" :sortable="true" style="min-width:10rem"/>
          <Column field="usr_name" header="User Name" :sortable="true" style="min-width:10rem"/>
          <Column field="usr_email" header="User Email" :sortable="true" style="min-width:10rem"/>
          <Column field="div_name" header="User Divisi" :sortable="true" style="min-width:10rem"/>
          <Column header="User Photo" style="min-width:8rem">
            <template #body="slotProps">
                <img :src="'/profile/' +slotProps.data.usr_foto" class="profile-image" />
            </template>
          </Column>
          <Column field="usr_stat" header="User Status" :sortable="true" style="min-width:8rem"/>
          <Column style="min-width:8rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-info p-mr-2 p-mb-2"
                icon="pi pi-pencil"
                @click="
                  $router.push({
                    name: 'Edit Management User',
                    params: { code: slotProps.data.usr_id},
                    })"/>
              <Button
                icon="pi pi-trash"
                class="p-button-rounded p-button-danger p-mr-2 p-mb-2"
                @click="DeleteUser(slotProps.data.usr_id)"/>
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
        user: [],
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
        if(this.checkname.includes("User") || this.checkto.includes("/mng-user")){
          this.getUser();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/Dashboard'),2000);
        }
      });
    },
    getUser(){
      this.axios.get('api/get-user', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.user = response.data;
        this.loading = false;
      });
    },
    DeleteUser(usr_id){
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
          this.axios.delete('api/delete-user/' +usr_id ,{headers: {'Authorization': 'Bearer '+this.token}});
          this.getUser();
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
<style lang="scss" scoped>
.profile-image {
    width: 50px;
    box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
}
</style>