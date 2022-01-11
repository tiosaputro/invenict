"use strict";
(self["webpackChunk"] = self["webpackChunk"] || []).push([["resources_js_components_Dashboard_vue"],{

/***/ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/Dashboard.vue?vue&type=script&lang=js":
/*!***************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/Dashboard.vue?vue&type=script&lang=js ***!
  \***************************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = ({
  data: function data() {
    return {
      user: [],
      role_name: [],
      count: [],
      count1: [],
      count2: [],
      count3: [],
      count4: [],
      usr_name: localStorage.getItem('usr_name'),
      token: localStorage.getItem('token'),
      id: localStorage.getItem('id')
    };
  },
  created: function created() {
    this.CekUser();
  },
  methods: {
    CekUser: function CekUser() {
      var _this = this;

      this.axios.get('api/cek-role/' + this.id, {
        headers: {
          'Authorization': 'Bearer ' + this.token
        }
      }).then(function (response) {
        _this.role_name = response.data.map(function (x) {
          return x.rol_name;
        });

        if (_this.role_name.includes('Requestor Divisi') || _this.role_name.includes('Admin')) {
          _this.getData();
        }

        if (_this.role_name.includes('Atasan Requestor Divisi') || _this.role_name.includes('Admin')) {
          _this.getData1();
        }

        if (_this.role_name.includes('Supervisor') || _this.role_name.includes('Admin')) {
          _this.getData2();
        }

        if (_this.role_name.includes('Personel ICT') || _this.role_name.includes('Admin')) {
          _this.getUser();
        }

        if (_this.role_name.includes('Manager') || _this.role_name.includes('Admin')) {
          _this.getData4();
        }
      });
    },
    getData: function getData() {
      var _this2 = this;

      this.axios.get('api/getCountUser/' + this.usr_name, {
        headers: {
          'Authorization': 'Bearer ' + this.token
        }
      }).then(function (response) {
        _this2.count = response.data;
      });
    },
    blmDiverifikasi: function blmDiverifikasi() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 1);
    },
    sdhDiverifikasi: function sdhDiverifikasi() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 2);
    },
    diReject: function diReject() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 3);
    },
    sdgDikerjakan: function sdgDikerjakan() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 4);
    },
    sdhDikerjakan: function sdhDikerjakan() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 5);
    },
    sdhSelesai: function sdhSelesai() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 6);
    },
    //dashboard approval user
    getData1: function getData1() {
      var _this3 = this;

      this.axios.get('api/getCountDivisi1/' + this.usr_name, {
        headers: {
          'Authorization': 'Bearer ' + this.token
        }
      }).then(function (response) {
        _this3.count1 = response.data;
      });
    },
    blmDiverifikasi1: function blmDiverifikasi1() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 7);
    },
    sdhDiverifikasi1: function sdhDiverifikasi1() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 8);
    },
    diReject1: function diReject1() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 9);
    },
    sdgDikerjakan1: function sdgDikerjakan1() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 10);
    },
    sdhDikerjakan1: function sdhDikerjakan1() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 11);
    },
    sdhSelesai1: function sdhSelesai1() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 12);
    },
    getData2: function getData2() {
      var _this4 = this;

      this.axios.get('api/getCountDivisi2', {
        headers: {
          'Authorization': 'Bearer ' + this.token
        }
      }).then(function (response) {
        _this4.count2 = response.data;
      });
    },
    blmDiassign2: function blmDiassign2() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 13);
    },
    sdgDikerjakan2: function sdgDikerjakan2() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 14);
    },
    sdhDikerjakan2: function sdhDikerjakan2() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 15);
    },
    sdhSelesai2: function sdhSelesai2() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 16);
    },
    getUser: function getUser() {
      var _this5 = this;

      this.axios.get('api/user', {
        headers: {
          'Authorization': 'Bearer ' + this.token
        }
      }).then(function (response) {
        _this5.user = response.data;

        _this5.getData3();
      });
    },
    getData3: function getData3() {
      var _this6 = this;

      this.axios.get('api/getCountDivisi3/' + this.user.usr_fullname, {
        headers: {
          'Authorization': 'Bearer ' + this.token
        }
      }).then(function (response) {
        _this6.count3 = response.data;
      });
    },
    blmSelesai3: function blmSelesai3() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 17);
    },
    sdHDikerjakan3: function sdHDikerjakan3() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 18);
    },
    sdhSelesai3: function sdhSelesai3() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 19);
    },
    getData4: function getData4() {
      var _this7 = this;

      this.axios.get('api/getCountDivisi4', {
        headers: {
          'Authorization': 'Bearer ' + this.token
        }
      }).then(function (response) {
        _this7.count4 = response.data;
      });
    },
    sdHDikerjakan4: function sdHDikerjakan4() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 20);
    },
    sdhSelesai4: function sdhSelesai4() {
      this.$router.push('/ict-request-desc');
      localStorage.setItem('active', 21);
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/Dashboard.vue?vue&type=template&id=040e2ab9":
/*!*******************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/Dashboard.vue?vue&type=template&id=040e2ab9 ***!
  \*******************************************************************************************************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* binding */ render)
/* harmony export */ });
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! vue */ "./node_modules/vue/dist/vue.esm-bundler.js");

