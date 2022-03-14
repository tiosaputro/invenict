"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[7077],{7077:(e,t,o)=>{o.r(t),o.d(t,{default:()=>b});var r=o(48191),a={class:"p-grid crud-demo"},n={class:"p-col-12"},i={class:"card"},l=(0,r.createElementVNode)("div",{class:"p-grid p-dir-col"},[(0,r.createElementVNode)("div",{class:"p-col"},[(0,r.createElementVNode)("h4",null,"Referensi - Lookups")])],-1),c={class:"table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between"},s={class:"p-input-icon-left"},d=(0,r.createElementVNode)("i",{class:"pi pi-search"},null,-1),u=(0,r.createTextVNode)(" Not Found "),p=(0,r.createTextVNode)(" Loading Lookups data. Please wait. "),f={class:"p-grid p-dir-col"},m={class:"p-col"},h={class:"box"};var k=o(6358);const g={data:function(){return{loading:!0,token:localStorage.getItem("token"),ref:[],filters:{global:{value:null,matchMode:k.a6.CONTAINS}},id:localStorage.getItem("id"),checkname:[],checkto:[]}},created:function(){this.cekUser()},methods:{cekUser:function(){var e=this;this.axios.get("api/cek-user/"+this.id,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.checkto=t.data.map((function(e){return e.to})),e.checkname=t.data.map((function(e){return e.name})),e.checkname.includes("Lookups")||e.checkto.includes("/referensi-lookups")?e.getRef():(e.$toast.add({severity:"error",summary:"403",detail:"Cannot Access This Page"}),setTimeout((function(){return e.$router.push("/dashboard")}),2e3))}))},getRef:function(){var e=this;this.axios.get("api/ref",{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.ref=t.data,e.loading=!1})).catch((function(t){401==t.response.status&&(e.$toast.add({severity:"error",summary:"Error",detail:"Sesi Login Expired"}),localStorage.clear(),localStorage.setItem("Expired","true"),setTimeout((function(){return e.$router.push("/login")}),2e3))}))},DeleteRef:function(e,t){var o=this;this.$confirm.require({message:"Data ini benar-benar akan dihapus?",header:"Delete Confirmation",icon:"pi pi-info-circle",acceptClass:"p-button-danger",acceptLabel:"Ya",rejectLabel:"Tidak",accept:function(){o.$toast.add({severity:"info",summary:"Confirmed",detail:"Record deleted",life:3e3}),o.axios.delete("api/delete-ref/"+e+"/"+t,{headers:{Authorization:"Bearer "+o.token}}),o.getRef()},reject:function(){}})},CetakPdf:function(){window.open("api/report-lookups-pdf")},CetakExcel:function(){window.open("api/report-lookups-excel")}},render:function(e,t,o,k,g,b){var v=(0,r.resolveComponent)("Toast"),C=(0,r.resolveComponent)("ConfirmDialog"),N=(0,r.resolveComponent)("Toolbar"),V=(0,r.resolveComponent)("Button"),w=(0,r.resolveComponent)("InputText"),x=(0,r.resolveComponent)("Column"),E=(0,r.resolveComponent)("DataTable"),y=(0,r.resolveDirective)("tooltip");return(0,r.openBlock)(),(0,r.createElementBlock)("div",a,[(0,r.createElementVNode)("div",n,[(0,r.createElementVNode)("div",i,[(0,r.createVNode)(v),(0,r.createVNode)(C),(0,r.createVNode)(N,{class:"p-mb-4"},{left:(0,r.withCtx)((function(){return[l]})),_:1}),(0,r.createVNode)(E,{value:g.ref,paginator:!0,rows:10,filters:g.filters,"onUpdate:filters":t[2]||(t[2]=function(e){return g.filters=e}),loading:g.loading,rowHover:!0,paginatorTemplate:"FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown",rowsPerPageOptions:[5,10,25],currentPageReportTemplate:"Showing {first} to {last} of {totalRecords} Referensi Lookups"},{header:(0,r.withCtx)((function(){return[(0,r.createElementVNode)("div",c,[(0,r.createVNode)(V,{label:"Add",class:"p-button-raised",icon:"pi pi-plus",onClick:t[0]||(t[0]=function(t){return e.$router.push("/Add-referensi-lookups")})}),(0,r.createElementVNode)("span",s,[d,(0,r.createVNode)(w,{modelValue:g.filters.global.value,"onUpdate:modelValue":t[1]||(t[1]=function(e){return g.filters.global.value=e}),placeholder:"Search. . ."},null,8,["modelValue"])])])]})),empty:(0,r.withCtx)((function(){return[u]})),loading:(0,r.withCtx)((function(){return[p]})),footer:(0,r.withCtx)((function(){return[(0,r.createElementVNode)("div",f,[(0,r.createElementVNode)("div",m,[(0,r.createElementVNode)("div",h,[(0,r.createVNode)(V,{label:"Pdf",class:"p-button-raised p-button-danger p-mr-2 p-mb-2",icon:"pi pi-file-pdf",onClick:b.CetakPdf},null,8,["onClick"]),(0,r.createVNode)(V,{label:"Excel",class:"p-button-raised p-button-success p-mr-2 p-mb-2",icon:"pi pi-print",onClick:b.CetakExcel},null,8,["onClick"])])])])]})),default:(0,r.withCtx)((function(){return[(0,r.createVNode)(x,{field:"lookup_type",header:"Tipe",sortable:!0,style:{"min-width":"12rem"}}),(0,r.createVNode)(x,{field:"lookup_code",header:"Kode",sortable:!0,style:{"min-width":"12rem"}}),(0,r.createVNode)(x,{field:"lookup_desc",header:"Deskripsi",sortable:!0,style:{"min-width":"12rem"}}),(0,r.createVNode)(x,{field:"lookup_status",header:"Status",sortable:!0,style:{"min-width":"12rem"}}),(0,r.createVNode)(x,{style:{"min-width":"12rem"}},{body:(0,r.withCtx)((function(t){return[(0,r.withDirectives)((0,r.createVNode)(V,{class:"p-button-rounded p-button-info p-mr-2 p-mb-2",icon:"pi pi-pencil",onClick:function(o){return e.$router.push({name:"Edit Referensi Lookups",params:{code:t.data.lookup_code,type:t.data.lookup_type}})}},null,8,["onClick"]),[[y,"Edit",void 0,{left:!0}]]),(0,r.withDirectives)((0,r.createVNode)(V,{icon:"pi pi-trash",class:"p-button-rounded p-button-danger p-mr-2 p-mb-2",onClick:function(e){return b.DeleteRef(t.data.lookup_code,t.data.lookup_type)}},null,8,["onClick"]),[[y,"Delete",void 0,{Right:!0}]])]})),_:1})]})),_:1},8,["value","filters","loading"])])])])}},b=g}}]);