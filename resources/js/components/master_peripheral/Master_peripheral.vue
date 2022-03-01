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
				        <h4>Master Peripheral</h4>
			        </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          :value="master"
          :paginator="true"
          :rows="10"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} Master Peripheral ICT"
          responsiveLayout="scroll"
        >
       <template #header>
            <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
              <Button
              label="Add"
              class="p-button-raised"
              icon="bi bi-file-earmark-plus"
              @click="$router.push('/Add-master-peripheral')"
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
            Loading Master Peripheral data. Please wait.
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
          <Column field="invent_brand" header="Merk" :sortable="true">
            <template #body="slotProps">
              {{ slotProps.data.invent_brand }}
            </template>
          </Column>
          <Column field="invent_bu" header="Bisnis Unit" :sortable="true">
            <template #body="slotProps">
              {{ slotProps.data.invent_bu }}
            </template>
          </Column>
          <Column header="">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-info p-mr-2 p-mb-2"
                icon="bi bi-pencil-square"
                v-tooltip.left="'Edit'"
                @click="
                  $router.push({
                    name: 'Edit Master Peripheral',
                    params: { code: slotProps.data.invent_code },
                  })
                "
              />
              <Button
                icon="bi bi-trash"
                class="p-button-rounded p-button-danger p-mr-2 p-mb-2"
                @click="DeleteMas(slotProps.data.invent_code)"
                v-tooltip.bottom="'Hapus'"
              />
              <Button
                icon="bi bi-qr-code"
                class="p-button-rounded p-button-success p-mr-2 p-mb-2"
                @click="previewBarcode(slotProps.data.invent_code)"
                v-tooltip.right="'Print Qr-code'"
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
                    icon="bi bi-file-earmark-spreadsheet"
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
            <Dialog
                id="qrcode"
                v-model:visible="displayBarcode"
                :style="{ width: '400px' }"
                header="Preview QR-Code"
                :modal="true"
                class="p-fluid"
            >
              <qrcode-vue :value="barcode" ref="qr" :size="300" level="H" /> 
              <template #footer>
                <Button label="Pdf" icon="pi pi-download" @click="downloadBarcodePdf()" class="p-button-danger" />
              </template>
            </Dialog>
            
</template>
<script>
import {FilterMatchMode} from 'primevue/api';
import Jspdf from 'jspdf';
export default {
  data() {
    return {
        loading: true,
        displayBarcode: false,
        token: localStorage.getItem('token'),
        master: [],
        mas: [],
        barcode:'',
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
        if(this.checkname.includes("Master Peripheral") || this.checkto.includes("/master-peripheral")){
          this.getMaster();
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
    downloadBarcodePdf(){
      const doc = new Jspdf();
      const contentHtml = this.$refs.qr.$el;
      const image = contentHtml.toDataURL('image/jpeg', 0.8);
      doc.addImage(image, 'JPEG', 70, 30);
      doc.save('Barcode.pdf');
      this.barcode= '';
      this.displayBarcode = false;
    },
    previewBarcode(invent_code){
      this.axios.get('api/getBarcode/'+invent_code,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.barcode = 'Kode Peripheral ' + ': ' + response.data.invent_code +', '+ 'Nama Peripheral ' + ': ' + response.data.invent_desc + ', '+ 'Merk '+': '+ response.data.invent_brand+', '
        + 'Tipe '+': '+ response.data.invent_type+', '+'S/N '+': '+response.data.invent_sn+', '+ 'Bisnis Unit '+': '+response.data.invent_bu +', '+'Lokasi Terakhir '+': '
        +response.data.invent_lokasi_previous+', '+'Pengguna Terakhir '+': '+response.data.invent_pengguna_previous+', '+'Lama Garansi '+': '+response.data.invent_lama_garansi+' Tahun'+', '+'Tanggal Perolehan '+': '+response.data.invent_tgl_perolehan; 
        this.displayBarcode = true;
      });
    },
    getMaster(){
      this.axios.get('api/mas',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.master = response.data;
        this.loading = false;
      }).catch(error=>{
          if (error.response.status == 401){
            this.$toast.add({
            severity:'error', summary: 'Error', detail:'Sesi Login Expired'
          });
          localStorage.clear();
          localStorage.setItem('Expired','true')
          setTimeout( () => this.$router.push('/login'),2000);
           }
      });
    },
    DeleteMas(invent_code){
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
          this.axios.delete('api/delete-mas/' +invent_code,{headers: {'Authorization': 'Bearer '+this.token}});
          this.getMaster();
        },
        reject: () => {},
      });
    },
    CetakPdf(){
      window.open('api/report-master-pdf');
    },
    CetakExcel(){
      window.open('api/report-master-excel');
      // ,{ headers: 
      //  { 'Authorization': 'Bearer '+this.token}, 
      //  'Accept': 'application/json'});
    },
  },
};
</script>