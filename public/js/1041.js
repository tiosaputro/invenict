"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[1041],{71041:(e,t,a)=>{a.r(t),a.d(t,{default:()=>A});var l=a(48191),o={class:"card"},r=(0,l.createElementVNode)("div",{class:"p-grid p-dir-col"},[(0,l.createElementVNode)("div",{class:"p-col"},[(0,l.createElementVNode)("h4",null,"Pembelian Peripheral(Detail)")])],-1),n={class:"card-body"},s={class:"p-fluid p-formgrid p-grid"},i={class:"p-field p-grid p-col"},c=(0,l.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"155px"}},"Kode Peripheral",-1),d={class:"p-col-3"},u={key:0,class:"p-error"},p={key:1,class:"p-error"},m={class:"p-fluid p-formgrid p-grid"},h={class:"p-field p-grid p-col"},V=(0,l.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"155px"}},"Jumlah (Qty)",-1),k={class:"p-col-3"},b={key:0,class:"p-error"},g={class:"p-fluid"},v={class:"p-field p-grid"},f=(0,l.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"155px"}},"Satuan",-1),y={class:"p-col-3"},N={key:0,class:"p-error"},E={class:"p-fluid"},C={class:"p-field p-grid"},B=(0,l.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"155px"}},"Harga Satuan",-1),S={class:"p-col-3"},D={key:0,class:"p-error"},w={class:"p-fluid"},x={class:"p-field p-grid"},z=(0,l.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"155px"}},"Total Harga",-1),T={class:"p-col-3"},$={key:0,class:"p-error"},q={class:"p-fluid"},P={class:"p-field p-grid"},U=(0,l.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"155px"}},"Keterangan",-1),I={class:"p-col-3"},K={key:0,class:"p-error"},_={class:"form-group"};const j={data:function(){return{locale:"id-ID",currency:"IDR",submitted:!1,errors:[],kode:null,satuan:null,ket:null,pricetotal:null,qty:null,hrgsatuan:null,sat:[],kodeperi:[],valuta:[],token:localStorage.getItem("token"),checkname:[],checkto:[],divisi:[],id:localStorage.getItem("id")}},created:function(){this.cekUser()},methods:{cekUser:function(){var e=this;this.axios.get("/api/cek-user/"+this.id,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.checkto=t.data.map((function(e){return e.to})),e.checkname=t.data.map((function(e){return e.name})),e.checkname.includes("Pembelian Peripheral")||e.checkto.includes("/pembelian-peripheral")?(e.getValutaCode(),e.getKode()):(e.$toast.add({severity:"error",summary:"403",detail:"Cannot Access This Page"}),setTimeout((function(){return e.$router.push("/dashboard")}),2e3))}))},getKode:function(){var e=this;this.axios.get("/api/get-kode",{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.kodeperi=t.data,e.getSatuan()})).catch((function(t){401==t.response.status&&(e.$toast.add({severity:"error",summary:"Error",detail:"Sesi Login Expired"}),localStorage.clear(),localStorage.setItem("Expired","true"),setTimeout((function(){return e.$router.push("/login")}),2e3))}))},getSatuan:function(){var e=this;this.axios.get("/api/getSatuan",{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.sat=t.data}))},getValutaCode:function(){var e=this;this.axios.get("/api/getValuta/"+this.$route.params.code,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.valuta=t.data,"$"==e.valuta.valuta_code&&(e.locale="en-US",e.currency="USD"),"Rp"==e.valuta.valuta_code&&(e.locale="id-ID",e.currency="IDR"),"¥"==e.valuta.valuta_code&&(e.locale="zh-CN",e.currency="CNY")}))},getTotal:function(){this.qty&&this.hrgsatuan&&(this.pricetotal=this.qty*this.hrgsatuan)},CreateDetail:function(){var e=this;if(this.submitted=!0,this.errors=[],null!=this.kode&&null!=this.satuan&&null!=this.ket&&null!=this.pricetotal&&null!=this.hrgsatuan&&null!=this.qty){var t=new FormData;t.append("invent_code",this.kode),t.append("satuan",this.satuan),t.append("ket",this.ket),t.append("pricetotal",this.pricetotal),t.append("hrgsatuan",this.hrgsatuan),t.append("qty",this.qty),this.axios.post("/api/add-detail-pem/"+this.$route.params.code,t,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){setTimeout((function(){return e.$router.push("/pembelian-peripheral-detail/"+e.$route.params.code)}),1e3),e.$toast.add({severity:"success",summary:"Success Message",detail:"Success Create"})})).catch((function(t){e.errors=t.response.data.errors,e.submitted=!1}))}}},render:function(e,t,a,j,A,M){var W=(0,l.resolveComponent)("Toast"),H=(0,l.resolveComponent)("Toolbar"),R=(0,l.resolveComponent)("Dropdown"),J=(0,l.resolveComponent)("InputNumber"),L=(0,l.resolveComponent)("Textarea"),Q=(0,l.resolveComponent)("Button");return(0,l.openBlock)(),(0,l.createElementBlock)("div",null,[(0,l.createVNode)(W),(0,l.createElementVNode)("div",o,[(0,l.createVNode)(H,{class:"p-mb-4"},{left:(0,l.withCtx)((function(){return[r]})),_:1}),(0,l.createElementVNode)("div",n,[(0,l.createElementVNode)("form",{onSubmit:t[7]||(t[7]=(0,l.withModifiers)((function(){return M.CreateDetail&&M.CreateDetail.apply(M,arguments)}),["prevent"]))},[(0,l.createElementVNode)("div",s,[(0,l.createElementVNode)("div",i,[c,(0,l.createElementVNode)("div",d,[(0,l.createVNode)(R,{modelValue:A.kode,"onUpdate:modelValue":t[0]||(t[0]=function(e){return A.kode=e}),options:A.kodeperi,optionLabel:"name",optionValue:"code",showClear:!0,filter:!0,placeholder:"Pilih Kode",class:(0,l.normalizeClass)({"p-invalid":A.submitted&&!A.kode})},null,8,["modelValue","options","class"]),A.submitted&&!A.kode?((0,l.openBlock)(),(0,l.createElementBlock)("small",u,"Kode Peripheral Wajib Diisi. ")):(0,l.createCommentVNode)("",!0),A.errors.invent_code?((0,l.openBlock)(),(0,l.createElementBlock)("small",p,(0,l.toDisplayString)(A.errors.invent_code[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",m,[(0,l.createElementVNode)("div",h,[V,(0,l.createElementVNode)("div",k,[(0,l.createVNode)(J,{modelValue:A.qty,"onUpdate:modelValue":t[1]||(t[1]=function(e){return A.qty=e}),placeholder:"Masukan Jumlah (Qty)",change:M.getTotal(),class:(0,l.normalizeClass)({"p-invalid":A.submitted&&!A.qty})},null,8,["modelValue","change","class"]),A.submitted&&!A.qty?((0,l.openBlock)(),(0,l.createElementBlock)("small",b,"Jumlah (Qty) Wajib Diisi. ")):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",g,[(0,l.createElementVNode)("div",v,[f,(0,l.createElementVNode)("div",y,[(0,l.createVNode)(R,{modelValue:A.satuan,"onUpdate:modelValue":t[2]||(t[2]=function(e){return A.satuan=e}),options:A.sat,showClear:!0,optionLabel:"name",optionValue:"code",placeholder:"Pilih Satuan",class:(0,l.normalizeClass)({"p-invalid":A.submitted&&!A.satuan})},null,8,["modelValue","options","class"]),A.submitted&&!A.satuan?((0,l.openBlock)(),(0,l.createElementBlock)("small",N,"Satuan Wajib Diisi. ")):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",E,[(0,l.createElementVNode)("div",C,[B,(0,l.createElementVNode)("div",S,[(0,l.createVNode)(J,{mode:"currency",change:M.getTotal(),locale:A.locale,currency:A.currency,modelValue:A.hrgsatuan,"onUpdate:modelValue":t[3]||(t[3]=function(e){return A.hrgsatuan=e}),placeholder:"Masukan Harga Satuan",class:(0,l.normalizeClass)({"p-invalid":A.submitted&&!A.hrgsatuan})},null,8,["change","locale","currency","modelValue","class"]),A.submitted&&!A.hrgsatuan?((0,l.openBlock)(),(0,l.createElementBlock)("small",D,"Harga Satuan Wajib Diisi. ")):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",w,[(0,l.createElementVNode)("div",x,[z,(0,l.createElementVNode)("div",T,[(0,l.createVNode)(J,{mode:"currency",currency:A.currency,locale:A.locale,modelValue:A.pricetotal,"onUpdate:modelValue":t[4]||(t[4]=function(e){return A.pricetotal=e}),placeholder:"Masukan Total Pembayaran",class:(0,l.normalizeClass)({"p-invalid":A.submitted&&!A.pricetotal}),readonly:""},null,8,["currency","locale","modelValue","class"]),A.submitted&&!A.pricetotal?((0,l.openBlock)(),(0,l.createElementBlock)("small",$,"Total Harga Wajib Diisi. ")):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",q,[(0,l.createElementVNode)("div",P,[U,(0,l.createElementVNode)("div",I,[(0,l.createVNode)(L,{modelValue:A.ket,"onUpdate:modelValue":t[5]||(t[5]=function(e){return A.ket=e}),autoResize:!0,rows:"5",cols:"30",placeholder:"Masukan Keterangan",class:(0,l.normalizeClass)({"p-invalid":A.submitted&&!A.ket})},null,8,["modelValue","class"]),A.submitted&&!A.ket?((0,l.openBlock)(),(0,l.createElementBlock)("small",K,"Keterangan Wajib Diisi. ")):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",_,[(0,l.createVNode)(Q,{class:"p-button-rounded p-button-primary p-mr-2 p-mb-2",icon:"pi pi-check",label:"Simpan",type:"submit"}),(0,l.createVNode)(Q,{label:"Cancel",class:"p-button-rounded p-button-secondary p-mr-2 p-mb-2",icon:"pi pi-times",onClick:t[6]||(t[6]=function(t){return e.$router.go(-1)})})])],32)])])])}},A=j}}]);