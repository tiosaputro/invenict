"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[1788],{1788:(e,t,r)=>{r.r(t),r.d(t,{default:()=>Y});var i=r(48191),o={class:"card"},s=(0,i.createElementVNode)("div",{class:"p-grid p-dir-col"},[(0,i.createElementVNode)("div",{class:"p-col"},[(0,i.createElementVNode)("h4",null,"ICT Request")])],-1),a={class:"card-body"},l={class:"p-fluid"},n={class:"p-field p-grid"},c=(0,i.createElementVNode)("label",{for:"tipe",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"No. Request",-1),d={class:"p-col-3"},u={class:"p-fluid"},p={class:"p-field p-grid"},m=(0,i.createElementVNode)("label",{for:"kode",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Tgl. Request",-1),h={class:"p-col-3"},V={class:"p-inputgroup"},k=["value","onClick"],v={key:0,class:"p-error"},f={class:"p-fluid"},b={class:"p-field p-grid"},y=(0,i.createElementVNode)("label",{for:"Deskripsi",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Tipe Request",-1),N={class:"p-col-3"},g={key:0,class:"p-error"},q={key:1,class:"p-error"},E={class:"p-fluid"},_={class:"p-field p-grid"},C=(0,i.createElementVNode)("label",{for:"Status",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"User",-1),B={class:"p-col-3"},x={key:0,class:"p-error"},D={class:"p-fluid"},U={class:"p-field p-grid"},w=(0,i.createElementVNode)("label",{for:"Deskripsi",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Divisi User",-1),S={class:"p-col-3"},T={key:0,class:"p-error"},z={class:"p-fluid"},I={class:"p-field p-grid"},R=(0,i.createElementVNode)("label",{for:"Deskripsi",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"120px"}},"Bisnis Unit",-1),$={class:"p-col-3"},A={key:0,class:"p-error"},P={key:1,class:"p-error"},M={class:"form-group"};const L={data:function(){return{errors:[],error:[],mutasi:[],type:[],divisi:[],bu:[],mask:{input:"DD MMM YYYY"},token:localStorage.getItem("token"),checkname:[],checkto:[],id:localStorage.getItem("id")}},created:function(){this.cekUser()},methods:{cekUser:function(){var e=this;this.id?this.axios.get("/api/cek-user/"+this.id,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.checkto=t.data.map((function(e){return e.to})),e.checkname=t.data.map((function(e){return e.name})),e.checkname.includes("Request")||e.checkto.includes("/ict-request")?(e.getIct(),e.getDivisi()):(e.$toast.add({severity:"error",summary:"403",detail:"Cannot Access This Page"}),setTimeout((function(){return e.$router.push("/dashboard")}),2e3))})):this.$router.push("/login")},getIct:function(){var e=this;this.axios.get("/api/edit-ict/"+this.$route.params.code,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.mutasi=t.data,e.getBisnis(),e.getReq()})).catch((function(t){401==t.response.status&&(e.$toast.add({severity:"error",summary:"Error",detail:"Sesi Login Expired"}),localStorage.clear(),localStorage.setItem("Expired","true"),setTimeout((function(){return e.$router.push("/login")}),2e3))}))},getDivisi:function(){var e=this;this.axios.get("/api/get-divisi",{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.divisi=t.data}))},getReq:function(){var e=this;this.axios.get("/api/getType",{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.type=t.data}))},getBisnis:function(){var e=this;this.axios.get("/api/get-bisnis",{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.bu=t.data}))},UpdateIct:function(){var e=this;this.errors=[],this.error=[],null!=this.mutasi.ireq_bu&&null!=this.mutasi.ireq_type?this.axios.put("/api/update-ict/"+this.$route.params.code,this.mutasi,{headers:{Authorization:"Bearer "+this.token}}).then((function(){e.$toast.add({severity:"success",summary:"Success Message",detail:"Success Update"}),setTimeout((function(){return e.$router.push("/ict-request")}),1e3)})).catch((function(t){e.errors=t.response.data.errors})):(null==this.mutasi.ireq_type&&(this.error.ireq_type="Tipe Request Wajib Diisi"),null==this.mutasi.ireq_bu&&(this.error.ireq_bu="Bisnis Unit Wajib Diisi"))}},render:function(e,t,r,L,Y,j){var W=(0,i.resolveComponent)("Toast"),F=(0,i.resolveComponent)("Toolbar"),G=(0,i.resolveComponent)("InputText"),H=(0,i.resolveComponent)("Button"),J=(0,i.resolveComponent)("DatePicker"),K=(0,i.resolveComponent)("Dropdown");return(0,i.openBlock)(),(0,i.createElementBlock)("div",null,[(0,i.createVNode)(W),(0,i.createElementVNode)("div",o,[(0,i.createVNode)(F,{class:"p-mb-4"},{left:(0,i.withCtx)((function(){return[s]})),_:1}),(0,i.createElementVNode)("div",a,[(0,i.createElementVNode)("form",{onSubmit:t[8]||(t[8]=(0,i.withModifiers)((function(){return j.UpdateIct&&j.UpdateIct.apply(j,arguments)}),["prevent"]))},[(0,i.createElementVNode)("div",l,[(0,i.createElementVNode)("div",n,[c,(0,i.createElementVNode)("div",d,[(0,i.createVNode)(G,{type:"text",modelValue:Y.mutasi.ireq_no,"onUpdate:modelValue":t[0]||(t[0]=function(e){return Y.mutasi.ireq_no=e}),disabled:""},null,8,["modelValue"])])])]),(0,i.createElementVNode)("div",u,[(0,i.createElementVNode)("div",p,[m,(0,i.createElementVNode)("div",h,[(0,i.createElementVNode)("div",V,[(0,i.createVNode)(J,{modelValue:Y.mutasi.ireq_date,"onUpdate:modelValue":t[2]||(t[2]=function(e){return Y.mutasi.ireq_date=e}),masks:Y.mask},{default:(0,i.withCtx)((function(e){var r=e.inputValue,o=e.togglePopover;return[(0,i.createElementVNode)("input",{class:"bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none",value:r,onClick:o,placeholder:"Pilih Tgl. Request",readonly:""},null,8,k),Y.mutasi.ireq_date?((0,i.openBlock)(),(0,i.createBlock)(H,{key:1,icon:"pi pi-trash",class:"p-button-danger",onClick:t[1]||(t[1]=function(e){return Y.mutasi.ireq_date=""})})):((0,i.openBlock)(),(0,i.createBlock)(H,{key:0,icon:"pi pi-calendar",onClick:o},null,8,["onClick"]))]})),_:1},8,["modelValue","masks"])]),Y.errors.ireq_date?((0,i.openBlock)(),(0,i.createElementBlock)("small",v,(0,i.toDisplayString)(Y.errors.ireq_date[0]),1)):(0,i.createCommentVNode)("",!0)])])]),(0,i.createElementVNode)("div",f,[(0,i.createElementVNode)("div",b,[y,(0,i.createElementVNode)("div",N,[(0,i.createVNode)(K,{modelValue:Y.mutasi.ireq_type,"onUpdate:modelValue":t[3]||(t[3]=function(e){return Y.mutasi.ireq_type=e}),options:Y.type,optionLabel:"name",optionValue:"code",placeholder:"Pilih Tipe Request",showClear:!0,class:(0,i.normalizeClass)({"p-invalid":Y.errors.ireq_type})},null,8,["modelValue","options","class"]),Y.errors.ireq_type?((0,i.openBlock)(),(0,i.createElementBlock)("small",g,(0,i.toDisplayString)(Y.errors.ireq_type[0]),1)):(0,i.createCommentVNode)("",!0),Y.error.ireq_type?((0,i.openBlock)(),(0,i.createElementBlock)("small",q,(0,i.toDisplayString)(Y.error.ireq_type),1)):(0,i.createCommentVNode)("",!0)])])]),(0,i.createElementVNode)("div",E,[(0,i.createElementVNode)("div",_,[C,(0,i.createElementVNode)("div",B,[(0,i.createVNode)(G,{type:"text",modelValue:Y.mutasi.ireq_user,"onUpdate:modelValue":t[4]||(t[4]=function(e){return Y.mutasi.ireq_user=e}),placeholder:"Masukan User",class:(0,i.normalizeClass)({"p-invalid":Y.errors.ireq_user})},null,8,["modelValue","class"]),Y.errors.ireq_user?((0,i.openBlock)(),(0,i.createElementBlock)("small",x,(0,i.toDisplayString)(Y.errors.ireq_user[0]),1)):(0,i.createCommentVNode)("",!0)])])]),(0,i.createElementVNode)("div",D,[(0,i.createElementVNode)("div",U,[w,(0,i.createElementVNode)("div",S,[(0,i.createVNode)(K,{modelValue:Y.mutasi.ireq_divisi_user,"onUpdate:modelValue":t[5]||(t[5]=function(e){return Y.mutasi.ireq_divisi_user=e}),options:Y.divisi,optionLabel:"name",optionValue:"code",placeholder:"Pilih Divisi User",showClear:!0,filter:!0,class:(0,i.normalizeClass)({"p-invalid":Y.error.usr_divisi})},null,8,["modelValue","options","class"]),Y.error.usr_divisi?((0,i.openBlock)(),(0,i.createElementBlock)("small",T,(0,i.toDisplayString)(Y.error.usr_divisi),1)):(0,i.createCommentVNode)("",!0)])])]),(0,i.createElementVNode)("div",z,[(0,i.createElementVNode)("div",I,[R,(0,i.createElementVNode)("div",$,[(0,i.createVNode)(K,{modelValue:Y.mutasi.ireq_bu,"onUpdate:modelValue":t[6]||(t[6]=function(e){return Y.mutasi.ireq_bu=e}),options:Y.bu,optionLabel:"name",optionValue:"code",placeholder:"Pilih Bisnis Unit",showClear:!0,filter:!0,class:(0,i.normalizeClass)({"p-invalid":Y.errors.ireq_bu})},null,8,["modelValue","options","class"]),Y.errors.ireq_bu?((0,i.openBlock)(),(0,i.createElementBlock)("small",A,(0,i.toDisplayString)(Y.errors.ireq_bu[0]),1)):(0,i.createCommentVNode)("",!0),Y.error.ireq_bu?((0,i.openBlock)(),(0,i.createElementBlock)("small",P,(0,i.toDisplayString)(Y.error.ireq_bu),1)):(0,i.createCommentVNode)("",!0)])])]),(0,i.createElementVNode)("div",M,[(0,i.createVNode)(H,{class:"p-button-rounded p-button-primary p-mr-2 p-mb-2",icon:"pi pi-check",label:"Simpan",type:"submit"}),(0,i.createVNode)(H,{label:"Cancel",class:"p-button-rounded p-button-secondary p-mr-2 p-mb-2",icon:"pi pi-times",onClick:t[7]||(t[7]=function(t){return e.$router.push("/ict-request")})})])],32)])])])}},Y=L}}]);