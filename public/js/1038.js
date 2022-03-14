"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[1038],{61038:(e,a,l)=>{l.r(a),l.d(a,{default:()=>ne});var t=l(48191),o={class:"card"},r=(0,t.createElementVNode)("div",{class:"p-grid p-dir-col"},[(0,t.createElementVNode)("div",{class:"p-col"},[(0,t.createElementVNode)("h4",null,"Referensi - Suplier")])],-1),s={class:"card-body"},n={class:"p-fluid p-formgrid p-grid"},c={class:"p-field p-grid p-col"},d=(0,t.createElementVNode)("label",{for:"kode",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Kode",-1),p={class:"p-col-4"},i={key:0,class:"p-error"},m={class:"p-field p-grid p-col"},u=(0,t.createElementVNode)("label",{for:"kode",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Nama",-1),V={class:"p-col-10 p-md-6"},N={key:0,class:"p-error"},f={class:"p-fluid"},k={class:"p-field p-grid"},h=(0,t.createElementVNode)("label",{for:"contactperson",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Contact Person",-1),v={class:"p-col-4"},E={key:0,class:"p-error"},y={class:"p-fluid"},b={class:"p-field p-grid"},x=(0,t.createElementVNode)("label",{for:"alamat1",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Alamat 1",-1),C={class:"p-col-4"},g={key:0,class:"p-error"},B={class:"p-fluid"},S={class:"p-field p-grid"},w=(0,t.createElementVNode)("label",{htmlFor:"alamat2",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Alamat 2",-1),z={class:"p-col-4"},M={class:"p-fluid p-formgrid p-grid"},U={class:"p-field p-grid p-col"},D=(0,t.createElementVNode)("label",{for:"kota",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Kota",-1),T={class:"p-col-10 p-md-6"},A={key:0,class:"p-error"},$={class:"p-field p-grid p-col"},P=(0,t.createElementVNode)("label",{for:"provinsi",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Provinsi",-1),F={class:"p-col-10 p-md-6"},K={key:0,class:"p-error"},I={class:"p-fluid"},R={class:"p-field p-grid"},O=(0,t.createElementVNode)("label",{for:"email",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Email",-1),_={class:"p-col-3"},j={key:0,class:"p-error"},q={class:"p-fluid"},G={class:"p-field p-grid"},H=(0,t.createElementVNode)("label",{for:"fax",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Fax",-1),J={class:"p-col-3"},L={key:0,class:"p-error"},Q={class:"p-fluid"},W={class:"p-field p-grid"},X=(0,t.createElementVNode)("label",{for:"notlp1",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"No.Tlp-1",-1),Y={class:"p-col-3"},Z={key:0,class:"p-error"},ee={class:"p-fluid"},ae={class:"p-field p-grid"},le=(0,t.createElementVNode)("label",{for:"notlp2",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"No.Tlp-2",-1),te={class:"p-col-3"},oe={key:0,class:"p-error"},re={class:"form-group"};const se={data:function(){return{errors:[],code:"",nama:"",contact:"",alamat1:"",alamat2:"",kota:"",provinsi:"",email:"",fax:"",notlp1:"",notlp2:"",token:localStorage.getItem("token"),id:localStorage.getItem("id"),checkname:[],checkto:[]}},mounted:function(){this.cekUser()},methods:{cekUser:function(){var e=this;this.id?this.axios.get("/api/cek-user/"+this.id,{headers:{Authorization:"Bearer "+this.token}}).then((function(a){e.checkto=a.data.map((function(e){return e.to})),e.checkname=a.data.map((function(e){return e.name})),e.checkname.includes("Suplier")||e.checkto.includes("/referensi-supplier")||(e.$toast.add({severity:"error",summary:"403",detail:"Cannot Access This Page"}),setTimeout((function(){return e.$router.push("/dashboard")}),2e3))})):this.$router.push("/login")},CreateSupplier:function(){var e=this;this.errors=[];var a=new FormData;a.append("nama",this.nama),a.append("code",this.code),a.append("contact",this.contact),a.append("alamat1",this.alamat1),a.append("alamat2",this.alamat2),a.append("kota",this.kota),a.append("provinsi",this.provinsi),a.append("email",this.email),a.append("fax",this.fax),a.append("kota",this.kota),a.append("notlp1",this.notlp1),a.append("notlp2",this.notlp2),this.axios.post("api/add-supp",a,{headers:{Authorization:"Bearer "+this.token}}).then((function(){setTimeout((function(){return e.$router.push("/referensi-supplier")}),1e3),e.$toast.add({severity:"success",summary:"Success Message",detail:"Success Create"})}))}},render:function(e,a,l,se,ne,ce){var de=(0,t.resolveComponent)("Toast"),pe=(0,t.resolveComponent)("Toolbar"),ie=(0,t.resolveComponent)("InputText"),me=(0,t.resolveComponent)("Textarea"),ue=(0,t.resolveComponent)("Button");return(0,t.openBlock)(),(0,t.createElementBlock)("div",null,[(0,t.createVNode)(de),(0,t.createElementVNode)("div",o,[(0,t.createVNode)(pe,{class:"p-mb-4"},{left:(0,t.withCtx)((function(){return[r]})),_:1}),(0,t.createElementVNode)("div",s,[(0,t.createElementVNode)("form",{onSubmit:a[12]||(a[12]=(0,t.withModifiers)((function(){return ce.CreateSupplier&&ce.CreateSupplier.apply(ce,arguments)}),["prevent"]))},[(0,t.createElementVNode)("div",n,[(0,t.createElementVNode)("div",c,[d,(0,t.createElementVNode)("div",p,[(0,t.createVNode)(ie,{type:"text",modelValue:ne.code,"onUpdate:modelValue":a[0]||(a[0]=function(e){return ne.code=e}),placeholder:"Masukan Kode. . .",class:(0,t.normalizeClass)({"p-invalid":ne.errors.code}),autofocus:""},null,8,["modelValue","class"]),ne.errors.code?((0,t.openBlock)(),(0,t.createElementBlock)("small",i,(0,t.toDisplayString)(ne.errors.code[0]),1)):(0,t.createCommentVNode)("",!0)])]),(0,t.createElementVNode)("div",m,[u,(0,t.createElementVNode)("div",V,[(0,t.createVNode)(ie,{type:"text",modelValue:ne.nama,"onUpdate:modelValue":a[1]||(a[1]=function(e){return ne.nama=e}),placeholder:"Masukan Nama. . .",class:(0,t.normalizeClass)({"p-invalid":ne.errors.nama})},null,8,["modelValue","class"]),ne.errors.nama?((0,t.openBlock)(),(0,t.createElementBlock)("small",N,(0,t.toDisplayString)(ne.errors.nama[0]),1)):(0,t.createCommentVNode)("",!0)])])]),(0,t.createElementVNode)("div",f,[(0,t.createElementVNode)("div",k,[h,(0,t.createElementVNode)("div",v,[(0,t.createVNode)(ie,{type:"text",modelValue:ne.contact,"onUpdate:modelValue":a[2]||(a[2]=function(e){return ne.contact=e}),placeholder:"Masukan Contact Person. . .",class:(0,t.normalizeClass)({"p-invalid":ne.errors.contact})},null,8,["modelValue","class"]),ne.errors.contact?((0,t.openBlock)(),(0,t.createElementBlock)("small",E,(0,t.toDisplayString)(ne.errors.contact[0]),1)):(0,t.createCommentVNode)("",!0)])])]),(0,t.createElementVNode)("div",y,[(0,t.createElementVNode)("div",b,[x,(0,t.createElementVNode)("div",C,[(0,t.createVNode)(me,{type:"text",modelValue:ne.alamat1,"onUpdate:modelValue":a[3]||(a[3]=function(e){return ne.alamat1=e}),autoResize:!0,placeholder:"Masukan Alamat 1. . .",class:(0,t.normalizeClass)({"p-invalid":ne.errors.alamat1})},null,8,["modelValue","class"]),ne.errors.alamat1?((0,t.openBlock)(),(0,t.createElementBlock)("small",g,(0,t.toDisplayString)(ne.errors.alamat1[0]),1)):(0,t.createCommentVNode)("",!0)])])]),(0,t.createElementVNode)("div",B,[(0,t.createElementVNode)("div",S,[w,(0,t.createElementVNode)("div",z,[(0,t.createVNode)(me,{type:"text",modelValue:ne.alamat2,"onUpdate:modelValue":a[4]||(a[4]=function(e){return ne.alamat2=e}),autoResize:!0,placeholder:"Masukan Alamat 2. . . (Optional)"},null,8,["modelValue"])])])]),(0,t.createElementVNode)("div",M,[(0,t.createElementVNode)("div",U,[D,(0,t.createElementVNode)("div",T,[(0,t.createVNode)(ie,{type:"text",modelValue:ne.kota,"onUpdate:modelValue":a[5]||(a[5]=function(e){return ne.kota=e}),placeholder:"Masukan Kota. . .",class:(0,t.normalizeClass)({"p-invalid":ne.errors.kota})},null,8,["modelValue","class"]),ne.errors.kota?((0,t.openBlock)(),(0,t.createElementBlock)("small",A,(0,t.toDisplayString)(ne.errors.kota[0]),1)):(0,t.createCommentVNode)("",!0)])]),(0,t.createElementVNode)("div",$,[P,(0,t.createElementVNode)("div",F,[(0,t.createVNode)(ie,{modelValue:ne.provinsi,"onUpdate:modelValue":a[6]||(a[6]=function(e){return ne.provinsi=e}),placeholder:"Masukan Provinsi. . .",type:"text",class:(0,t.normalizeClass)({"p-invalid":ne.errors.provinsi})},null,8,["modelValue","class"]),ne.errors.provinsi?((0,t.openBlock)(),(0,t.createElementBlock)("small",K,(0,t.toDisplayString)(ne.errors.provinsi[0]),1)):(0,t.createCommentVNode)("",!0)])])]),(0,t.createElementVNode)("div",I,[(0,t.createElementVNode)("div",R,[O,(0,t.createElementVNode)("div",_,[(0,t.createVNode)(ie,{type:"Email",modelValue:ne.email,"onUpdate:modelValue":a[7]||(a[7]=function(e){return ne.email=e}),placeholder:"Masukan Email. . .",class:(0,t.normalizeClass)({"p-invalid":ne.errors.email})},null,8,["modelValue","class"]),ne.errors.email?((0,t.openBlock)(),(0,t.createElementBlock)("small",j,(0,t.toDisplayString)(ne.errors.email[0]),1)):(0,t.createCommentVNode)("",!0)])])]),(0,t.createElementVNode)("div",q,[(0,t.createElementVNode)("div",G,[H,(0,t.createElementVNode)("div",J,[(0,t.createVNode)(ie,{type:"text",modelValue:ne.fax,"onUpdate:modelValue":a[8]||(a[8]=function(e){return ne.fax=e}),placeholder:"Masukan Fax. . .",class:(0,t.normalizeClass)({"p-invalid":ne.errors.fax})},null,8,["modelValue","class"]),ne.errors.fax?((0,t.openBlock)(),(0,t.createElementBlock)("small",L,(0,t.toDisplayString)(ne.errors.fax[0]),1)):(0,t.createCommentVNode)("",!0)])])]),(0,t.createElementVNode)("div",Q,[(0,t.createElementVNode)("div",W,[X,(0,t.createElementVNode)("div",Y,[(0,t.createVNode)(ie,{type:"text",modelValue:ne.notlp1,"onUpdate:modelValue":a[9]||(a[9]=function(e){return ne.notlp1=e}),placeholder:"Masukan No.Tlp 1. . .",class:(0,t.normalizeClass)({"p-invalid":ne.errors.notlp1})},null,8,["modelValue","class"]),ne.errors.notlp1?((0,t.openBlock)(),(0,t.createElementBlock)("small",Z,(0,t.toDisplayString)(ne.errors.notlp1[0]),1)):(0,t.createCommentVNode)("",!0)])])]),(0,t.createElementVNode)("div",ee,[(0,t.createElementVNode)("div",ae,[le,(0,t.createElementVNode)("div",te,[(0,t.createVNode)(ie,{type:"text",modelValue:ne.notlp2,"onUpdate:modelValue":a[10]||(a[10]=function(e){return ne.notlp2=e}),placeholder:"Masukan No.Tlp-2. . . (Optional)",class:(0,t.normalizeClass)({"p-invalid":ne.errors.notlp2})},null,8,["modelValue","class"]),ne.errors.notlp2?((0,t.openBlock)(),(0,t.createElementBlock)("small",oe,(0,t.toDisplayString)(ne.errors.notlp2[0]),1)):(0,t.createCommentVNode)("",!0)])])]),(0,t.createElementVNode)("div",re,[(0,t.createVNode)(ue,{class:"p-button-rounded p-button-primary p-mr-2 p-mb-2",icon:"pi pi-check",label:"Simpan",type:"submit"}),(0,t.createVNode)(ue,{label:"Cancel",class:"p-button-rounded p-button-secondary p-mr-2 p-mb-2",icon:"pi pi-times",onClick:a[11]||(a[11]=function(a){return e.$router.push("/referensi-supplier")})})])],32)])])])}},ne=se}}]);