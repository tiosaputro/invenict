"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[4355],{94355:(e,t,o)=>{o.r(t),o.d(t,{default:()=>w});var a=o(5166),r={class:"p-grid crud-demo"},n={class:"p-col-12"},i={class:"card"},s=(0,a.createElementVNode)("h4",null,"ICT Request (Verifikasi) ",-1),l={class:"table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between"},c={style:{width:"110px"}},u={class:"p-input-icon-left"},d=(0,a.createElementVNode)("i",{class:"pi pi-search"},null,-1),p=(0,a.createTextVNode)(" Not Found "),m=(0,a.createTextVNode)(" Loading ICT Request (Detail) data. Please wait. "),h={class:"p-grid p-dir-col"},f={class:"p-col"},v={class:"box"},g={class:"p-fluid"},b={class:"p-field p-grid"},k=(0,a.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"100px"}},"Alasan",-1),N={class:"p-col-3 p-md-6"},V={key:0,class:"p-error"};var C=o(6358);const x={data:function(){return{loading:!0,dialogReject:!1,submitted:!1,verif:[],kode:[],reason:{ket:null},filters:{global:{value:null,matchMode:C.a6.CONTAINS}},code:this.$route.params.code,token:localStorage.getItem("token")}},mounted:function(){this.getIctDetail(),this.getNoreq()},methods:{Approve:function(){var e=this;this.$confirm.require({message:"Approval Permohonan Dilanjutkan?",header:"ICT Request    ",icon:"pi pi-info-circle",acceptClass:"p-button",acceptLabel:"Ya",rejectLabel:"Tidak",accept:function(){e.$toast.add({severity:"info",summary:"Confirmed",detail:"Permohonan Dilanjutkan"}),e.axios.get("/api/updateStatusPermohonan/"+e.$route.params.code,{headers:{Authorization:"Bearer "+e.token}}),setTimeout((function(){return e.$router.push("/ict-request-desc")}),1e3)},reject:function(){}})},updateReject:function(){var e=this;this.submitted=!0,null!=this.reason.ket&&this.axios.put("/api/updateStatusReject/"+this.$route.params.code,this.reason,{headers:{Authorization:"Bearer "+this.token}}).then((function(){e.dialogReject=!1,e.$toast.add({severity:"info",summary:"Confirmed",detail:"Berhasil Direject"}),setTimeout((function(){return e.$router.push("/ict-request-desc")}),1e3)}))},cancelReject:function(){this.dialogReject=!1,this.reason.ket=null,this.submitted=!1},getIctDetail:function(){var e=this;this.axios.get("/api/get-verif/"+this.$route.params.code,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.verif=t.data,e.loading=!1})).catch((function(t){403==t.response.status?(e.$toast.add({severity:"error",summary:"Error",detail:"Cannot Access This Page"}),setTimeout((function(){return e.$router.push("/Dashboard")}),2e3)):401==t.response.status&&(e.$toast.add({severity:"error",summary:"Error",detail:"Sesi Login Expired"}),localStorage.clear(),localStorage.setItem("Expired","true"),setTimeout((function(){return e.$router.push("/login")}),2e3))}))},getNoreq:function(){var e=this;this.axios.get("/api/get-noreq/"+this.$route.params.code,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.kode=t.data}))}},render:function(e,t,o,C,x,w){var R=this,T=(0,a.resolveComponent)("Toast"),y=(0,a.resolveComponent)("ConfirmDialog"),E=(0,a.resolveComponent)("Toolbar"),j=(0,a.resolveComponent)("InputText"),P=(0,a.resolveComponent)("Column"),q=(0,a.resolveComponent)("Button"),D=(0,a.resolveComponent)("DataTable"),$=(0,a.resolveComponent)("Textarea"),A=(0,a.resolveComponent)("Dialog");return(0,a.openBlock)(),(0,a.createElementBlock)("div",r,[(0,a.createElementVNode)("div",n,[(0,a.createElementVNode)("div",i,[(0,a.createVNode)(T),(0,a.createVNode)(y),(0,a.createVNode)(E,{class:"p-mb-4"},{left:(0,a.withCtx)((function(){return[s]})),_:1}),(0,a.createVNode)(D,{value:x.verif,paginator:!0,rows:25,loading:x.loading,filters:x.filters,rowHover:!0,paginatorTemplate:"FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown",rowsPerPageOptions:[5,10,15,20,25,30,35,40,45,50],currentPageReportTemplate:"Showing {first} to {last} of {totalRecords} ICT Request (Verifikasi)",responsiveLayout:"scroll"},{header:(0,a.withCtx)((function(){return[(0,a.createElementVNode)("div",l,[(0,a.createElementVNode)("label",c,"No. Request: "+(0,a.toDisplayString)(x.kode.noreq),1),(0,a.createElementVNode)("span",u,[d,(0,a.createVNode)(j,{modelValue:x.filters.global.value,"onUpdate:modelValue":t[0]||(t[0]=function(e){return x.filters.global.value=e}),placeholder:"Search. . ."},null,8,["modelValue"])])])]})),empty:(0,a.withCtx)((function(){return[p]})),loading:(0,a.withCtx)((function(){return[m]})),footer:(0,a.withCtx)((function(){return[(0,a.createElementVNode)("div",h,[(0,a.createElementVNode)("div",f,[(0,a.createElementVNode)("div",v,[(0,a.createVNode)(q,{label:"Kembali",class:"p-button-raised p-button p-mr-2 p-mb-2",icon:"pi pi-chevron-left",onClick:t[1]||(t[1]=function(t){return e.$router.push({name:"Desc"})})}),(0,a.createVNode)(q,{label:"Approve",class:"p-button-raised p-button-success p-mr-2 p-mb-2",icon:"pi pi-check-square",onClick:t[2]||(t[2]=function(e){return w.Approve()})}),(0,a.createVNode)(q,{label:"Reject",class:"p-button-raised p-button-danger p-mr-2 p-mb-2",icon:"pi pi-times-circle",onClick:t[3]||(t[3]=function(e){return R.dialogReject=!0})})])])])]})),default:(0,a.withCtx)((function(){return[(0,a.createVNode)(P,{field:"ireq_type",header:"Tipe Request",sortable:!0,style:{"min-width":"12rem"}}),(0,a.createVNode)(P,{field:"invent_code",header:"Kode",sortable:!0,style:{"min-width":"12rem"}}),(0,a.createVNode)(P,{field:"invent_desc",header:"Deskripsi",sortable:!0,style:{"min-width":"12rem"}})]})),_:1},8,["value","loading","filters"]),(0,a.createVNode)(A,{visible:x.dialogReject,"onUpdate:visible":t[7]||(t[7]=function(e){return x.dialogReject=e}),style:{width:"400px"},header:"ICT Request",modal:!0,class:"p-fluid"},{footer:(0,a.withCtx)((function(){return[(0,a.createVNode)(q,{label:"Yes",onClick:t[5]||(t[5]=function(e){return w.updateReject()}),class:"p-button",autofocus:""}),(0,a.createVNode)(q,{label:"No",onClick:t[6]||(t[6]=function(e){return w.cancelReject()}),class:"p-button-text"})]})),default:(0,a.withCtx)((function(){return[(0,a.createElementVNode)("div",g,[(0,a.createElementVNode)("div",b,[k,(0,a.createElementVNode)("div",N,[(0,a.createVNode)($,{autoResize:!0,type:"text",modelValue:x.reason.ket,"onUpdate:modelValue":t[4]||(t[4]=function(e){return x.reason.ket=e}),rows:"5",cols:"30",placeholder:"Masukan Alasan",class:(0,a.normalizeClass)({"p-invalid":x.submitted&&!x.reason.ket})},null,8,["modelValue","class"]),x.submitted&&!x.reason.ket?((0,a.openBlock)(),(0,a.createElementBlock)("small",V," Alasan Harus Diisi ")):(0,a.createCommentVNode)("",!0)])])])]})),_:1},8,["visible"])])])])}},w=x}}]);