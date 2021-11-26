<template>
<div class="container-fluid">
    <div class="row">
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-hourglass-split" style="fontSize: 4rem; color: red;"></i>
              </div>
              <div class="text-end">
                <h3 @click="blmSelesai()" style="cursor:pointer;">{{count.belumselesai}}</h3>
                <p class="mb-0">Request Yang Belum Selesai</p>
              </div>
            </div>
          </div>
        </div>
      </div><div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-check2-all" style="fontSize: 4rem; color: red;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdgDikerjakan()" style="cursor:pointer;">{{count.sudahdikerjakan}}</h3>
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
                <i class="bi bi-check2-all" style="fontSize: 4rem; color: green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdhSelesai()" style="cursor:pointer;">{{count.sudahselesai}}</h3>
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
            count:[],
            user: [],
            token: localStorage.getItem('token'),
        }
    },
    mounted(){
        this.getUser();
    },
    methods:{
        getUser(){
          this.axios.get('api/user',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.user = response.data;
            this.getData();
          })
        },
        getData(){
            this.axios.get('api/getCountDivisi3/'+this.user.usr_fullname,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.count = response.data;
            });
        },
        blmSelesai(){
          this.$router.push('/ict-request-divisi3');
          localStorage.setItem('active',0)
        },
        sdgDikerjakan(){
          this.$router.push('/ict-request-divisi3');
          localStorage.setItem('active',1)
        },
        sdhSelesai(){
          this.$router.push('/ict-request-divisi3');
          localStorage.setItem('active',2)
        },
    }
}
</script>