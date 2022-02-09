"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[7686],{62673:(e,t,l)=>{l.d(t,{Z:()=>r});var o=l(23645),a=l.n(o)()((function(e){return e[1]}));a.push([e.id,".pegawai-image[data-v-e2d13546]{box-shadow:0 3px 6px rgba(0,0,0,.16),0 3px 6px rgba(0,0,0,.23);width:100px}",""]);const r=a},7686:(e,t,l)=>{l.r(t),l.d(t,{default:()=>ge});var o=l(5166);(0,o.pushScopeId)("data-v-e2d13546");var a={class:"card"},r=(0,o.createElementVNode)("div",{class:"p-grid p-dir-col"},[(0,o.createElementVNode)("div",{class:"p-col"},[(0,o.createElementVNode)("h4",null,"Cash Advance")])],-1),n={class:"card"},c={class:"p-fluid p-formgrid p-grid"},s={class:"p-field p-grid p-col"},i=(0,o.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"No. Request",-1),d={class:"p-col-8 p-md-6"},u={key:0,class:"p-field p-grid p-col"},p=(0,o.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Requester",-1),m={class:"p-col-8 p-md-6"},g={key:0,class:"p-fluid p-formgrid p-grid"},h={class:"p-field p-grid p-col"},k=(0,o.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Tgl. Request",-1),V={class:"p-col-10 p-md-6"},v={key:0,class:"p-field p-grid p-col"},b=(0,o.createElementVNode)("label",{for:"file",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Bisnis Unit",-1),f={class:"p-col-10 p-md-6"},N={class:"card-body"},y={class:"p-fluid"},E={class:"p-field p-grid"},C=(0,o.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Jumlah",-1),B={class:"p-col-2"},x={key:0,class:"p-error"},w={class:"p-fluid"},q={class:"p-field p-grid"},S=(0,o.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Tgl. Submit",-1),T={class:"p-col-3"},P={class:"p-inputgroup"},U=["value","onClick"],D={key:0,class:"p-error"},_={class:"p-fluid"},I={class:"p-field p-grid"},$=(0,o.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Tgl. Terima Cash",-1),j={class:"p-col-3"},A={class:"p-inputgroup"},M=["value","onClick"],z={key:0,class:"p-error"},R={class:"p-fluid"},Y={class:"p-field p-grid"},Z=(0,o.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Tgl. Pembelian",-1),J={class:"p-col-3"},L={class:"p-inputgroup"},F=["value","onClick"],K={key:0,class:"p-error"},G={class:"p-fluid"},H={class:"p-field p-grid"},O=(0,o.createElementVNode)("label",{for:"fax",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Tgl. Terima Barang",-1),Q={class:"p-col-3"},W={class:"p-inputgroup"},X=["value","onClick"],ee={key:0,class:"p-error"},te={class:"p-fluid"},le={class:"p-field p-grid"},oe=(0,o.createElementVNode)("label",{for:"notlp1",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Tgl. Penyerahan Ke User",-1),ae={class:"p-col-3"},re={class:"p-inputgroup"},ne=["value","onClick"],ce={key:0,class:"p-error"},se={class:"form-group"};(0,o.popScopeId)();const ie={data:function(){return{errors:[],req:[],ca:[],jum:null,tglsub:new Date,tglrecvcash:"",tglbuy:"",tglrecvunit:"",tgltouser:"",mask:{input:"DD MMM YYYY"},noreq:null,token:localStorage.getItem("token"),checkname:[],checkto:[],id:localStorage.getItem("id")}},created:function(){this.cekUser()},methods:{cekUser:function(){var e=this;this.axios.get("/api/cek-user/"+this.id,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.checkto=t.data.map((function(e){return e.to})),e.checkname=t.data.map((function(e){return e.name})),e.checkname.includes("Status Change Request")||e.checkto.includes("/ict-request-divisi3")?e.get():(e.$toast.add({severity:"error",summary:"403",detail:"Cannot Access This Page"}),setTimeout((function(){return e.$router.push("/Dashboard")}),2e3))}))},get:function(){var e=this;this.noreq=this.$route.params.code,this.axios.get("/api/getNameBu/"+this.noreq,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.ca=t.data})).catch((function(t){401==t.response.status&&(e.$toast.add({severity:"error",summary:"Error",detail:"Sesi Login Expired"}),localStorage.clear(),localStorage.setItem("Expired","true"),setTimeout((function(){return e.$router.push("/login")}),2e3))}))},getNoreq:function(){var e=this;this.axios.get("/api/getNoreq",{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.req=t.data})).catch((function(t){401==t.response.status&&(e.$toast.add({severity:"error",summary:"Error",detail:"Sesi Login Expired"}),localStorage.clear(),localStorage.setItem("Expired","true"),setTimeout((function(){return e.$router.push("/login")}),2e3))}))},CreateCash:function(){var e=this;this.errors=[];var t=new FormData;t.append("noreq",this.ca.ireq_id),t.append("jum",this.jum),t.append("tglrecvunit",this.tglrecvunit),t.append("tglbuy",this.tglbuy),t.append("tglrecvcash",this.tglrecvcash),t.append("tglsub",this.tglsub),t.append("tgltouser",this.tgltouser),this.axios.post("/api/add-cash",t,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){setTimeout((function(){return e.$router.push("/cash-advance")}),1e3),e.$toast.add({severity:"success",summary:"Success Message",detail:"Success Create"})})).catch((function(t){e.errors=t.response.data.errors}))}}};var de=l(93379),ue=l.n(de),pe=l(62673),me={insert:"head",singleton:!1};ue()(pe.Z,me);pe.Z.locals;ie.render=function(e,t,l,ie,de,ue){var pe=(0,o.resolveComponent)("Toast"),me=(0,o.resolveComponent)("Toolbar"),ge=(0,o.resolveComponent)("InputText"),he=(0,o.resolveComponent)("InputNumber"),ke=(0,o.resolveComponent)("Button"),Ve=(0,o.resolveComponent)("DatePicker");return(0,o.openBlock)(),(0,o.createElementBlock)("div",null,[(0,o.createVNode)(pe),(0,o.createElementVNode)("div",a,[(0,o.createVNode)(me,{class:"p-mb-4"},{left:(0,o.withCtx)((function(){return[r]})),_:1}),(0,o.createElementVNode)("form",{onSubmit:t[16]||(t[16]=(0,o.withModifiers)((function(){return ue.CreateCash&&ue.CreateCash.apply(ue,arguments)}),["prevent"]))},[(0,o.createElementVNode)("div",n,[(0,o.createElementVNode)("div",c,[(0,o.createElementVNode)("div",s,[i,(0,o.createElementVNode)("div",d,[(0,o.createVNode)(ge,{modelValue:de.ca.ireq_no,"onUpdate:modelValue":t[0]||(t[0]=function(e){return de.ca.ireq_no=e}),disabled:""},null,8,["modelValue"])])]),de.noreq?((0,o.openBlock)(),(0,o.createElementBlock)("div",u,[p,(0,o.createElementVNode)("div",m,[(0,o.createVNode)(ge,{type:"text",modelValue:de.ca.req,"onUpdate:modelValue":t[1]||(t[1]=function(e){return de.ca.req=e}),disabled:""},null,8,["modelValue"])])])):(0,o.createCommentVNode)("",!0)]),de.noreq?((0,o.openBlock)(),(0,o.createElementBlock)("div",g,[(0,o.createElementVNode)("div",h,[k,(0,o.createElementVNode)("div",V,[(0,o.createVNode)(ge,{type:"text",modelValue:de.ca.ireq_date,"onUpdate:modelValue":t[2]||(t[2]=function(e){return de.ca.ireq_date=e}),disabled:""},null,8,["modelValue"])])]),de.noreq?((0,o.openBlock)(),(0,o.createElementBlock)("div",v,[b,(0,o.createElementVNode)("div",f,[(0,o.createVNode)(ge,{type:"text",modelValue:de.ca.bu,"onUpdate:modelValue":t[3]||(t[3]=function(e){return de.ca.bu=e}),disabled:""},null,8,["modelValue"])])])):(0,o.createCommentVNode)("",!0)])):(0,o.createCommentVNode)("",!0)]),(0,o.createElementVNode)("div",N,[(0,o.createElementVNode)("div",y,[(0,o.createElementVNode)("div",E,[C,(0,o.createElementVNode)("div",B,[(0,o.createVNode)(he,{mode:"currency",currency:"IDR",locale:"id",modelValue:de.jum,"onUpdate:modelValue":t[4]||(t[4]=function(e){return de.jum=e}),placeholder:"Masukan Jumlah",class:(0,o.normalizeClass)({"p-invalid":de.errors.jum})},null,8,["modelValue","class"]),de.errors.jum?((0,o.openBlock)(),(0,o.createElementBlock)("small",x,(0,o.toDisplayString)(de.errors.jum[0]),1)):(0,o.createCommentVNode)("",!0)])])]),(0,o.createElementVNode)("div",w,[(0,o.createElementVNode)("div",q,[S,(0,o.createElementVNode)("div",T,[(0,o.createElementVNode)("div",P,[(0,o.createVNode)(Ve,{modelValue:de.tglsub,"onUpdate:modelValue":t[6]||(t[6]=function(e){return de.tglsub=e}),masks:de.mask},{default:(0,o.withCtx)((function(e){var l=e.inputValue,a=e.togglePopover;return[(0,o.createElementVNode)("input",{class:"bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none",value:l,onClick:a,readonly:"",placeholder:"Pilih Tgl. Submit"},null,8,U),de.tglsub?((0,o.openBlock)(),(0,o.createBlock)(ke,{key:1,icon:"pi pi-trash",class:"p-button-danger",onClick:t[5]||(t[5]=function(e){return de.tglsub=""})})):((0,o.openBlock)(),(0,o.createBlock)(ke,{key:0,icon:"pi pi-calendar",onClick:a},null,8,["onClick"]))]})),_:1},8,["modelValue","masks"])]),de.errors.tglsub?((0,o.openBlock)(),(0,o.createElementBlock)("small",D,(0,o.toDisplayString)(de.errors.tglsub[0]),1)):(0,o.createCommentVNode)("",!0)])])]),(0,o.createElementVNode)("div",_,[(0,o.createElementVNode)("div",I,[$,(0,o.createElementVNode)("div",j,[(0,o.createElementVNode)("div",A,[(0,o.createVNode)(Ve,{modelValue:de.tglrecvcash,"onUpdate:modelValue":t[8]||(t[8]=function(e){return de.tglrecvcash=e}),"min-date":this.tglsub,masks:de.mask},{default:(0,o.withCtx)((function(e){var l=e.inputValue,a=e.togglePopover;return[(0,o.createElementVNode)("input",{class:"bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none",value:l,onClick:a,readonly:"",placeholder:"Pilih Tgl. Terima Cash"},null,8,M),de.tglrecvcash?((0,o.openBlock)(),(0,o.createBlock)(ke,{key:1,icon:"pi pi-trash",class:"p-button-danger",onClick:t[7]||(t[7]=function(e){return de.tglrecvcash=""})})):((0,o.openBlock)(),(0,o.createBlock)(ke,{key:0,icon:"pi pi-calendar",onClick:a},null,8,["onClick"]))]})),_:1},8,["modelValue","min-date","masks"])]),de.errors.tglrecvcash?((0,o.openBlock)(),(0,o.createElementBlock)("small",z,(0,o.toDisplayString)(de.errors.tglrecvcash[0]),1)):(0,o.createCommentVNode)("",!0)])])]),(0,o.createElementVNode)("div",R,[(0,o.createElementVNode)("div",Y,[Z,(0,o.createElementVNode)("div",J,[(0,o.createElementVNode)("div",L,[(0,o.createVNode)(Ve,{modelValue:de.tglbuy,"onUpdate:modelValue":t[10]||(t[10]=function(e){return de.tglbuy=e}),"min-date":this.tglrecvcash,masks:de.mask},{default:(0,o.withCtx)((function(e){var l=e.inputValue,a=e.togglePopover;return[(0,o.createElementVNode)("input",{class:"bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none",value:l,onClick:a,readonly:"",placeholder:"Pilih Tgl. Pembelian"},null,8,F),de.tglbuy?((0,o.openBlock)(),(0,o.createBlock)(ke,{key:1,icon:"pi pi-trash",class:"p-button-danger",onClick:t[9]||(t[9]=function(e){return de.tglbuy=""})})):((0,o.openBlock)(),(0,o.createBlock)(ke,{key:0,icon:"pi pi-calendar",onClick:a},null,8,["onClick"]))]})),_:1},8,["modelValue","min-date","masks"])]),de.errors.tglbuy?((0,o.openBlock)(),(0,o.createElementBlock)("small",K,(0,o.toDisplayString)(de.errors.tglbuy[0]),1)):(0,o.createCommentVNode)("",!0)])])]),(0,o.createElementVNode)("div",G,[(0,o.createElementVNode)("div",H,[O,(0,o.createElementVNode)("div",Q,[(0,o.createElementVNode)("div",W,[(0,o.createVNode)(Ve,{modelValue:de.tglrecvunit,"onUpdate:modelValue":t[12]||(t[12]=function(e){return de.tglrecvunit=e}),"min-date":this.tglbuy,masks:de.mask},{default:(0,o.withCtx)((function(e){var l=e.inputValue,a=e.togglePopover;return[(0,o.createElementVNode)("input",{class:"bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none",value:l,onClick:a,readonly:"",placeholder:"Pilih Tgl Terima Barang"},null,8,X),de.tglrecvunit?((0,o.openBlock)(),(0,o.createBlock)(ke,{key:1,icon:"pi pi-trash",class:"p-button-danger",onClick:t[11]||(t[11]=function(e){return de.tglrecvunit=""})})):((0,o.openBlock)(),(0,o.createBlock)(ke,{key:0,icon:"pi pi-calendar",onClick:a},null,8,["onClick"]))]})),_:1},8,["modelValue","min-date","masks"])]),de.errors.tglrecvunit?((0,o.openBlock)(),(0,o.createElementBlock)("small",ee,(0,o.toDisplayString)(de.errors.tglrecvunit[0]),1)):(0,o.createCommentVNode)("",!0)])])]),(0,o.createElementVNode)("div",te,[(0,o.createElementVNode)("div",le,[oe,(0,o.createElementVNode)("div",ae,[(0,o.createElementVNode)("div",re,[(0,o.createVNode)(Ve,{modelValue:de.tgltouser,"onUpdate:modelValue":t[14]||(t[14]=function(e){return de.tgltouser=e}),"min-date":this.tglrecvunit,masks:de.mask},{default:(0,o.withCtx)((function(e){var l=e.inputValue,a=e.togglePopover;return[(0,o.createElementVNode)("input",{class:"bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none",value:l,onClick:a,readonly:"",placeholder:"Pilih Tgl Penyerahan"},null,8,ne),de.tgltouser?((0,o.openBlock)(),(0,o.createBlock)(ke,{key:1,icon:"pi pi-trash",class:"p-button-danger",onClick:t[13]||(t[13]=function(e){return de.tgltouser=""})})):((0,o.openBlock)(),(0,o.createBlock)(ke,{key:0,icon:"pi pi-calendar",onClick:a},null,8,["onClick"]))]})),_:1},8,["modelValue","min-date","masks"])]),de.errors.tgltouser?((0,o.openBlock)(),(0,o.createElementBlock)("small",ce,(0,o.toDisplayString)(de.errors.tgltouser[0]),1)):(0,o.createCommentVNode)("",!0)])])]),(0,o.createElementVNode)("div",se,[(0,o.createVNode)(ke,{class:"p-button-rounded p-button-primary p-mr-2 p-mb-2",icon:"pi pi-check",label:"Simpan",type:"submit"}),(0,o.createVNode)(ke,{label:"Cancel",class:"p-button-rounded p-button-secondary p-mr-2 p-mb-2",icon:"pi pi-times",onClick:t[15]||(t[15]=function(t){return e.$router.push("/ict-request-divisi3")})})])])],32)])])},ie.__scopeId="data-v-e2d13546";const ge=ie}}]);