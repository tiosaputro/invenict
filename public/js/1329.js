"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[1329],{51329:(e,t,o)=>{o.r(t),o.d(t,{default:()=>te});var a=o(48191),l={class:"card"},r=(0,a.createElementVNode)("div",{class:"p-grid p-dir-col"},[(0,a.createElementVNode)("div",{class:"p-col"},[(0,a.createElementVNode)("h4",null,"Management Menu")])],-1),n={class:"row"},s={class:"col-sm-6"},d={class:"card-body"},c={class:"p-fluid"},i={class:"p-field p-grid"},m=(0,a.createElementVNode)("label",{for:"tipe",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Menu Name",-1),p={class:"p-col-3 p-md-6"},u={key:0,class:"p-error"},V={class:"p-fluid"},h={class:"p-field p-grid"},N=(0,a.createElementVNode)("label",{for:"kode",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Menu Deskripsi",-1),f={class:"p-col-3 p-md-6"},k={key:0,class:"p-error"},v={class:"p-fluid"},y={class:"p-field p-grid"},E=(0,a.createElementVNode)("label",{for:"kode",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Menu Display",-1),_={class:"p-col-3 p-md-6"},b={key:0,class:"p-error"},g={class:"p-fluid"},C={class:"p-field p-grid"},S=(0,a.createElementVNode)("label",{for:"kode",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Controller",-1),M={class:"p-col-3 p-md-6"},B={key:0,class:"p-error"},w={class:"p-fluid"},x={class:"p-field p-grid"},D=(0,a.createElementVNode)("label",{for:"kode",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Action",-1),A={class:"p-col-3 p-md-6"},z={class:"p-fluid"},T={class:"p-field p-grid"},U=(0,a.createElementVNode)("label",{for:"Status",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Menu Status",-1),$={class:"p-col-3 p-md-6"},L={key:0,class:"p-error"},I={class:"p-fluid"},P={class:"p-field p-grid"},F=(0,a.createElementVNode)("label",{for:"Status",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Menu Type",-1),j={class:"p-col-3 p-md-6"},q={key:0,class:"p-error"},G={class:"p-fluid"},H={class:"p-field p-grid"},J=(0,a.createElementVNode)("label",{for:"Status",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Module Name",-1),K={class:"p-col-3 p-md-6"},O={key:0,class:"p-error"},Q={class:"p-fluid"},R={class:"p-field p-grid"},W=(0,a.createElementVNode)("label",{for:"Status",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Parent ID",-1),X={class:"p-col-3 p-md-6"},Y={key:0,class:"p-error"},Z={class:"form-group"};const ee={data:function(){return{errors:[],mod_id:"",menu_name:"",menu_desc:"",menu_display:"",menu_type:"",menu_stat:"",controller:"",action:"",parent_id:"",modul:[],parent:[],checkname:[],checkto:[],id:localStorage.getItem("id"),stat:[{nama:"Aktif",code:"T"},{nama:"Tidak Aktif",code:"F"}],type:[{nama:"Node",code:"N"},{nama:"Leaf",code:"L"}],token:localStorage.getItem("token")}},created:function(){this.cekUser()},methods:{cekUser:function(){var e=this;this.id?this.axios.get("api/cek-user/"+this.id,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.checkto=t.data.map((function(e){return e.to})),e.checkname=t.data.map((function(e){return e.name})),e.checkname.includes("Menu")||e.checkto.includes("/mng-menu")?(e.getModul(),e.getParent()):(e.$toast.add({severity:"error",summary:"403",detail:"Cannot Access This Page"}),setTimeout((function(){return e.$router.push("/dashboard")}),2e3))})):this.$router.push("/login")},getModul:function(){var e=this;this.axios.get("api/get-module",{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.modul=t.data})).catch((function(t){401==t.response.status&&(e.$toast.add({severity:"error",summary:"Error",detail:"Sesi Login Expired"}),localStorage.clear(),localStorage.setItem("Expired","true"),setTimeout((function(){return e.$router.push("/login")}),2e3))}))},getParent:function(){var e=this;this.axios.get("api/get-parent",{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.parent=t.data}))},CreateMenu:function(){var e=this;this.errors=[];var t=new FormData;t.append("mod_id",this.mod_id),t.append("menu_name",this.menu_name),t.append("menu_desc",this.menu_desc),t.append("menu_display",this.menu_display),t.append("menu_type",this.menu_type),t.append("menu_stat",this.menu_stat),t.append("controller",this.controller),t.append("action",this.action),t.append("parent_id",this.parent_id),this.axios.post("api/save-menu",t,{headers:{Authorization:"Bearer "+this.token}}).then((function(){e.$toast.add({severity:"success",summary:"Success Message",detail:"Success Create"}),setTimeout((function(){return e.$router.push("/mng-menu")}),1e3)})).catch((function(t){e.errors=t.response.data.errors}))}},render:function(e,t,o,ee,te,oe){var ae=(0,a.resolveComponent)("Toast"),le=(0,a.resolveComponent)("Toolbar"),re=(0,a.resolveComponent)("InputText"),ne=(0,a.resolveComponent)("Dropdown"),se=(0,a.resolveComponent)("Button");return(0,a.openBlock)(),(0,a.createElementBlock)("div",null,[(0,a.createVNode)(ae),(0,a.createElementVNode)("div",l,[(0,a.createVNode)(le,{class:"p-mb-4"},{left:(0,a.withCtx)((function(){return[r]})),_:1}),(0,a.createElementVNode)("div",n,[(0,a.createElementVNode)("div",s,[(0,a.createElementVNode)("form",{onSubmit:t[10]||(t[10]=(0,a.withModifiers)((function(){return oe.CreateMenu&&oe.CreateMenu.apply(oe,arguments)}),["prevent"]))},[(0,a.createElementVNode)("div",d,[(0,a.createElementVNode)("div",c,[(0,a.createElementVNode)("div",i,[m,(0,a.createElementVNode)("div",p,[(0,a.createVNode)(re,{modelValue:te.menu_name,"onUpdate:modelValue":t[0]||(t[0]=function(e){return te.menu_name=e}),placeholder:"Masukan Menu Name",class:(0,a.normalizeClass)({"p-invalid":te.errors.menu_name}),autofocus:""},null,8,["modelValue","class"]),te.errors.menu_name?((0,a.openBlock)(),(0,a.createElementBlock)("small",u,(0,a.toDisplayString)(te.errors.menu_name[0]),1)):(0,a.createCommentVNode)("",!0)])])]),(0,a.createElementVNode)("div",V,[(0,a.createElementVNode)("div",h,[N,(0,a.createElementVNode)("div",f,[(0,a.createVNode)(re,{modelValue:te.menu_desc,"onUpdate:modelValue":t[1]||(t[1]=function(e){return te.menu_desc=e}),placeholder:"Masukan Menu Deskripsi",class:(0,a.normalizeClass)({"p-invalid":te.errors.menu_desc})},null,8,["modelValue","class"]),te.errors.menu_desc?((0,a.openBlock)(),(0,a.createElementBlock)("small",k,(0,a.toDisplayString)(te.errors.menu_desc[0]),1)):(0,a.createCommentVNode)("",!0)])])]),(0,a.createElementVNode)("div",v,[(0,a.createElementVNode)("div",y,[E,(0,a.createElementVNode)("div",_,[(0,a.createVNode)(re,{modelValue:te.menu_display,"onUpdate:modelValue":t[2]||(t[2]=function(e){return te.menu_display=e}),placeholder:"Masukan Menu Display",class:(0,a.normalizeClass)({"p-invalid":te.errors.menu_display})},null,8,["modelValue","class"]),te.errors.menu_display?((0,a.openBlock)(),(0,a.createElementBlock)("small",b,(0,a.toDisplayString)(te.errors.menu_display[0]),1)):(0,a.createCommentVNode)("",!0)])])]),(0,a.createElementVNode)("div",g,[(0,a.createElementVNode)("div",C,[S,(0,a.createElementVNode)("div",M,[(0,a.createVNode)(re,{modelValue:te.controller,"onUpdate:modelValue":t[3]||(t[3]=function(e){return te.controller=e}),placeholder:"Masukan Controller",class:(0,a.normalizeClass)({"p-invalid":te.errors.controller})},null,8,["modelValue","class"]),te.errors.controller?((0,a.openBlock)(),(0,a.createElementBlock)("small",B,(0,a.toDisplayString)(te.errors.controller[0]),1)):(0,a.createCommentVNode)("",!0)])])]),(0,a.createElementVNode)("div",w,[(0,a.createElementVNode)("div",x,[D,(0,a.createElementVNode)("div",A,[(0,a.createVNode)(re,{modelValue:te.action,"onUpdate:modelValue":t[4]||(t[4]=function(e){return te.action=e}),placeholder:"Masukan Action"},null,8,["modelValue"])])])]),(0,a.createElementVNode)("div",z,[(0,a.createElementVNode)("div",T,[U,(0,a.createElementVNode)("div",$,[(0,a.createVNode)(ne,{modelValue:te.menu_stat,"onUpdate:modelValue":t[5]||(t[5]=function(e){return te.menu_stat=e}),options:te.stat,showClear:!0,optionLabel:"nama",optionValue:"code",placeholder:"Select A Status",class:(0,a.normalizeClass)({"p-invalid":te.errors.menu_stat})},null,8,["modelValue","options","class"]),te.errors.menu_stat?((0,a.openBlock)(),(0,a.createElementBlock)("small",L,(0,a.toDisplayString)(te.errors.menu_stat[0]),1)):(0,a.createCommentVNode)("",!0)])])]),(0,a.createElementVNode)("div",I,[(0,a.createElementVNode)("div",P,[F,(0,a.createElementVNode)("div",j,[(0,a.createVNode)(ne,{modelValue:te.menu_type,"onUpdate:modelValue":t[6]||(t[6]=function(e){return te.menu_type=e}),options:te.type,showClear:!0,optionLabel:"nama",optionValue:"code",placeholder:"Select A Menu Type",class:(0,a.normalizeClass)({"p-invalid":te.errors.menu_type})},null,8,["modelValue","options","class"]),te.errors.menu_type?((0,a.openBlock)(),(0,a.createElementBlock)("small",q,(0,a.toDisplayString)(te.errors.menu_type[0]),1)):(0,a.createCommentVNode)("",!0)])])]),(0,a.createElementVNode)("div",G,[(0,a.createElementVNode)("div",H,[J,(0,a.createElementVNode)("div",K,[(0,a.createVNode)(ne,{modelValue:te.mod_id,"onUpdate:modelValue":t[7]||(t[7]=function(e){return te.mod_id=e}),options:te.modul,showClear:!0,optionLabel:"name",optionValue:"code",placeholder:"Select A Module",class:(0,a.normalizeClass)({"p-invalid":te.errors.mod_id})},null,8,["modelValue","options","class"]),te.errors.mod_id?((0,a.openBlock)(),(0,a.createElementBlock)("small",O,(0,a.toDisplayString)(te.errors.mod_id[0]),1)):(0,a.createCommentVNode)("",!0)])])]),(0,a.createElementVNode)("div",Q,[(0,a.createElementVNode)("div",R,[W,(0,a.createElementVNode)("div",X,[(0,a.createVNode)(ne,{modelValue:te.parent_id,"onUpdate:modelValue":t[8]||(t[8]=function(e){return te.parent_id=e}),options:te.parent,showClear:!0,optionLabel:"name",optionValue:"code",placeholder:"Select A Parent",class:(0,a.normalizeClass)({"p-invalid":te.errors.parent_id})},null,8,["modelValue","options","class"]),te.errors.parent_id?((0,a.openBlock)(),(0,a.createElementBlock)("small",Y,(0,a.toDisplayString)(te.errors.parent_id[0]),1)):(0,a.createCommentVNode)("",!0)])])])]),(0,a.createElementVNode)("div",Z,[(0,a.createVNode)(se,{class:"p-button-rounded p-button-primary p-mr-2 p-mb-2",icon:"pi pi-check",label:"Simpan",type:"submit"}),(0,a.createVNode)(se,{label:"Cancel",class:"p-button-rounded p-button-secondary p-mr-2 p-mb-2",icon:"pi pi-times",onClick:t[9]||(t[9]=function(t){return e.$router.push("/mng-menu")})})])],32)])])])])}},te=ee}}]);