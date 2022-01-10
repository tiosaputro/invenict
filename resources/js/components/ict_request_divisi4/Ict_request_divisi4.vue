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
                    <h4>ICT Request</h4>
                  </div>
                    </div>
                  </template>
                </Toolbar>
            <TabView ref="tabview1" v-model:activeIndex="active1">
                <TabPanel header="Sudah Dikerjakan">
                   <DataTable
                    :value="sudahDikerjakan"
                    :paginator="true"
                    :rows="25"
                    :loading="loading"
                    :filters="filters"
                    :rowHover="true"
                    paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
                    :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
                    currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
                    responsiveLayout="scroll"
                 >
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
                    Loading ICT Request data. Please wait.
                  </template>
                  <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:8rem"/>
                  <Column field="ireqd_id" header="No. Detail" :sortable="true" style="min-width:8rem"/>
                  <Column field="invent_code" header="Nama Peripheral" :sortable="true" style="min-width:8rem"/>
                  <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:8rem">
                    <template #body="slotProps">
                      {{ formatDate(slotProps.data.ireq_date) }}
                    </template>
                  </Column>
                  <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:8rem"/>
                  <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:8rem"/>
                  <Column field="ireq_assigned_to" header="Petugas(ICT)" :sortable="true" style="min-width:8rem"/>
                  <Column>
                    <template #body="slotProps">
                      <Button
                          v-if="slotProps.data.ireq_status != 'Close'"
                          class="p-button-raised p-button-text p-mr-2 p-mb-2"
                          label="Closing"
                          @click="ClosingPerDetail(slotProps.data.ireqd_id, slotProps.data.ireq_no)"
                      />
                    </template>
                  </Column>
                </DataTable>  
                </TabPanel>
                <TabPanel header="Selesai">
                   <DataTable
                    :value="selesai"
                    :paginator="true"
                    :rows="25"
                    :loading="loading"
                    :filters="filters"
                    :rowHover="true"
                    paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
                    :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
                    currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
                    responsiveLayout="scroll"
                 >
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
                    Loading ICT Request data. Please wait.
                  </template>
                  <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:8rem"/>
                  <Column field="ireqd_id" header="No. Detail" :sortable="true" style="min-width:8rem"/>
                  <Column field="invent_code" header="Nama Peripheral" :sortable="true" style="min-width:8rem"/>
                  <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:8rem">
                    <template #body="slotProps">
                      {{ formatDate(slotProps.data.ireq_date) }}
                    </template>
                  </Column>
                  <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:8rem"/>
                  <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:8rem"/>
                  <Column field="ireq_assigned_to" header="Petugas(ICT)" :sortable="true" style="min-width:8rem"/>
                  <Column style="min-width:12rem">
                    <template #body="slotProps">
                      <Button
                        class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                        icon="pi pi-info-circle"
                        @click="$router.push({
                            name: 'Ict Request Divisi 4 Detail',
                            params: { code: slotProps.data.ireq_id }, })"
                      />
                    </template>
                  </Column>
                </DataTable>
                </TabPanel>
            </TabView>
            <Dialog
                v-model:visible="dialogAssign"
                :style="{ width: '400px' }"
                header="Assign Per-Request"
                :modal="true"
                :closable="false"
                class="p-fluid"
            >
                <div class="p-fluid">
                <div class="p-field p-grid">
                    <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:100px">Petugas (ICT)</label>
                    <div class="p-col-3 p-md-6">
                        <Dropdown
                            v-model="assign.name"
                            :options="petugas"
                            optionValue="name"
                            optionLabel="name"
                            placeholder="Pilih Petugas (ICT)"
                            :class="{ 'p-invalid': submitted && !assign.name }"
                        />
                        <small v-if="submitted && !assign.name" class="p-error">
                            Petugas(ICT) Harus Diisi
                        </small>
                    </div>
                </div>
                </div>
                <template #footer>
                    <Button label="Simpan" @click="updateAssign()" class="p-button" autofocus />
                    <Button label="Cancel" @click="cancelAssign()" class="p-button-text" />
                </template>
            </Dialog>
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
        active1: 0,
        loading: true,
        dialogAssign: false,
        submitted:false,
        assign:{
          id:null,
          name: null
          },
        petugas:[],
        verif: [],
        sudahDikerjakan:[],
        selesai:[],
        reject:[],
        filters: { 'global': {value: null, matchMode: FilterMatchMode.CONTAINS} },
        token: localStorage.getItem('token'),
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
        if(this.checkname.includes("Closing Request") || this.checkto.includes("/ict-request-divisi4")){ 
          this.getSudahDikerjakan();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/dashboard'),2000);
        }
      });
    },
    ClosingPerDetail(ireqd_id,ireq_no){
        this.$confirm.require({
          message: "Closing Permohonan Dilanjutkan?",
          header: "Closing Per Detail",
          icon: "pi pi-info-circle",
          acceptClass: "p-button",
          acceptLabel: "Ya",
          rejectLabel: "Tidak",
          accept: () => {
            this.$toast.add({
              severity: "info",
              summary: "Confirmed",
              detail: "Berhasil Diclosing",
              life: 3000,
            });
            this.axios.get('/api/updateStatusClosingDetail/' +ireqd_id + '/' + ireq_no, {headers: {'Authorization': 'Bearer '+this.token}});
           this.getSudahDikerjakan();
          },
          reject: () => {},
        });
      },
    submit(ireq_id){
        this.$confirm.require({
        message: "Apakah Anda Yakin Ingin Mensubmit?",
        header: "ICT Request    ",
        icon: "pi pi-info-circle",
        acceptClass: "p-button",
        acceptLabel: "Ya",
        rejectLabel: "Tidak",
        accept: () => {
          this.$toast.add({
            severity: "info",
            summary: "Confirmed",
            detail: "Berhasil Disubmit",
            life: 3000,
          });
          this.axios.get('api/updateStatusPenugasan/' +ireq_id, {headers: {'Authorization': 'Bearer '+this.token}});
          this.getSedangDikerjakan();
        },
        reject: () => {},
      });
      },
    AssignPerRequest(ireq_id){
          this.assign.id = ireq_id;
          this.axios.get('api/get-pekerja', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.petugas = response.data;
          });
          this.dialogAssign = true;
      },
    updateAssign(){
        this.submitted = true;
        if(this.assign.name != null){
          this.axios.post('api/updateAssign',this.assign, {headers: {'Authorization': 'Bearer '+this.token}}).then(()=>{
            this.assign = {
              id : null,
              name : null
              };
            this.submitted = false;
            this.dialogAssign = false;
            this.$toast.add({
              severity: "info",
              summary: "Confirmed",
              detail: "Berhasil Assign",
              life: 3000,
            });
          });
        }
      },
    cancelAssign(){
          this.assign =
          {
              id : null,
              name : null
            };
          this.petugas = [];
          this.dialogAssign = false;
          this.submitted = false;
      },
    ClosingPerRequest(ireq_id){
      this.$confirm.require({
        message: "Closing Permohonan Dilanjutkan?",
        header: "Closing Per Request",
        icon: "pi pi-info-circle",
        acceptClass: "p-button",
        acceptLabel: "Ya",
        rejectLabel: "Tidak",
        accept: () => {
          this.$toast.add({
            severity: "info",
            summary: "Confirmed",
            detail: "Berhasil Diclosing",
            life: 3000,
          });
          this.axios.get('api/updateStatusClosing/' +ireq_id, {headers: {'Authorization': 'Bearer '+this.token}});
          this.getSudahDikerjakan();
        },
        reject: () => {},
      });
      },
    getSudahDikerjakan(){
      this.axios.get('api/get-ictDivisi4',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.sudahDikerjakan = response.data.ict;
        this.selesai = response.data.ict2;
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
    formatDate(date) {
      return moment(date).format("DD MMM YYYY")
    },
  },
};
</script>