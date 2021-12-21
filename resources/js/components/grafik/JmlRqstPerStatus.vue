<template>
    <div class="card">
        <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
            <Button class="p-button-lg p-button-rounded p-button-danger" @click="printperStatus()" icon="pi pi-file-pdf" label="PDF"/>
            <ColorPicker v-model="color"/> 
        </div>
        <div class="p-text-center" id="perStatus">
            <h5 style="font-size:20pt; font-weight: bold;">Statistik Permintaan User</h5>
            <Chart type="bar" :data="perStatus" />
        </div>
    </div>
</template>
<script>
import Exporter from "vue-chartjs-exporter";
export default {
    data() {
        return {
            color: '1976D2',
            token: localStorage.getItem('token'),
            perStatus:{},
        };
    },
    watch : {
        "color"(){
            this.getTahun();
        }
    },
    created(){ 
        this.getTahun();  
    },
    methods: {
        getTahun(){
            this.axios.get('api/get-tahun', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                    this.perStatus = {
                        labels : response.data.grafik3.map((x)=>x.ireq_status),
                        datasets : [
                            {
                                label: 'Data Request Per Status',
                                backgroundColor: '#'+this.color,
                                data: response.data.grafik3.map((x)=>x.jumlah)
                            },
                        ]
                    }
                });
        },
        printperStatus(){
                let bar = document.getElementById("perStatus");
                const exp = new Exporter([bar]);
                exp.export_pdf().then((pdf) => {
                    pdf.save("Statistik Permintaan User.pdf");
                });
            },
    }
}

</script>