"use strict";
(self["webpackChunk"] = self["webpackChunk"] || []).push([["resources_js_components_mng_role_Mng_role_vue"],{

/***/ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/mng_role/Mng_role.vue?vue&type=script&lang=js":
/*!***********************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/mng_role/Mng_role.vue?vue&type=script&lang=js ***!
  \***********************************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var primevue_api__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! primevue/api */ "./node_modules/primevue/api/api.esm.js");

/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = ({
  data: function data() {
    return {
      loading: true,
      token: localStorage.getItem('token'),
      role: [],
      filters: {
        'global': {
          value: null,
          matchMode: primevue_api__WEBPACK_IMPORTED_MODULE_0__.FilterMatchMode.CONTAINS
        }
      },
      checkname: [],
      checkto: [],
      id: localStorage.getItem('id')
    };
  },
  created: function created() {
    this.cekUser();
  },
  methods: {
    cekUser: function cekUser() {
      var _this = this;

      if (this.id) {
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

          if (_this.checkname.includes("Role Menu") || _this.checkto.includes("/mng-role")) {
            _this.getRole();
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
      } else {
        this.$router.push('/login');
      }
    },
    getRole: function getRole() {
      var _this2 = this;

      this.axios.get('api/role', {
        headers: {
          'Authorization': 'Bearer ' + this.token
        }
      }).then(function (response) {
        _this2.role = response.data;
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
    },
    DeleteRole: function DeleteRole(rol_id) {
      var _this3 = this;

      this.$confirm.require({
        message: "Data ini benar-benar akan dihapus?",
        header: "Delete Confirmation",
        icon: "pi pi-info-circle",
        acceptClass: "p-button-danger",
        acceptLabel: "Ya",
        rejectLabel: "Tidak",
        accept: function accept() {
          _this3.$toast.add({
            severity: "info",
            summary: "Confirmed",
            detail: "Record deleted",
            life: 3000
          });

          _this3.axios["delete"]('api/delete-role/' + rol_id, {
            headers: {
              'Authorization': 'Bearer ' + _this3.token
            }
          });

          _this3.getRole();
        },
        reject: function reject() {}
      });
    },
    CetakPdf: function CetakPdf() {
      window.open("api/report-lookups-pdf");
    },
    CetakExcel: function CetakExcel() {
      window.open('api/report-lookups-excel');
    }
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/mng_role/Mng_role.vue?vue&type=template&id=1fc397f4":
/*!***************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/mng_role/Mng_role.vue?vue&type=template&id=1fc397f4 ***!
  \***************************************************************************************************************************************************************************************************************************************************************************************/
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
}, [/*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("h4", null, "Management Role")])], -1
/* HOISTED */
);

var _hoisted_5 = {
  "class": "table-header p-d-flex p-flex-column p-flex-md-row p-jc-md-between"
};
var _hoisted_6 = {
  "class": "p-input-icon-left"
};

var _hoisted_7 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("i", {
  "class": "pi pi-search"
}, null, -1
/* HOISTED */
);

var _hoisted_8 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createTextVNode)(" Not Found ");

var _hoisted_9 = /*#__PURE__*/(0,vue__WEBPACK_IMPORTED_MODULE_0__.createTextVNode)(" Loading data. Please wait. ");

function render(_ctx, _cache, $props, $setup, $data, $options) {
  var _component_Toast = (0,vue__WEBPACK_IMPORTED_MODULE_0__.resolveComponent)("Toast");

  var _component_ConfirmDialog = (0,vue__WEBPACK_IMPORTED_MODULE_0__.resolveComponent)("ConfirmDialog");

  var _component_Toolbar = (0,vue__WEBPACK_IMPORTED_MODULE_0__.resolveComponent)("Toolbar");

  var _component_Button = (0,vue__WEBPACK_IMPORTED_MODULE_0__.resolveComponent)("Button");

  var _component_InputText = (0,vue__WEBPACK_IMPORTED_MODULE_0__.resolveComponent)("InputText");

  var _component_Column = (0,vue__WEBPACK_IMPORTED_MODULE_0__.resolveComponent)("Column");

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
    value: $data.role,
    paginator: true,
    rows: 10,
    filters: $data.filters,
    "onUpdate:filters": _cache[2] || (_cache[2] = function ($event) {
      return $data.filters = $event;
    }),
    loading: $data.loading,
    rowHover: true,
    paginatorTemplate: "FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown",
    rowsPerPageOptions: [5, 10, 25],
    currentPageReportTemplate: "Showing {first} to {last} of {totalRecords} Management Role"
  }, {
    header: (0,vue__WEBPACK_IMPORTED_MODULE_0__.withCtx)(function () {
      return [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("div", _hoisted_5, [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createVNode)(_component_Button, {
        label: "Add",
        "class": "p-button-raised",
        icon: "pi pi-plus",
        onClick: _cache[0] || (_cache[0] = function ($event) {
          return _ctx.$router.push('/Add-mng-role');
        })
      }), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createElementVNode)("span", _hoisted_6, [_hoisted_7, (0,vue__WEBPACK_IMPORTED_MODULE_0__.createVNode)(_component_InputText, {
        modelValue: $data.filters['global'].value,
        "onUpdate:modelValue": _cache[1] || (_cache[1] = function ($event) {
          return $data.filters['global'].value = $event;
        }),
        placeholder: "Search. . ."
      }, null, 8
      /* PROPS */
      , ["modelValue"])])])];
    }),
    empty: (0,vue__WEBPACK_IMPORTED_MODULE_0__.withCtx)(function () {
      return [_hoisted_8];
    }),
    loading: (0,vue__WEBPACK_IMPORTED_MODULE_0__.withCtx)(function () {
      return [_hoisted_9];
    }),
    "default": (0,vue__WEBPACK_IMPORTED_MODULE_0__.withCtx)(function () {
      return [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createVNode)(_component_Column, {
        field: "rol_id",
        header: "ID Role",
        sortable: true,
        style: {
          "min-width": "10rem"
        }
      }), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createVNode)(_component_Column, {
        field: "rol_name",
        header: "Name Role",
        sortable: true,
        style: {
          "min-width": "10rem"
        }
      }), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createVNode)(_component_Column, {
        field: "rol_desc",
        header: "Description Role",
        sortable: true,
        style: {
          "min-width": "10rem"
        }
      }), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createVNode)(_component_Column, {
        field: "rol_stat",
        header: "Status Role",
        sortable: true,
        style: {
          "min-width": "10rem"
        }
      }), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createVNode)(_component_Column, {
        style: {
          "min-width": "10rem"
        }
      }, {
        body: (0,vue__WEBPACK_IMPORTED_MODULE_0__.withCtx)(function (slotProps) {
          return [(0,vue__WEBPACK_IMPORTED_MODULE_0__.createVNode)(_component_Button, {
            "class": "p-button-rounded p-button-info p-mr-2 p-mb-2",
            icon: "pi pi-pencil",
            onClick: function onClick($event) {
              return _ctx.$router.push({
                name: 'Edit Management Role',
                params: {
                  code: slotProps.data.rol_id
                }
              });
            }
          }, null, 8
          /* PROPS */
          , ["onClick"]), (0,vue__WEBPACK_IMPORTED_MODULE_0__.createVNode)(_component_Button, {
            icon: "pi pi-trash",
            "class": "p-button-rounded p-button-danger p-mr-2 p-mb-2",
            onClick: function onClick($event) {
              return $options.DeleteRole(slotProps.data.rol_id);
            }
          }, null, 8
          /* PROPS */
          , ["onClick"])];
        }),
        _: 1
        /* STABLE */

      })];
    }),
    _: 1
    /* STABLE */

  }, 8
  /* PROPS */
  , ["value", "filters", "loading"])])])]);
}

