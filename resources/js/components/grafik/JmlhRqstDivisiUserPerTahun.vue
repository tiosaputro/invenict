<template>
    <div class="card">
        <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
            <Button class="p-button-lg p-button-rounded p-button-danger" @click="printPerDivisiUserTahun()" icon="pi pi-file-pdf" label="PDF"/>
            <ColorPicker v-model="color" v-if="this.tahunUser"/> 
        </div>
        <div class="p-text-center" id="perStatus">
            <h5 style="font-size:20pt; font-weight: bold;">Statistik Request Divisi User Per Tahun</h5>
            <Dropdown @change="getPerDivisiUserTahun()" :showClear="true" v-model="tahunUser" :options="tahunn" optionValue="tahun" optionLabel="tahun" placeholder="Pilih Tahun" />
            <Chart type="bar" :data="perDivisiUserTahun" v-if="this.tahunUser" />
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
            perDivisiUserTahun:{},
            tahunUser:null,
            tahunn:[],
        };
    },
    watch : {
        "color"(){
            this.getPerDivisiUserTahun();
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
        getPerDivisiUserTahun(){
            if(this.tahunUser != null){
                this.axios.get('api/count-per-divuser-tahun/'+this.tahunUser, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{ 
                    this.perDivisiUserTahun = {
                        labels : response.data.map((x)=>x.div_name),
                        datasets : [
                            {
                                label:this.tahunUser ,
                                backgroundColor: '#'+this.color,
                                data: response.data.map((x)=>x.jumlah)
                            },
                        ]
                        
                    }
                });
            }
        },
        printPerDivisiUserTahun(){
            let bar = document.getElementById("perDivisiUserTahun");
            const exp = new Exporter([bar]);
            exp.export_pdf().then((pdf) => {
                pdf.save('Statistik Request Divisi User Tahun '+this.tahunUser);
            });
        },
    }
}

</script>