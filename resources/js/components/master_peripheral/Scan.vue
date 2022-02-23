<template>
<div>
        <Dialog
                v-model:visible="displayDialog"
                :style="{ width: '500px' }"
                header="Scan Barcode"
                :modal="true"
                class="p-fluid"
              >
                 <StreamBarcodeReader
                    @decode="onDecode"
                 />
        </Dialog>
</div>
</template>
<script>
export default {
    data(){
      return{
        displayDialog:false,
        token: localStorage.getItem('token'),
        checkname : [],
        checkto : [],
        id : localStorage.getItem('id'),
      }
    },
    created() {
      this.cekUser();
    },
    methods: {
      cekUser(){
      if(this.id){
        this.axios.get('api/cek-user/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
          this.checkto = response.data.map((x)=> x.to)
          this.checkname = response.data.map((x)=> x.name)
          if(this.checkname.includes("Master Peripheral") || this.checkto.includes("/master-peripheral")){
            this.displayDialog = true;
          }
          else {
            this.$toast.add({
              severity:'error', summary: '403', detail:'Cannot Access This Page'
            });
            setTimeout( () => this.$router.push('/dashboard'),2000);
          }
        });
      } else {
        this.$router.push('/login');
       }
      },
      onDecode(data){
            this.displayDialog = false;
            localStorage.setItem('barcode',data);
            window.close();
        },
    }
}
</script>