/***/ }),

/***/ "./resources/js/components/mng_role/Mng_role.vue":
/*!*******************************************************!*\
  !*** ./resources/js/components/mng_role/Mng_role.vue ***!
  \*******************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _Mng_role_vue_vue_type_template_id_1fc397f4__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Mng_role.vue?vue&type=template&id=1fc397f4 */ "./resources/js/components/mng_role/Mng_role.vue?vue&type=template&id=1fc397f4");
/* harmony import */ var _Mng_role_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Mng_role.vue?vue&type=script&lang=js */ "./resources/js/components/mng_role/Mng_role.vue?vue&type=script&lang=js");



_Mng_role_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_1__["default"].render = _Mng_role_vue_vue_type_template_id_1fc397f4__WEBPACK_IMPORTED_MODULE_0__.render
/* hot reload */
if (false) {}

_Mng_role_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_1__["default"].__file = "resources/js/components/mng_role/Mng_role.vue"

/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (_Mng_role_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_1__["default"]);

/***/ }),

/***/ "./resources/js/components/mng_role/Mng_role.vue?vue&type=script&lang=js":
/*!*******************************************************************************!*\
  !*** ./resources/js/components/mng_role/Mng_role.vue?vue&type=script&lang=js ***!
  \*******************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (/* reexport safe */ _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_Mng_role_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_0__["default"])
/* harmony export */ });
/* harmony import */ var _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_Mng_role_vue_vue_type_script_lang_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!../../../../node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./Mng_role.vue?vue&type=script&lang=js */ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/mng_role/Mng_role.vue?vue&type=script&lang=js");
 

/***/ }),

/***/ "./resources/js/components/mng_role/Mng_role.vue?vue&type=template&id=1fc397f4":
/*!*************************************************************************************!*\
  !*** ./resources/js/components/mng_role/Mng_role.vue?vue&type=template&id=1fc397f4 ***!
  \*************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* reexport safe */ _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_templateLoader_js_ruleSet_1_rules_2_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_Mng_role_vue_vue_type_template_id_1fc397f4__WEBPACK_IMPORTED_MODULE_0__.render)
/* harmony export */ });
/* harmony import */ var _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_use_0_node_modules_vue_loader_dist_templateLoader_js_ruleSet_1_rules_2_node_modules_vue_loader_dist_index_js_ruleSet_0_use_0_Mng_role_vue_vue_type_template_id_1fc397f4__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!../../../../node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!../../../../node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./Mng_role.vue?vue&type=template&id=1fc397f4 */ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5.use[0]!./node_modules/vue-loader/dist/templateLoader.js??ruleSet[1].rules[2]!./node_modules/vue-loader/dist/index.js??ruleSet[0].use[0]!./resources/js/components/mng_role/Mng_role.vue?vue&type=template&id=1fc397f4");


/***/ })

}]);