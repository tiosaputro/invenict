<template>
    <div class="card">
        <div class="table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between">
            <Button class="p-button-lg p-button-rounded p-button-danger" @click="printstatusPerIctPersonnel()" icon="pi pi-file-pdf" label="PDF"/>
            <ColorPicker v-model="color"/> 
        </div>
        <div class="p-text-center" id="statusPerIctPersonnel">
            <h5 style="font-size:20pt; font-weight: bold;">Statistik Request Per ICT-Personnel</h5>
            <Chart type="bar" :data="statusPerIctPersonnel"/>
        </div>
    </div>
</template>
<script>
import moment from 'moment';
import Exporter from "vue-chartjs-exporter";
export default {
    data() {
        return {
            color: '1976D2',
            token: localStorage.getItem('token'),
            statusPerIctPersonnel:{},
            date: new Date(),
        };
    },
    watch : {
        "color"(){
            this.getPersonnel();
        }
    },
    created(){ 
        this.getPersonnel(); 
    },
    methods: {
        getPersonnel(){
            this.axios.get('api/get-tahun', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
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
            });
        },
        printstatusPerIctPersonnel(){
            const formattedDate = moment(this.date).format('DD MMM YYYY')
            console.log(formattedDate)
            let bar = document.getElementById("statusPerIctPersonnel");
            const exp = new Exporter([bar]);
            exp.export_pdf().then((pdf) => {
                pdf.save('Statistik Request Per ICT-Personnel ' + formattedDate);
            });
        },
    }
}

</script>