var _hoisted_1 = {
  key: 0,
  "class": "container-fluid"
};
var _hoisted_2 = {
  "class": "card"
};
var _hoisted_3 = {
  "class": "row"
};
var _hoisted_4 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_5 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "1px solid black"
  }
};
var _hoisted_6 = {
  "class": "card-body"
};
var _hoisted_7 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_8 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "pi pi-check",
  style: {
    "fontSize": "4rem",
    "color": "red"
  }
})], -1
/* HOISTED */
);

var _hoisted_9 = {
  "class": "text-end"
};

var _hoisted_10 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Belum Diverifikasi", -1
/* HOISTED */
);

var _hoisted_11 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_12 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "1px solid black"
  }
};
var _hoisted_13 = {
  "class": "card-body"
};
var _hoisted_14 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_15 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "pi pi-check",
  style: {
    "fontSize": "3.5rem",
    "color": "green"
  }
})], -1
/* HOISTED */
);

var _hoisted_16 = {
  "class": "text-end"
};

var _hoisted_17 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sudah Diverifikasi", -1
/* HOISTED */
);

var _hoisted_18 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_19 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "1px solid black"
  }
};
var _hoisted_20 = {
  "class": "card-body"
};
var _hoisted_21 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_22 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "pi pi-times",
  style: {
    "fontSize": "4rem",
    "color": "red"
  }
})], -1
/* HOISTED */
);

var _hoisted_23 = {
  "class": "text-end"
};

var _hoisted_24 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Di Reject", -1
/* HOISTED */
);

var _hoisted_25 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_26 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_27 = {
  "class": "card-body"
};
var _hoisted_28 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_29 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "bi bi-arrow-repeat",
  style: {
    "fontSize": "3.5rem",
    "color": "green"
  }
})], -1
/* HOISTED */
);

var _hoisted_30 = {
  "class": "text-end"
};

var _hoisted_31 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sedang Dikerjakan", -1
/* HOISTED */
);

var _hoisted_32 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_33 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_34 = {
  "class": "card-body"
};
var _hoisted_35 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_36 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "bi bi-check2-all",
  style: {
    "fontSize": "4rem",
    "color": "red"
  }
})], -1
/* HOISTED */
);

var _hoisted_37 = {
  "class": "text-end"
};

var _hoisted_38 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sudah Dikerjakan", -1
/* HOISTED */
);

var _hoisted_39 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_40 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_41 = {
  "class": "card-body"
};
var _hoisted_42 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_43 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "bi bi-check2-all",
  style: {
    "fontSize": "4rem",
    "color": "green"
  }
})], -1
/* HOISTED */
);

var _hoisted_44 = {
  "class": "text-end"
};

var _hoisted_45 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sudah Selesai", -1
/* HOISTED */
);

var _hoisted_46 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_47 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid"
  }
};
var _hoisted_48 = {
  "class": "card-body"
};
var _hoisted_49 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_50 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "bi bi-journal-bookmark-fill",
  style: {
    "fontSize": "4rem"
  }
})], -1
/* HOISTED */
);

