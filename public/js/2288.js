"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[2288],{92877:(e,s,a)=>{a.d(s,{Z:()=>l});var t=a(23645),r=a.n(t)()((function(e){return e[1]}));r.push([e.id,".user-image[data-v-0f95a0d2]{box-shadow:0 3px 6px rgba(0,0,0,.16),0 3px 6px rgba(0,0,0,.23);height:227pt}@media screen and (max-width:640px){.p-multiselect[data-v-0f95a0d2]{width:100%}}",""]);const l=r},82288:(e,s,a)=>{a.r(s),a.d(s,{default:()=>Ve});var t=a(48191);(0,t.pushScopeId)("data-v-0f95a0d2");var r={class:"card"},l=(0,t.createElementVNode)("div",{class:"p-grid p-dir-col"},[(0,t.createElementVNode)("div",{class:"p-col"},[(0,t.createElementVNode)("h4",null,"Management User")])],-1),o={class:"row"},d={class:"col-sm-6"},i={class:"card-body"},n={class:"p-fluid"},c={class:"p-field p-grid"},m=(0,t.createElementVNode)("label",{for:"tipe",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Full Name",-1),u={class:"p-col-3 p-md-6"},p={key:0,class:"p-error"},V={class:"p-fluid"},h={class:"p-field p-grid"},f=(0,t.createElementVNode)("label",{for:"kode",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Username",-1),v={class:"p-col-3 p-md-6"},N={key:0,class:"p-error"},g={class:"p-fluid"},E={class:"p-field p-grid"},k=(0,t.createElementVNode)("label",{for:"kode",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Email",-1),b={class:"p-col-3 p-md-6"},y={key:0,class:"p-error"},_={class:"p-fluid"},C={class:"p-field p-grid"},w=(0,t.createElementVNode)("label",{for:"kode",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Password",-1),x={class:"p-col-3 p-md-6"},S={key:0,class:"p-error"},B={class:"p-fluid"},U={class:"p-field p-grid"},D=(0,t.createElementVNode)("label",{for:"Deskripsi",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Alamat",-1),z={class:"p-col-3 p-md-6"},I={key:0,class:"p-error"},A={class:"p-fluid"},M={class:"p-field p-grid"},T=(0,t.createElementVNode)("label",{for:"Status",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Divisi",-1),R={class:"p-col-3 p-md-6"},$={key:0,class:"p-error"},L={class:"p-fluid"},F={class:"p-field p-grid"},P=(0,t.createElementVNode)("label",{for:"Status",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Status",-1),Z={class:"p-col-3 p-md-6"},j={key:0,class:"p-error"},K={class:"card",style:{width:"33rem"}},O={class:"p-fluid"},W={class:"p-field p-grid"},q=(0,t.createElementVNode)("label",{for:"Status",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Roles",-1),G={class:"p-col-3 p-md-6"},H={key:0,class:"p-error"},J={class:"form-group"},Q={class:"col-sm-6"},X={class:"p-fluid"},Y={class:"p-field p-grid"},ee=(0,t.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"155px"}},null,-1),se={class:"p-col-10 p-md-6"},ae={class:"card",style:{height:"23.5rem"}},te=["src"],re={class:"p-fluid"},le={class:"p-field p-grid"},oe=(0,t.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"155px"}},null,-1),de={class:"p-col-10 p-md-6"},ie={key:0,class:"p-error"};(0,t.popScopeId)();const ne={data:function(){return{submitted:!1,errors:[],user:{usr_name:"",usr_fullname:"",usr_passwd:"",usr_email:"",usr_status:"",usr_alamat:"",usr_roles:"",image:"",div:""},preview:"",stat:[{nama:"Aktif",code:"T"},{nama:"Tidak Aktif",code:"F"}],token:localStorage.getItem("token"),roles:[],divisi:[],checkname:[],checkto:[],id:localStorage.getItem("id")}},created:function(){this.cekUser()},methods:{cekUser:function(){var e=this;this.id?this.axios.get("api/cek-user/"+this.id,{headers:{Authorization:"Bearer "+this.token}}).then((function(s){e.checkto=s.data.map((function(e){return e.to})),e.checkname=s.data.map((function(e){return e.name})),e.checkname.includes("User")||e.checkto.includes("/mng-user")?(e.getRoles(),e.getDivisi()):(e.$toast.add({severity:"error",summary:"403",detail:"Cannot Access This Page"}),setTimeout((function(){return e.$router.push("/dashboard")}),2e3))})):this.$router.push("/login")},fileImage:function(e){this.foto=e.target.files[0],this.displayImage=!0,this.preview=URL.createObjectURL(e.target.files[0]),this.createImage(this.foto)},createImage:function(e){new Image;var s=new FileReader,a=this.user;s.onload=function(e){a.image=e.target.result},s.readAsDataURL(e)},getDivisi:function(){var e=this;this.axios.get("api/get-divisi",{headers:{Authorization:"Bearer "+this.token}}).then((function(s){e.divisi=s.data}))},getRoles:function(){var e=this;this.axios.get("api/get-role",{headers:{Authorization:"Bearer "+this.token}}).then((function(s){e.roles=s.data})).catch((function(s){401==s.response.status&&(e.$toast.add({severity:"error",summary:"Error",detail:"Sesi Login Expired"}),localStorage.clear(),localStorage.setItem("Expired","true"),setTimeout((function(){return e.$router.push("/login")}),2e3))}))},CreateUser:function(){var e=this;this.submitted=!0,""!=this.user.image&&(this.errors=[],this.axios.post("api/add-user",this.user,{headers:{Authorization:"Bearer "+this.token}}).then((function(){e.axios.post("api/save-usr-role",e.user,{headers:{Authorization:"Bearer "+e.token}}),e.$toast.add({severity:"success",summary:"Success Message",detail:"Success Create"}),setTimeout((function(){return e.$router.push("/mng-user")}),1e3)})).catch((function(s){e.errors=s.response.data.errors})))}}};var ce=a(93379),me=a.n(ce),ue=a(92877),pe={insert:"head",singleton:!1};me()(ue.Z,pe);ue.Z.locals;ne.render=function(e,s,a,ne,ce,me){var ue=(0,t.resolveComponent)("Toast"),pe=(0,t.resolveComponent)("Toolbar"),Ve=(0,t.resolveComponent)("InputText"),he=(0,t.resolveComponent)("Password"),fe=(0,t.resolveComponent)("Textarea"),ve=(0,t.resolveComponent)("Dropdown"),Ne=(0,t.resolveComponent)("MultiSelect"),ge=(0,t.resolveComponent)("Button");return(0,t.openBlock)(),(0,t.createElementBlock)("div",null,[(0,t.createVNode)(ue),(0,t.createElementVNode)("div",r,[(0,t.createVNode)(pe,{class:"p-mb-4"},{left:(0,t.withCtx)((function(){return[l]})),_:1}),(0,t.createElementVNode)("div",o,[(0,t.createElementVNode)("div",d,[(0,t.createElementVNode)("form",{onSubmit:s[9]||(s[9]=(0,t.withModifiers)((function(){return me.CreateUser&&me.CreateUser.apply(me,arguments)}),["prevent"]))},[(0,t.createElementVNode)("div",i,[(0,t.createElementVNode)("div",n,[(0,t.createElementVNode)("div",c,[m,(0,t.createElementVNode)("div",u,[(0,t.createVNode)(Ve,{type:"text",modelValue:ce.user.usr_fullname,"onUpdate:modelValue":s[0]||(s[0]=function(e){return ce.user.usr_fullname=e}),placeholder:"Masukan Full Name",class:(0,t.normalizeClass)({"p-invalid":ce.errors.usr_fullname})},null,8,["modelValue","class"]),ce.errors.usr_fullname?((0,t.openBlock)(),(0,t.createElementBlock)("small",p,(0,t.toDisplayString)(ce.errors.usr_fullname[0]),1)):(0,t.createCommentVNode)("",!0)])])]),(0,t.createElementVNode)("div",V,[(0,t.createElementVNode)("div",h,[f,(0,t.createElementVNode)("div",v,[(0,t.createVNode)(Ve,{type:"text",modelValue:ce.user.usr_name,"onUpdate:modelValue":s[1]||(s[1]=function(e){return ce.user.usr_name=e}),placeholder:"Masukan Username",class:(0,t.normalizeClass)({"p-invalid":ce.errors.usr_name})},null,8,["modelValue","class"]),ce.errors.usr_name?((0,t.openBlock)(),(0,t.createElementBlock)("small",N,(0,t.toDisplayString)(ce.errors.usr_name[0]),1)):(0,t.createCommentVNode)("",!0)])])]),(0,t.createElementVNode)("div",g,[(0,t.createElementVNode)("div",E,[k,(0,t.createElementVNode)("div",b,[(0,t.createVNode)(Ve,{type:"email",modelValue:ce.user.usr_email,"onUpdate:modelValue":s[2]||(s[2]=function(e){return ce.user.usr_email=e}),placeholder:"Masukan Email",class:(0,t.normalizeClass)({"p-invalid":ce.errors.usr_email})},null,8,["modelValue","class"]),ce.errors.usr_email?((0,t.openBlock)(),(0,t.createElementBlock)("small",y,(0,t.toDisplayString)(ce.errors.usr_email[0]),1)):(0,t.createCommentVNode)("",!0)])])]),(0,t.createElementVNode)("div",_,[(0,t.createElementVNode)("div",C,[w,(0,t.createElementVNode)("div",x,[(0,t.createVNode)(he,{modelValue:ce.user.usr_passwd,"onUpdate:modelValue":s[3]||(s[3]=function(e){return ce.user.usr_passwd=e}),placeholder:"Masukan Password",class:(0,t.normalizeClass)({"p-invalid":ce.errors.usr_passwd}),toggleMask:"",feedback:!1},null,8,["modelValue","class"]),ce.errors.usr_passwd?((0,t.openBlock)(),(0,t.createElementBlock)("small",S,(0,t.toDisplayString)(ce.errors.usr_passwd[0]),1)):(0,t.createCommentVNode)("",!0)])])]),(0,t.createElementVNode)("div",B,[(0,t.createElementVNode)("div",U,[D,(0,t.createElementVNode)("div",z,[(0,t.createVNode)(fe,{modelValue:ce.user.usr_alamat,"onUpdate:modelValue":s[4]||(s[4]=function(e){return ce.user.usr_alamat=e}),autoResize:!0,rows:"5",cols:"30",placeholder:"Masukan Keterangan . . .",class:(0,t.normalizeClass)({"p-invalid":ce.errors.usr_alamat})},null,8,["modelValue","class"]),ce.errors.usr_alamat?((0,t.openBlock)(),(0,t.createElementBlock)("small",I,(0,t.toDisplayString)(ce.errors.usr_alamat[0]),1)):(0,t.createCommentVNode)("",!0)])])]),(0,t.createElementVNode)("div",A,[(0,t.createElementVNode)("div",M,[T,(0,t.createElementVNode)("div",R,[(0,t.createVNode)(ve,{modelValue:ce.user.div,"onUpdate:modelValue":s[5]||(s[5]=function(e){return ce.user.div=e}),options:ce.divisi,showClear:!0,filter:!0,optionLabel:"name",optionValue:"code",placeholder:"Select A Divisi",class:(0,t.normalizeClass)({"p-invalid":ce.errors.div})},null,8,["modelValue","options","class"]),ce.errors.div?((0,t.openBlock)(),(0,t.createElementBlock)("small",$,(0,t.toDisplayString)(ce.errors.div[0]),1)):(0,t.createCommentVNode)("",!0)])])]),(0,t.createElementVNode)("div",L,[(0,t.createElementVNode)("div",F,[P,(0,t.createElementVNode)("div",Z,[(0,t.createVNode)(ve,{modelValue:ce.user.usr_status,"onUpdate:modelValue":s[6]||(s[6]=function(e){return ce.user.usr_status=e}),options:ce.stat,showClear:!0,filter:!0,optionLabel:"nama",optionValue:"code",placeholder:"Select A Status",class:(0,t.normalizeClass)({"p-invalid":ce.errors.usr_status})},null,8,["modelValue","options","class"]),ce.errors.usr_status?((0,t.openBlock)(),(0,t.createElementBlock)("small",j,(0,t.toDisplayString)(ce.errors.usr_status[0]),1)):(0,t.createCommentVNode)("",!0)])])])]),(0,t.createElementVNode)("div",K,[(0,t.createElementVNode)("div",O,[(0,t.createElementVNode)("div",W,[q,(0,t.createElementVNode)("div",G,[(0,t.createVNode)(Ne,{modelValue:ce.user.usr_roles,"onUpdate:modelValue":s[7]||(s[7]=function(e){return ce.user.usr_roles=e}),options:ce.roles,optionValue:"code",optionLabel:"name",display:"chip",placeholder:"Select Roles",class:(0,t.normalizeClass)({"p-invalid":ce.errors.usr_roles})},null,8,["modelValue","options","class"]),ce.errors.usr_roles?((0,t.openBlock)(),(0,t.createElementBlock)("small",H,(0,t.toDisplayString)(ce.errors.usr_roles[0]),1)):(0,t.createCommentVNode)("",!0)])])])]),(0,t.createElementVNode)("div",J,[(0,t.createVNode)(ge,{class:"p-button-rounded p-button-primary p-mr-2 p-mb-2",icon:"pi pi-check",label:"Simpan",type:"submit"}),(0,t.createVNode)(ge,{label:"Cancel",class:"p-button-rounded p-button-secondary p-mr-2 p-mb-2",icon:"pi pi-times",onClick:s[8]||(s[8]=function(s){return e.$router.push("/mng-user")})})])],32)]),(0,t.createElementVNode)("div",Q,[(0,t.createElementVNode)("div",X,[(0,t.createElementVNode)("div",Y,[ee,(0,t.createElementVNode)("div",se,[(0,t.createElementVNode)("div",ae,[(0,t.createElementVNode)("img",{src:ce.preview,class:"user-image"},null,8,te)])])])]),(0,t.createElementVNode)("div",re,[(0,t.createElementVNode)("div",le,[oe,(0,t.createElementVNode)("div",de,[(0,t.createVNode)(Ve,{type:"file",name:"foto",class:(0,t.normalizeClass)([{"p-invalid":ce.submitted&&!ce.user.image},"form-control"]),ref:"fileInput",onChange:me.fileImage},null,8,["class","onChange"]),ce.submitted&&!ce.user.image?((0,t.openBlock)(),(0,t.createElementBlock)("small",ie," Foto Wajib Disi ")):(0,t.createCommentVNode)("",!0)])])])])])])])},ne.__scopeId="data-v-0f95a0d2";const Ve=ne}}]);