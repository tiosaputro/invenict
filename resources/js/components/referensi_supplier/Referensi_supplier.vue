<template>
  <div class="p-grid crud-demo">
    <div class="p-col-12">
      <div class="card">
        <Toast />
        <Dialog> </Dialog>
        <ConfirmDialog> </ConfirmDialog>
        <Toolbar class="p-mb-4">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
			        <div class="p-col">
				        <h4>Referensi Suplier</h4>
			        </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          :value="supp"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} Referensi Suplier"
          responsiveLayout="scroll"
        >
       <template #header>
            <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
              <Button
              label="Add"
              class="p-button-raised"
              icon="pi pi-plus"
              @click="$router.push('/Add-referensi-supplier')"
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
            Loading Suplier data. Please wait.
            </template>
          <Column field="suplier_code" header="Kode" :sortable="true" style="min-width:12rem"/>
          <Column field="suplier_name" header="Nama" :sortable="true" style="min-width:12rem"/>
          <Column field="suplier_contact" header="Contact Person" :sortable="true" style="min-width:12rem"/>
          <Column field="suplier_fax" header="No. Fax" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-info p-mr-2 p-mb-2"
                icon="pi pi-pencil"
                @click="
                  $router.push({
                    name: 'Edit Referensi Supplier',
                    params: { code: slotProps.data.suplier_code }, })"
              />
              <Button
                icon="pi pi-trash"
                class="p-button-rounded p-button-danger p-mr-2 p-mb-2"
                @click="DeleteSupp(slotProps.data.suplier_code)"
              />
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="detailSupp(slotProps.data.suplier_code)"
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
                    @click="cetakExcel()" 
                  />
                </div>
			        </div>
            </div>
           </template>
        </DataTable>   
         <Dialog
        v-model:visible="displaySupp"
        :style="{ width: '1000px' }"
        header="Detail Supplier"
        :modal="true"
        class="p-fluid"
      >
        <div class="p-field">
          <label>Kode </label>
          <InputText
            v-model="supps.suplier_code"
            disabled
          />
        </div>
        <div class="p-field">
          <label>Nama </label>
          <InputText
            v-model="supps.suplier_name"
            disabled
          />
        </div>
        <div class="p-field">
          <label> Contact  </label>
          <InputText
            v-model="supps.suplier_contact"
            disabled
          />
        </div>
        <div class="p-field">
          <label> Alamat 1  </label>
          <InputText
            v-model="supps.suplier_address1"
            disabled
          />  
        </div>
        <div class="p-field">
          <label> Alamat 2 </label>
          <InputText
            v-model="supps.suplier_address2"
            disabled
          />
        </div>
        <div class="p-field">
          <label> Kota </label>
          <InputText
            v-model="supps.suplier_city"
            disabled
          />
        </div>
        <div class="p-field">
          <label> Provinsi</label>
          <InputText
            v-model="supps.suplier_name"
            disabled
          />
        </div>
        <div class="p-field">
          <label> Email </label>
          <InputText
            v-model="supps.suplier_email"
            disabled
          />
        </div>
        <div class="p-field">
          <label> Fax </label>
          <InputText
            v-model="supps.suplier_fax"
            disabled
          />
        </div>
        <div class="p-field">
          <label> No.Tlp 1 </label>
          <InputText
            v-model="supps.suplier_tlp1"
            disabled
          />
        </div>
        <div class="p-field">
          <label> No.Tlp 2 </label>
          <InputText
            v-model="supps.suplier_tlp2"
            disabled
          />
        </div>
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
        loading:true,
        token: localStorage.getItem('token'),
        supp: [],
        supps:[],
        filters: { 'global': {value: null, matchMode: FilterMatchMode.CONTAINS} },
        displaySupp: false,
    };
  },
  created() {
    this.getSupp();
  },
  methods: {
    CetakPdf(){
       window.open("api/report-supplier-pdf");
    },
    cetakExcel(){
      window.open("api/report-supplier-excel");
    },
    detailSupp(suplier_code){
      this.displaySupp = true;
      this.axios.get('api/show-supp/' +suplier_code, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.supps = response.data;
      });
    },
    getSupp(){
      this.axios.get('api/supp', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.supp = response.data;
        this.loading =  false;
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
          localStorage.setItem("Expired","true")
          setTimeout( () => this.$router.push('/login'),2000);
           }
        });
    },
    DeleteSupp(suplier_code){
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
          this.axios.delete('api/delete-supp/' + suplier_code, {headers: {'Authorization': 'Bearer '+this.token}});
          this.getSupp();
        },
        reject: () => {},
      });
    },
  },
};
</script>