var _hoisted_51 = {
  "class": "text-end"
};

var _hoisted_52 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Total Keseluruhan Request", -1
/* HOISTED */
);

var _hoisted_53 = {
  key: 1,
  "class": "container-fluid"
};
var _hoisted_54 = {
  "class": "card"
};
var _hoisted_55 = {
  "class": "row"
};
var _hoisted_56 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_57 = {
  key: 0,
  "class": "shadow-lg p-2 mb-5 bg-body rounded",
  style: {
    "border": "1px solid black"
  }
};
var _hoisted_58 = {
  "class": "card-body"
};
var _hoisted_59 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_60 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "pi pi-check",
  style: {
    "fontSize": "4rem",
    "color": "red"
  }
})], -1
/* HOISTED */
);

var _hoisted_61 = {
  "class": "text-end"
};

var _hoisted_62 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Menunggu Diverifikasi", -1
/* HOISTED */
);

var _hoisted_63 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_64 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "1px solid black"
  }
};
var _hoisted_65 = {
  "class": "card-body"
};
var _hoisted_66 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_67 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "pi pi-check",
  style: {
    "fontSize": "3.5rem",
    "color": "green"
  }
})], -1
/* HOISTED */
);

var _hoisted_68 = {
  "class": "text-end"
};

var _hoisted_69 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sudah Diverifikasi", -1
/* HOISTED */
);

var _hoisted_70 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_71 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "1px solid black"
  }
};
var _hoisted_72 = {
  "class": "card-body"
};
var _hoisted_73 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_74 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "pi pi-times",
  style: {
    "fontSize": "4rem",
    "color": "red"
  }
})], -1
/* HOISTED */
);

var _hoisted_75 = {
  "class": "text-end"
};

var _hoisted_76 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Di Reject", -1
/* HOISTED */
);

var _hoisted_77 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_78 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_79 = {
  "class": "card-body"
};
var _hoisted_80 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_81 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "bi bi-arrow-repeat",
  style: {
    "fontSize": "3.5rem",
    "color": "green"
  }
})], -1
/* HOISTED */
);

var _hoisted_82 = {
  "class": "text-end"
};

var _hoisted_83 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sedang Dikerjakan", -1
/* HOISTED */
);

var _hoisted_84 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_85 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_86 = {
  "class": "card-body"
};
var _hoisted_87 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_88 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "bi bi-check2-all",
  style: {
    "fontSize": "4rem",
    "color": "red"
  }
})], -1
/* HOISTED */
);

var _hoisted_89 = {
  "class": "text-end"
};

var _hoisted_90 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sudah Dikerjakan", -1
/* HOISTED */
);

var _hoisted_91 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_92 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_93 = {
  "class": "card-body"
};
var _hoisted_94 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_95 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "bi bi-check2-all",
  style: {
    "fontSize": "4rem",
    "color": "green"
  }
})], -1
/* HOISTED */
);

var _hoisted_96 = {
  "class": "text-end"
};

var _hoisted_97 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sudah Selesai", -1
/* HOISTED */
);

var _hoisted_98 = {
  key: 2,
  "class": "container-fluid"
};
var _hoisted_99 = {
  "class": "card"
};
var _hoisted_100 = {
  "class": "row"
};
var _hoisted_101 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_102 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_103 = {
  "class": "card-body"
};
var _hoisted_104 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_105 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "pi pi-check",
  style: {
    "fontSize": "4rem",
    "color": "red"
  }
})], -1
/* HOISTED */
);

var _hoisted_106 = {
  "class": "text-end"
};

var _hoisted_107 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Belum Di Assign", -1
/* HOISTED */
);

var _hoisted_108 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_109 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_110 = {
  "class": "card-body"
};
var _hoisted_111 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_112 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "pi pi-check",
  style: {
    "fontSize": "4rem",
    "color": "green"
  }
})], -1
/* HOISTED */
);

var _hoisted_113 = {
  "class": "text-end"
};

var _hoisted_114 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Sedang Dikerjakan", -1
/* HOISTED */
);

