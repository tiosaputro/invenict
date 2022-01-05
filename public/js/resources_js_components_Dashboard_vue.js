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
      test: 0,
      count: [],
      count1: [],
      count2: [],
      count3: [],
      usr_name: localStorage.getItem('usr_name'),
      token: localStorage.getItem('token'),
      usr_id: localStorage.getItem('id')
    };
  },
  mounted: function mounted() {
    this.CekUser();
  },
  methods: {
    CekUser: function CekUser() {
      this.getData();
    },
    getData: function getData() {
      var _this = this;

      this.axios.get('api/getCountUser/' + this.usr_name, {
        headers: {
          'Authorization': 'Bearer ' + this.token
        }
      }).then(function (response) {
        _this.count = response.data;
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
      var _this2 = this;

      this.axios.get('api/getcountDivisi1/' + this.usr_name, {
        headers: {
          'Authorization': 'Bearer ' + this.token
        }
      }).then(function (response) {
        _this2.count1 = response.data;
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
      var _this3 = this;

      this.axios.get('api/getcountDivisi2', {
        headers: {
          'Authorization': 'Bearer ' + this.token
        }
      }).then(function (response) {
        _this3.count2 = response.data;
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
  "class": "row"
};
var _hoisted_3 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_4 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "1px solid black"
  }
};
var _hoisted_5 = {
  "class": "card-body"
};
var _hoisted_6 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_7 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_8 = {
  "class": "text-end"
};

var _hoisted_9 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Belum Diverifikasi", -1
/* HOISTED */
);

var _hoisted_10 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_11 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "1px solid black"
  }
};
var _hoisted_12 = {
  "class": "card-body"
};
var _hoisted_13 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_14 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_15 = {
  "class": "text-end"
};

var _hoisted_16 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sudah Diverifikasi", -1
/* HOISTED */
);

var _hoisted_17 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_18 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "1px solid black"
  }
};
var _hoisted_19 = {
  "class": "card-body"
};
var _hoisted_20 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_21 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_22 = {
  "class": "text-end"
};

var _hoisted_23 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Di Reject", -1
/* HOISTED */
);

var _hoisted_24 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_25 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_26 = {
  "class": "card-body"
};
var _hoisted_27 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_28 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_29 = {
  "class": "text-end"
};

var _hoisted_30 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sedang Dikerjakan", -1
/* HOISTED */
);

var _hoisted_31 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_32 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_33 = {
  "class": "card-body"
};
var _hoisted_34 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_35 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_36 = {
  "class": "text-end"
};

var _hoisted_37 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sudah Dikerjakan", -1
/* HOISTED */
);

var _hoisted_38 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_39 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_40 = {
  "class": "card-body"
};
var _hoisted_41 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_42 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_43 = {
  "class": "text-end"
};

var _hoisted_44 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sudah Selesai", -1
/* HOISTED */
);

var _hoisted_45 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_46 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid"
  }
};
var _hoisted_47 = {
  "class": "card-body"
};
var _hoisted_48 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_49 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "align-self-center"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "bi bi-journal-bookmark-fill",
  style: {
    "fontSize": "4rem"
  }
})], -1
/* HOISTED */
);

var _hoisted_50 = {
  "class": "text-end"
};

var _hoisted_51 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Total Keseluruhan Request", -1
/* HOISTED */
);

var _hoisted_52 = {
  key: 1,
  "class": "container-fluid"
};
var _hoisted_53 = {
  "class": "row"
};
var _hoisted_54 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_55 = {
  key: 0,
  "class": "shadow-lg p-2 mb-5 bg-body rounded",
  style: {
    "border": "1px solid black"
  }
};
var _hoisted_56 = {
  "class": "card-body"
};
var _hoisted_57 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_58 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_59 = {
  "class": "text-end"
};

var _hoisted_60 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Menunggu Diverifikasi", -1
/* HOISTED */
);

var _hoisted_61 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_62 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "1px solid black"
  }
};
var _hoisted_63 = {
  "class": "card-body"
};
var _hoisted_64 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_65 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_66 = {
  "class": "text-end"
};

var _hoisted_67 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sudah Diverifikasi", -1
/* HOISTED */
);

var _hoisted_68 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_69 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "1px solid black"
  }
};
var _hoisted_70 = {
  "class": "card-body"
};
var _hoisted_71 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_72 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_73 = {
  "class": "text-end"
};

