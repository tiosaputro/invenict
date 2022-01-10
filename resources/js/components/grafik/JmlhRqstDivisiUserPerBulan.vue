<template>
<Toast/>
    <div class="card">
        <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
            <Button class="p-button-lg p-button-rounded p-button-danger" @click="printperDivisiUserBulan()" icon="pi pi-file-pdf" label="PDF"/>
            <ColorPicker v-model="color" v-if="this.tahunnUser && this.bulanUser" /> 
        </div>
        <div class="p-text-center" id="perStatus">
            <h5 style="font-size:20pt; font-weight: bold;">Statistik Request Divisi User Per Bulan</h5>
            <Dropdown @change="getTahunUser()" :showClear="true" v-model="bulanUser" :options="bulan" optionValue="code" optionLabel="name" placeholder="Pilih Bulan" class="p-mr-2 p-mb-2" />
            <Dropdown @change="getPerDivisiUserBulan()" :showClear="true" v-model="tahunnUser" :options="tahunn" optionValue="tahun" optionLabel="tahun" placeholder="Pilih Tahun" class="p-mr-2 p-mb-2" v-if="this.bulanUser" />
            <Chart type="bar" :data="perDivisiUserBulan" v-if="this.tahunnUser && this.bulanUser" />
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
            perDivisiUserBulan:{},
            bulanUser:null,
            tahunnUser:null,
            tahun:null,
            nameBulanUser: null,
            tahunn:[],
            bulan:[],
            id : localStorage.getItem('id'),
            checkname : [],
            checkto : []
        };
    },
    watch : {
        "color"(){
            this.getPerDivisiUserBulan();
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
            if(this.checkname.includes("Statistik Permintaan Divisi User Per Bulan") || this.checkto.includes("/req-per-divisi-user-per-bulan")){
            this.getBulan();
            }
            else {
            this.$toast.add({
                severity:'error', summary: '403', detail:'Cannot Access This Page'
            });
            setTimeout( () => this.$router.push('/dashboard'),2000);
            }
        });
        },
        getBulan(){
            this.axios.get('api/get-tahun', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.bulan = response.data.grafik2;
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
        getTahunUser(){
            this.tahunnUser = null;
            if(this.bulanUser != null){
                this.axios.get('api/get-tahun-user/'+this.bulanUser, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                    this.tahunn = response.data;
                });
            }
        },
        getPerDivisiUserBulan(){
            if(this.tahunnUser != null &&
                this.bulanUser != null){
                this.axios.get('api/count-per-divuser-bulan/'+this.tahunnUser +'/'+this.bulanUser, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{ 
                    this.nameBulanUser = response.data[0].bulan + this.tahunnUser;
                    this.perDivisiUserBulan = {
                        labels : response.data.map((x)=>x.div_name),
                        datasets : [
                            {
                                label: this.nameBulanUser,
                                backgroundColor: '#'+this.color,
                                data: response.data.map((x)=>x.jumlah)
                            },
                        ]
                        
                    }
                }).catch(error => console.log(error.response))
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