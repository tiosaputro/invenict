"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[9444],{19444:(e,a,t)=>{t.r(a),t.d(a,{default:()=>ve});var l=t(48191),c={class:"card"},o=(0,l.createElementVNode)("div",{class:"p-grid p-dir-col"},[(0,l.createElementVNode)("div",{class:"p-col"},[(0,l.createElementVNode)("h4",null,"Cash Advance")])],-1),r={class:"card-body"},n={class:"p-fluid p-formgrid p-grid"},d={class:"p-field p-grid p-col"},i=(0,l.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"No. Request",-1),s={class:"p-col-10 p-md-6"},p={class:"p-field p-grid p-col"},u=(0,l.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Requester",-1),m={class:"p-col-10 p-md-6"},k={class:"p-fluid p-formgrid p-grid"},h={class:"p-field p-grid p-col"},V=(0,l.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Tgl. Request",-1),_={class:"p-col-10 p-md-6"},v={class:"p-inputgroup"},f=["value","onClick"],g={class:"p-field p-grid p-col"},b=(0,l.createElementVNode)("label",{for:"file",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Bisnis Unit",-1),N={class:"p-col-10 p-md-6"},y={class:"p-fluid"},E={class:"p-field p-grid"},C=(0,l.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Jumlah",-1),B={class:"p-col-3"},x={key:0,class:"p-error"},w={class:"p-fluid"},T={class:"p-field p-grid"},P=(0,l.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Tgl. Submit",-1),U={class:"p-col-3"},S={class:"p-inputgroup"},D=["value","onClick"],$={key:0,class:"p-error"},q={class:"p-fluid"},A={class:"p-field p-grid"},I=(0,l.createElementVNode)("label",{class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Tgl. Terima Cash",-1),M={class:"p-col-3"},z={class:"p-inputgroup"},R=["value","onClick"],Y={key:0,class:"p-error"},J={class:"p-fluid"},K={class:"p-field p-grid"},L=(0,l.createElementVNode)("label",{for:"email",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Tgl. Pembelian",-1),j={class:"p-col-3"},F={class:"p-inputgroup"},G=["value","onClick"],H={key:0,class:"p-error"},O={class:"p-fluid"},Q={class:"p-field p-grid"},W=(0,l.createElementVNode)("label",{for:"fax",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Tgl. Terima Barang",-1),X={class:"p-col-3"},Z={class:"p-inputgroup"},ee=["value","onClick"],ae={key:0,class:"p-error"},te={class:"p-fluid"},le={class:"p-field p-grid"},ce=(0,l.createElementVNode)("label",{for:"notlp1",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Tgl. Penyerahan Ke User",-1),oe={class:"p-col-3"},re={class:"p-inputgroup"},ne=["value","onClick"],de={key:0,class:"p-error"},ie={class:"p-fluid"},se={class:"p-field p-grid"},pe=(0,l.createElementVNode)("label",{for:"fax",class:"p-col-12 p-mb-2 p-md-2 p-mb-md-0",style:{width:"160px"}},"Tgl. Closing",-1),ue={class:"p-col-3"},me={class:"p-inputgroup"},ke=["value","onClick"],he={key:0,class:"p-error"},Ve={class:"form-group"};const _e={data:function(){return{errors:[],ca:[],mask:{input:"DD MMM YYYY"},token:localStorage.getItem("token"),id:localStorage.getItem("id"),checkname:[],checkto:[]}},mounted:function(){this.cekUser()},methods:{cekUser:function(){var e=this;this.id?this.axios.get("/api/cek-user/"+this.id,{headers:{Authorization:"Bearer "+this.token}}).then((function(a){e.checkto=a.data.map((function(e){return e.to})),e.checkname=a.data.map((function(e){return e.name})),e.checkname.includes("Cash Advance")||e.checkto.includes("/cash-advance")?e.getCash():(e.$toast.add({severity:"error",summary:"403",detail:"Cannot Access This Page"}),setTimeout((function(){return e.$router.push("/dashboard")}),2e3))})):this.$router.push("/login")},getCash:function(){var e=this;this.axios.get("/api/edit-cash/"+this.$route.params.code,{headers:{Authorization:"Bearer "+this.token}}).then((function(a){e.ca=a.data})).catch((function(a){401==a.response.status&&(e.$toast.add({severity:"error",summary:"Error",detail:"Sesi Login Expired"}),localStorage.clear(),localStorage.setItem("Expired","true"),setTimeout((function(){return e.$router.push("/login")}),2e3))}))},UpdateCash:function(){var e=this;this.errors=[],this.axios.put("/api/update-cash/"+this.$route.params.code,this.ca,{headers:{Authorization:"Bearer "+this.token}}).then((function(a){setTimeout((function(){return e.$router.push("/cash-advance")}),1e3),e.$toast.add({severity:"success",summary:"Success Message",detail:"Success Update"})})).catch((function(a){e.errors=a.response.data.errors}))}},render:function(e,a,t,_e,ve,fe){var ge=(0,l.resolveComponent)("Toast"),be=(0,l.resolveComponent)("Toolbar"),Ne=(0,l.resolveComponent)("InputText"),ye=(0,l.resolveComponent)("DatePicker"),Ee=(0,l.resolveComponent)("InputNumber"),Ce=(0,l.resolveComponent)("Button");return(0,l.openBlock)(),(0,l.createElementBlock)("div",null,[(0,l.createVNode)(ge),(0,l.createElementVNode)("div",c,[(0,l.createVNode)(be,{class:"p-mb-4"},{left:(0,l.withCtx)((function(){return[o]})),_:1}),(0,l.createElementVNode)("div",r,[this.ca?((0,l.openBlock)(),(0,l.createElementBlock)("form",{key:0,onSubmit:a[18]||(a[18]=(0,l.withModifiers)((function(){return fe.UpdateCash&&fe.UpdateCash.apply(fe,arguments)}),["prevent"]))},[(0,l.createElementVNode)("div",n,[(0,l.createElementVNode)("div",d,[i,(0,l.createElementVNode)("div",s,[(0,l.createVNode)(Ne,{type:"text",modelValue:ve.ca.ca_idd,"onUpdate:modelValue":a[0]||(a[0]=function(e){return ve.ca.ca_idd=e}),disabled:""},null,8,["modelValue"])])]),(0,l.createElementVNode)("div",p,[u,(0,l.createElementVNode)("div",m,[(0,l.createVNode)(Ne,{type:"text",modelValue:ve.ca.req,"onUpdate:modelValue":a[1]||(a[1]=function(e){return ve.ca.req=e}),disabled:""},null,8,["modelValue"])])])]),(0,l.createElementVNode)("div",k,[(0,l.createElementVNode)("div",h,[V,(0,l.createElementVNode)("div",_,[(0,l.createElementVNode)("div",v,[(0,l.createVNode)(ye,{modelValue:ve.ca.ireq_date,"onUpdate:modelValue":a[2]||(a[2]=function(e){return ve.ca.ireq_date=e}),masks:ve.mask},{default:(0,l.withCtx)((function(e){var a=e.inputValue,t=e.togglePopover;return[(0,l.createElementVNode)("input",{class:"bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none",value:a,onClick:t,disabled:""},null,8,f)]})),_:1},8,["modelValue","masks"])])])]),(0,l.createElementVNode)("div",g,[b,(0,l.createElementVNode)("div",N,[(0,l.createVNode)(Ne,{type:"text",modelValue:ve.ca.bu,"onUpdate:modelValue":a[3]||(a[3]=function(e){return ve.ca.bu=e}),disabled:""},null,8,["modelValue"])])])]),(0,l.createElementVNode)("div",y,[(0,l.createElementVNode)("div",E,[C,(0,l.createElementVNode)("div",B,[(0,l.createVNode)(Ee,{mode:"currency",currency:"IDR",locale:"id",modelValue:ve.ca.ca_pic_name,"onUpdate:modelValue":a[4]||(a[4]=function(e){return ve.ca.ca_pic_name=e}),placeholder:"Masukan Jumlah",class:(0,l.normalizeClass)({"p-invalid":ve.errors.ca_pic_name})},null,8,["modelValue","class"]),ve.errors.ca_pic_name?((0,l.openBlock)(),(0,l.createElementBlock)("small",x,(0,l.toDisplayString)(ve.errors.ca_pic_name[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",w,[(0,l.createElementVNode)("div",T,[P,(0,l.createElementVNode)("div",U,[(0,l.createElementVNode)("div",S,[(0,l.createVNode)(ye,{modelValue:ve.ca.ca_submit_date,"onUpdate:modelValue":a[6]||(a[6]=function(e){return ve.ca.ca_submit_date=e}),masks:ve.mask},{default:(0,l.withCtx)((function(e){var t=e.inputValue,c=e.togglePopover;return[(0,l.createElementVNode)("input",{class:"bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none",value:t,onClick:c,readonly:"",placeholder:"Pilih Tgl. Submit"},null,8,D),ve.ca.ca_submit_date?((0,l.openBlock)(),(0,l.createBlock)(Ce,{key:1,icon:"pi pi-trash",class:"p-button-danger",onClick:a[5]||(a[5]=function(e){return ve.ca.ca_submit_date=""})})):((0,l.openBlock)(),(0,l.createBlock)(Ce,{key:0,icon:"pi pi-calendar",onClick:c},null,8,["onClick"]))]})),_:1},8,["modelValue","masks"])]),ve.errors.ca_submit_date?((0,l.openBlock)(),(0,l.createElementBlock)("small",$,(0,l.toDisplayString)(ve.errors.ca_submit_date[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",q,[(0,l.createElementVNode)("div",A,[I,(0,l.createElementVNode)("div",M,[(0,l.createElementVNode)("div",z,[(0,l.createVNode)(ye,{modelValue:ve.ca.ca_recv_cash_date,"onUpdate:modelValue":a[8]||(a[8]=function(e){return ve.ca.ca_recv_cash_date=e}),"min-date":this.ca.ca_submit_date,masks:ve.mask},{default:(0,l.withCtx)((function(e){var t=e.inputValue,c=e.togglePopover;return[(0,l.createElementVNode)("input",{class:"bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none",value:t,onClick:c,readonly:"",placeholder:"Pilih Tgl. Terima Cash"},null,8,R),ve.ca.ca_recv_cash_date?((0,l.openBlock)(),(0,l.createBlock)(Ce,{key:1,icon:"pi pi-trash",class:"p-button-danger",onClick:a[7]||(a[7]=function(e){return ve.ca.ca_recv_cash_date=""})})):((0,l.openBlock)(),(0,l.createBlock)(Ce,{key:0,icon:"pi pi-calendar",onClick:c},null,8,["onClick"]))]})),_:1},8,["modelValue","min-date","masks"])]),ve.errors.ca_recv_cash_date?((0,l.openBlock)(),(0,l.createElementBlock)("small",Y,(0,l.toDisplayString)(ve.errors.ca_recv_cash_date[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",J,[(0,l.createElementVNode)("div",K,[L,(0,l.createElementVNode)("div",j,[(0,l.createElementVNode)("div",F,[(0,l.createVNode)(ye,{modelValue:ve.ca.ca_purchase_date,"onUpdate:modelValue":a[10]||(a[10]=function(e){return ve.ca.ca_purchase_date=e}),"min-date":this.ca.ca_recv_cash_date,masks:ve.mask},{default:(0,l.withCtx)((function(e){var t=e.inputValue,c=e.togglePopover;return[(0,l.createElementVNode)("input",{class:"bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none",value:t,onClick:c,readonly:"",placeholder:"Pilih Tgl. Pembelian"},null,8,G),ve.ca.ca_purchase_date?((0,l.openBlock)(),(0,l.createBlock)(Ce,{key:1,icon:"pi pi-trash",class:"p-button-danger",onClick:a[9]||(a[9]=function(e){return ve.ca.ca_purchase_date=""})})):((0,l.openBlock)(),(0,l.createBlock)(Ce,{key:0,icon:"pi pi-calendar",onClick:c},null,8,["onClick"]))]})),_:1},8,["modelValue","min-date","masks"])]),ve.errors.ca_purchase_date?((0,l.openBlock)(),(0,l.createElementBlock)("small",H,(0,l.toDisplayString)(ve.errors.ca_purchase_date[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",O,[(0,l.createElementVNode)("div",Q,[W,(0,l.createElementVNode)("div",X,[(0,l.createElementVNode)("div",Z,[(0,l.createVNode)(ye,{modelValue:ve.ca.ca_recv_item_date,"onUpdate:modelValue":a[12]||(a[12]=function(e){return ve.ca.ca_recv_item_date=e}),"min-date":this.ca.ca_purchase_date,masks:ve.mask},{default:(0,l.withCtx)((function(e){var t=e.inputValue,c=e.togglePopover;return[(0,l.createElementVNode)("input",{class:"bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none",value:t,onClick:c,readonly:"",placeholder:"Pilih Tgl Terima Barang"},null,8,ee),ve.ca.ca_recv_item_date?((0,l.openBlock)(),(0,l.createBlock)(Ce,{key:1,icon:"pi pi-trash",class:"p-button-danger",onClick:a[11]||(a[11]=function(e){return ve.ca.ca_recv_item_date=""})})):((0,l.openBlock)(),(0,l.createBlock)(Ce,{key:0,icon:"pi pi-calendar",onClick:c},null,8,["onClick"]))]})),_:1},8,["modelValue","min-date","masks"])]),ve.errors.ca_recv_item_date?((0,l.openBlock)(),(0,l.createElementBlock)("small",ae,(0,l.toDisplayString)(ve.errors.ca_recv_item_date[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",te,[(0,l.createElementVNode)("div",le,[ce,(0,l.createElementVNode)("div",oe,[(0,l.createElementVNode)("div",re,[(0,l.createVNode)(ye,{modelValue:ve.ca.ca_hand_over_date,"onUpdate:modelValue":a[14]||(a[14]=function(e){return ve.ca.ca_hand_over_date=e}),"min-date":this.ca.ca_recv_item_date,masks:ve.mask},{default:(0,l.withCtx)((function(e){var t=e.inputValue,c=e.togglePopover;return[(0,l.createElementVNode)("input",{class:"bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none",value:t,onClick:c,readonly:"",placeholder:"Pilih Tgl Penyerahan"},null,8,ne),ve.ca.ca_hand_over_date?((0,l.openBlock)(),(0,l.createBlock)(Ce,{key:1,icon:"pi pi-trash",class:"p-button-danger",onClick:a[13]||(a[13]=function(e){return ve.ca.ca_hand_over_date=""})})):((0,l.openBlock)(),(0,l.createBlock)(Ce,{key:0,icon:"pi pi-calendar",onClick:c},null,8,["onClick"]))]})),_:1},8,["modelValue","min-date","masks"])]),ve.errors.ca_hand_over_date?((0,l.openBlock)(),(0,l.createElementBlock)("small",de,(0,l.toDisplayString)(ve.errors.ca_hand_over_date[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",ie,[(0,l.createElementVNode)("div",se,[pe,(0,l.createElementVNode)("div",ue,[(0,l.createElementVNode)("div",me,[(0,l.createVNode)(ye,{modelValue:ve.ca.ca_settlement_date,"onUpdate:modelValue":a[16]||(a[16]=function(e){return ve.ca.ca_settlement_date=e}),"min-date":this.ca.ca_recv_item_date,masks:ve.mask},{default:(0,l.withCtx)((function(e){var t=e.inputValue,c=e.togglePopover;return[(0,l.createElementVNode)("input",{class:"bg-white text-gray-900 w-full py-2 px-3 appearance-none border rounded-l focus:outline-none",value:t,onClick:c,readonly:"",placeholder:"Pilih Tgl Terima Barang"},null,8,ke),ve.ca.ca_settlement_date?((0,l.openBlock)(),(0,l.createBlock)(Ce,{key:1,icon:"pi pi-trash",class:"p-button-danger",onClick:a[15]||(a[15]=function(e){return ve.ca.ca_settlement_date=""})})):((0,l.openBlock)(),(0,l.createBlock)(Ce,{key:0,icon:"pi pi-calendar",onClick:c},null,8,["onClick"]))]})),_:1},8,["modelValue","min-date","masks"])]),ve.errors.ca_settlement_date?((0,l.openBlock)(),(0,l.createElementBlock)("small",he,(0,l.toDisplayString)(ve.errors.ca_settlement_date[0]),1)):(0,l.createCommentVNode)("",!0)])])]),(0,l.createElementVNode)("div",Ve,[(0,l.createVNode)(Ce,{class:"p-button-rounded p-button-primary p-mr-2 p-mb-2",icon:"pi pi-check",label:"Simpan",type:"submit"}),(0,l.createVNode)(Ce,{label:"Cancel",class:"p-button-rounded p-button-secondary p-mr-2 p-mb-2",icon:"pi pi-times",onClick:a[17]||(a[17]=function(a){return e.$router.push("/cash-advance")})})])],32)):(0,l.createCommentVNode)("",!0)])])])}},ve=_e}}]);