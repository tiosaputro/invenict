<template>
<div class="container-fluid">
    <div class="row">
      <div class="col-xl-3 col-sm-6 col-12 mb-4">
        <div class="shadow-lg p-3 mb-5 bg-body rounded" style="border: 0.5px solid black;" v-if="this.count">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <i class="bi bi-hourglass-bottom" style="fontSize: 4rem; color: green;"></i>
              </div>
              <div class="text-end">
                <h3 @click="this.$router.push('/ict-request-divisi2')" style="cursor:pointer;">{{count}}</h3>
                <p class="mb-0">Request Yang Belum Di Assign</p>
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
            count:'',
            token: localStorage.getItem('token'),
        }
    },
    mounted(){
        this.getBlmVerifikasi();
    },
    methods:{
        getBlmVerifikasi(){
            this.axios.get('api/getCountDivisi2',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.count = response.data[0];
            });
        },
    }
}
</script>