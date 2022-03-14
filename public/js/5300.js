"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[5300],{75300:(e,t,o)=>{o.r(t),o.d(t,{default:()=>p});var a=o(48191),r={class:"p-grid crud-demo"},s={class:"p-col-12"},n={class:"card"},i=(0,a.createElementVNode)("div",{class:"p-grid p-dir-col"},[(0,a.createElementVNode)("div",{class:"p-col"},[(0,a.createElementVNode)("h4",null,"Laporan Request Divisi Requestor Per Status")])],-1),u=(0,a.createTextVNode)(" Loading data. Please wait. "),l={class:"table-header p-text-left"},c={class:"p-grid p-dir-col"},d={class:"p-col"},m={class:"box"};const h={data:function(){var e=this;return{statusRequestor:null,status:[],loading:!1,req:[],token:localStorage.getItem("token"),checkname:[],checkto:[],id:localStorage.getItem("id"),items:[{label:"Pdf",icon:"bi bi-file-earmark-pdf text-danger",command:function(){window.open("api/req-div-req-per-status-pdf/"+e.statusRequestor)}},{label:"Excel",icon:"bi bi-file-earmark-excel text-success",command:function(){window.open("api/req-div-req-per-status-excel/"+e.statusRequestor)}}]}},created:function(){this.cekUser()},methods:{cekUser:function(){var e=this;this.id?this.axios.get("api/cek-user/"+this.id,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.checkto=t.data.map((function(e){return e.to})),e.checkname=t.data.map((function(e){return e.name})),e.checkname.includes("Divisi Requestor Per Status")||e.checkto.includes("/report-div-req-per-status")?e.getStatus():(e.$toast.add({severity:"error",summary:"403",detail:"Cannot Access This Page"}),setTimeout((function(){return e.$router.push("/dashboard")}),2e3))})):this.$router.push("/login")},getStatus:function(){var e=this;this.axios.get("api/get-tahun",{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.status=t.data.grafik1})).catch((function(t){401==t.response.status&&(e.$toast.add({severity:"error",summary:"Error",detail:"Sesi Login Expired"}),localStorage.clear(),localStorage.setItem("Expired","true"),setTimeout((function(){return e.$router.push("/login")}),2e3))}))},getStatusDivisiRequestor:function(){var e=this;null!=this.statusRequestor&&(this.loading=!0,this.axios.get("api/count-per-divreq-status/"+this.statusRequestor,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.req=t.data,e.loading=!1})))}},render:function(e,t,o,h,p,f){var v=(0,a.resolveComponent)("Toast"),g=(0,a.resolveComponent)("ConfirmDialog"),k=(0,a.resolveComponent)("Toolbar"),q=(0,a.resolveComponent)("Dropdown"),V=(0,a.resolveComponent)("Column"),C=(0,a.resolveComponent)("SplitButton"),w=(0,a.resolveComponent)("DataTable");return(0,a.openBlock)(),(0,a.createElementBlock)("div",r,[(0,a.createElementVNode)("div",s,[(0,a.createElementVNode)("div",n,[(0,a.createVNode)(v),(0,a.createVNode)(g),(0,a.createVNode)(k,{class:"p-mb-4"},{left:(0,a.withCtx)((function(){return[i]})),_:1}),(0,a.createVNode)(w,{value:p.req,rows:25,rowHover:!0,responsiveLayout:"scroll",loading:p.loading,stripedRows:""},(0,a.createSlots)({loading:(0,a.withCtx)((function(){return[u]})),header:(0,a.withCtx)((function(){return[(0,a.createElementVNode)("div",l,[(0,a.createVNode)(q,{onChange:t[0]||(t[0]=function(e){return f.getStatusDivisiRequestor()}),showClear:!0,modelValue:p.statusRequestor,"onUpdate:modelValue":t[1]||(t[1]=function(e){return p.statusRequestor=e}),options:p.status,optionValue:"code",optionLabel:"name",placeholder:"Pilih Status"},null,8,["modelValue","options"])])]})),default:(0,a.withCtx)((function(){return[p.statusRequestor?((0,a.openBlock)(),(0,a.createBlock)(V,{key:0,field:"div_name",header:"Divisi Requestor",style:{"min-width":"10rem"}})):(0,a.createCommentVNode)("",!0),p.statusRequestor?((0,a.openBlock)(),(0,a.createBlock)(V,{key:1,field:"jumlah",header:"Jumlah Request",style:{"min-width":"10rem"}})):(0,a.createCommentVNode)("",!0)]})),_:2},[p.statusRequestor?{name:"footer",fn:(0,a.withCtx)((function(){return[(0,a.createElementVNode)("div",c,[(0,a.createElementVNode)("div",d,[(0,a.createElementVNode)("div",m,[(0,a.createVNode)(C,{label:"Print",model:p.items},null,8,["model"])])])])]}))}:void 0]),1032,["value","loading"])])])])}},p=h}}]);