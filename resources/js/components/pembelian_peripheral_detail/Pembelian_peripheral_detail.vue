<template>
  <div class="p-grid crud-demo">
    <div class="p-col-12">
      <div class="card">
        <Toast />
        <ConfirmDialog> </ConfirmDialog>
        <Toolbar class="p-mb-4">
          <template v-slot:left>
				        <h4>Pembelian Peripheral(Detail) </h4>
          </template>
          <template v-slot:right>
            <div>
                <label style="width:110px">Suplier </label>
                <label>: {{details.suplier_code}} </label>
                <br>
                <label style="width:110px">Tgl. Pembelian </label>
                <label>: {{formatDate(details.purchase_date)}}</label>
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
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} Pembelian Peripheral(Detail)"
          responsiveLayout="scroll"
        >
        
       <template #header>
              <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
                <Button
                  label="Add"
                  class="p-button-raised"
                  icon="pi pi-plus"
                  @click="$router.push({
                    name: 'Add Pembelian Peripheral Detail',
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
          </template>
          <template #empty>
           Not Found
          </template>
          <template #loading>
            Loading Pembelian Peripheral (Detail) data. Please wait.
          </template>
          <Column field="invent_code" header="Kode" :sortable="true">
            <template #body="slotProps">
              {{ slotProps.data.invent_code }}
            </template>
          </Column>
          <Column field="invent_desc" header="Nama Peripheral" :sortable="true">
            <template #body="slotProps">
              {{ slotProps.data.invent_desc }}
            </template>
          </Column>
          <Column field="dpurchase_qty" header="Jumlah(Qty)" :sortable="true">
            <template #body="slotProps">
              {{ slotProps.data.dpurchase_qty }} {{slotProps.data.dpurchase_sat}}
            </template>
          </Column>
          <Column field="dpurchase_prc" header="Total Harga" :sortable="true">
            <template #body="slotProps">
              {{slotProps.data.valuta_code}}{{ formatPrice(slotProps.data.dpurchase_prc) }}
            </template>
          </Column>
          <Column header="">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-info p-mr-2 p-mb-2"
                icon="pi pi-pencil"
                @click="
                  $router.push({
                    name: 'Edit Pembelian Peripheral Detail',
                    params: { purchase: slotProps.data.dpurchase_id }, })"
              />
              <Button
                icon="pi pi-trash"
                class="p-button-rounded p-button-danger p-mr-2 p-mb-2"
                @click="DeleteDetail(slotProps.data.dpurchase_id)"
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
                    name: 'Pembelian Peripheral'})"
                  />
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
        detail: [],
        purchase_id: this.$route.params.code,
        details:[],
        filters: { 'global': {value: null, matchMode: FilterMatchMode.CONTAINS} },
        code : this.$route.params.code,
        checkname : [],
        checkto : [],
        divisi: [],
        id : localStorage.getItem('id'),
    };
  },
  created() {
    this.cekUser();
  },
  methods: {
    cekUser(){
      this.axios.get('/api/cek-user/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.checkto = response.data.map((x)=> x.to)
        this.checkname = response.data.map((x)=> x.name)
        if(this.checkname.includes("Divisi") || this.checkto.includes("/divisi-refs")){
          this.getPembelianDetail();
          this.getDetails();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/Dashboard'),2000);
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
    getPembelianDetail(){
      this.axios.get('/api/detail-pem/' + this.$route.params.code, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.detail = response.data;
      });
    },
    getDetails(){
        this.axios.get('/api/getSuppDate/'+this.$route.params.code,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.details = response.data;
            this.loading = false;
        }).catch(error=>{
         if (error.response.status == 403) {
           this.$toast.add({
            severity:'error', summary: 'Error', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/Dashboard'),2000);
          }
           else if (error.response.status == 401){
            this.$toast.add({
            severity:'error', summary: 'Error', detail:'Sesi Login Expired'
          });
          localStorage.clear();
          localStorage.setItem('Expired','true')
          setTimeout( () => this.$router.push('/login'),2000);
           }
        });
    },
    DeleteDetail(dpurchase_id){
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
          this.axios.delete('/api/delete-detail-pem/' +this.$route.params.code + '/' +dpurchase_id, {headers: {'Authorization': 'Bearer '+this.token}});
          this.getPembelianDetail();
        },
        reject: () => {},
      });
    },
    CetakPdf(){
      window.open('/api/report-pem-detail-pdf/' + this.purchase_id,{headers: {'Authorization': 'Bearer '+this.token}});
    },
    CetakExcel(){
      window.open('/api/report-pem-detail-excel/' + this.purchase_id,{headers: {'Authorization': 'Bearer '+this.token}});
    },
  },
};
</script>