var _hoisted_115 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_116 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_117 = {
  "class": "card-body"
};
var _hoisted_118 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_119 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "bi bi-check2-all",
  style: {
    "fontSize": "3.5rem",
    "color": "red"
  }
})], -1
/* HOISTED */
);

var _hoisted_120 = {
  "class": "text-end"
};

var _hoisted_121 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Sudah Dikerjakan", -1
/* HOISTED */
);

var _hoisted_122 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_123 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_124 = {
  "class": "card-body"
};
var _hoisted_125 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_126 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "bi bi-check2-all",
  style: {
    "fontSize": "3.5rem",
    "color": "green"
  }
})], -1
/* HOISTED */
);

var _hoisted_127 = {
  "class": "text-end"
};

var _hoisted_128 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Sudah Selesai", -1
/* HOISTED */
);

var _hoisted_129 = {
  key: 3,
  "class": "container-fluid"
};
var _hoisted_130 = {
  "class": "card"
};
var _hoisted_131 = {
  "class": "row"
};
var _hoisted_132 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_133 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_134 = {
  "class": "card-body"
};
var _hoisted_135 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_136 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "bi bi-hourglass-split",
  style: {
    "fontSize": "4rem",
    "color": "red"
  }
})], -1
/* HOISTED */
);

var _hoisted_137 = {
  "class": "text-end"
};

var _hoisted_138 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Belum Selesai", -1
/* HOISTED */
);

var _hoisted_139 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_140 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_141 = {
  "class": "card-body"
};
var _hoisted_142 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_143 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "bi bi-check2-all",
  style: {
    "fontSize": "4rem",
    "color": "red"
  }
})], -1
/* HOISTED */
);

var _hoisted_144 = {
  "class": "text-end"
};

var _hoisted_145 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sudah Dikerjakan", -1
/* HOISTED */
);

var _hoisted_146 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_147 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_148 = {
  "class": "card-body"
};
var _hoisted_149 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_150 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "bi bi-check2-all",
  style: {
    "fontSize": "4rem",
    "color": "green"
  }
})], -1
/* HOISTED */
);

var _hoisted_151 = {
  "class": "text-end"
};

var _hoisted_152 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sudah Selesai", -1
/* HOISTED */
);

var _hoisted_153 = {
  key: 4,
  "class": "container-fluid"
};
var _hoisted_154 = {
  "class": "card"
};
var _hoisted_155 = {
  "class": "row"
};
var _hoisted_156 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_157 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_158 = {
  "class": "card-body"
};
var _hoisted_159 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_160 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "bi bi-check2-all",
  style: {
    "fontSize": "4rem",
    "color": "gray"
  }
})], -1
/* HOISTED */
);

var _hoisted_161 = {
  "class": "text-end"
};

var _hoisted_162 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sudah Dikerjakan", -1
/* HOISTED */
);

var _hoisted_163 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_164 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_165 = {
  "class": "card-body"
};
var _hoisted_166 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_167 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "bi bi-check2-all",
  style: {
    "fontSize": "4rem",
    "color": "green"
  }
})], -1
/* HOISTED */
);

var _hoisted_168 = {
  "class": "text-end"
};

var _hoisted_169 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sudah Selesai", -1
/* HOISTED */
);

