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
              <TabPanel header="Permohonan Divisi">
                <DataTable
                  :value="permohonan"
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
                  <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:8rem">
                    <template #body="slotProps">
                      {{ formatDate(slotProps.data.ireq_date) }}
                    </template>
                  </Column>
                  <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:8rem"/>
                  <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:8rem"/>
                  <Column field="ireq_assigned_to" header="Petugas(ICT)" :sortable="true" style="min-width:8rem"/>
                  <Column style="min-width:20rem">
                    <template #body="slotProps">
                      <Button
                        class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                        icon="pi pi-info-circle"
                        @click="$router.push({
                            name: 'Ict Request Divisi 2 Detail',
                            params: { code: slotProps.data.ireq_id }, })"
                      />
                      <Button
                        class="p-button-raised p-button-info p-button-text p-mr-2 p-mb-2"
                        label="Assign Per-Request"
                        @click="AssignPerRequest(slotProps.data.ireq_id)"
                      />
                      <Button
                        class="p-button-raised p-button-text p-mr-2 p-mb-2"
                        label="Assign Per-Detail"
                        @click="$router.push({
                            name: 'Ict Request Divisi 2 Assign Per-Detail',
                            params: { code: slotProps.data.ireq_id }, })"
                      />
                      <Button
                        v-if="slotProps.data.ireq_count_status == slotProps.data.ireq_count_id"
                        class="p-button-raised p-button-success p-button-text p-mr-2 p-mb-2"
                        label="Submit"
                        @click="submit(slotProps.data.ireq_id)"
                      />
                    </template>
                  </Column>
                </DataTable>   
              </TabPanel>
                <TabPanel header="Sedang Dikerjakan">
                  <DataTable
                    :value="sedangDikerjakan"
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
                  <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:12rem"/>
                  <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:12rem">
                    <template #body="slotProps">
                      {{ formatDate(slotProps.data.ireq_date) }}
                    </template>
                  </Column>
                  <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:12rem"/>
                  <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:12rem"/>
                  <Column style="min-width:12rem">
                    <template #body="slotProps">
                      <Button
                        class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                        icon="pi pi-info-circle"
                        @click="$router.push({
                            name: 'Ict Request Divisi 2 Detaill',
                            params: { code: slotProps.data.ireq_id }, })"
                      />
                    </template>
                  </Column>
                </DataTable>   
                </TabPanel>
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
                            name: 'Ict Request Divisi 2 Detail',
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
        active1:0,
        loading: true,
        dialogAssign: false,
        submitted:false,
        permohonan: [],
        assign:{
          id:null,
          name: null
          },
        petugas:[],
        verif: [],
        sedangDikerjakan:[],
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
        if(this.checkname.includes("Assign Request Ke ICT Personnel") || this.checkto.includes("/ict-request-divisi2")){ 
          this.getPermohonan();
        }
        else {
          this.$toast.add({
            severity:'error', summary: '403', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/dashboard'),2000);
        }
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
          this.getPermohonan();
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
            this.getPermohonan();
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
     getPermohonan(){
      this.axios.get('api/get-permohonan-divisi',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.permohonan = response.data.ict;
        this.sedangDikerjakan = response.data.ict1;
        this.sudahDikerjakan = response.data.ict2;
        this.selesai = response.data.ict3;
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