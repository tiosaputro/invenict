"use strict";
(self["webpackChunk"] = self["webpackChunk"] || []).push([["resources_js_components_laporan_LaporanRqsPerPersonnel_vue"],{

/***/ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/laporan/LaporanRqsPerPersonnel.vue?vue&type=script&lang=js":
/*!************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/laporan/LaporanRqsPerPersonnel.vue?vue&type=script&lang=js ***!
  \************************************************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = ({
  data: function data() {
    return {
      loading: true,
      req: [],
      token: localStorage.getItem('token'),
      checkname: [],
      checkto: [],
      id: localStorage.getItem('id'),
      items: [{
        label: 'Pdf',
        icon: 'bi bi-file-earmark-pdf text-danger',
        command: function command() {
          window.open('api/req-per-personnel-pdf');
        }
      }, {
        label: 'Excel',
        icon: 'bi bi-file-earmark-excel text-success',
        command: function command() {
          window.open('api/req-per-personnel-excel');
        }
      }]
    };
  },
  created: function created() {
    this.cekUser();
  },
  methods: {
    cekUser: function cekUser() {
      var _this = this;

      this.axios.get('api/cek-user/' + this.id, {
        headers: {
          'Authorization': 'Bearer ' + this.token
        }
      }).then(function (response) {
        _this.checkto = response.data.map(function (x) {
          return x.to;
        });
        _this.checkname = response.data.map(function (x) {
          return x.name;
        });

        if (_this.checkname.includes("Laporan Request Per ICT-Personnel") || _this.checkto.includes("/report-div-req-per-status")) {
          _this.getPersonnel();
        } else {
          _this.$toast.add({
            severity: 'error',
            summary: '403',
            detail: 'Cannot Access This Page'
          });

          setTimeout(function () {
            return _this.$router.push('/dashboard');
          }, 2000);
        }
      });
    },
    getPersonnel: function getPersonnel() {
      var _this2 = this;

      this.axios.get('api/get-tahun', {
        headers: {
          'Authorization': 'Bearer ' + this.token
        }
      }).then(function (response) {
        _this2.req = response.data.personnel;
        _this2.loading = false;
      })["catch"](function (error) {
        if (error.response.status == 401) {
          _this2.$toast.add({
            severity: 'error',
            summary: 'Error',
            detail: 'Sesi Login Expired'
          });

          localStorage.clear();
          localStorage.setItem("Expired", "true");
          setTimeout(function () {
            return _this2.$router.push('/login');
          }, 2000);
        }
      });
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/laporan/LaporanRqsPerPersonnel.vue?vue&type=template&id=65ab4b1b":
/*!****************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/laporan/LaporanRqsPerPersonnel.vue?vue&type=template&id=65ab4b1b ***!
  \****************************************************************************************************************************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* binding */ render)
/* harmony export */ });
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! vue */ "./node_modules/vue/dist/vue.esm-bundler.js");

var _hoisted_1 = {
  "class": "p-grid crud-demo"
};
var _hoisted_2 = {
  "class": "p-col-12"
};
var _hoisted_3 = {
  "class": "card"
};

var _hoisted_4 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "p-grid p-dir-col"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", {
  "class": "p-col"
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h4", null, "Laporan Request Per ICT-Personnel")])], -1
/* HOISTED */
);

var _hoisted_5 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createTextVNode)(" Not Found ");

var _hoisted_6 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createTextVNode)(" Loading. Please wait. ");