var _hoisted_74 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Di Reject", -1
/* HOISTED */
);

var _hoisted_75 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_76 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_77 = {
  "class": "card-body"
};
var _hoisted_78 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_79 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_80 = {
  "class": "text-end"
};

var _hoisted_81 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sedang Dikerjakan", -1
/* HOISTED */
);

var _hoisted_82 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_83 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_84 = {
  "class": "card-body"
};
var _hoisted_85 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_86 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_87 = {
  "class": "text-end"
};

var _hoisted_88 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sudah Dikerjakan", -1
/* HOISTED */
);

var _hoisted_89 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_90 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_91 = {
  "class": "card-body"
};
var _hoisted_92 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_93 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_94 = {
  "class": "text-end"
};

var _hoisted_95 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sudah Selesai", -1
/* HOISTED */
);

var _hoisted_96 = {
  key: 2,
  "class": "container-fluid"
};
var _hoisted_97 = {
  "class": "row"
};
var _hoisted_98 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_99 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_100 = {
  "class": "card-body"
};
var _hoisted_101 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_102 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_103 = {
  "class": "text-end"
};

var _hoisted_104 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Belum Di Assign", -1
/* HOISTED */
);

var _hoisted_105 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_106 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_107 = {
  "class": "card-body"
};
var _hoisted_108 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_109 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_110 = {
  "class": "text-end"
};

var _hoisted_111 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Sedang Dikerjakan", -1
/* HOISTED */
);

var _hoisted_112 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_113 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_114 = {
  "class": "card-body"
};
var _hoisted_115 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_116 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_117 = {
  "class": "text-end"
};

var _hoisted_118 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Sudah Dikerjakan", -1
/* HOISTED */
);

var _hoisted_119 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_120 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_121 = {
  "class": "card-body"
};
var _hoisted_122 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_123 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_124 = {
  "class": "text-end"
};

var _hoisted_125 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Sudah Selesai", -1
/* HOISTED */
);

var _hoisted_126 = {
  key: 3,
  "class": "container-fluid"
};
var _hoisted_127 = {
  "class": "row"
};
var _hoisted_128 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_129 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_130 = {
  "class": "card-body"
};
var _hoisted_131 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_132 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_133 = {
  "class": "text-end"
};

var _hoisted_134 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Belum Selesai", -1
/* HOISTED */
);

var _hoisted_135 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_136 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_137 = {
  "class": "card-body"
};
var _hoisted_138 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_139 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_140 = {
  "class": "text-end"
};

var _hoisted_141 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sudah Dikerjakan", -1
/* HOISTED */
);

var _hoisted_142 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_143 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
  }
};
var _hoisted_144 = {
  "class": "card-body"
};
var _hoisted_145 = {
  "class": "d-flex justify-content-between px-md-1"
};

var _hoisted_146 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
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

var _hoisted_147 = {
  "class": "text-end"
};

var _hoisted_148 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("p", {
  "class": "mb-0"
}, "Request Yang Sudah Selesai", -1
/* HOISTED */
);

