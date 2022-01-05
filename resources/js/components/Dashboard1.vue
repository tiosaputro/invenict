<template>
//dashboard approver atasan user
<div class="container-fluid">
  <section>
    <div class="row">
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-2 mb-5 bg-body rounded" style="border: 1px solid black;" v-if="this.count1">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="pi pi-check" style="fontSize: 4rem; color: red;"></i>
              </div>
              <div class="text-end">
                <h3 @click="blmDiverifikasi1()" style="cursor:pointer;">{{count1.belumdiverifikasi}}</h3>
                <p class="mb-0">Request Yang Menunggu Diverifikasi</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 1px solid black;" v-if="this.count1">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="pi pi-check" style="fontSize: 3.5rem; color: green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdhDiverifikasi1()" style="cursor:pointer;">{{count1.sudahdiverifikasi}}</h3>
                <p class="mb-0">Request Yang Sudah Diverifikasi</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 1px solid black;" v-if="this.count1">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="pi pi-times" style="fontSize: 4rem; color: red;"></i>
              </div>
              <div class="text-end">
                <h3 @click="diReject1()" style="cursor:pointer;">{{count1.diReject1}}</h3>
                <p class="mb-0">Request Yang Di Reject</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count1">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-arrow-repeat" style="fontSize: 3.5rem; color: green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdgDikerjakan1()" style="cursor:pointer;">{{count1.sedangdikerjakan}}</h3>
                <p class="mb-0">Request Yang Sedang Dikerjakan</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count1">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-check2-all" style="fontSize: 4rem; color: red;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdhDikerjakan1()" style="cursor:pointer;">{{count1.sudahdikerjakan}}</h3>
                <p class="mb-0">Request Yang Sudah Dikerjakan</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count1">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-check2-all" style="fontSize: 4rem; color : green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdhSelesai1()" style="cursor:pointer;">{{count1.sudahselesai}}</h3>
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
            count1:[],
            usr_name: localStorage.getItem('usr_name'),
            token: localStorage.getItem('token'),
        }
    },
    mounted(){
        this.getData();
    },
    methods:{
        getData1(){
            this.axios.get('api/getcountDivisi1/'+this.usr_name,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.count1 = response.data;
            });
        },
        blmDiverifikasi1(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',7);
        },
        sdhDiverifikasi1(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',8);
        },
        diReject1(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',9);
        },
        sdgDikerjakan1(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',10);
        },
        sdhDikerjakan1(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',11);
        },
        sdhSelesai1(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',12);
        },
    }
}
</script>