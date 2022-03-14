"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[160],{50160:(e,t,o)=>{o.r(t),o.d(t,{default:()=>re});var l=o(48191),a={class:"card"},r=(0,l.createElementVNode)("div",{class:"p-grid p-dir-col"},[(0,l.createElementVNode)("div",{class:"p-col"},[(0,l.createElementVNode)("h4",null,"Management Menu")])],-1),n={class:"row"},s={class:"col-sm-6"},d={class:"card-body"},c={class:"p-fluid"},m={class:"p-field p-grid"},i=(0,l.createElementVNode)("label",{for:"tipe",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Menu ID",-1),p={class:"p-col-3 p-md-6"},u={class:"p-fluid"},V={class:"p-field p-grid"},h=(0,l.createElementVNode)("label",{for:"tipe",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Menu Name",-1),N={class:"p-col-3 p-md-6"},f={key:0,class:"p-error"},k={class:"p-fluid"},v={class:"p-field p-grid"},E=(0,l.createElementVNode)("label",{for:"kode",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Menu Deskripsi",-1),y={class:"p-col-3 p-md-6"},b={key:0,class:"p-error"},g={class:"p-fluid"},_={class:"p-field p-grid"},C=(0,l.createElementVNode)("label",{for:"kode",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Menu Display",-1),M={class:"p-col-3 p-md-6"},S={key:0,class:"p-error"},B={class:"p-fluid"},w={class:"p-field p-grid"},x=(0,l.createElementVNode)("label",{for:"kode",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Controller",-1),U={class:"p-col-3 p-md-6"},D={key:0,class:"p-error"},A={class:"p-fluid"},z={class:"p-field p-grid"},T=(0,l.createElementVNode)("label",{for:"kode",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Action",-1),$={class:"p-col-3 p-md-6"},L={class:"p-fluid"},I={class:"p-field p-grid"},P=(0,l.createElementVNode)("label",{for:"Status",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Menu Status",-1),F={class:"p-col-3 p-md-6"},j={key:0,class:"p-error"},q={class:"p-fluid"},G={class:"p-field p-grid"},H=(0,l.createElementVNode)("label",{for:"Status",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Menu Type",-1),J={class:"p-col-3 p-md-6"},K={key:0,class:"p-error"},O={class:"p-fluid"},Q={class:"p-field p-grid"},R=(0,l.createElementVNode)("label",{for:"Status",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Module Name",-1),W={class:"p-col-3 p-md-6"},X={key:0,class:"p-error"},Y={class:"p-fluid"},Z={class:"p-field p-grid"},ee=(0,l.createElementVNode)("label",{for:"Status",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Parent ID",-1),te={class:"p-col-3 p-md-6"},oe={key:0,class:"p-error"},le={class:"form-group"};const ae={data:function(){return{errors:[],menu:[],modul:[],parent:[],stat:[{nama:"Aktif",code:"T"},{nama:"Tidak Aktif",code:"F"}],type:[{nama:"Node",code:"N"},{nama:"Leaf",code:"L"}],token:localStorage.getItem("token"),checkname:[],checkto:[],id:localStorage.getItem("id")}},created:function(){this.cekUser()},methods:{cekUser:function(){var e=this;this.id?this.axios.get("/api/cek-user/"+this.id,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.checkto=t.data.map((function(e){return e.to})),e.checkname=t.data.map((function(e){return e.name})),e.checkname.includes("Menu")||e.checkto.includes("/mng-menu")?(e.getModul(),e.getParent(),e.getMenu()):(e.$toast.add({severity:"error",summary:"403",detail:"Cannot Access This Page"}),setTimeout((function(){return e.$router.push("/dashboard")}),2e3))})):this.$router.push("/login")},getMenu:function(){var e=this;this.axios.get("/api/edit-menu/"+this.$route.params.code,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.menu=t.data}))},getModul:function(){var e=this;this.axios.get("/api/get-module",{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.modul=t.data})).catch((function(t){401==t.response.status&&(e.$toast.add({severity:"error",summary:"Error",detail:"Sesi Login Expired"}),localStorage.clear(),localStorage.setItem("Expired","true"),setTimeout((function(){return e.$router.push("/login")}),2e3))}))},getParent:function(){var e=this;this.axios.get("/api/get-parent",{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.parent=t.data}))},UpdateMenu:function(){var e=this;this.errors=[],this.axios.put("/api/update-menu/"+this.$route.params.code,this.menu,{headers:{Authorization:"Bearer "+this.token}}).then((function(){e.$toast.add({severity:"success",summary:"Success Message",detail:"Success Update"}),setTimeout((function(){return e.$router.push("/mng-menu")}),1e3)})).catch((function(t){422==t.response.status&&(e.errors=t.response.data.errors)}))}},render:function(e,t,o,ae,re,ne){var se=(0,l.resolveComponent)("Toast"),de=(0,l.resolveComponent)("Toolbar"),ce=(0,l.resolveComponent)("InputText"),me=(0,l.resolveComponent)("Dropdown"),ie=(0,l.resolveComponent)("Button");return(0,l.openBlock)(),(0,l.createElementBlock)("div",null,[(0,l.createVNode)(se),(0,l.createElementVNode)("div",a,[(0,l.createVNode)(de,{class:"p-mb-4"},{left:(0,l.withCtx)((function(){return[r]})),_:1}),(0,l.createElementVNode)("div",n,[(0,l.createElementVNode)("div",s,[(0,l.createElementVNode)("form",{onSubmit:t[11]||(t[11]=(0,l.withModifiers)((function(){return ne.UpdateMenu&&ne.UpdateMenu.apply(ne,arguments)}),["prevent"]))},[(0,l.createElementVNode)("div",d,[(0,l.createElementVNode)("div",c,[(0,l.createElementVNode)("div",m,[i,(0,l.createElementVNode)("div",p,[(0,l.createVNode)(ce,{modelValue:re.menu.menu_id,"onUpdate:modelValue":t[0]||(t[0]=function(e){return re.menu.menu_id=e}),disabled:""},null,8,["modelValue"])])])]),(0,l.createElementVNode)("div",u,[(0,l.createElementVNode)("div",V,[h,(0,l.createElementVNode)("div",N,[(0,l.createVNode)(ce,{modelValue:re.menu.menu_name,"onUpdate:modelValue":t[1]||(t[1]=function(e){return re.menu.menu_name=e}),placeholder:"Masukan Menu Name",class:(0,l.normalizeClass)({"p-invalid":re.errors.menu_name}),autofocus:""},null,8,["modelValue","class"]),re.errors.menu_name?((0,l.openBlock)(),(0,l.createElementBlock)("small",f,(0,l.toDisplayString)(re.errors.menu_name[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",k,[(0,l.createElementVNode)("div",v,[E,(0,l.createElementVNode)("div",y,[(0,l.createVNode)(ce,{modelValue:re.menu.menu_desc,"onUpdate:modelValue":t[2]||(t[2]=function(e){return re.menu.menu_desc=e}),placeholder:"Masukan Menu Deskripsi",class:(0,l.normalizeClass)({"p-invalid":re.errors.menu_desc})},null,8,["modelValue","class"]),re.errors.menu_desc?((0,l.openBlock)(),(0,l.createElementBlock)("small",b,(0,l.toDisplayString)(re.errors.menu_desc[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",g,[(0,l.createElementVNode)("div",_,[C,(0,l.createElementVNode)("div",M,[(0,l.createVNode)(ce,{modelValue:re.menu.menu_display,"onUpdate:modelValue":t[3]||(t[3]=function(e){return re.menu.menu_display=e}),placeholder:"Masukan Menu Display",class:(0,l.normalizeClass)({"p-invalid":re.errors.menu_display})},null,8,["modelValue","class"]),re.errors.menu_display?((0,l.openBlock)(),(0,l.createElementBlock)("small",S,(0,l.toDisplayString)(re.errors.menu_display[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",B,[(0,l.createElementVNode)("div",w,[x,(0,l.createElementVNode)("div",U,[(0,l.createVNode)(ce,{modelValue:re.menu.controller,"onUpdate:modelValue":t[4]||(t[4]=function(e){return re.menu.controller=e}),placeholder:"Masukan Controller",class:(0,l.normalizeClass)({"p-invalid":re.errors.controller})},null,8,["modelValue","class"]),re.errors.controller?((0,l.openBlock)(),(0,l.createElementBlock)("small",D,(0,l.toDisplayString)(re.errors.controller[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",A,[(0,l.createElementVNode)("div",z,[T,(0,l.createElementVNode)("div",$,[(0,l.createVNode)(ce,{modelValue:re.menu.action,"onUpdate:modelValue":t[5]||(t[5]=function(e){return re.menu.action=e}),placeholder:"Masukan Action"},null,8,["modelValue"])])])]),(0,l.createElementVNode)("div",L,[(0,l.createElementVNode)("div",I,[P,(0,l.createElementVNode)("div",F,[(0,l.createVNode)(me,{modelValue:re.menu.menu_stat,"onUpdate:modelValue":t[6]||(t[6]=function(e){return re.menu.menu_stat=e}),options:re.stat,showClear:!0,optionLabel:"nama",optionValue:"code",placeholder:"Select A Status",class:(0,l.normalizeClass)({"p-invalid":re.errors.menu_stat})},null,8,["modelValue","options","class"]),re.errors.menu_stat?((0,l.openBlock)(),(0,l.createElementBlock)("small",j,(0,l.toDisplayString)(re.errors.menu_stat[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",q,[(0,l.createElementVNode)("div",G,[H,(0,l.createElementVNode)("div",J,[(0,l.createVNode)(me,{modelValue:re.menu.menu_type,"onUpdate:modelValue":t[7]||(t[7]=function(e){return re.menu.menu_type=e}),options:re.type,showClear:!0,optionLabel:"nama",optionValue:"code",placeholder:"Select A Menu Type",class:(0,l.normalizeClass)({"p-invalid":re.errors.menu_type})},null,8,["modelValue","options","class"]),re.errors.menu_type?((0,l.openBlock)(),(0,l.createElementBlock)("small",K,(0,l.toDisplayString)(re.errors.menu_type[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",O,[(0,l.createElementVNode)("div",Q,[R,(0,l.createElementVNode)("div",W,[(0,l.createVNode)(me,{modelValue:re.menu.mod_id,"onUpdate:modelValue":t[8]||(t[8]=function(e){return re.menu.mod_id=e}),options:re.modul,showClear:!0,optionLabel:"name",optionValue:"code",placeholder:"Select A Module",class:(0,l.normalizeClass)({"p-invalid":re.errors.mod_id})},null,8,["modelValue","options","class"]),re.errors.mod_id?((0,l.openBlock)(),(0,l.createElementBlock)("small",X,(0,l.toDisplayString)(re.errors.mod_id[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",Y,[(0,l.createElementVNode)("div",Z,[ee,(0,l.createElementVNode)("div",te,[(0,l.createVNode)(me,{modelValue:re.menu.parent_id,"onUpdate:modelValue":t[9]||(t[9]=function(e){return re.menu.parent_id=e}),options:re.parent,showClear:!0,optionLabel:"name",optionValue:"code",placeholder:"Select A Parent",class:(0,l.normalizeClass)({"p-invalid":re.errors.parent_id})},null,8,["modelValue","options","class"]),re.errors.parent_id?((0,l.openBlock)(),(0,l.createElementBlock)("small",oe,(0,l.toDisplayString)(re.errors.parent_id[0]),1)):(0,l.createCommentVNode)("",!0)])])])]),(0,l.createElementVNode)("div",le,[(0,l.createVNode)(ie,{class:"p-button-rounded p-button-primary p-mr-2 p-mb-2",icon:"pi pi-check",label:"Simpan",type:"submit"}),(0,l.createVNode)(ie,{label:"Cancel",class:"p-button-rounded p-button-secondary p-mr-2 p-mb-2",icon:"pi pi-times",onClick:t[10]||(t[10]=function(t){return e.$router.push("/mng-menu")})})])],32)])])])])}},re=ae}}]);