<template>
<!-- //Dashboard admin -->
<div class="container-fluid" v-if="this.role_name.includes('Admin')">
  <section>
    <div class="card">
    <div class="row">
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 1px solid black;" v-if="this.count5">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="pi pi-check" style="fontSize: 4rem; color: red;"></i>
              </div>
              <div class="text-end">
                <h3 @click="blmDiverifikasiAdmin()" style="cursor:pointer;">{{count5.belumdiverifikasi}}</h3>
                <p class="mb-0">Request Yang Belum Diverifikasi</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 1px solid black;" v-if="this.count5">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="pi pi-check" style="fontSize: 3.5rem; color: green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdhDiverifikasiAdmin()" style="cursor:pointer;">{{count5.sudahdiverifikasi}}</h3>
                <p class="mb-0">Request Yang Sudah Diverifikasi</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 1px solid black;" v-if="this.count5">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="pi pi-times" style="fontSize: 4rem; color: red;"></i>
              </div>
              <div class="text-end">
                <h3 @click="diRejectAdmin()" style="cursor:pointer;">{{count5.direject}}</h3>
                <p class="mb-0">Request Yang Di Reject</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count5">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-arrow-repeat" style="fontSize: 3.5rem; color: green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdgDikerjakanAdmin()" style="cursor:pointer;">{{count5.sedangdikerjakan}}</h3>
                <p class="mb-0">Request Yang Sedang Dikerjakan</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count5">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-check2-all" style="fontSize: 4rem; color: red;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdhDikerjakanAdmin()" style="cursor:pointer;">{{count5.sudahdikerjakan}}</h3>
                <p class="mb-0">Request Yang Sudah Dikerjakan</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count5">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-check2-all" style="fontSize: 4rem; color : green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdhSelesaiAdmin()" style="cursor:pointer;">{{count5.sudahselesai}}</h3>
                <p class="mb-0">Request Yang Sudah Selesai</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid;" v-if="this.count5">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-journal-bookmark-fill" style="fontSize: 4rem;"></i>
              </div>
              <div class="text-end">
                <h3 @click="totalKeseluruhanAdmin()" style="cursor:pointer;">{{count5.countrequest}}</h3>
                <p class="mb-0">Total Keseluruhan Request</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
  </section>
</div>
<!-- //Dashboard Requestor -->
<div class="container-fluid" v-if="this.role_name.includes('Requestor Divisi')">
  <section>
    <div class="card">
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
                <h3 @click="totalKeseluruhan()" style="cursor:pointer;">{{count.countrequest}}</h3>
                <p class="mb-0">Total Keseluruhan Request</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
  </section>
</div>
 <!-- //dashboard atasan user -->
<div class="container-fluid" v-if="this.role_name.includes('Atasan Requestor Divisi')">
  <section>
   <div class="card">
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
                <h3 @click="diReject1()" style="cursor:pointer;">{{count1.direject}}</h3>
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
    </div>
  </section>
</div>
<!-- // dashboard verifikasi ict -->
<div class="container-fluid" v-if="this.role_name.includes('Supervisor')">
    <div class="card">
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
    </div>
<!-- //Dashboard for personnel ict (status change request) -->
<div class="container-fluid" v-if="this.role_name.includes('Personel ICT')">
    <div class="card">
    <div class="row">
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count3">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-hourglass-split" style="color: red;"></i>
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
                <h3 @click="sdHDikerjakan3()" style="cursor:pointer;">{{count3.sudahdikerjakan}}</h3>
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
    </div>
      <!-- // closing request -->
      <div class="container-fluid" v-if="this.role_name.includes('Manager')">
       <section>
        <div class="card">
        <div class="row">
        <div class="col-xl-3 col-sm-6 col-12 mb-4">
         <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count4">
           <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-check2-all" style="fontSize: 4rem; color: gray;"></i>
              </div>
              <div class="text-end">
                <h3 @click="sdHDikerjakan4()" style="cursor:pointer;">{{count4.sudahdikerjakan}}</h3>
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
                <h3 @click="sdhSelesai4()" style="cursor:pointer;">{{count4.sudahselesai}}</h3>
                <p class="mb-0">Request Yang Sudah Selesai</p>
              </div>
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
            user:[],
            role_name:[],
            count:[],
            count1:[],
            count2:[],
            count3:[],
            count4:[],
            count5:[],
            usr_name: localStorage.getItem('usr_name'),
            token: localStorage.getItem('token'),
            id : localStorage.getItem('id'),
        }
    },
    created(){
        this.CekUser();
    },
    methods:{
      CekUser(){
      if(this.id){
        this.axios.get('api/cek-role/'+this.id,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
          this.role_name = response.data.map((x)=>x.rol_name)
          if(this.role_name.includes('Requestor Divisi')){
            this.getData();
          }
          if(this.role_name.includes('Atasan Requestor Divisi')){
            this.getData1();
          }
          if(this.role_name.includes('Supervisor')){
            this.getData2();
          }
          if(this.role_name.includes('Personel ICT')){
            this.getUser();
          }
          if(this.role_name.includes('Manager')){
            this.getData4();
          }
          if(this.role_name.includes('Admin')){
            this.getData5();
          }
        });
        } else {
          this.$router.push('/login');
        }
      },
        getData(){
            this.axios.get('api/getCountUser/'+this.usr_name,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.count = response.data;
            });
        },
        blmDiverifikasiAdmin(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',23);
        },
        sdhDiverifikasiAdmin(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',24);
        },
        diRejectAdmin(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',25);
        },
        sdgDikerjakanAdmin(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',26);
        },
        sdhDikerjakanAdmin(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',27);
        },
        sdhSelesaiAdmin(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',28);
        },
        totalKeseluruhanAdmin(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',29);
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
        totalKeseluruhan(){
          this.$router.push('/ict-request-desc')
          localStorage.setItem('active',22);
        },
        //dashboard approval user
        getData1(){
            this.axios.get('api/getCountDivisi1/'+this.usr_name,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
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
            this.axios.get('api/getCountDivisi2',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
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
        getUser(){
          this.axios.get('api/user',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.user = response.data;
            this.getData3();
          })
        },
        getData3(){
            this.axios.get('api/getCountDivisi3/'+this.user.usr_fullname,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.count3 = response.data;
            });
        },
        blmSelesai3(){
          this.$router.push('/ict-request-desc');
          localStorage.setItem('active',17)
        },
        sdHDikerjakan3(){
          this.$router.push('/ict-request-desc');
          localStorage.setItem('active',18)
        },
        sdhSelesai3(){
          this.$router.push('/ict-request-desc');
          localStorage.setItem('active',19)
        },
        getData4(){
            this.axios.get('api/getCountDivisi4',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.count4 = response.data;
            });
        },
        sdHDikerjakan4(){
          this.$router.push('/ict-request-desc');
          localStorage.setItem('active',20)
        },
        sdhSelesai4(){
          this.$router.push('/ict-request-desc');
          localStorage.setItem('active',21)
        },
        getData5(){
          this.axios.get('api/getCountAdmin',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.count5 = response.data;
          });
        },
    }
}
</script>