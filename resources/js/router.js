import { createRouter, createWebHistory } from 'vue-router';
const routes = [
    {
        name: 'Login',
        path: '/login',
        component: () => import('./components/Login.vue'),

    },
    {
        name: 'Ict Request Detail Desc',
        path: '/ict-request-desc/:code',
        component: () => import('./components/ict_request_desc/ict_request_desc_detail.vue'),

    },
    {
        name: 'Ict Request Desc Detail Divisi 3',
        path: '/ict-request-desc/:code',
        component: () => import('./components/ict_request_desc/ict_request_divisi3_detail_desc.vue'),
    },
    {
        name: 'Ict Request Desc Verifikasi',
        path: '/ict-request-desc/:code',
        component: () => import('./components/ict_request_desc/ict_request_desc_verifikasi.vue'),
    },
    {
        name: 'Ict Request Desc Assign Per Detail',
        path: '/ict-request-desc-assign/:code',
        component: () => import('./components/ict_request_desc/ict_request_assign_per_detail_desc.vue'),
    },
    {
        name: 'Desc',
        path: '/ict-request-desc',
        component: () => import('./components/ict_request_desc/ict_request_desc.vue'),

    },
    {
        name: 'Dashboard',
        path: '/dashboard',
        component: () => import('./components/Dashboard.vue'),
    },
    {
        name: 'Dashboard-1',
        path: '/dashboard1',
        component: () => import('./components/Dashboard1.vue'),
    },
    {
        name: 'Dashboard-2',
        path: '/dashboard2',
        component: () => import('./components/Dashboard2.vue'),
    },
    {
        name: 'Dashboard-3',
        path: '/dashboard3',
        component: () => import('./components/Dashboard3.vue'),
    },
    //lookup
    {
        name: 'Referensi Lookups',
        path: '/referensi-lookups',
        component: () => import('./components/referensi_lookups/Referensi_lookups.vue'),
    },
    {
        name: 'Create Referensi Lookups',
        path: '/Add-referensi-lookups',
        component: () => import('./components/referensi_lookups/Referensi_lookups_create.vue'),
    },
    {
        name: 'Edit Referensi Lookups',
        path: '/Edit-referensi-lookups/:code/:type',
        component: ()=> import('./components/referensi_lookups/Referensi_lookups_edit.vue'),
    },
    //supplier
    {
        name: 'Referensi Supplier',
        path: '/referensi-supplier',
        component: ()=> import('./components/referensi_supplier/Referensi_supplier.vue'),
    },
    {
        name: 'Create Referensi Supplier',
        path: '/Add-referensi-supplier',
        component: ()=> import('./components/referensi_supplier/Referensi_supplier_create.vue'),
    },
    {
        name: 'Edit Referensi Supplier',
        path: '/Edit-referensi-supplier/:code',
        component: ()=> import('./components/referensi_supplier/Referensi_supplier_edit.vue'),
    },
    //master peripheral
    {
        name: 'Master Peripheral',
        path: '/master-peripheral',
        component: ()=> import('./components/master_peripheral/Master_peripheral.vue'),
    },
    {
        name: 'Scan',
        path: '/scan',
        component: ()=> import('./components/master_peripheral/Scan.vue'),

    },
    {
        name: 'Add Master Peripheral',
        path: '/Add-master-peripheral',
        component: ()=> import('./components/master_peripheral/Master_peripheral_create.vue'),
    },
    {
        name: 'Edit Master Peripheral',
        path: '/Edit-master-peripheral/:code',
        component: ()=> import('./components/master_peripheral/Master_peripheral_edit.vue'),
    },
    //mutasi peripheral
    {
        name: 'Mutasi Peripheral',
        path: '/mutasi-peripheral',
        component: ()=> import('./components/mutasi_peripheral/Mutasi_peripheral.vue'),
    },
    {
        name: 'Add Mutasi Peripheral',
        path: '/Add-mutasi-peripheral',
        component: ()=> import('./components/mutasi_peripheral/Mutasi_peripheral_create.vue'),
    },
    {
        name: 'Edit Mutasi Peripheral',
        path: '/Edit-mutasi-peripheral/:code',
        component: ()=> import('./components/mutasi_peripheral/Mutasi_peripheral_edit.vue'),
    },
    //cash advance
    {
        name: 'Cash Advance ',
        path: '/cash-advance',
        component: ()=> import('./components/cash_advance/Cash_advance.vue'),
    },
    {
        name: 'Add Cash Advance',
        path: '/Add-cash-advance',
        component: ()=> import('./components/cash_advance/Cash_advance_create.vue'),
    },
    {
        name: 'add Cash Advance',
        path: '/add-cash-advance/:code',
        component: ()=> import('./components/cash_advance/Cash_advance_create_from_ict.vue'),
    },
    {
        name: 'Edit Cash Advance',
        path: '/Edit-cash-advance/:code',
        component: ()=> import('./components/cash_advance/Cash_advance_edit.vue'),
    },
    //ict request
    {
        name: 'Ict Request',
        path: '/ict-request',
        component: ()=> import('./components/ict_request/Ict_request.vue'),
    },
    {
        name: 'Add Ict Request',
        path: '/Add-ict-request',
        component: ()=> import('./components/ict_request/Ict_request_create.vue'),
    },
    {
        name: 'Edit Ict Request',
        path: '/Edit-ict-request/:code',
        component: ()=> import('./components/ict_request/Ict_request_edit.vue'),
    },
    //ict_request_divisi1
    {
        name: 'Ict Request Divisi 1',
        path: '/ict-request-divisi1',
        component: ()=> import('./components/ict_request_divisi1/Ict_request_divisi1.vue'),
    },
    {
        name: 'Ict Request Divisi 1 Detail',
        path: '/ict-request-divisi1-detail/:code',
        component: ()=> import('./components/ict_request_divisi1/Ict_request_divisi1_detail.vue'),
    },
    {
        name: 'Ict Request Verifikasi',
        path: '/ict-request-verifikasi/:code',
        component: ()=> import('./components/ict_request_divisi1/Ict_request_verifikasi.vue'),
    },
     //ict_request_divisi2
     {
        name: 'Ict Request Divisi 2',
        path: '/ict-request-divisi2',
        component: ()=> import('./components/ict_request_divisi2/Ict_request_divisi2.vue'),
    },
    {
        name: 'Ict Request Divisi 2 Detail',
        path: '/ict-request-divisi2-detail/:code',
        component: ()=> import('./components/ict_request_divisi2/Ict_request_divisi2_detail.vue'),
    },
    {
        name: 'Ict Request Divisi 2 Detaill',
        path: '/ict-request-divisi2-detaill/:code',
        component: ()=> import('./components/ict_request_divisi2/Ict_request_divisi2_detail_penugasan.vue'),
    },
    {
        name: 'Ict Request Divisi 2 Assign Per-Detail',
        path: '/ict-request-divisi2-assign-per-detail/:code',
        component: ()=> import('./components/ict_request_divisi2/Ict_request_divisi2_assign_per_detail.vue'),
    },
    //ict_request_divisi3
    {
        name: 'Ict Request Divisi 3',
        path: '/ict-request-divisi3',
        component: ()=> import('./components/ict_request_divisi3/Ict_request_divisi3.vue'),
    },
    {
        name: 'Ict Request Divisi 3 Detail',
        path: '/ict-request-divisi3-detail/:code',
        component: ()=> import('./components/ict_request_divisi3/Ict_request_divisi3_detail.vue'),
    },
    //ict request (detail)
    {
        name: 'Ict Request Detail',
        path: '/ict-request-detail/:code',
        component: ()=> import('./components/ict_request_detail/Ict_request_detail.vue'),
    },
    {
        name: 'Add Ict Request Detail',
        path: '/Add-ict-request-detail/:code',
        component: ()=> import('./components/ict_request_detail/Ict_request_detail_create.vue'),
    },
    {
        name: 'Edit Ict Request Detail',
        path: '/Edit-ict-request-detail/:code/:ireq',
        component: ()=> import('./components/ict_request_detail/Ict_request_detail_edit.vue'),
    },
    //pembelian peripheral
    {
        name: 'Pembelian Peripheral',
        path: '/pembelian-peripheral',
        component: ()=> import('./components/pembelian_peripheral/Pembelian_peripheral.vue'),
    },
    {
        name: 'Add Pembelian Peripheral',
        path: '/Add-pembelian-peripheral',
        component: ()=> import('./components/pembelian_peripheral/Pembelian_peripheral_create.vue'),
    },
    {
        name: 'Edit Pembelian Peripheral',
        path: '/Edit-pembelian-peripheral/:code',
        component: ()=> import('./components/pembelian_peripheral/Pembelian_peripheral_edit.vue'),
    },
     //detail pembelian peripheral
     {
        name: 'Pembelian Peripheral Detail',
        path: '/pembelian-peripheral-detail/:code',
        component: ()=> import('./components/pembelian_peripheral_detail/Pembelian_peripheral_detail.vue'),
    },
    {
        name: 'Add Pembelian Peripheral Detail',
        path: '/Add-pembelian-peripheral-detail/:code',
        component: ()=> import('./components/pembelian_peripheral_detail/Pembelian_peripheral_detail_create.vue'),
    },
    {
        name: 'Edit Pembelian Peripheral Detail',
        path: '/Edit-pembelian-peripheral-detail/:code/:purchase',
        component: ()=> import('./components/pembelian_peripheral_detail/Pembelian_peripheral_detail_edit.vue'),
    },
    //mng_user
    {
        name: 'Management User',
        path: '/mng-user',
        component: ()=> import('./components/mng_user/mng_user.vue'),
    },
    {
        name: 'Add Management User',
        path: '/add-mng-user',
        component: ()=> import('./components/mng_user/mng_user_create.vue'),
    },
    {
        name: 'Edit Management User',
        path: '/Edit-mng-user/:code',
        component: ()=> import('./components/mng_user/mng_user_edit.vue'),
    },
     //mng_role
     {
        name: 'Management Role',
        path: '/mng-role',
        component: ()=> import('./components/mng_role/Mng_role.vue'),
    },
    {
        name: 'Add Management Role',
        path: '/add-mng-role',
        component: ()=> import('./components/mng_role/Mng_role_create.vue'),
    },
    {
        name: 'Edit Management Role',
        path: '/edit-mng-role/:code',
        component: ()=> import('./components/mng_role/Mng_role_edit.vue'),
    },
    //mng_module
    {
        name: 'Management Module',
        path: '/mng-module',
        component: ()=> import('./components/mng_module/Mng_module.vue'),
    },
    {
        name: 'Add Management Module',
        path: '/Add-mng-module',
        component: ()=> import('./components/mng_module/Mng_module_create.vue'),
    },
    {
        name: 'Edit Management Module',
        path: '/edit-mng-module/:code',
        component: ()=> import('./components/mng_module/Mng_module_edit.vue'),
    },
    //mng_menu
    {
        name: 'Management Menu',
        path: '/mng-menu',
        component: ()=> import('./components/mng_menu/Mng_menu.vue'),
    },
    {
        name: 'Add Management Menu',
        path: '/add-mng-menu',
        component: ()=> import('./components/mng_menu/Mng_menu_create.vue'),
    },
    {
        name: 'Edit Management Menu',
        path: '/edit-mng-menu/:code',
        component: ()=> import('./components/mng_menu/Mng_menu_edit.vue'),
    },
    //divisi_refs
    {
        name: 'Divisi Refs',
        path: '/divisi-refs',
        component: ()=> import('./components/divisi_refs/Divisi_refs.vue'),
    },
    {
        name: 'Add Divisi Refs',
        path: '/add-divisi-refs',
        component: ()=> import('./components/divisi_refs/Divisi_refs_create.vue'),
    },
    {
        name: 'Edit Divisi Refs',
        path: '/edit-divisi-refs/:code',
        component: ()=> import('./components/divisi_refs/Divisi_refs_edit.vue'),
    },
    //grafik
    {
        name: 'Grafik',
        path: '/grafik',
        component: ()=> import('./components/grafik/Grafik.vue'),
    },
    //ict_request_divisi4
     {
        name: 'Ict Request Divisi 4',
        path: '/ict-request-divisi4',
        component: ()=> import('./components/ict_request_divisi4/Ict_request_divisi4.vue'),
    },
    {
        name: 'Ict Request Divisi 4 Detail',
        path: '/ict-request-divisi4-detail/:code',
        component: ()=> import('./components/ict_request_divisi4/Ict_request_divisi4_detail.vue'),
    },
    {
        name: 'Ict Request Divisi 4 Closing Per-Detail',
        path: '/ict-request-divisi4-closing-per-detail/:code',
        component: ()=> import('./components/ict_request_divisi4/Ict_request_divisi4_closing_per_detail.vue'),
    },
    {
        name: 'Ict Request Divisi 4 Detaill',
        path: '/ict-request-divisi4-detaill/:code',
        component: ()=> import('./components/ict_request_divisi4/Ict_request_divisi4_detail_penugasan.vue'),
    },
];
const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router;