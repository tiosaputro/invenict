<template>
    <div class="card">
        <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
            <Button class="p-button-lg p-button-rounded p-button-danger" @click="printstatusPerDivisiRequestor()" icon="pi pi-file-pdf" label="PDF"/>
            <ColorPicker v-model="color" v-if="this.statusRequestor"/> 
        </div>
        <div class="p-text-center" id="perStatus">
            <h5 style="font-size:20pt; font-weight: bold;">Statistik Request Divisi Requestor Per Status</h5>
            <Dropdown @change="getStatusDivisiRequestor()" :showClear="true" v-model="statusRequestor" :options="status" optionValue="code" optionLabel="name" placeholder="Pilih Status"/>
            <Chart type="bar" :data="statusPerDivisiRequestor" v-if="this.statusRequestor" />
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
            statusPerDivisiRequestor:{},
            statusRequestor: null,
            status: [],
        };
    },
    watch : {
        "color"(){
            this.getStatusDivisiRequestor();
        }
    },
    created(){ 
        this.getStatus();  
    },
    methods: {
        getStatus(){
            this.axios.get('api/get-tahun', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.status = response.data.grafik1;
            });
        },
        getStatusDivisiRequestor(){
            if(this.statusRequestor != null){
                this.axios.get('api/count-per-divreq-status/'+this.statusRequestor, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                    this.nameStatusRequestor = response.data[0].name;
                    this.statusPerDivisiRequestor = {
                        labels : response.data.map((x)=>x.div_name),
                        datasets : [
                            {
                                label: response.data[0].name,
                                backgroundColor: '#'+this.color,
                                data: response.data.map((x)=>x.jumlah)
                            },
                        ]
                    }
                });
            }
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