function render(_ctx, _cache, $props, $setup, $data, $options) {
  var _this = this;

  return (0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)(vue__WEBPACK_IMPORTED_MODULE_0__.Fragment, null, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)(" //Dashboard user for request "), this.test == 0 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_1, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("section", null, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_2, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_3, [this.count ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_4, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_5, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_6, [_hoisted_7, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_8, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[0] || (_cache[0] = function ($event) {
      return $options.blmDiverifikasi();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count.belumdiverifikasi), 1
  /* TEXT */
  ), _hoisted_9])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_10, [this.count ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_11, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_12, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_13, [_hoisted_14, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_15, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[1] || (_cache[1] = function ($event) {
      return $options.sdhDiverifikasi();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count.sudahdiverifikasi), 1
  /* TEXT */
  ), _hoisted_16])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_17, [this.count ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_18, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_19, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_20, [_hoisted_21, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_22, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[2] || (_cache[2] = function ($event) {
      return $options.diReject();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count.direject), 1
  /* TEXT */
  ), _hoisted_23])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_24, [this.count ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_25, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_26, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_27, [_hoisted_28, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_29, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[3] || (_cache[3] = function ($event) {
      return $options.sdgDikerjakan();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count.sedangdikerjakan), 1
  /* TEXT */
  ), _hoisted_30])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_31, [this.count ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_32, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_33, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_34, [_hoisted_35, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_36, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[4] || (_cache[4] = function ($event) {
      return $options.sdhDikerjakan();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count.sudahdikerjakan), 1
  /* TEXT */
  ), _hoisted_37])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_38, [this.count ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_39, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_40, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_41, [_hoisted_42, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_43, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[5] || (_cache[5] = function ($event) {
      return $options.sdhSelesai();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count.sudahselesai), 1
  /* TEXT */
  ), _hoisted_44])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_45, [this.count ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_46, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_47, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_48, [_hoisted_49, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_50, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[6] || (_cache[6] = function ($event) {
      return _this.$router.push('/ict-request-desc');
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count.countrequest), 1
  /* TEXT */
  ), _hoisted_51])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)(" //dashboard approver atasan user "), this.test == 1 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_52, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("section", null, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_53, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_54, [this.count1 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_55, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_56, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_57, [_hoisted_58, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_59, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[7] || (_cache[7] = function ($event) {
      return $options.blmDiverifikasi1();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count1.belumdiverifikasi), 1
  /* TEXT */
  ), _hoisted_60])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_61, [this.count1 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_62, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_63, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_64, [_hoisted_65, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_66, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[8] || (_cache[8] = function ($event) {
      return $options.sdhDiverifikasi1();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count1.sudahdiverifikasi), 1
  /* TEXT */
  ), _hoisted_67])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_68, [this.count1 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_69, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_70, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_71, [_hoisted_72, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_73, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[9] || (_cache[9] = function ($event) {
      return $options.diReject1();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count1.diReject1), 1
  /* TEXT */
  ), _hoisted_74])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_75, [this.count1 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_76, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_77, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_78, [_hoisted_79, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_80, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[10] || (_cache[10] = function ($event) {
      return $options.sdgDikerjakan1();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count1.sedangdikerjakan), 1
  /* TEXT */
  ), _hoisted_81])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_82, [this.count1 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_83, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_84, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_85, [_hoisted_86, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_87, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[11] || (_cache[11] = function ($event) {
      return $options.sdhDikerjakan1();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count1.sudahdikerjakan), 1
  /* TEXT */
  ), _hoisted_88])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_89, [this.count1 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_90, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_91, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_92, [_hoisted_93, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_94, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[12] || (_cache[12] = function ($event) {
      return $options.sdhSelesai1();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count1.sudahselesai), 1
  /* TEXT */
  ), _hoisted_95])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)(" // dashboard verifikasi ict "), this.test == 2 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_96, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_97, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_98, [this.count2 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_99, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_100, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_101, [_hoisted_102, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_103, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[13] || (_cache[13] = function ($event) {
      return $options.blmDiassign2();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count2.blmdiassign), 1
  /* TEXT */
  ), _hoisted_104])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_105, [this.count2 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_106, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_107, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_108, [_hoisted_109, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_110, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[14] || (_cache[14] = function ($event) {
      return $options.sdgDikerjakan2();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count2.sdgdikerjakan), 1
  /* TEXT */
  ), _hoisted_111])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_112, [this.count2 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_113, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_114, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_115, [_hoisted_116, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_117, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[15] || (_cache[15] = function ($event) {
      return $options.sdhDikerjakan2();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count2.sdhdikerjakan), 1
  /* TEXT */
  ), _hoisted_118])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_119, [this.count2 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_120, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_121, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_122, [_hoisted_123, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_124, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[16] || (_cache[16] = function ($event) {
      return $options.sdhSelesai2();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count2.sdhselesai), 1
  /* TEXT */
  ), _hoisted_125])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)(" //Dashboard for personnel ict "), this.test == 3 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_126, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_127, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_128, [this.count3 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_129, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_130, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_131, [_hoisted_132, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_133, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[17] || (_cache[17] = function ($event) {
      return _ctx.blmSelesai3();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count3.belumselesai), 1
  /* TEXT */
  ), _hoisted_134])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_135, [this.count3 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_136, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_137, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_138, [_hoisted_139, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_140, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[18] || (_cache[18] = function ($event) {
      return _ctx.sdgDikerjakan3();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count3.sudahdikerjakan), 1
  /* TEXT */
  ), _hoisted_141])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_142, [this.count3 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_143, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_144, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_145, [_hoisted_146, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_147, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[19] || (_cache[19] = function ($event) {
      return _ctx.sdhSelesai3();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count3.sudahselesai), 1
  /* TEXT */
  ), _hoisted_148])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)], 64
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