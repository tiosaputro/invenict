<template>
// dashboard verifikasi ict
<div class="container-fluid">
    <div class="row">
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count2">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="pi pi-check" style="fontSize: 4rem; color: red;"></i>
              </div>
              <div class="text-end">
                <h3 @click="blmDiassign2()" style="cursor:pointer;">{{count2.blmdiassign}}</h3>
                <p class="mb-0">Request Yang Belum Di Assign</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count2">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="pi pi-check" style="fontSize: 4rem; color: green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdgDikerjakan2()" style="cursor:pointer;">{{count2.sdgdikerjakan}}</h3>
                <p class="mb-0">Request Sedang Dikerjakan</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count2">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-check2-all" style="fontSize: 3.5rem; color: red;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdhDikerjakan2()" style="cursor:pointer;">{{count2.sdhdikerjakan}}</h3>
                <p class="mb-0">Request Sudah Dikerjakan</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count2">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-check2-all" style="fontSize: 3.5rem; color: green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdhSelesai2()" style="cursor:pointer;">{{count2.sdhselesai}}</h3>
                <p class="mb-0">Request Sudah Selesai</p>
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
            count2:[],
            token: localStorage.getItem('token'),
        }
    },
    mounted(){
        this.getBlmVerifikasi();
    },
    methods:{
        getData2(){
            this.axios.get('api/getcountDivisi2',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.count2 = response.data;
            });
        },
        blmDiassign2(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',13)
        },
        sdgDikerjakan2(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',14)
        },
        sdhDikerjakan2(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',15)
        },
        sdhSelesai2(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',16)
        },
    }
}
</script>