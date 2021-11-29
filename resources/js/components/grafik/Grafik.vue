<template>
<Toast />

<div class="card">
    <ColorPicker v-model="color" :inline="true" @click="getTahun()"/>
</div>
<div class="card">
    <div class="p-text-left">
        <Button class="p-button-lg p-button-rounded p-button-danger" @click="printperStatus()" icon="pi pi-print" label="PDF"/>
    </div>
    <div class="p-text-center" id="perStatus">
        <h5 style="font-size:20pt; font-weight: bold;">Statistik Permintaan User</h5>
        <Chart type="bar" :data="perStatus" />
    </div>
</div>
<div class="card">
    <div class="p-text-left">
        <Button class="p-button-lg p-button-rounded p-button-danger" @click="printPerDivisiUserTahun()" v-if="this.tahunUser" icon="pi pi-print" label="PDF"/>
    </div>
    <div class="p-text-center" id="perDivisiUserTahun">
        <h5 style="font-size:20pt; font-weight: bold;">Statistik Request Divisi User Per Tahun</h5>
        <Dropdown @change="getPerDivisiUserTahun()" :showClear="true" v-model="tahunUser" :options="tahunn" optionValue="tahun" optionLabel="tahun" placeholder="Pilih Tahun" />
        <Chart type="bar" :data="perDivisiUserTahun" v-if="this.tahunUser" />
    </div>
</div>
<div class="card">
    <div class="p-text-left">
        <Button class="p-button-lg p-button-rounded p-button-danger" @click="printperDivisiRequestorTahun()" v-if="this.tahunRequestor" icon="pi pi-print" label="PDF"/>
    </div>
    <div class="p-text-center" id="perDivisiRequestorTahun">
        <h5 style="font-size:20pt; font-weight: bold;">Statistik Request Divisi Requestor Per Tahun</h5>
        <Dropdown @change="getPerDivisiRequestorTahun()" :showClear="true" v-model="tahunRequestor" :options="tahunn" optionValue="tahun" optionLabel="tahun" placeholder="Pilih Tahun" />
        <Chart type="bar" :data="perDivisiRequestorTahun" v-if="this.tahunRequestor" />
    </div>
</div>
<div class="card">
    <div class="p-text-left">
        <Button class="p-button-lg p-button-rounded p-button-danger" @click="printperDivisiUserBulan()" v-if="this.tahunnUser && this.bulanUser" icon="pi pi-print" label="PDF"/>
    </div>
    <div class="p-text-center" id="perDivisiUserBulan">
        <h5 style="font-size:20pt; font-weight: bold;">Statistik Request Divisi User Per Bulan</h5>
        <Dropdown @change="getTahunUser()" :showClear="true" v-model="bulanUser" :options="bulan" optionValue="code" optionLabel="name" placeholder="Pilih Bulan" class="p-mr-2 p-mb-2" />
        <Dropdown @change="getPerDivisiUserBulan()" :showClear="true" v-model="tahunnUser" :options="tahunnn" optionValue="tahun" optionLabel="tahun" placeholder="Pilih Tahun" class="p-mr-2 p-mb-2" v-if="this.bulanUser" />
        <Chart type="bar" :data="perDivisiUserBulan" v-if="this.tahunnUser && this.bulanUser" />
    </div>
</div>
<div class="card">
    <div class="p-text-left">
        <Button class="p-button-lg p-button-rounded p-button-danger" @click="printperDivisiRequestorBulan()" v-if="this.tahunnRequestor && this.bulanRequestor" icon="pi pi-print" label="PDF"/>
    </div>
    <div class="p-text-center" id="perDivisiRequestorBulan">
        <h5 style="font-size:20pt; font-weight: bold;">Statistik Request Divisi Requestor Per Bulan</h5>
        <Dropdown @change="getTahunRequestor()" :showClear="true" v-model="bulanRequestor" :options="bulan" optionValue="code" optionLabel="name" placeholder="Pilih Bulan" class="p-mr-2 p-mb-2" />
        <Dropdown @change="getPerDivisiRequestorBulan()" :showClear="true" v-model="tahunnRequestor" :options="tahunnnn" optionValue="tahun" optionLabel="tahun" placeholder="Pilih Tahun" class="p-mr-2 p-mb-2" v-if="this.bulanRequestor" />
        <Chart type="bar" :data="perDivisiRequestorBulan" v-if="this.tahunnRequestor && this.bulanRequestor" />
    </div>
