"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[1238],{31238:(e,o,t)=>{t.r(o),t.d(o,{default:()=>D});var l=t(5166),r={class:"container py-4"},s={class:"col-md-10"},a={class:"card"},c=(0,l.createElementVNode)("div",{class:"p-grid p-dir-col"},[(0,l.createElementVNode)("div",{class:"p-col"},[(0,l.createElementVNode)("h4",null,"Referensi - Lookups")])],-1),n={class:"card-body"},p={class:"p-fluid"},d={class:"p-field p-grid"},i=(0,l.createElementVNode)("label",{for:"tipe",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Tipe",-1),u={class:"p-col-3"},m={key:0,class:"p-error"},k={class:"p-fluid"},h={class:"p-field p-grid"},V=(0,l.createElementVNode)("label",{for:"kode",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Kode",-1),f={class:"p-col-3"},v={key:0,class:"p-error"},N={class:"p-fluid"},y={class:"p-field p-grid"},_=(0,l.createElementVNode)("label",{for:"Deskripsi",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Deskripsi",-1),E={class:"p-col-3"},b={key:0,class:"p-error"},C={class:"p-fluid"},g={class:"p-field p-grid"},S=(0,l.createElementVNode)("label",{for:"Status",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Status",-1),x={class:"p-col-3"},B={key:0,class:"p-error"},w={class:"form-group"};const T={data:function(){return{errors:[],lookup_type:"",lookup_code:"",lookup_desc:"",lookup_status:"",stat:[{nama:"Aktif",code:"T"},{nama:"Tidak Aktif",code:"F"}],token:localStorage.getItem("token"),id:localStorage.getItem("id"),checkname:[],checkto:[]}},created:function(){this.cekUser()},methods:{cekUser:function(){var e=this;this.axios.get("api/cek-user/"+this.id,{headers:{Authorization:"Bearer "+this.token}}).then((function(o){e.checkto=o.data.map((function(e){return e.to})),e.checkname=o.data.map((function(e){return e.name})),e.checkname.includes("Lookups")||e.checkto.includes("/referensi-lookups")||(e.$toast.add({severity:"error",summary:"403",detail:"Cannot Access This Page"}),setTimeout((function(){return e.$router.push("/dashboard")}),2e3))})).catch((function(o){401==o.response.status&&(e.$toast.add({severity:"error",summary:"Error",detail:"Sesi Login Expired"}),localStorage.clear(),localStorage.setItem("Expired","true"),setTimeout((function(){return e.$router.push("/login")}),2e3))}))},CreateLookup:function(){var e=this;this.errors=[];var o=new FormData;o.append("lookup_type",this.lookup_type),o.append("lookup_code",this.lookup_code),o.append("lookup_desc",this.lookup_desc),o.append("lookup_status",this.lookup_status),this.axios.post("api/add-ref",o,{headers:{Authorization:"Bearer "+this.token}}).then((function(o){e.$toast.add({severity:"success",summary:"Success Message",detail:"Success Create"}),setTimeout((function(){return e.$router.push("/referensi-lookups")}),1e3)})).catch((function(o){e.errors=o.response.data.errors}))}},render:function(e,o,t,T,D,L){var $=(0,l.resolveComponent)("Toast"),z=(0,l.resolveComponent)("Toolbar"),A=(0,l.resolveComponent)("InputText"),U=(0,l.resolveComponent)("Dropdown"),M=(0,l.resolveComponent)("Button");return(0,l.openBlock)(),(0,l.createElementBlock)("div",r,[(0,l.createElementVNode)("div",s,[(0,l.createVNode)($),(0,l.createElementVNode)("div",a,[(0,l.createVNode)(z,{class:"p-mb-4"},{left:(0,l.withCtx)((function(){return[c]})),_:1}),(0,l.createElementVNode)("div",n,[(0,l.createElementVNode)("form",{onSubmit:o[5]||(o[5]=(0,l.withModifiers)((function(){return L.CreateLookup&&L.CreateLookup.apply(L,arguments)}),["prevent"]))},[(0,l.createElementVNode)("div",p,[(0,l.createElementVNode)("div",d,[i,(0,l.createElementVNode)("div",u,[(0,l.createVNode)(A,{type:"text",modelValue:D.lookup_type,"onUpdate:modelValue":o[0]||(o[0]=function(e){return D.lookup_type=e}),placeholder:"Masukan Tipe. . .",class:(0,l.normalizeClass)({"p-invalid":D.errors.lookup_type})},null,8,["modelValue","class"]),D.errors.lookup_type?((0,l.openBlock)(),(0,l.createElementBlock)("small",m,(0,l.toDisplayString)(D.errors.lookup_type[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",k,[(0,l.createElementVNode)("div",h,[V,(0,l.createElementVNode)("div",f,[(0,l.createVNode)(A,{type:"text",modelValue:D.lookup_code,"onUpdate:modelValue":o[1]||(o[1]=function(e){return D.lookup_code=e}),placeholder:"Masukan Kode. . .",class:(0,l.normalizeClass)({"p-invalid":D.errors.lookup_code})},null,8,["modelValue","class"]),D.errors.lookup_code?((0,l.openBlock)(),(0,l.createElementBlock)("small",v,(0,l.toDisplayString)(D.errors.lookup_code[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",N,[(0,l.createElementVNode)("div",y,[_,(0,l.createElementVNode)("div",E,[(0,l.createVNode)(A,{type:"text",modelValue:D.lookup_desc,"onUpdate:modelValue":o[2]||(o[2]=function(e){return D.lookup_desc=e}),placeholder:"Masukan Deskripsi. . .",class:(0,l.normalizeClass)({"p-invalid":D.errors.lookup_desc})},null,8,["modelValue","class"]),D.errors.lookup_desc?((0,l.openBlock)(),(0,l.createElementBlock)("small",b,(0,l.toDisplayString)(D.errors.lookup_desc[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",C,[(0,l.createElementVNode)("div",g,[S,(0,l.createElementVNode)("div",x,[(0,l.createVNode)(U,{modelValue:D.lookup_status,"onUpdate:modelValue":o[3]||(o[3]=function(e){return D.lookup_status=e}),options:D.stat,showClear:!0,optionLabel:"nama",optionValue:"code",placeholder:"Select A Status",class:(0,l.normalizeClass)({"p-invalid":D.errors.lookup_status})},null,8,["modelValue","options","class"]),D.errors.lookup_status?((0,l.openBlock)(),(0,l.createElementBlock)("small",B,(0,l.toDisplayString)(D.errors.lookup_status[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",w,[(0,l.createVNode)(M,{class:"p-button-rounded p-button-primary p-mr-2 p-mb-2",icon:"pi pi-check",label:"Simpan",type:"submit"}),(0,l.createVNode)(M,{label:"Cancel",class:"p-button-rounded p-button-secondary p-mr-2 p-mb-2",icon:"pi pi-times",onClick:o[4]||(o[4]=function(o){return e.$router.push("/referensi-lookups")})})])],32)])])])])}},D=T}}]);