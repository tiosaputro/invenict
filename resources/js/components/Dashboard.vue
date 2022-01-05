<template>
<!-- //Dashboard user for request -->
<div class="container-fluid" v-if="this.test==0">
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
<!-- //dashboard approver atasan user -->
<div class="container-fluid" v-if="this.test==1">
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
<!-- // dashboard verifikasi ict -->
<div class="container-fluid" v-if="this.test==2">
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
<!-- //Dashboard for personnel ict -->
<div class="container-fluid" v-if="this.test==3">
    <div class="row">
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count3">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-hourglass-split" style="fontSize: 4rem; color: red;"></i>
              </div>
              <div class="text-end">
                <h3 @click="blmSelesai3()" style="cursor:pointer;">{{count3.belumselesai}}</h3>
                <p class="mb-0">Request Yang Belum Selesai</p>
              </div>
            </div>
          </div>
        </div>
      </div><div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count3">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-check2-all" style="fontSize: 4rem; color: red;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdgDikerjakan3()" style="cursor:pointer;">{{count3.sudahdikerjakan}}</h3>
                <p class="mb-0">Request Yang Sudah Dikerjakan</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count3">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-check2-all" style="fontSize: 4rem; color: green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdhSelesai3()" style="cursor:pointer;">{{count3.sudahselesai}}</h3>
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
            test: 0,
            count:[],
            count1:[],
            count2:[],
            count3:[],
            usr_name: localStorage.getItem('usr_name'),
            token: localStorage.getItem('token'),
            usr_id : localStorage.getItem('id')
        }
    },
    mounted(){
        this.CekUser();
    },
    methods:{
      CekUser(){
        this.getData();
      },
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
        //dashboard approval user
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