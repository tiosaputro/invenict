"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[9156],{89156:(e,t,a)=>{a.r(t),a.d(t,{default:()=>F});var l=a(48191),o={class:"container py-4"},n={class:"col-md-10"},r={class:"card"},s=(0,l.createElementVNode)("div",{class:"p-grid p-dir-col"},[(0,l.createElementVNode)("div",{class:"p-col"},[(0,l.createElementVNode)("h4",null,"Pembelian Peripheral")])],-1),i={class:"card-body"},c={class:"p-fluid"},p={class:"p-field p-grid"},d=(0,l.createElementVNode)("label",{for:"tipe",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"150px"}},"Suplier",-1),u={class:"p-col-4"},m={key:0,class:"p-error"},h={class:"p-fluid"},b={class:"p-field p-grid"},k=(0,l.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"150px"}},"Tgl. Pembelian",-1),V={class:"p-col-10 p-md-6"},g={class:"p-inputgroup"},f=["value","onClick"],y={key:0,class:"p-error"},v={class:"p-fluid"},N={class:"p-field p-grid"},E=(0,l.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"150px"}},"Cara Pembayaran",-1),C={class:"p-col-4"},P={key:0,class:"p-error"},B={class:"p-fluid"},x={class:"p-field p-grid"},_=(0,l.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"150px"}},"Petugas",-1),w={class:"p-col-4"},M={key:0,class:"p-error"},S={class:"p-fluid"},T={class:"p-field p-grid"},U=(0,l.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"150px"}},"Mata Uang",-1),z={class:"p-col-3"},D={key:0,class:"p-error"},A={class:"p-fluid"},$={class:"p-field p-grid"},j=(0,l.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"150px"}},"Keterangan",-1),I={class:"p-col-4"},W={key:0,class:"p-error"},L={class:"form-group"};function Y(e,t,a){return t in e?Object.defineProperty(e,t,{value:a,enumerable:!0,configurable:!0,writable:!0}):e[t]=a,e}const K={data:function(){var e;return Y(e={checkname:[],checkto:[],id:localStorage.getItem("id"),errors:[],suplier:[],code_money:[],methode_pay:[],purch_date:null,status:null,money:null,petugas:null,purchase_total:null,pay:null,supp:null,ket:null,submitted:!1,stat:[{nama:"Aktif",code:"T"},{nama:"Tidak Aktif",code:"F"}],mask:{input:"DD MMM YYYY"},token:localStorage.getItem("token")},"checkname",[]),Y(e,"ceckto",[]),Y(e,"id",localStorage.getItem("id")),e},mounted:function(){this.cekUser()},methods:{cekUser:function(){var e=this;this.id?(this.petugas=localStorage.getItem("usr_name"),this.axios.get("api/cek-user/"+this.id,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.checkto=t.data.map((function(e){return e.to})),e.checkname=t.data.map((function(e){return e.name})),e.checkname.includes("Pembelian Peripheral")||e.checkto.includes("/pembelian-peripheral")?(e.getSupplier(),e.getCodeMoney(),e.getMethodePurchase()):(e.$toast.add({severity:"error",summary:"403",detail:"Cannot Access This Page"}),setTimeout((function(){return e.$router.push("/dashboard")}),2e3))}))):this.$router.push("/login")},getCodeMoney:function(){var e=this;this.axios.get("api/getMataUang",{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.code_money=t.data})).catch((function(t){401==t.response.status&&(e.$toast.add({severity:"error",summary:"Error",detail:"Sesi Login Expired"}),localStorage.clear(),localStorage.setItem("Expired","true"),setTimeout((function(){return e.$router.push("/login")}),2e3))}))},getSupplier:function(){var e=this;this.axios.get("api/get-supp",{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.suplier=t.data}))},getMethodePurchase:function(){var e=this;this.axios.get("api/getMethodePurch",{headers:{Authorization:"Bearer "+this.token}}).then((function(t){e.methode_pay=t.data}))},CreatePurch:function(){var e=this;if(this.submitted=!0,null!=this.supp&&null!=this.purch_date&&null!=this.pay&&null!=this.petugas&&null!=this.money&&null!=this.ket){var t=new FormData;t.append("supp",this.supp),t.append("purch_date",this.purch_date),t.append("pay",this.pay),t.append("ket",this.ket),t.append("petugas",this.petugas),t.append("money",this.money),t.append("purchase_total",this.purchase_total),t.append("status",this.status),this.axios.post("api/add-pem",t,{headers:{Authorization:"Bearer "+this.token}}).then((function(t){setTimeout((function(){return e.$router.push("/pembelian-peripheral")}),1e3),e.$toast.add({severity:"success",summary:"Success Message",detail:"Success Create"})})).catch((function(t){e.submitted=!1,e.errors=t.response.data.errors}))}}},render:function(e,t,a,Y,K,F){var O=(0,l.resolveComponent)("Toast"),R=(0,l.resolveComponent)("Toolbar"),q=(0,l.resolveComponent)("Dropdown"),G=(0,l.resolveComponent)("Button"),H=(0,l.resolveComponent)("DatePicker"),J=(0,l.resolveComponent)("InputText"),Q=(0,l.resolveComponent)("Textarea");return(0,l.openBlock)(),(0,l.createElementBlock)("div",o,[(0,l.createElementVNode)("div",n,[(0,l.createVNode)(O),(0,l.createElementVNode)("div",r,[(0,l.createVNode)(R,{class:"p-mb-4"},{left:(0,l.withCtx)((function(){return[s]})),_:1}),(0,l.createElementVNode)("div",i,[(0,l.createElementVNode)("form",{onSubmit:t[8]||(t[8]=(0,l.withModifiers)((function(){return F.CreatePurch&&F.CreatePurch.apply(F,arguments)}),["prevent"]))},[(0,l.createElementVNode)("div",c,[(0,l.createElementVNode)("div",p,[d,(0,l.createElementVNode)("div",u,[(0,l.createVNode)(q,{options:K.suplier,optionLabel:"name",optionValue:"code",showClear:!0,filter:!0,modelValue:K.supp,"onUpdate:modelValue":t[0]||(t[0]=function(e){return K.supp=e}),placeholder:"Pilih Suplier",class:(0,l.normalizeClass)({"p-invalid":K.submitted&&!K.supp})},null,8,["options","modelValue","class"]),K.submitted&&!K.supp?((0,l.openBlock)(),(0,l.createElementBlock)("small",m,"Suplier Wajib Diisi. ")):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",h,[(0,l.createElementVNode)("div",b,[k,(0,l.createElementVNode)("div",V,[(0,l.createElementVNode)("div",g,[(0,l.createVNode)(H,{modelValue:K.purch_date,"onUpdate:modelValue":t[2]||(t[2]=function(e){return K.purch_date=e}),masks:K.mask},{default:(0,l.withCtx)((function(e){var a=e.inputValue,o=e.togglePopover;return[(0,l.createElementVNode)("input",{class:"bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none",value:a,onClick:o,readonly:"",placeholder:"Pilih Tanggal Pembelian"},null,8,f),K.purch_date?((0,l.openBlock)(),(0,l.createBlock)(G,{key:1,icon:"pi pi-trash",class:"p-button-danger",onClick:t[1]||(t[1]=function(e){return K.purch_date=null})})):((0,l.openBlock)(),(0,l.createBlock)(G,{key:0,icon:"pi pi-calendar",onClick:o},null,8,["onClick"]))]})),_:1},8,["modelValue","masks"])]),K.submitted&&!K.purch_date?((0,l.openBlock)(),(0,l.createElementBlock)("small",y,"Tgl. Pembelian Wajib Diisi. ")):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",v,[(0,l.createElementVNode)("div",N,[E,(0,l.createElementVNode)("div",C,[(0,l.createVNode)(q,{modelValue:K.pay,"onUpdate:modelValue":t[3]||(t[3]=function(e){return K.pay=e}),options:K.methode_pay,optionLabel:"name",optionValue:"code",showClear:!0,filter:!0,placeholder:"Pilih Cara Pembayaran",class:(0,l.normalizeClass)({"p-invalid":K.submitted&&!K.pay})},null,8,["modelValue","options","class"]),K.submitted&&!K.pay?((0,l.openBlock)(),(0,l.createElementBlock)("small",P,"Cara Pembayaran Wajib Diisi. ")):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",B,[(0,l.createElementVNode)("div",x,[_,(0,l.createElementVNode)("div",w,[(0,l.createVNode)(J,{type:"text",modelValue:K.petugas,"onUpdate:modelValue":t[4]||(t[4]=function(e){return K.petugas=e}),placeholder:"Masukan Petugas",class:(0,l.normalizeClass)({"p-invalid":K.submitted&&!K.petugas})},null,8,["modelValue","class"]),K.submitted&&!K.petugas?((0,l.openBlock)(),(0,l.createElementBlock)("small",M,"Petugas Wajib Diisi. ")):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",S,[(0,l.createElementVNode)("div",T,[U,(0,l.createElementVNode)("div",z,[(0,l.createVNode)(q,{modelValue:K.money,"onUpdate:modelValue":t[5]||(t[5]=function(e){return K.money=e}),options:K.code_money,showClear:!0,optionLabel:"name",optionValue:"code",filter:!0,placeholder:"Pilih Mata Uang",class:(0,l.normalizeClass)({"p-invalid":K.submitted&&!K.money})},null,8,["modelValue","options","class"]),K.submitted&&!K.money?((0,l.openBlock)(),(0,l.createElementBlock)("small",D,"Mata Uang Wajib Diisi. ")):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",A,[(0,l.createElementVNode)("div",$,[j,(0,l.createElementVNode)("div",I,[(0,l.createVNode)(Q,{type:"text",modelValue:K.ket,"onUpdate:modelValue":t[6]||(t[6]=function(e){return K.ket=e}),autoResize:!0,rows:"5",cols:"30",placeholder:"Masukan Keterangan",class:(0,l.normalizeClass)({"p-invalid":K.submitted&&!K.ket})},null,8,["modelValue","class"]),K.submitted&&!K.ket?((0,l.openBlock)(),(0,l.createElementBlock)("small",W,"Keterangan Wajib Diisi. ")):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",L,[(0,l.createVNode)(G,{class:"p-button-rounded p-button-primary p-mr-2 p-mb-2",icon:"pi pi-check",label:"Simpan",type:"submit"}),(0,l.createVNode)(G,{label:"Cancel",class:"p-button-rounded p-button-secondary p-mr-2 p-mb-2",icon:"pi pi-times",onClick:t[7]||(t[7]=function(t){return e.$router.push("/pembelian-peripheral")})})])],32)])])])])}},F=K}}]);