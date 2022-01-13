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
				        <h4>Cash Advance</h4>
			        </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          :value="cash"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} Cash Advance"
          responsiveLayout="scroll"
        >
       <template #header>
            <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
              <Button
              label="Add"
              class="p-button-raised"
              icon="pi pi-plus"
              @click="$router.push('/Add-cash-advance')"
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
            Loading Cash Advance data. Please wait.
          </template>
          <Column field="ca_idd" header="No.Request" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ slotProps.data.ca_idd }}
            </template>
          </Column>
          <Column field="ireq_id" header="Requester" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ slotProps.data.ireq_id }}
            </template>
          </Column>
          <Column field="ca_pic_name" header="Jumlah" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ formatPrice(slotProps.data.ca_pic_name) }}
            </template>
          </Column>
          <Column field="ca_submit_date" header="Tgl. Submit" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ formatDate(slotProps.data.ca_submit_date) }}
            </template>
          </Column>
          <Column header="">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-info p-mr-2 p-mb-2"
                icon="pi pi-pencil"
                @click="
                  $router.push({
                    name: 'Edit Cash Advance',
                    params: { code: slotProps.data.ca_id },
                  })
                "
              />
              <Button
                icon="pi pi-trash"
                class="p-button-rounded p-button-danger p-mr-2 p-mb-2"
                @click="DeleteCash(slotProps.data.ca_id)"
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
import moment from 'moment';
import {FilterMatchMode} from 'primevue/api';
export default {
  data() {
    return {
         loading: true,
         cash: [],
         filters: { 'global': {value: null, matchMode: FilterMatchMode.CONTAINS} },
         token: localStorage.getItem('token'),
         id : localStorage.getItem('id'),
         checkname : [],
         checkto : []
    };
  },
  created() {
    this.cekUser();
  },
  methods: {
    cekUser(){
      this.axios.get('api/cek-user/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.checkname = response.data.map((x)=> x.name)
        this.checkto = response.data.map((x)=> x.to)
        if(this.checkname.includes("Cash Advance") || this.checkto.includes("/cash-advance")){
          this.getCash();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/dashboard'),2000);
        }
      });
    },
    formatDate(date) {
      return moment(date).format("DD MMM YYYY")
    },
    formatPrice(value) {
        var formatter = new Intl.NumberFormat('id', {
            style: 'currency',
            currency: 'IDR',
            minimumFractionDigits: 2
        });
        return formatter.format(value);
    },
    getCash(){
      this.axios.get('api/cash', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.cash = response.data;
        this.loading = false;
      }).catch(error=>{
         if (error.response.status == 401) {
            this.$toast.add({
            severity:'error', summary: 'Error', detail:'Sesi Login Expired'
          });
          localStorage.clear();
          localStorage.setItem("Expired","true")
          setTimeout( () => this.$router.push('/login'),2000);
           }
        });
    },
    DeleteCash(ca_id){
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
          this.axios.delete('api/delete-cash/'+ca_id, {headers: {'Authorization': 'Bearer '+this.token}});
          this.getCash();
        },
        reject: () => {},
      });
    },
    CetakPdf(){
      window.open('api/report-cash-pdf');
    },
    CetakExcel(){
      window.open('api/report-cash-excel');
    },
  },
};
</script>