<template>
<div class="container-fluid">
  <section>
    <div class="row">
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 1px solid black;" v-if="this.count">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="pi pi-check" style="fontSize: 4rem; color: gray;"></i>
              </div>
              <div class="text-end">
                <h3 @click="this.$router.push('/ict-request')" style="cursor:pointer;">{{count.belumdiverifikasi}}</h3>
                <p class="mb-0">Request Yang Belum Diverifikasi</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 1px solid black;" v-if="this.count">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-check2-all" style="fontSize: 3.5rem; color: #07f13a;"></i>
              </div>
              <div class="text-end">
                <h3 @click="this.$router.push('/ict-request')" style="cursor:pointer;">{{count.sudahdiverifikasi}}</h3>
                <p class="mb-0">Request Yang Sudah Diverifikasi</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 1px solid black;" v-if="this.count">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="pi pi-times" style="fontSize: 4rem; color: red;"></i>
              </div>
              <div class="text-end">
                <h3 @click="this.$router.push('/ict-request')" style="cursor:pointer;">{{count.direject}}</h3>
                <p class="mb-0">Request Yang Di Reject</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-arrow-repeat" style="fontSize: 3.5rem; color: green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="this.$router.push('/ict-request')" style="cursor:pointer;">{{count.sedangdikerjakan}}</h3>
                <p class="mb-0">Request Yang Sedang Dikerjakan</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-journal-check" style="fontSize: 4rem; color: #0ff5d7;"></i>
              </div>
              <div class="text-end">
                <h3 @click="this.$router.push('/ict-request')" style="cursor:pointer;">{{count.sudahdikerjakan}}</h3>
                <p class="mb-0">Request Yang Sudah Dikerjakan</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-folder-check" style="fontSize: 4rem; color : #0c65fc;"></i>
              </div>
              <div class="text-end">
                <h3 @click="this.$router.push('/ict-request')" style="cursor:pointer;">{{count.sudahselesai}}</h3>
                <p class="mb-0">Request Yang Sudah Selesai</p>
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
            count:[],
            user: localStorage.getItem('usr_name'),
            token: localStorage.getItem('token'),
        }
    },
    mounted(){
        this.getData();
    },
    methods:{
        getData(){
            this.axios.get('api/getCountDivisi1/'+this.usr_name,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.count = response.data;
            });
        },
    }
}
</script>