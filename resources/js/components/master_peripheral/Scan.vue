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
        displayDialog:true
      }
    },
    methods: {
        onDecode(data){
            this.displayDialog = false;
            localStorage.setItem('barcode',data);
            window.close();
        },
    }
}
</script>