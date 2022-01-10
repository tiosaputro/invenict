<template>
<Toast/>
    <div class="card">
        <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
            <Button class="p-button-lg p-button-rounded p-button-danger" v-if="this.statusRequestor" @click="printstatusPerDivisiRequestor()" icon="pi pi-file-pdf" label="PDF"/>
            <ColorPicker v-model="color" v-if="this.statusRequestor"/> 
        </div>
        <div class="p-text-center" id="statusPerDivisiRequestor">
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
            nameStatusRequestor:null,
            id : localStorage.getItem('id'),
            checkname : [],
            checkto : []
        };
    },
    watch : {
        "color"(){
            this.getStatusDivisiRequestor();
        }
    },
    created(){ 
        this.cekUser();  
    },
    methods: {
        cekUser(){
        this.axios.get('api/cek-user/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.checkname = response.data.map((x)=> x.name)
            this.checkto = response.data.map((x)=> x.to)
            console.log(this.check)
            if(this.checkname.includes("Statistik Permintaan Divisi Requestor Per Status") || this.checkto.includes("/req-per-divisi-req-per-status")){
            this.getStatus();
            }
            else {
            this.$toast.add({
                severity:'error', summary: '403', detail:'Cannot Access This Page'
            });
            setTimeout( () => this.$router.push('/dashboard'),2000);
            }
        });
        },
        getStatus(){
            this.axios.get('api/get-tahun', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.status = response.data.grafik1;
            }).catch(error=>{
          if (error.response.status == 401){
            this.$toast.add({
            severity:'error', summary: 'Error', detail:'Sesi Login Expired'
          });
          localStorage.clear();
          localStorage.setItem("Expired","true")
          setTimeout( () => this.$router.push('/login'),2000);
           }
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
        
        printstatusPerDivisiRequestor(){
            let bar = document.getElementById("statusPerDivisiRequestor");
            const exp = new Exporter([bar]);
            exp.export_pdf().then((pdf) => {
                pdf.save('Statistik Request Divisi Requestor Per Status ' +this.nameStatusRequestor);
            });
        },
    }
}

</script>