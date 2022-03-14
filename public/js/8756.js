"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[8756],{18756:(e,t,o)=>{o.r(t),o.d(t,{default:()=>w});var r=o(48191),a={class:"container py-4"},s={class:"col-md-10"},l={class:"card"},n=(0,r.createElementVNode)("div",{class:"p-grid p-dir-col"},[(0,r.createElementVNode)("div",{class:"p-col"},[(0,r.createElementVNode)("h4",null,"Referensi - Lookups")])],-1),c={class:"card-body"},d={class:"p-fluid"},i={class:"p-field p-grid"},p=(0,r.createElementVNode)("label",{for:"tipe",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Tipe",-1),u={class:"p-col-3"},m={class:"p-fluid"},f={class:"p-field p-grid"},k=(0,r.createElementVNode)("label",{for:"kode",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Kode",-1),h={class:"p-col-3"},V={class:"p-fluid"},v={class:"p-field p-grid"},N=(0,r.createElementVNode)("label",{for:"Deskripsi",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Deskripsi",-1),b={class:"p-col-3"},E={key:0,class:"p-error"},y={class:"p-fluid"},g={class:"p-field p-grid"},C=(0,r.createElementVNode)("label",{for:"Status",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Status",-1),_={class:"p-col-3"},x={key:0,class:"p-error"},S={class:"form-group"};const $={data:function(){return{errors:[],id:localStorage.getItem("id"),checkname:[],checkto:[],ref:[],stat:[{nama:"Aktif",code:"T"},{nama:"Tidak Aktif",code:"F"}],token:localStorage.getItem("token"),name:""}},created:function(){this.cekUser()},methods:{cekUser:function(){var e=this;this.axios.get("/api/cek-user/"+this.id,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.checkto=t.data.map((function(e){return e.to})),e.checkname=t.data.map((function(e){return e.name})),e.checkname.includes("Lookups")||e.checkto.includes("/referensi-lookups")?e.getRef():(e.$toast.add({severity:"error",summary:"403",detail:"Cannot Access This Page"}),setTimeout((function(){return e.$router.push("/dashboard")}),2e3))}))},getRef:function(){var e=this;this.axios.get("/api/edit-ref/"+this.$route.params.code+"/"+this.$route.params.type,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.ref=t.data})).catch((function(t){401==t.response.status&&(e.$toast.add({severity:"error",summary:"Error",detail:"Sesi Login Expired"}),localStorage.clear(),localStorage.setItem("Expired","true"),setTimeout((function(){return e.$router.push("/login")}),2e3))}))},UpdateLookup:function(){var e=this;this.errors=[],this.axios.put("/api/update-ref/"+this.$route.params.code+"/"+this.$route.params.type,this.ref,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.$toast.add({severity:"success",summary:"Success Message",detail:"Success Update"}),setTimeout((function(){return e.$router.push("/referensi-lookups")}),1e3)})).catch((function(t){e.errors=t.response.data.errors}))}},render:function(e,t,o,$,w,B){var T=(0,r.resolveComponent)("Toast"),U=(0,r.resolveComponent)("Toolbar"),L=(0,r.resolveComponent)("InputText"),A=(0,r.resolveComponent)("Dropdown"),z=(0,r.resolveComponent)("Button");return(0,r.openBlock)(),(0,r.createElementBlock)("div",a,[(0,r.createElementVNode)("div",s,[(0,r.createVNode)(T),(0,r.createElementVNode)("div",l,[(0,r.createVNode)(U,{class:"p-mb-4"},{left:(0,r.withCtx)((function(){return[n]})),_:1}),(0,r.createElementVNode)("div",c,[(0,r.createElementVNode)("form",{onSubmit:t[5]||(t[5]=(0,r.withModifiers)((function(){return B.UpdateLookup&&B.UpdateLookup.apply(B,arguments)}),["prevent"]))},[(0,r.createElementVNode)("div",d,[(0,r.createElementVNode)("div",i,[p,(0,r.createElementVNode)("div",u,[(0,r.createVNode)(L,{type:"text",modelValue:w.ref.lookup_type,"onUpdate:modelValue":t[0]||(t[0]=function(e){return w.ref.lookup_type=e}),disabled:""},null,8,["modelValue"])])])]),(0,r.createElementVNode)("div",m,[(0,r.createElementVNode)("div",f,[k,(0,r.createElementVNode)("div",h,[(0,r.createVNode)(L,{type:"text",modelValue:w.ref.lookup_code,"onUpdate:modelValue":t[1]||(t[1]=function(e){return w.ref.lookup_code=e}),disabled:""},null,8,["modelValue"])])])]),(0,r.createElementVNode)("div",V,[(0,r.createElementVNode)("div",v,[N,(0,r.createElementVNode)("div",b,[(0,r.createVNode)(L,{type:"text",modelValue:w.ref.lookup_desc,"onUpdate:modelValue":t[2]||(t[2]=function(e){return w.ref.lookup_desc=e}),class:(0,r.normalizeClass)({"p-invalid":w.errors.lookup_desc})},null,8,["modelValue","class"]),w.errors.lookup_desc?((0,r.openBlock)(),(0,r.createElementBlock)("small",E,(0,r.toDisplayString)(w.errors.lookup_desc[0]),1)):(0,r.createCommentVNode)("",!0)])])]),(0,r.createElementVNode)("div",y,[(0,r.createElementVNode)("div",g,[C,(0,r.createElementVNode)("div",_,[(0,r.createVNode)(A,{modelValue:w.ref.lookup_status,"onUpdate:modelValue":t[3]||(t[3]=function(e){return w.ref.lookup_status=e}),options:w.stat,showClear:!0,optionLabel:"nama",optionValue:"code",class:(0,r.normalizeClass)({"p-invalid":w.errors.lookup_status})},null,8,["modelValue","options","class"]),w.errors.lookup_status?((0,r.openBlock)(),(0,r.createElementBlock)("small",x,(0,r.toDisplayString)(w.errors.lookup_status[0]),1)):(0,r.createCommentVNode)("",!0)])])]),(0,r.createElementVNode)("div",S,[(0,r.createVNode)(z,{class:"p-button-rounded p-button-primary p-mr-2 p-mb-2",icon:"pi pi-check",label:"Simpan",type:"submit"}),(0,r.createVNode)(z,{label:"Cancel",class:"p-button-rounded p-button-secondary p-mr-2 p-mb-2",icon:"pi pi-times",onClick:t[4]||(t[4]=function(t){return e.$router.push("/referensi-lookups")})})])],32)])])])])}},w=$}}]);