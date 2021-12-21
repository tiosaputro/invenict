<template>
    <div class="card">
        <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
            <Button class="p-button-lg p-button-rounded p-button-danger" @click="printperDivisiRequestorTahun()" icon="pi pi-file-pdf" label="PDF"/>
            <ColorPicker v-model="color" v-if="this.tahunRequestor"/> 
        </div>
        <div class="p-text-center" id="perStatus">
            <h5 style="font-size:20pt; font-weight: bold;">Statistik Request Divisi Requestor Per Tahun</h5>
            <Dropdown @change="getPerDivisiRequestorTahun()" :showClear="true" v-model="tahunRequestor" :options="tahunn" optionValue="tahun" optionLabel="tahun" placeholder="Pilih Tahun" />
            <Chart type="bar" :data="perDivisiRequestorTahun" v-if="this.tahunRequestor" />
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
            perDivisiRequestorTahun:{},
            tahunRequestor:null,
            tahunn:[],
        };
    },
    watch : {
        "color"(){
            this.getPerDivisiRequestorTahun();
        }
    },
    created(){ 
        this.getTahun();  
    },
    methods: {
         getTahun(){
            this.axios.get('api/get-tahun', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.tahunn = response.data.grafik;
            });
        },
        getPerDivisiRequestorTahun(){
            if(this.tahunRequestor != null){
                this.axios.get('api/count-per-divreq-tahun/'+this.tahunRequestor, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{ 
                    this.perDivisiRequestorTahun = {
                        labels : response.data.map((x)=>x.div_name),
                        datasets : [
                            {
                                label:this.tahunRequestor ,
                                backgroundColor: '#'+this.color,
                                data: response.data.map((x)=>x.jumlah)
                            },
                        ]
                        
                    }
                });
            }
        },
        printperDivisiRequestorTahun(){
            let bar = document.getElementById("perDivisiRequestorTahun");
            const exp = new Exporter([bar]);
            exp.export_pdf().then((pdf) => {
                pdf.save('Statistik Request Divisi Requestor Tahun ' +this.tahunRequestor);
            });
        },
    }
}

</script>