</div>
<div class="card">
    <div class="p-text-left">
        <Button class="p-button-lg p-button-rounded p-button-danger" @click="printstatusPerDivisiUser()" v-if="this.statusUser" icon="pi pi-print" label="PDF"/>
    </div>
    <div class="p-text-center" id="statusPerDivisiUser">
        <h5 style="font-size:20pt; font-weight: bold;">Statistik Request Divisi User Per Status</h5>
        <Dropdown @change="getStatusDivisiUser()" :showClear="true" v-model="statusUser" :options="status" optionValue="code" optionLabel="name" placeholder="Pilih Status"/>
        <Chart type="bar" :data="statusPerDivisiUser" v-if="this.statusUser" />
    </div>
</div>
<div class="card">
    <div class="p-text-left">
        <Button class="p-button-lg p-button-rounded p-button-danger" @click="printstatusPerDivisiRequestor()" v-if="this.statusRequestor" icon="pi pi-print" label="PDF"/>
    </div>
    <div class="p-text-center" id="statusPerDivisiRequestor">
        <h5 style="font-size:20pt; font-weight: bold;">Statistik Request Divisi Requestor Per Status</h5>
        <Dropdown @change="getStatusDivisiRequestor()" :showClear="true" v-model="statusRequestor" :options="status" optionValue="code" optionLabel="name" placeholder="Pilih Status"/>
        <Chart type="bar" :data="statusPerDivisiRequestor" v-if="this.statusRequestor" />
    </div>
</div>
<div class="card">
    <div class="p-text-left">
        <Button class="p-button-lg p-button-rounded p-button-danger" @click="printstatusPerIctPersonnel()" icon="pi pi-print" label="PDF"/>
    </div>
    <div class="p-text-center" id="statusPerIctPersonnel">
        <h5 style="font-size:20pt; font-weight: bold;">Statistik Request Per ICT-Personnel</h5>
        <Chart type="bar" :data="statusPerIctPersonnel"/>
    </div>