var _hoisted_7 = {
  "class": "p-grid p-dir-col"
};
var _hoisted_8 = {
  "class": "p-col"
};
var _hoisted_9 = {
  "class": "box"
};
function render(_ctx, _cache, $props, $setup, $data, $options) {
  var _component_Toast = (0,vue__WEBPACK_IMPORTED_MODULE_0__.resolveComponent)("Toast");

  var _component_ConfirmDialog = (0,vue__WEBPACK_IMPORTED_MODULE_0__.resolveComponent)("ConfirmDialog");

  var _component_Toolbar = (0,vue__WEBPACK_IMPORTED_MODULE_0__.resolveComponent)("Toolbar");

  var _component_Column = (0,vue__WEBPACK_IMPORTED_MODULE_0__.resolveComponent)("Column");

  var _component_SplitButton = (0,vue__WEBPACK_IMPORTED_MODULE_0__.resolveComponent)("SplitButton");

  var _component_DataTable = (0,vue__WEBPACK_IMPORTED_MODULE_0__.resolveComponent)("DataTable");

  return (0,vue__WEBPACK_IMPORTED_MODULE_0__.openBlock)(), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementBlock)("div", _hoisted_1, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_2, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_3, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createVNode)(_component_Toast), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createVNode)(_component_ConfirmDialog), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createVNode)(_component_Toolbar, {
    "class": "p-mb-4"
  }, {
    left: (0,vue__WEBPACK_IMPORTED_MODULE_0__.withCtx)(function () {
      return [_hoisted_4];
    }),
    _: 1
    /* STABLE */

  }), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createVNode)(_component_DataTable, {
    value: $data.req,
    rows: 25,
    loading: $data.loading,
    rowHover: true,
    responsiveLayout: "scroll",
    stripedRows: ""
  }, {
    empty: (0,vue__WEBPACK_IMPORTED_MODULE_0__.withCtx)(function () {
      return [_hoisted_5];
    }),
    loading: (0,vue__WEBPACK_IMPORTED_MODULE_0__.withCtx)(function () {
      return [_hoisted_6];
    }),
    footer: (0,vue__WEBPACK_IMPORTED_MODULE_0__.withCtx)(function () {
      return [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_7, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_8, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_9, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createVNode)(_component_SplitButton, {
        label: "Print",
        model: $data.items
      }, null, 8
      /* PROPS */
      , ["model"])])])])];
    }),
    "default": (0,vue__WEBPACK_IMPORTED_MODULE_0__.withCtx)(function () {
      return [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createVNode)(_component_Column, {
        field: "ireq_assigned_to",
        header: "Personnel ICT",
        style: {
          "min-width": "10rem"
        }
      }), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createVNode)(_component_Column, {
        field: "jumlah",
        header: "Jumlah Request",
        style: {
          "min-width": "10rem"
        }
      })];
    }),
    _: 1
    /* STABLE */

  }, 8
  /* PROPS */
  , ["value", "loading"])])])]);
}

/***/ }),

/***/ "./resources/js/components/laporan/LaporanRqsPerPersonnel.vue":
/*!********************************************************************!*\
  !*** ./resources/js/components/laporan/LaporanRqsPerPersonnel.vue ***!
  \********************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _LaporanRqsPerPersonnel_vue_vue_type_template_id_65ab4b1b__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./LaporanRqsPerPersonnel.vue?vue&type=template&id=65ab4b1b */ "./resources/js/components/laporan/LaporanRqsPerPersonnel.vue?vue&type=template&id=65ab4b1b");
/* harmony import */ var _LaporanRqsPerPersonnel_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./LaporanRqsPerPersonnel.vue?vue&type=script&lang=js */ "./resources/js/components/laporan/LaporanRqsPerPersonnel.vue?vue&type=script&lang=js");



_LaporanRqsPerPersonnel_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_1__["default"].render = _LaporanRqsPerPersonnel_vue_vue_type_template_id_65ab4b1b__WEBPACK_IMPORTED_MODULE_0__.render
/* hot reload */
if (false) {}

_LaporanRqsPerPersonnel_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_1__["default"].__file = "resources/js/components/laporan/LaporanRqsPerPersonnel.vue"

/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (_LaporanRqsPerPersonnel_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_1__["default"]);

/***/ }),

/***/ "./resources/js/components/laporan/LaporanRqsPerPersonnel.vue?vue&type=script&lang=js":
/*!********************************************************************************************!*\
  !*** ./resources/js/components/laporan/LaporanRqsPerPersonnel.vue?vue&type=script&lang=js ***!
  \********************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (/* reexport safe */ _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_LaporanRqsPerPersonnel_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_0__["default"])
/* harmony export */ });
/* harmony import */ var _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_LaporanRqsPerPersonnel_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!../../../../node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./LaporanRqsPerPersonnel.vue?vue&type=script&lang=js */ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/laporan/LaporanRqsPerPersonnel.vue?vue&type=script&lang=js");
 

/***/ }),

/***/ "./resources/js/components/laporan/LaporanRqsPerPersonnel.vue?vue&type=template&id=65ab4b1b":
/*!**************************************************************************************************!*\
  !*** ./resources/js/components/laporan/LaporanRqsPerPersonnel.vue?vue&type=template&id=65ab4b1b ***!
  \**************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* reexport safe */ _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_templateLoader_js_ruleSet_1_rules_2_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_LaporanRqsPerPersonnel_vue_vue_type_template_id_65ab4b1b__WEBPACK_IMPORTED_MODULE_0__.render)
/* harmony export */ });
/* harmony import */ var _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_templateLoader_js_ruleSet_1_rules_2_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_LaporanRqsPerPersonnel_vue_vue_type_template_id_65ab4b1b__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!../../../../node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!../../../../node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./LaporanRqsPerPersonnel.vue?vue&type=template&id=65ab4b1b */ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/laporan/LaporanRqsPerPersonnel.vue?vue&type=template&id=65ab4b1b");


/***/ })

}]);