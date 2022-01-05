"use strict";
(self["webpackChunk"] = self["webpackChunk"] || []).push([["resources_js_components_Dashboard2_vue"],{

/***/ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/Dashboard2.vue?vue&type=script&lang=js":
/*!****************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/Dashboard2.vue?vue&type=script&lang=js ***!
  \****************************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = ({
  data: function data() {
    return {
      count2: [],
      token: localStorage.getItem('token')
    };
  },
  mounted: function mounted() {
    this.getBlmVerifikasi();
  },
  methods: {
    getData2: function getData2() {
      var _this = this;

      this.axios.get('api/getcountDivisi2', {
        headers: {
          'Authorization': 'Bearer ' + this.token
        }
      }).then(function (response) {
        _this.count2 = response.data;
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

/***/ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/Dashboard2.vue?vue&type=template&id=7dced5c9":
/*!********************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/Dashboard2.vue?vue&type=template&id=7dced5c9 ***!
  \********************************************************************************************************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* binding */ render)
/* harmony export */ });
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! vue */ "./node_modules/vue/dist/vue.esm-bundler.js");


var _hoisted_1 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createTextVNode)(" // dashboard verifikasi ict ");

var _hoisted_2 = {
  "class": "container-fluid"
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
    "border": "0.5px solid black"
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
}, "Request Yang Belum Di Assign", -1
/* HOISTED */
);

var _hoisted_11 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_12 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
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
    "fontSize": "4rem",
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
}, "Request Sedang Dikerjakan", -1
/* HOISTED */
);

var _hoisted_18 = {
  "class": "col-xl-3 col-sm-6 col-12 mb-4"
};
var _hoisted_19 = {
  key: 0,
  "class": "shadow-lg p-3 mb-5 bg-body rounded",
  style: {
    "border": "0.5px solid black"
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
  "class": "bi bi-check2-all",
  style: {
    "fontSize": "3.5rem",
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
}, "Request Sudah Dikerjakan", -1
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
  "class": "bi bi-check2-all",
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
}, "Request Sudah Selesai", -1
/* HOISTED */
);

function render(_ctx, _cache, $props, $setup, $data, $options) {
  return (0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)(vue__WEBPACK_IMPORTED_MODULE_0__.Fragment, null, [_hoisted_1, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_2, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_3, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_4, [this.count2 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_5, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_6, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_7, [_hoisted_8, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_9, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[0] || (_cache[0] = function ($event) {
      return $options.blmDiassign2();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count2.blmdiassign), 1
  /* TEXT */
  ), _hoisted_10])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_11, [this.count2 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_12, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_13, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_14, [_hoisted_15, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_16, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[1] || (_cache[1] = function ($event) {
      return $options.sdgDikerjakan2();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count2.sdgdikerjakan), 1
  /* TEXT */
  ), _hoisted_17])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_18, [this.count2 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_19, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_20, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_21, [_hoisted_22, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_23, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[2] || (_cache[2] = function ($event) {
      return $options.sdhDikerjakan2();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count2.sdhdikerjakan), 1
  /* TEXT */
  ), _hoisted_24])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_25, [this.count2 ? ((0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_26, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_27, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_28, [_hoisted_29, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_30, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h3", {
    onClick: _cache[3] || (_cache[3] = function ($event) {
      return $options.sdhSelesai2();
    }),
    style: {
      "cursor": "pointer"
    }
  }, (0,vue__WEBPACK_IMPORTED_MODULE_0__.toDisplayString)($data.count2.sdhselesai), 1
  /* TEXT */
  ), _hoisted_31])])])])) : (0,vue__WEBPACK_IMPORTED_MODULE_0__.createCommentVNode)("v-if", true)])])])], 64
  /* STABLE_FRAGMENT */
  );
}

/***/ }),

/***/ "./resources/js/components/Dashboard2.vue":
/*!************************************************!*\
  !*** ./resources/js/components/Dashboard2.vue ***!
  \************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _Dashboard2_vue_vue_type_template_id_7dced5c9__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Dashboard2.vue?vue&type=template&id=7dced5c9 */ "./resources/js/components/Dashboard2.vue?vue&type=template&id=7dced5c9");
/* harmony import */ var _Dashboard2_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Dashboard2.vue?vue&type=script&lang=js */ "./resources/js/components/Dashboard2.vue?vue&type=script&lang=js");



_Dashboard2_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_1__["default"].render = _Dashboard2_vue_vue_type_template_id_7dced5c9__WEBPACK_IMPORTED_MODULE_0__.render
/* hot reload */
if (false) {}

_Dashboard2_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_1__["default"].__file = "resources/js/components/Dashboard2.vue"

/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (_Dashboard2_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_1__["default"]);

/***/ }),

/***/ "./resources/js/components/Dashboard2.vue?vue&type=script&lang=js":
/*!************************************************************************!*\
  !*** ./resources/js/components/Dashboard2.vue?vue&type=script&lang=js ***!
  \************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (/* reexport safe */ _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_Dashboard2_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_0__["default"])
/* harmony export */ });
/* harmony import */ var _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_Dashboard2_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!../../../node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./Dashboard2.vue?vue&type=script&lang=js */ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/Dashboard2.vue?vue&type=script&lang=js");
 

/***/ }),

/***/ "./resources/js/components/Dashboard2.vue?vue&type=template&id=7dced5c9":
/*!******************************************************************************!*\
  !*** ./resources/js/components/Dashboard2.vue?vue&type=template&id=7dced5c9 ***!
  \******************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* reexport safe */ _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_templateLoader_js_ruleSet_1_rules_2_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_Dashboard2_vue_vue_type_template_id_7dced5c9__WEBPACK_IMPORTED_MODULE_0__.render)
/* harmony export */ });
/* harmony import */ var _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_templateLoader_js_ruleSet_1_rules_2_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_Dashboard2_vue_vue_type_template_id_7dced5c9__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!../../../node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!../../../node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./Dashboard2.vue?vue&type=template&id=7dced5c9 */ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/Dashboard2.vue?vue&type=template&id=7dced5c9");


/***/ })

}]);