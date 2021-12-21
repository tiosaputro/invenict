<template>
    <div class="card">
        <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
            <Button class="p-button-lg p-button-rounded p-button-danger" @click="printstatusPerDivisiUser()" icon="pi pi-file-pdf" label="PDF"/>
            <ColorPicker v-model="color" v-if="this.statusUser"/> 
        </div>
        <div class="p-text-center" id="statusPerDivisiUser">
        <h5 style="font-size:20pt; font-weight: bold;">Statistik Request Divisi User Per Status</h5>
        <Dropdown @change="getStatusDivisiUser()" :showClear="true" v-model="statusUser" :options="status" optionValue="code" optionLabel="name" placeholder="Pilih Status"/>
        <Chart type="bar" :data="statusPerDivisiUser" v-if="this.statusUser" />
    </div>
    </div>
</template>
<script>
import Exporter from "vue-chartjs-exporter";
export default {
    data() {
        return {
            statusUser:null,
            status: [],
            color: '1976D2',
            token: localStorage.getItem('token'),
            statusPerDivisiUser:{},
            nameStatusUser : null,
        };
    },
    watch : {
        "color"(){
            this.getStatusDivisiUser();
        }
    },
    created(){ 
        this.getStatus();  
    },
    methods: {
        getStatusDivisiUser(){
            if(this.statusUser != null){
                this.axios.get('api/count-per-divuser-status/'+this.statusUser, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                    this.nameStatusUser = response.data[0].name;
                    this.statusPerDivisiUser = {
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
        printstatusPerDivisiUser(){
            let bar = document.getElementById("statusPerDivisiUser");
            const exp = new Exporter([bar]);
            exp.export_pdf().then((pdf) => {
                pdf.save('Statistik Request Divisi User Per Status  '+this.nameStatusUser);
            });
        },
        
        getStatus(){
            this.axios.get('api/get-tahun', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.status = response.data.grafik1;
            });
        },
    }
}

</script>