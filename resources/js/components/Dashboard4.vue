<template>
// Dashboard for closing request
<div class="container-fluid">
    <div class="row">
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count4">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-hourglass-bottom" style="fontSize: 4rem; color: green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="this.$router.push('/ict-request-divisi3')" style="cursor:pointer;">{{count4.belumselesai}}</h3>
                <p class="mb-0">Request Yang Sedang Dikerjakan</p>
              </div>
            </div>
          </div>
        </div>
      </div><div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count4">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-check2-all" style="fontSize: 4rem; color: gray;"></i>
              </div>
              <div class="text-end">
                <h3 @click="this.$router.push('/ict-request-divisi3')" style="cursor:pointer;">{{count4.sudahdikerjakan}}</h3>
                <p class="mb-0">Request Yang Sudah Dikerjakan</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count4">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-check2-all" style="fontSize: 4rem; color: green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="this.$router.push('/ict-request-divisi3')" style="cursor:pointer;">{{count4.sudahselesai}}</h3>
                <p class="mb-0">Request Yang Sudah Selesai</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>
</template>
<script>
export default {
    data() {
        return {
            count4:[],
            user: localStorage.getItem('usr_name'),
            token: localStorage.getItem('token'),
        }
    },
    mounted(){
        this.getData();
    },
    methods:{
        getData(){
            this.axios.get('api/getcount4Divisi3/'+this.usr_fullname,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.count4 = response.data;
            });
        },
    }
}
</script>