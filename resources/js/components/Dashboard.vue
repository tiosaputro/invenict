<template>
<div class="container-fluid">
  <section>
    <div class="row">
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 1px solid black;" v-if="this.count">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="pi pi-check" style="fontSize: 4rem; color: red;"></i>
              </div>
              <div class="text-end">
                <h3 @click="blmDiverifikasi()" style="cursor:pointer;">{{count.belumdiverifikasi}}</h3>
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
                <i class="pi pi-check" style="fontSize: 3.5rem; color: green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdhDiverifikasi()" style="cursor:pointer;">{{count.sudahdiverifikasi}}</h3>
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
                <h3 @click="diReject()" style="cursor:pointer;">{{count.direject}}</h3>
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
                <h3 @click="sdgDikerjakan()" style="cursor:pointer;">{{count.sedangdikerjakan}}</h3>
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
                <i class="bi bi-check2-all" style="fontSize: 4rem; color: red;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdhDikerjakan()" style="cursor:pointer;">{{count.sudahdikerjakan}}</h3>
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
                <i class="bi bi-check2-all" style="fontSize: 4rem; color : green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdhSelesai()" style="cursor:pointer;">{{count.sudahselesai}}</h3>
                <p class="mb-0">Request Yang Sudah Selesai</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid;" v-if="this.count">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-journal-bookmark-fill" style="fontSize: 4rem;"></i>
              </div>
              <div class="text-end">
                <h3 @click="this.$router.push('/ict-request-desc')" style="cursor:pointer;">{{count.countrequest}}</h3>
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
            count:[],
            usr_name: localStorage.getItem('usr_name'),
            token: localStorage.getItem('token'),
        }
    },
    mounted(){
        this.getData();
    },
    methods:{
        getData(){
            this.axios.get('api/getCountUser/'+this.usr_name,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.count = response.data;
            });
        },
        blmDiverifikasi(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',1);
        },
        sdhDiverifikasi(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',2);
        },
        diReject(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',3);
        },
        sdgDikerjakan(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',4);
        },
        sdhDikerjakan(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',5);
        },
        sdhSelesai(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',6);
        },
    }
}
</script>