function render(_ctx, _cache, $props, $setup, $data, $options) {
  var _this = this;

  return (0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)(vue__WEBPACK_IMPORTED_MODULE_0__.Fragment, null, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)(" //Dashboard user for request "), this.role_name.includes('Requestor Divisi') || this.role_name.includes('Admin') ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_1, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("section", null, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_2, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_3, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_4, [this.count ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_5, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_6, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_7, [_hoisted_8, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_9, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[0] || (_cache[0] = function ($event) {
      return $options.blmDiverifikasi();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count.belumdiverifikasi), 1
  /* TEXT */
  ), _hoisted_10])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_11, [this.count ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_12, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_13, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_14, [_hoisted_15, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_16, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[1] || (_cache[1] = function ($event) {
      return $options.sdhDiverifikasi();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count.sudahdiverifikasi), 1
  /* TEXT */
  ), _hoisted_17])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_18, [this.count ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_19, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_20, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_21, [_hoisted_22, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_23, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[2] || (_cache[2] = function ($event) {
      return $options.diReject();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count.direject), 1
  /* TEXT */
  ), _hoisted_24])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_25, [this.count ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_26, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_27, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_28, [_hoisted_29, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_30, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[3] || (_cache[3] = function ($event) {
      return $options.sdgDikerjakan();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count.sedangdikerjakan), 1
  /* TEXT */
  ), _hoisted_31])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_32, [this.count ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_33, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_34, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_35, [_hoisted_36, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_37, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[4] || (_cache[4] = function ($event) {
      return $options.sdhDikerjakan();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count.sudahdikerjakan), 1
  /* TEXT */
  ), _hoisted_38])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_39, [this.count ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_40, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_41, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_42, [_hoisted_43, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_44, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[5] || (_cache[5] = function ($event) {
      return $options.sdhSelesai();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count.sudahselesai), 1
  /* TEXT */
  ), _hoisted_45])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_46, [this.count ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_47, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_48, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_49, [_hoisted_50, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_51, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[6] || (_cache[6] = function ($event) {
      return _this.$router.push('/ict-request-desc');
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count.countrequest), 1
  /* TEXT */
  ), _hoisted_52])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)])])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)(" //dashboard approver atasan user "), this.role_name.includes('Atasan Requestor Divisi') || this.role_name.includes('Admin') ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_53, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("section", null, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_54, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_55, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_56, [this.count1 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_57, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_58, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_59, [_hoisted_60, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_61, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[7] || (_cache[7] = function ($event) {
      return $options.blmDiverifikasi1();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count1.belumdiverifikasi), 1
  /* TEXT */
  ), _hoisted_62])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_63, [this.count1 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_64, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_65, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_66, [_hoisted_67, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_68, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[8] || (_cache[8] = function ($event) {
      return $options.sdhDiverifikasi1();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count1.sudahdiverifikasi), 1
  /* TEXT */
  ), _hoisted_69])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_70, [this.count1 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_71, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_72, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_73, [_hoisted_74, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_75, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[9] || (_cache[9] = function ($event) {
      return $options.diReject1();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count1.direject), 1
  /* TEXT */
  ), _hoisted_76])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_77, [this.count1 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_78, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_79, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_80, [_hoisted_81, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_82, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[10] || (_cache[10] = function ($event) {
      return $options.sdgDikerjakan1();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count1.sedangdikerjakan), 1
  /* TEXT */
  ), _hoisted_83])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_84, [this.count1 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_85, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_86, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_87, [_hoisted_88, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_89, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[11] || (_cache[11] = function ($event) {
      return $options.sdhDikerjakan1();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count1.sudahdikerjakan), 1
  /* TEXT */
  ), _hoisted_90])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_91, [this.count1 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_92, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_93, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_94, [_hoisted_95, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_96, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[12] || (_cache[12] = function ($event) {
      return $options.sdhSelesai1();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count1.sudahselesai), 1
  /* TEXT */
  ), _hoisted_97])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)])])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)(" // dashboard verifikasi ict "), this.role_name.includes('Supervisor') || this.role_name.includes('Admin') ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_98, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_99, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_100, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_101, [this.count2 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_102, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_103, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_104, [_hoisted_105, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_106, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[13] || (_cache[13] = function ($event) {
      return $options.blmDiassign2();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count2.blmdiassign), 1
  /* TEXT */
  ), _hoisted_107])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_108, [this.count2 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_109, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_110, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_111, [_hoisted_112, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_113, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[14] || (_cache[14] = function ($event) {
      return $options.sdgDikerjakan2();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count2.sdgdikerjakan), 1
  /* TEXT */
  ), _hoisted_114])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_115, [this.count2 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_116, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_117, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_118, [_hoisted_119, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_120, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[15] || (_cache[15] = function ($event) {
      return $options.sdhDikerjakan2();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count2.sdhdikerjakan), 1
  /* TEXT */
  ), _hoisted_121])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_122, [this.count2 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_123, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_124, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_125, [_hoisted_126, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_127, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[16] || (_cache[16] = function ($event) {
      return $options.sdhSelesai2();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count2.sdhselesai), 1
  /* TEXT */
  ), _hoisted_128])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)(" //Dashboard for personnel ict (status change request) "), this.role_name.includes('Personel ICT') || this.role_name.includes('Admin') ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_129, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_130, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_131, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_132, [this.count3 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_133, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_134, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_135, [_hoisted_136, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_137, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[17] || (_cache[17] = function ($event) {
      return $options.blmSelesai3();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count3.belumselesai), 1
  /* TEXT */
  ), _hoisted_138])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_139, [this.count3 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_140, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_141, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_142, [_hoisted_143, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_144, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[18] || (_cache[18] = function ($event) {
      return $options.sdHDikerjakan3();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count3.sudahdikerjakan), 1
  /* TEXT */
  ), _hoisted_145])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_146, [this.count3 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_147, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_148, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_149, [_hoisted_150, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_151, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[19] || (_cache[19] = function ($event) {
      return $options.sdhSelesai3();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count3.sudahselesai), 1
  /* TEXT */
  ), _hoisted_152])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)(" // closing request "), this.role_name.includes('Manager') || this.role_name.includes('Admin') ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_153, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("section", null, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_154, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_155, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_156, [this.count4 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_157, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_158, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_159, [_hoisted_160, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_161, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[20] || (_cache[20] = function ($event) {
      return $options.sdHDikerjakan4();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count4.sudahdikerjakan), 1
  /* TEXT */
  ), _hoisted_162])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_163, [this.count4 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_164, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_165, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_166, [_hoisted_167, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_168, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[21] || (_cache[21] = function ($event) {
      return $options.sdhSelesai4();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count4.sudahselesai), 1
  /* TEXT */
  ), _hoisted_169])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)])])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)], 64
  /* STABLE_FRAGMENT */
  );
}

