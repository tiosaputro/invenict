<template>
    <div class="card">
        <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
            <Button class="p-button-lg p-button-rounded p-button-danger" @click="printperDivisiRequestorBulan()" icon="pi pi-file-pdf" label="PDF"/>
            <ColorPicker v-model="color" v-if="this.tahunnRequestor && this.bulanRequestor" /> 
        </div>
        <div class="p-text-center" id="perDivisiRequestorBulan">
            <h5 style="font-size:20pt; font-weight: bold;">Statistik Request Divisi Requestor Per Bulan</h5>
            <Dropdown @change="getTahunRequestor()" :showClear="true" v-model="bulanRequestor" :options="bulan" optionValue="code" optionLabel="name" placeholder="Pilih Bulan" class="p-mr-2 p-mb-2" />
            <Dropdown @change="getPerDivisiRequestorBulan()" :showClear="true" v-model="tahunnRequestor" :options="tahunnnn" optionValue="tahun" optionLabel="tahun" placeholder="Pilih Tahun" class="p-mr-2 p-mb-2" v-if="this.bulanRequestor" />
            <Chart type="bar" :data="perDivisiRequestorBulan" v-if="this.tahunnRequestor && this.bulanRequestor" />
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
            perDivisiRequestorBulan:{},
            bulanRequestor:null,
            tahunnRequestor:null,
            tahun:null,
            nameBulanUser: null,
            tahunn:[],
            tahunnnn: [],
            bulan:[],
        };
    },
    watch : {
        "color"(){
            this.getPerDivisiRequestorBulan();
        }
    },
    created(){ 
        this.getBulan();  
    },
    methods: {
        getTahunRequestor(){
            this.tahunnRequestor = null;
            if(this.bulanRequestor != null){
                this.axios.get('api/get-tahun-requestor/'+this.bulanRequestor, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                    this.tahunnnn = response.data;
                });
            }
        },
        getBulan(){
            this.axios.get('api/get-tahun', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.bulan = response.data.grafik2;
            });
        },
        getPerDivisiRequestorBulan(){
            if(this.tahunnRequestor != null &&
                this.bulanRequestor != null){
                this.axios.get('api/count-per-divreq-bulan/'+this.tahunnRequestor +'/'+this.bulanRequestor, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{ 
                    this.nameBulanRequestor = response.data[0].bulan + this.tahunnRequestor;
                    this.perDivisiRequestorBulan = {
                        labels : response.data.map((x)=>x.div_name),
                        datasets : [
                            {
                                label: response.data[0].bulan + this.tahunnRequestor,
                                backgroundColor: '#'+this.color,
                                data: response.data.map((x)=>x.jumlah)
                            },
                        ]
                    }
                }).catch(error => console.log(error))
            }
        },
        printperDivisiRequestorBulan(){
            let bar = document.getElementById("perDivisiRequestorBulan");
            const exp = new Exporter([bar]);
            exp.export_pdf().then((pdf) => {
                pdf.save('Statistik Request Divisi Requestor Bulan '+this.nameBulanRequestor);
            });
        },
    }
}

</script>