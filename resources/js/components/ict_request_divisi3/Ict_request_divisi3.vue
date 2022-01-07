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
                  <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:8rem"/>
                  <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:8rem">
                    <template #body="slotProps">
                      {{ formatDate(slotProps.data.ireq_date) }}
                    </template>
                  </Column>
                  <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:8rem"/>
                  <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:8rem"/>
                  <Column field="ireq_assigned_to" header="Petugas (ICT)" :sortable="true" style="min-width:8rem"/>
                  <Column style="min-width:12rem">
                    <template #body="slotProps">
                      <Button
                        class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                        icon="pi pi-info-circle"
                        @click="$router.push({
                            name: 'Ict Request Divisi 3 Detail',
                            params: { code: slotProps.data.ireq_id }, })"
                      />
                      <Button
                        class="p-button-raised p-button-info p-button-text p-mr-2 p-mb-2"
                        label="CA"
                        @click="$router.push({
                            name: 'add Cash Advance',
                            params: { code: slotProps.data.ireq_id }, })"
                      />
                      <Button
                        class="p-button-raised p-button-text p-mr-2 p-mb-2"
                        label="PR"
                        @click="$router.push({
                            name: 'Ict Request Divisi 2 Assign Per-Detail',
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
                  <Column style="min-width:12rem">
                    <template #body="slotProps">
                      <Button
                        class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                        icon="pi pi-info-circle"
                        @click="$router.push({
                            name: 'Ict Request Divisi 3 Detail',
                            params: { code: slotProps.data.ireq_id }, })"
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
                  <Column style="min-width:12rem">
                    <template #body="slotProps">
                      <Button
                        class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                        icon="pi pi-info-circle"
                        @click="$router.push({
                            name: 'Ict Request Divisi 3 Detail',
                            params: { code: slotProps.data.ireq_id }, })"
                      />
                    </template>
                  </Column>
                </DataTable>  
                </TabPanel>
            </TabView>
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
        submitted:false,
        selesai: [],
        sedangDikerjakan:[],
        sudahDikerjakan:[],
        user:[],
        filters: { 'global': {value: null, matchMode: FilterMatchMode.CONTAINS} },
        token: localStorage.getItem('token'),
        checkname : [],
        checkto : [],
        id : localStorage.getItem('id'),
    };
  },
  mounted() {
    this.cekUser();
  },
  methods: {
    cekUser(){
      this.axios.get('api/cek-user/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.checkto = response.data.map((x)=> x.to)
        this.checkname = response.data.map((x)=> x.name)
        if(this.checkname.includes("Status Change Request") || this.checkto.includes("/ict-request-divisi3")){ 
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
      this.axios.get('api/user',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
        this.user = response.data;
        this.getData();
      })
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
          this.axios.get('/api/updateStatusPenugasan/' +ireq_id, {headers: {'Authorization': 'Bearer '+this.token}});
          this.getSedangDikerjakan();
        },
        reject: () => {},
      });
      },
      AssignPerRequest(ireq_id){
          this.assign.id = ireq_id;
          this.dialogAssign = true;
      },
      cancelAssign(){
          this.assign = [];
          this.dialogAssign = false;
      },
    getData(){
      this.axios.get('api/get-sedang-dikerjakan/'+this.user.usr_fullname,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.sedangDikerjakan = response.data.ict;
        this.sudahDikerjakan = response.data.ict1;
        this.selesai = response.data.ict2;
        this.loading = false;
      });
    },
    formatDate(date) {
      return moment(date).format("DD MMM YYYY")
    },
  },
};
</script>