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
				        <h4>Pembelian Peripheral</h4>
			        </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          :value="purch"
          :paginator="true"
          :rows="10"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} Pembelian Peripheral"
          responsiveLayout="scroll"
        >
       <template #header>
            <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
              <Button
              label="Add"
              class="p-button-raised"
              icon="pi pi-plus"
              @click="$router.push('/Add-pembelian-peripheral')"
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
            Loading Pembelian Peripheral data. Please wait.
          </template>
          <Column field="suplier_code" header="Suplier" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ slotProps.data.suplier_code }}
            </template>
          </Column>
          <Column field="purchase_date" header="Tgl. Pembelian" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ formatDate(slotProps.data.purchase_date) }}
            </template>
          </Column>
          <Column field="purchase_total" header="Total Pembelian" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{slotProps.data.valuta_code}} {{ formatPrice(slotProps.data.purchase_total) }}
            </template>
          </Column>
          <!-- <Column field="purchase_status" header="Status" :sortable="true">
            <template #body="slotProps">
              {{ slotProps.data.purchase_status }}
            </template>
          </Column> -->
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-info p-mr-2 p-mb-2"
                icon="pi pi-pencil"
                @click="
                  $router.push({
                    name: 'Edit Pembelian Peripheral',
                    params: { code: slotProps.data.purchase_id },})"
              />
              <Button
                class="p-button-rounded p-button-danger p-mr-2 p-mb-2"
                icon="pi pi-trash"
                @click="DeleteMut(slotProps.data.purchase_id)"
              />
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                    name: 'Pembelian Peripheral Detail',
                    params: { code: slotProps.data.purchase_id }, })"
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
        token: localStorage.getItem('token'),
        purch: [],
        purchase_id:null,
        filters: { 'global': {value: null, matchMode: FilterMatchMode.CONTAINS} },
        checkname : [],
        checkto : [],
        id : localStorage.getItem('id'),
        divisi: [],
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
        if(this.checkname.includes("Pembelian Peripheral") || this.checkto.includes("/pembelian-peripheral")){
          this.getPurchase();
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
        let val = (value/1).toFixed(2).replace('.', ',')
         return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g,".")
    },
    getPurchase(){
      this.axios.get('api/pem',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.purch = response.data;
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
    DeleteMut(purchase_id){
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
          this.axios.delete('api/delete-pem/' +purchase_id,{headers: {'Authorization': 'Bearer '+this.token}});
          this.getPurchase();
        },
        reject: () => {},
      });
    },
    CetakPdf(){
      window.open('api/report-pem-pdf');
    },
    CetakExcel(){
      window.open('api/report-pem-excel');
    },
  },
};
</script>