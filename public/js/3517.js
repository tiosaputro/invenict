"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[3517],{53517:(e,o,t)=>{t.r(o),t.d(o,{default:()=>M});var a=t(5166),l={class:"card"},r=(0,a.createElementVNode)("div",{class:"p-grid p-dir-col"},[(0,a.createElementVNode)("div",{class:"p-col"},[(0,a.createElementVNode)("h4",null,"Management Module")])],-1),s={class:"row"},d={class:"col-sm-6"},n={class:"card-body"},c={class:"p-fluid"},m={class:"p-field p-grid"},i=(0,a.createElementVNode)("label",{for:"tipe",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Module Name",-1),p={class:"p-col-3 p-md-6"},u={key:0,class:"p-error"},V={class:"p-fluid"},N={class:"p-field p-grid"},v=(0,a.createElementVNode)("label",{for:"kode",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Module Description",-1),f={class:"p-col-3 p-md-6"},h={key:0,class:"p-error"},k={class:"p-fluid"},b={class:"p-field p-grid"},E=(0,a.createElementVNode)("label",{for:"Status",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Module Status",-1),_={class:"p-col-3 p-md-6"},C={key:0,class:"p-error"},y={class:"form-group"};const g={data:function(){return{errors:[],mod_name:"",mod_desc:"",mod_stat:"",stat:[{nama:"Aktif",code:"T"},{nama:"Tidak Aktif",code:"F"}],token:localStorage.getItem("token")}},methods:{CreateModule:function(){var e=this;this.errors=[];var o=new FormData;o.append("mod_name",this.mod_name),o.append("mod_desc",this.mod_desc),o.append("mod_stat",this.mod_stat),this.axios.post("api/save-module",o,{headers:{Authorization:"Bearer "+this.token}}).then((function(){e.$toast.add({severity:"success",summary:"Success Message",detail:"Success Create"}),setTimeout((function(){return e.$router.push("/mng-module")}),1e3)})).catch((function(o){e.errors=o.response.data.errors}))}},render:function(e,o,t,g,M,S){var w=(0,a.resolveComponent)("Toast"),B=(0,a.resolveComponent)("Toolbar"),D=(0,a.resolveComponent)("InputText"),x=(0,a.resolveComponent)("Dropdown"),T=(0,a.resolveComponent)("Button");return(0,a.openBlock)(),(0,a.createElementBlock)("div",null,[(0,a.createVNode)(w),(0,a.createElementVNode)("div",l,[(0,a.createVNode)(B,{class:"p-mb-4"},{left:(0,a.withCtx)((function(){return[r]})),_:1}),(0,a.createElementVNode)("div",s,[(0,a.createElementVNode)("div",d,[(0,a.createElementVNode)("form",{onSubmit:o[4]||(o[4]=(0,a.withModifiers)((function(){return S.CreateModule&&S.CreateModule.apply(S,arguments)}),["prevent"]))},[(0,a.createElementVNode)("div",n,[(0,a.createElementVNode)("div",c,[(0,a.createElementVNode)("div",m,[i,(0,a.createElementVNode)("div",p,[(0,a.createVNode)(D,{modelValue:M.mod_name,"onUpdate:modelValue":o[0]||(o[0]=function(e){return M.mod_name=e}),placeholder:"Masukan Module Name",class:(0,a.normalizeClass)({"p-invalid":M.errors.mod_name})},null,8,["modelValue","class"]),M.errors.mod_name?((0,a.openBlock)(),(0,a.createElementBlock)("small",u,(0,a.toDisplayString)(M.errors.mod_name[0]),1)):(0,a.createCommentVNode)("",!0)])])]),(0,a.createElementVNode)("div",V,[(0,a.createElementVNode)("div",N,[v,(0,a.createElementVNode)("div",f,[(0,a.createVNode)(D,{modelValue:M.mod_desc,"onUpdate:modelValue":o[1]||(o[1]=function(e){return M.mod_desc=e}),placeholder:"Masukan Module Description",class:(0,a.normalizeClass)({"p-invalid":M.errors.mod_desc})},null,8,["modelValue","class"]),M.errors.mod_desc?((0,a.openBlock)(),(0,a.createElementBlock)("small",h,(0,a.toDisplayString)(M.errors.mod_desc[0]),1)):(0,a.createCommentVNode)("",!0)])])]),(0,a.createElementVNode)("div",k,[(0,a.createElementVNode)("div",b,[E,(0,a.createElementVNode)("div",_,[(0,a.createVNode)(x,{modelValue:M.mod_stat,"onUpdate:modelValue":o[2]||(o[2]=function(e){return M.mod_stat=e}),options:M.stat,showClear:!0,optionLabel:"nama",optionValue:"code",placeholder:"Select A Status",class:(0,a.normalizeClass)({"p-invalid":M.errors.mod_stat})},null,8,["modelValue","options","class"]),M.errors.mod_stat?((0,a.openBlock)(),(0,a.createElementBlock)("small",C,(0,a.toDisplayString)(M.errors.mod_stat[0]),1)):(0,a.createCommentVNode)("",!0)])])])]),(0,a.createElementVNode)("div",y,[(0,a.createVNode)(T,{class:"p-button-rounded p-button-primary p-mr-2 p-mb-2",icon:"pi pi-check",label:"Simpan",type:"submit"}),(0,a.createVNode)(T,{label:"Cancel",class:"p-button-rounded p-button-secondary p-mr-2 p-mb-2",icon:"pi pi-times",onClick:o[3]||(o[3]=function(o){return e.$router.push("/mng-module")})})])],32)])])])])}},M=g}}]);