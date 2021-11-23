<template>
<div class="container-fluid">
  <section>
    <div class="row">
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 1px solid black;" v-if="this.blm_verifikasi">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="pi pi-check" style="fontSize: 4rem; color: gray;"></i>
              </div>
              <div class="text-end">
                <h3 @click="this.$router.push('/ict-request')" style="cursor:pointer;">{{this.blm_verifikasi}}</h3>
                <p class="mb-0">Request Yang Belum Diverifikasi</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 1px solid black;" v-if="this.sudah_verifikasi">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-check2-all" style="fontSize: 3.5rem; color: #07f13a;"></i>
              </div>
              <div class="text-end">
                <h3 @click="this.$router.push('/ict-request')" style="cursor:pointer;">{{this.sudah_verifikasi}}</h3>
                <p class="mb-0">Request Yang Sudah Diverifikasi</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 1px solid black;" v-if="this.direject">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="pi pi-times" style="fontSize: 4rem; color: red;"></i>
              </div>
              <div class="text-end">
                <h3 @click="this.$router.push('/ict-request')" style="cursor:pointer;">{{this.direject}}</h3>
                <p class="mb-0">Request Yang Di Reject</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.sedang_dikerjakan">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-arrow-repeat" style="fontSize: 3.5rem; color: green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="this.$router.push('/ict-request')" style="cursor:pointer;">{{this.sedang_dikerjakan}}</h3>
                <p class="mb-0">Request Yang Sedang Dikerjakan</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.sudah_dikerjakan">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-journal-check" style="fontSize: 4rem; color: #0ff5d7;"></i>
              </div>
              <div class="text-end">
                <h3 @click="this.$router.push('/ict-request')" style="cursor:pointer;">{{this.sudah_dikerjakan}}</h3>
                <p class="mb-0">Request Yang Sudah Dikerjakan</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.selesai">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-folder-check" style="fontSize: 4rem; color : #0c65fc;"></i>
              </div>
              <div class="text-end">
                <h3 @click="this.$router.push('/ict-request')" style="cursor:pointer;">{{this.selesai}}</h3>
                <p class="mb-0">Request Yang Sudah Selesai</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid;" v-if="this.request">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-journal-bookmark-fill" style="fontSize: 4rem;"></i>
              </div>
              <div class="text-end">
                <h3 @click="this.$router.push('/ict-request')" style="cursor:pointer;">{{this.request}}</h3>
                <p class="mb-0">Total Keseluruhan Request</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>
</template>
<script>
export default {
    data() {
        return {
            sudah_verifikasi:null,
            blm_verifikasi:null,
            sedang_dikerjakan:null,
            sudah_dikerjakan:null,
            direject:null,
            selesai:null,
            request:null,
            user:[],
            token: localStorage.getItem('token'),
        }
    },
    mounted(){
        this.getUser();
    },
    methods:{
        getUser(){
            this.axios.get('api/user',{headers: {'Authorization': 'Bearer '+this.token}}).then((res)=>{
                this.user = res.data;
                this.getBlmVerifikasi();
                this.getSudahVerifikasi();
                this.getReject();
                this.getSedangDikerjakan();
                this.getSudahDikerjakan();
                this.getSelesai();
                this.getRequest();
            });
        },
        getBlmVerifikasi(){
            this.axios.get('/api/getCountBlmVerifikasi/'+this.user.usr_name,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.blm_verifikasi = response.data[0]
            });
        },
        getSudahVerifikasi(){
            this.axios.get('/api/getCountSudahVerifikasi/'+this.user.usr_name,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.sudah_verifikasi = response.data[0]
            });
        },
        getSedangDikerjakan(){
            this.axios.get('/api/getCountSedangDikerjakan/'+this.user.usr_name,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.sedang_dikerjakan = response.data[0]
            });
        },
        getSudahDikerjakan(){
            this.axios.get('/api/getCountSudahDikerjakan/'+this.user.usr_name,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.sudah_dikerjakan = response.data[0]
            });
        },
        getSelesai(){
          this.axios.get('/api/getCountSelesai/'+this.user.usr_name,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.selesai = response.data[0]
            });
        },
        getReject(){
            this.axios.get('/api/getCountReject/'+this.user.usr_name,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.direject = response.data[0]
            });
        },
        getRequest(){
            this.axios.get('/api/getCountRequest/'+this.user.usr_name,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.request = response.data[0]
            });
        },
    }
}
</script>