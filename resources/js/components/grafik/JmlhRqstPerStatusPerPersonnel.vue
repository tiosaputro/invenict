<template>
<Toast/>
    <div class="card">
        <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
            <Button class="p-button-lg p-button-rounded p-button-danger" v-if="this.ictPersonnel" @click="printPerStatusIct()" icon="pi pi-file-pdf" label="PDF"/>
            <ColorPicker v-model="color" v-if="this.ictPersonnel"/> 
        </div>
        <div class="p-text-center" id="PerStatusIct">
            <h5 style="font-size:20pt; font-weight: bold;">Statistik Per Status Request Per ICT-Personnel</h5>
            <Dropdown @change="getPerStatusIct()" :showClear="true" v-model="ictPersonnel" :options="personnel" optionValue="name" optionLabel="name" placeholder="Pilih Personnel"/>
            <Chart type="bar" :data="PerStatusIct" v-if="this.ictPersonnel" />
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
            PerStatusIct:{},
            ictPersonnel: null,
            personnel:[],
            id : localStorage.getItem('id'),
            checkname : [],
            checkto : []
        };
    },
    watch : {
        "color"(){
            this.getPerStatusIct();
        }
    },
    created(){ 
        this.cekUser();  
    },
    methods: {
        cekUser(){
        if(this.id){
        this.axios.get('api/cek-user/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.checkname = response.data.map((x)=> x.name)
            this.checkto = response.data.map((x)=> x.to)
            if(this.checkname.includes("Per Status Per Personnel") || this.checkto.includes("/req-per-status-per-personnel")){
            this.getPersonnel();
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
        getPersonnel(){
            this.axios.get('api/get-tahun', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.personnel = response.data.personnell;
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
        getPerStatusIct(){
            if(this.ictPersonnel !=null){
                this.axios.get('api/count-per-status-ict/'+ this.ictPersonnel, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                    this.PerStatusIct = {
                        labels : response.data.map((x)=>x.status),
                        datasets : [
                            {
                                label: this.ictPersonnel,
                                backgroundColor: '#'+this.color,
                                data: response.data.map((x)=>x.jumlah)
                            },
                        ]
                    }
                });
            }
        },
        printPerStatusIct(){
            let bar = document.getElementById("PerStatusIct");
            const exp = new Exporter([bar]);
            exp.export_pdf().then((pdf) => {
                pdf.save('Statistik Request Per Status Per ICT-Personnel '+this.ictPersonnel);
            });
        },
    }
}

</script>