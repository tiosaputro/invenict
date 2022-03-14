"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[274],{90274:(e,t,a)=>{a.r(t),a.d(t,{default:()=>N});var o=a(48191),r={class:"p-grid crud-demo"},i={class:"p-col-12"},n={class:"card"},l=(0,o.createElementVNode)("h4",null,"ICT Request (Detail) ",-1),s={class:"table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between"},c={style:{width:"110px"}},d={class:"p-input-icon-left"},u=(0,o.createElementVNode)("i",{class:"pi pi-search"},null,-1),p=(0,o.createTextVNode)(" Not Found "),h=(0,o.createTextVNode)(" Loading data. Please wait. "),m={class:"p-grid p-dir-col"},f={class:"p-col"},g={class:"box"};var v=a(6358);const k={data:function(){return{loading:!0,detail:[],kode:[],filters:{global:{value:null,matchMode:v.a6.CONTAINS}},code:this.$route.params.code,token:localStorage.getItem("token"),checkname:[],checkto:[],id:localStorage.getItem("id")}},mounted:function(){this.cekUser()},methods:{cekUser:function(){var e=this;this.id?this.axios.get("/api/cek-user/"+this.id,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.checkto=t.data.map((function(e){return e.to})),e.checkname=t.data.map((function(e){return e.name})),e.checkname.includes("Approval Atasan")||e.checkto.includes("/ict-request-divisi1")?(e.getIctDetail(),e.getNoreq()):(e.$toast.add({severity:"error",summary:"403",detail:"Cannot Access This Page"}),setTimeout((function(){return e.$router.push("/dashboard")}),2e3))})):this.$router.push("/login")},getIctDetail:function(){var e=this;this.axios.get("/api/ict-detail/"+this.$route.params.code,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.detail=t.data,e.loading=!1})).catch((function(t){401==t.response.status&&(e.$toast.add({severity:"error",summary:"Error",detail:"Sesi Login Expired"}),localStorage.clear(),localStorage.setItem("Expired","true"),setTimeout((function(){return e.$router.push("/login")}),2e3))}))},getNoreq:function(){var e=this;this.axios.get("/api/get-noreq/"+this.$route.params.code,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.kode=t.data}))},DeleteIct:function(e){var t=this;this.$confirm.require({message:"Data ini benar-benar akan dihapus?",header:"Delete Confirmation",icon:"pi pi-info-circle",acceptClass:"p-button-danger",acceptLabel:"Ya",rejectLabel:"Tidak",accept:function(){t.$toast.add({severity:"info",summary:"Confirmed",detail:"Record deleted",life:3e3}),t.axios.delete("/api/delete-ict-detail/"+e,{headers:{Authorization:"Bearer "+t.token}}),t.getIctDetail()},reject:function(){}})}},render:function(e,t,a,v,k,N){var b=(0,o.resolveComponent)("Toast"),C=(0,o.resolveComponent)("ConfirmDialog"),V=(0,o.resolveComponent)("Toolbar"),w=(0,o.resolveComponent)("InputText"),x=(0,o.resolveComponent)("Column"),T=(0,o.resolveComponent)("Button"),y=(0,o.resolveComponent)("DataTable");return(0,o.openBlock)(),(0,o.createElementBlock)("div",r,[(0,o.createElementVNode)("div",i,[(0,o.createElementVNode)("div",n,[(0,o.createVNode)(b),(0,o.createVNode)(C),(0,o.createVNode)(V,{class:"p-mb-4"},{left:(0,o.withCtx)((function(){return[l]})),_:1}),(0,o.createVNode)(y,{value:k.detail,paginator:!0,rows:25,loading:k.loading,filters:k.filters,rowHover:!0,paginatorTemplate:"FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown",rowsPerPageOptions:[5,10,15,20,25,30,35,40,45,50],currentPageReportTemplate:"Showing {first} to {last} of {totalRecords} ICT Request (Detail)",responsiveLayout:"scroll"},{header:(0,o.withCtx)((function(){return[(0,o.createElementVNode)("div",s,[(0,o.createElementVNode)("label",c,"No. Request: "+(0,o.toDisplayString)(k.kode.noreq),1),(0,o.createElementVNode)("span",d,[u,(0,o.createVNode)(w,{modelValue:k.filters.global.value,"onUpdate:modelValue":t[0]||(t[0]=function(e){return k.filters.global.value=e}),placeholder:"Search. . ."},null,8,["modelValue"])])])]})),empty:(0,o.withCtx)((function(){return[p]})),loading:(0,o.withCtx)((function(){return[h]})),footer:(0,o.withCtx)((function(){return[(0,o.createElementVNode)("div",m,[(0,o.createElementVNode)("div",f,[(0,o.createElementVNode)("div",g,[(0,o.createVNode)(T,{label:"Kembali",class:"p-button-raised p-button p-mr-2 p-mb-2",icon:"pi pi-chevron-left",onClick:t[1]||(t[1]=function(t){return e.$router.push({name:"Ict Request Divisi 1"})})})])])])]})),default:(0,o.withCtx)((function(){return[(0,o.createVNode)(x,{field:"ireq_type",header:"Tipe Request",sortable:!0,style:{"min-width":"12rem"}}),(0,o.createVNode)(x,{field:"invent_code",header:"Kode",sortable:!0,style:{"min-width":"12rem"}}),(0,o.createVNode)(x,{field:"invent_desc",header:"Deskripsi",sortable:!0,style:{"min-width":"12rem"}})]})),_:1},8,["value","loading","filters"])])])])}},N=k}}]);