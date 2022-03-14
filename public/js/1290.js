"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[1290],{8266:(e,t,a)=>{a.d(t,{Z:()=>s});var i=a(23645),l=a.n(i)()((function(e){return e[1]}));l.push([e.id,".mutasi-image[data-v-d20cbc3e]{box-shadow:0 3px 6px rgba(0,0,0,.16),0 3px 6px rgba(0,0,0,.23);width:485px}",""]);const s=l},71290:(e,t,a)=>{a.r(t),a.d(t,{default:()=>G});var i=a(48191);(0,i.pushScopeId)("data-v-d20cbc3e");var l={class:"card"},s=(0,i.createElementVNode)("div",{class:"p-grid p-dir-col"},[(0,i.createElementVNode)("div",{class:"p-col"},[(0,i.createElementVNode)("h4",null,"Mutasi Peripheral ICT")])],-1),o={class:"row"},n={class:"col-sm-6"},r={class:"p-fluid p-formgrid p-grid"},c={class:"p-field p-grid p-col"},d=(0,i.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"155px"}},"Kode Peripheral",-1),u={class:"p-col-2 p-md-6"},m={class:"p-fluid p-formgrid p-grid"},p={class:"p-field p-grid p-col"},g=(0,i.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"155px"}},"Dari Tgl",-1),h={class:"p-col-2 p-md-6"},k={class:"p-inputgroup"},V=["value","onClick"],v={key:0,class:"p-error"},b={class:"p-fluid"},f={class:"p-field p-grid"},N=(0,i.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"155px"}},"SD Tgl",-1),E={class:"p-col-2 p-md-6"},_={class:"p-inputgroup"},y=["value","onClick"],C={class:"p-fluid"},x={class:"p-field p-grid"},B=(0,i.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"155px"}},"Lokasi",-1),w={class:"p-col-2 p-md-6"},M={key:0,class:"p-error"},T={class:"p-fluid"},P={class:"p-field p-grid"},S=(0,i.createElementVNode)("label",{for:"email",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"155px"}},"Pengguna",-1),U={class:"p-col-2 p-md-6"},$={key:0,class:"p-error"},D={class:"p-fluid"},I={class:"p-field p-grid"},z=(0,i.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"155px"}},"Keterangan",-1),j={class:"p-col-2 p-md-6"},A={key:0,class:"p-error"},K={class:"form-group"},L={class:"col-sm-6"},W=["src"];(0,i.popScopeId)();const Y={data:function(){return{mutasi:[],submitted:!1,mask:{input:"DD MMM YYYY"},token:localStorage.getItem("token"),checkname:[],checkto:[],id:localStorage.getItem("id")}},created:function(){this.cekUser()},methods:{cekUser:function(){var e=this;this.id?this.axios.get("/api/cek-user/"+this.id,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.checkto=t.data.map((function(e){return e.to})),e.checkname=t.data.map((function(e){return e.name})),e.checkname.includes("Mutasi Peripheral")||e.checkto.includes("/mutasi-peripheral")?e.getMutasi():(e.$toast.add({severity:"error",summary:"403",detail:"Cannot Access This Page"}),setTimeout((function(){return e.$router.push("/dashboard")}),2e3))})):this.$router.push("/login")},getMutasi:function(){var e=this;this.axios.get("/api/edit-mut/"+this.$route.params.code,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.mutasi=t.data})).catch((function(t){401==t.response.status&&(e.$toast.add({severity:"error",summary:"Error",detail:"Sesi Login Expired"}),localStorage.clear(),localStorage.setItem("Expired","true"),setTimeout((function(){return e.$router.push("/login")}),2e3))}))},UpdateMutasi:function(){var e=this;this.submitted=!0,this.errors=[],""!=this.mutasi.imutasi_tgl_dari&&null!=this.mutasi.imutasi_lokasi&&null!=this.mutasi.imutasi_pengguna&&null!=this.mutasi.imutasi_keterangan&&this.axios.put("/api/update-mut/"+this.$route.params.code,this.mutasi,{headers:{Authorization:"Bearer "+this.token}}).then((function(){setTimeout((function(){return e.$router.push("/mutasi-peripheral")}),1e3),e.$toast.add({severity:"success",summary:"Success Message",detail:"Success Update"})})).catch((function(t){e.errors=t.response.data.errors,e.submitted=!1}))}}};var Z=a(93379),R=a.n(Z),q=a(8266),F={insert:"head",singleton:!1};R()(q.Z,F);q.Z.locals;Y.render=function(e,t,a,Y,Z,R){var q=(0,i.resolveComponent)("Toast"),F=(0,i.resolveComponent)("Toolbar"),G=(0,i.resolveComponent)("InputText"),H=(0,i.resolveComponent)("Button"),J=(0,i.resolveComponent)("DatePicker"),O=(0,i.resolveComponent)("Textarea");return(0,i.openBlock)(),(0,i.createElementBlock)("div",null,[(0,i.createVNode)(q),(0,i.createElementVNode)("div",l,[(0,i.createVNode)(F,{class:"p-mb-4"},{left:(0,i.withCtx)((function(){return[s]})),_:1}),(0,i.createElementVNode)("div",o,[(0,i.createElementVNode)("div",n,[(0,i.createElementVNode)("form",{onSubmit:t[9]||(t[9]=(0,i.withModifiers)((function(){return R.UpdateMutasi&&R.UpdateMutasi.apply(R,arguments)}),["prevent"]))},[(0,i.createElementVNode)("div",r,[(0,i.createElementVNode)("div",c,[d,(0,i.createElementVNode)("div",u,[(0,i.createVNode)(G,{type:"text",modelValue:Z.mutasi.invent_code,"onUpdate:modelValue":t[0]||(t[0]=function(e){return Z.mutasi.invent_code=e}),disabled:""},null,8,["modelValue"])])])]),(0,i.createElementVNode)("div",m,[(0,i.createElementVNode)("div",p,[g,(0,i.createElementVNode)("div",h,[(0,i.createElementVNode)("div",k,[(0,i.createVNode)(J,{modelValue:Z.mutasi.imutasi_tgl_dari,"onUpdate:modelValue":t[2]||(t[2]=function(e){return Z.mutasi.imutasi_tgl_dari=e}),masks:Z.mask},{default:(0,i.withCtx)((function(e){var a=e.inputValue,l=e.togglePopover;return[(0,i.createElementVNode)("input",{class:"bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none",value:a,onClick:l,placeholder:"Pilih Tanggal",readonly:""},null,8,V),Z.mutasi.imutasi_tgl_dari?((0,i.openBlock)(),(0,i.createBlock)(H,{key:1,icon:"pi pi-trash",class:"p-button-danger",onClick:t[1]||(t[1]=function(e){return Z.mutasi.imutasi_tgl_dari=""})})):((0,i.openBlock)(),(0,i.createBlock)(H,{key:0,icon:"pi pi-calendar",onClick:l},null,8,["onClick"]))]})),_:1},8,["modelValue","masks"])]),Z.submitted&&!Z.mutasi.imutasi_tgl_dari?((0,i.openBlock)(),(0,i.createElementBlock)("small",v," Wajib Diisi. ")):(0,i.createCommentVNode)("",!0)])])]),(0,i.createElementVNode)("div",b,[(0,i.createElementVNode)("div",f,[N,(0,i.createElementVNode)("div",E,[(0,i.createElementVNode)("div",_,[(0,i.createVNode)(J,{modelValue:Z.mutasi.imutasi_tgl_sd,"onUpdate:modelValue":t[4]||(t[4]=function(e){return Z.mutasi.imutasi_tgl_sd=e}),"min-date":Z.mutasi.imutasi_tgl_dari,masks:Z.mask},{default:(0,i.withCtx)((function(e){var a=e.inputValue,l=e.togglePopover;return[(0,i.createElementVNode)("input",{class:"bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none",value:a,onClick:l,placeholder:"Pilih Tanggal",readonly:""},null,8,y),Z.mutasi.imutasi_tgl_sd?((0,i.openBlock)(),(0,i.createBlock)(H,{key:1,icon:"pi pi-trash",class:"p-button-danger",onClick:t[3]||(t[3]=function(e){return Z.mutasi.imutasi_tgl_sd=""})})):((0,i.openBlock)(),(0,i.createBlock)(H,{key:0,icon:"pi pi-calendar",onClick:l},null,8,["onClick"]))]})),_:1},8,["modelValue","min-date","masks"])])])])]),(0,i.createElementVNode)("div",C,[(0,i.createElementVNode)("div",x,[B,(0,i.createElementVNode)("div",w,[(0,i.createVNode)(G,{type:"text",modelValue:Z.mutasi.imutasi_lokasi,"onUpdate:modelValue":t[5]||(t[5]=function(e){return Z.mutasi.imutasi_lokasi=e}),placeholder:"Masukan Lokasi. . .",class:(0,i.normalizeClass)({"p-invalid":Z.submitted&&!Z.mutasi.imutasi_lokasi})},null,8,["modelValue","class"]),Z.submitted&&!Z.mutasi.imutasi_lokasi?((0,i.openBlock)(),(0,i.createElementBlock)("small",M,"Lokasi Wajib Diisi. ")):(0,i.createCommentVNode)("",!0)])])]),(0,i.createElementVNode)("div",T,[(0,i.createElementVNode)("div",P,[S,(0,i.createElementVNode)("div",U,[(0,i.createVNode)(G,{type:"text",modelValue:Z.mutasi.imutasi_pengguna,"onUpdate:modelValue":t[6]||(t[6]=function(e){return Z.mutasi.imutasi_pengguna=e}),placeholder:"Masukan Pengguna . . .",class:(0,i.normalizeClass)({"p-invalid":Z.submitted&&!Z.mutasi.imutasi_pengguna})},null,8,["modelValue","class"]),Z.submitted&&!Z.mutasi.imutasi_pengguna?((0,i.openBlock)(),(0,i.createElementBlock)("small",$,"Pengguna Wajib Diisi. ")):(0,i.createCommentVNode)("",!0)])])]),(0,i.createElementVNode)("div",D,[(0,i.createElementVNode)("div",I,[z,(0,i.createElementVNode)("div",j,[(0,i.createVNode)(O,{modelValue:Z.mutasi.imutasi_keterangan,"onUpdate:modelValue":t[7]||(t[7]=function(e){return Z.mutasi.imutasi_keterangan=e}),autoResize:!0,rows:"5",cols:"30",placeholder:"Masukan Keterangan . . .",class:(0,i.normalizeClass)({"p-invalid":Z.submitted&&!Z.mutasi.imutasi_keterangan})},null,8,["modelValue","class"]),Z.submitted&&!Z.mutasi.imutasi_keterangan?((0,i.openBlock)(),(0,i.createElementBlock)("small",A,"Keterangan Wajib Diisi. ")):(0,i.createCommentVNode)("",!0)])])]),(0,i.createElementVNode)("div",K,[(0,i.createVNode)(H,{class:"p-button-rounded p-button-primary p-mr-2 p-mb-2",icon:"pi pi-check",label:"Simpan",type:"submit"}),(0,i.createVNode)(H,{label:"Cancel",class:"p-button-rounded p-button-secondary p-mr-2 p-mb-2",icon:"pi pi-times",onClick:t[8]||(t[8]=function(t){return e.$router.push("/mutasi-peripheral")})})])],32)]),(0,i.createElementVNode)("div",L,[(0,i.createElementVNode)("img",{src:"/master_peripheral/"+Z.mutasi.invent_photo,class:"mutasi-image"},null,8,W)])])])])},Y.__scopeId="data-v-d20cbc3e";const G=Y}}]);