/***/ }),

/***/ "./resources/js/components/Dashboard.vue":
/*!***********************************************!*\
  !*** ./resources/js/components/Dashboard.vue ***!
  \***********************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _Dashboard_vue_vue_type_template_id_040e2ab9__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Dashboard.vue?vue&type=template&id=040e2ab9 */ "./resources/js/components/Dashboard.vue?vue&type=template&id=040e2ab9");
/* harmony import */ var _Dashboard_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Dashboard.vue?vue&type=script&lang=js */ "./resources/js/components/Dashboard.vue?vue&type=script&lang=js");



_Dashboard_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_1__["default"].render = _Dashboard_vue_vue_type_template_id_040e2ab9__WEBPACK_IMPORTED_MODULE_0__.render
/* hot reload */
if (false) {}

_Dashboard_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_1__["default"].__file = "resources/js/components/Dashboard.vue"

/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (_Dashboard_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_1__["default"]);

/***/ }),

/***/ "./resources/js/components/Dashboard.vue?vue&type=script&lang=js":
/*!***********************************************************************!*\
  !*** ./resources/js/components/Dashboard.vue?vue&type=script&lang=js ***!
  \***********************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (/* reexport safe */ _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_Dashboard_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_0__["default"])
/* harmony export */ });
/* harmony import */ var _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_Dashboard_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!../../../node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./Dashboard.vue?vue&type=script&lang=js */ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/Dashboard.vue?vue&type=script&lang=js");
 

/***/ }),

/***/ "./resources/js/components/Dashboard.vue?vue&type=template&id=040e2ab9":
/*!*****************************************************************************!*\
  !*** ./resources/js/components/Dashboard.vue?vue&type=template&id=040e2ab9 ***!
  \*****************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* reexport safe */ _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_templateLoader_js_ruleSet_1_rules_2_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_Dashboard_vue_vue_type_template_id_040e2ab9__WEBPACK_IMPORTED_MODULE_0__.render)
/* harmony export */ });
/* harmony import */ var _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_templateLoader_js_ruleSet_1_rules_2_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_Dashboard_vue_vue_type_template_id_040e2ab9__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!../../../node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!../../../node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./Dashboard.vue?vue&type=template&id=040e2ab9 */ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/Dashboard.vue?vue&type=template&id=040e2ab9");


/***/ })

}]);