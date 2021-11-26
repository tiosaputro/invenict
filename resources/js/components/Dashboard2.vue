<template>
<div class="container-fluid">
    <div class="row">
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="pi pi-check" style="fontSize: 4rem; color: red;"></i>
              </div>
              <div class="text-end">
                <h3 @click="blmDiassign()" style="cursor:pointer;">{{count.blmdiassign}}</h3>
                <p class="mb-0">Request Yang Belum Di Assign</p>
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
                <i class="pi pi-check" style="fontSize: 4rem; color: green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdgDikerjakan()" style="cursor:pointer;">{{count.sdgdikerjakan}}</h3>
                <p class="mb-0">Request Sedang Dikerjakan</p>
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
                <i class="bi bi-check2-all" style="fontSize: 3.5rem; color: red;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdhDikerjakan()" style="cursor:pointer;">{{count.sdhdikerjakan}}</h3>
                <p class="mb-0">Request Sudah Dikerjakan</p>
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
                <i class="bi bi-check2-all" style="fontSize: 3.5rem; color: green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdhSelesai()" style="cursor:pointer;">{{count.sdhselesai}}</h3>
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
            count:[],
            token: localStorage.getItem('token'),
        }
    },
    mounted(){
        this.getBlmVerifikasi();
    },
    methods:{
        getBlmVerifikasi(){
            this.axios.get('api/getCountDivisi2',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.count = response.data;
            });
        },
        blmDiassign(){
          this.$router.push('/ict-request-divisi2')
          localStorage.setItem('active',0)
        },
        sdgDikerjakan(){
          this.$router.push('/ict-request-divisi2')
          localStorage.setItem('active',1)
        },
        sdhDikerjakan(){
          this.$router.push('/ict-request-divisi2')
          localStorage.setItem('active',2)
        },
        sdhSelesai(){
          this.$router.push('/ict-request-divisi2')
          localStorage.setItem('active',3)
        },
    }
}
</script>