</div>
<div class="card">
    <div class="p-text-left">
        <Button class="p-button-lg p-button-rounded p-button-danger" @click="printPerStatusIct()" v-if="this.ictPersonnel" icon="pi pi-print" label="PDF"/>
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
            perStatus:{},
            perDivisiUserTahun: {},
            perDivisiRequestorTahun:{},
            perDivisiUserBulan: {},
            perDivisiRequestorBulan:{},
            statusPerDivisiUser:{},
            statusPerDivisiRequestor:{},
            statusPerIctPersonnel:{},
            PerStatusIct:{},
            dataset:[],
            bulanRequestor:null,
            bulanUser:null,
            tahunUser:null,
            tahunRequestor : null,
            tahunnUser:null,
            tahunnRequestor : null,
            statusRequestor: null,
            tahunn:[],
            tahunnn:[],
            tahunnnn:[],
            bulan: [],
            status: [],
            personnel:[],
            statusUser:null,
            ictPersonnel:null,
            nameBulanUser:null,
            nameBulanRequestor:null,
            nameStatusRequestor: null,
            nameStatusUser : null,
        }
    },
    created(){   
        this.getTahun(); 
    },
    methods: {
        printPerDivisiUserTahun(){
            let bar = document.getElementById("perDivisiUserTahun");
            const exp = new Exporter([bar]);
            exp.export_pdf().then((pdf) => {
                pdf.save('Statistik Request Divisi User Tahun '+this.tahunUser);
            });
        },
        printperDivisiRequestorTahun(){
            let bar = document.getElementById("perDivisiRequestorTahun");
            const exp = new Exporter([bar]);
            exp.export_pdf().then((pdf) => {
                pdf.save('Statistik Request Divisi Requestor Tahun ' +this.tahunRequestor);
            });
        },
        printperDivisiUserBulan(){
            let bar = document.getElementById("perDivisiUserBulan");
            const exp = new Exporter([bar]);
            exp.export_pdf().then((pdf) => {
                pdf.save('Statistik Request Divisi User Bulan ' +this.nameBulanUser);
            });
        },
        printperDivisiRequestorBulan(){
            let bar = document.getElementById("perDivisiRequestorBulan");
            const exp = new Exporter([bar]);
            exp.export_pdf().then((pdf) => {
                pdf.save('Statistik Request Divisi Requestor Bulan '+this.nameBulanRequestor);
            });
        },
        printstatusPerDivisiUser(){
            let bar = document.getElementById("statusPerDivisiUser");
            const exp = new Exporter([bar]);
            exp.export_pdf().then((pdf) => {
                pdf.save('Statistik Request Divisi User Per Status  '+this.nameStatusUser);
            });
        },
        printstatusPerDivisiRequestor(){
            let bar = document.getElementById("statusPerDivisiRequestor");
            const exp = new Exporter([bar]);
            exp.export_pdf().then((pdf) => {
                pdf.save('Statistik Request Divisi Requestor Per Status ' +this.nameStatusRequestor);
            });
        },
        printstatusPerIctPersonnel(){
            let bar = document.getElementById("statusPerIctPersonnel");
            const exp = new Exporter([bar]);
            exp.export_pdf().then((pdf) => {
                pdf.save('Statistik Request Per ICT-Personnel.pdf');
            });
        },
        printPerStatusIct(){
            let bar = document.getElementById("PerStatusIct");
            const exp = new Exporter([bar]);
            exp.export_pdf().then((pdf) => {
                pdf.save('Statistik Per Status Request Per ICT-Personnel '+this.ictPersonnel);
            });
        },
        printperStatus(){
            let bar = document.getElementById("perStatus");
            const exp = new Exporter([bar]);
            exp.export_pdf().then((pdf) => {
                pdf.save("Statistik Permintaan User.pdf");
            });
        },
        getTahun(){
            this.axios.get('api/get-tahun', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                this.tahunn = response.data.grafik;
                this.status = response.data.grafik1;
                this.bulan = response.data.grafik2;
                this.statusPerIctPersonnel = {
                        labels : response.data.personnel.map((x)=>x.ireq_assigned_to),
                        datasets : [
                            {
                                label:'ICT Personnel',
                                backgroundColor: '#'+this.color,
                                data: response.data.personnel.map((x)=>x.jumlah)
                            },
                        ]
                    }
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
        getTahunUser(){
            this.tahunnUser = null;
            if(this.bulanUser != null){
                this.axios.get('api/get-tahun-user/'+this.bulanUser, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                    this.tahunnn = response.data;
                });
            }
        },
        getTahunRequestor(){
            this.tahunnRequestor = null;
            if(this.bulanRequestor != null){
                this.axios.get('api/get-tahun-requestor/'+this.bulanRequestor, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
                    this.tahunnnn = response.data;
                });
            }
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
        getPerDivisiUserBulan(){
            if(this.tahunnUser != null &&
                this.bulanUser != null){
                this.axios.get('api/count-per-divuser-bulan/'+this.tahunnUser +'/'+this.bulanUser, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{ 
                    this.nameBulanUser = response.data[0].bulan + this.tahunnUser;
                    this.kosong = false;
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
        getPerDivisiRequestorBulan(){
            if(this.tahunnRequestor != null &&
                this.bulanRequestor != null){
                this.axios.get('api/count-per-divreq-bulan/'+this.tahunnRequestor +'/'+this.bulanRequestor, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{ 
                    this.nameBulanRequestor = response.data[0].bulan + this.tahunnRequestor;
                    this.kosong = false;
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
        }

    },
}

</script>
