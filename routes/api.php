<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
 });
Route::post('/login', 'LoginController@index');
Route::get('/logout', 'LoginController@logout')->middleware('auth:sanctum');
//referensi_lookups
Route::middleware('auth:sanctum')->group(function(){
    Route::get('/ref', 'LookupsController@index');
    Route::post('/add-ref','LookupsController@save');
    Route::get('/edit-ref/{code}/{type}','LookupsController@edit');
    Route::put('/update-ref/{code}/{type}','LookupsController@update');
    Route::delete('/delete-ref/{lookup_code}/{lookup_type}','LookupsController@delete');
    //Route::get('/report-lookups-pdf','LookupsController@cetak_pdf');
    //Route::get('/report-lookups-excel','LookupsController@cetak_excel');
    // Route::get('/getMerk','LookupsController@getMerk');
    // Route::get('/getKondisi','LookupsController@getKondisi');
    // Route::get('/getStatus','LookupsController@getStatus');
    // Route::get('/getType','LookupsController@getType');
    // Route::get('/getMataUang','LookupsController@getMataUang');
    // Route::get('/getMethodePurch','LookupsController@getMethodePurch');
    // Route::get('/getSatuan','LookupsController@getSatuan');

    //supplier
    Route::get('/supp', 'SupplierController@index');
    Route::post('/add-supp', 'SupplierController@save');
    Route::get('/edit-supp/{code}', 'SupplierController@edit');
    Route::get('/show-supp/{suplier_code}', 'SupplierController@show');
    Route::put('/update-supp/{code}', 'SupplierController@update');
    Route::delete('/delete-supp/{suplier_code}', 'SupplierController@delete');
    Route::get('/get-supp','SupplierController@getSupp');
    //Route::get('/report-supplier-pdf','SupplierController@cetak_pdf');
    //Route::get('/report-supplier-excel','SupplierController@cetak_excel');

    //pekerja
    Route::get('/get-pekerja','PekerjaController@getPekerja');
    
    //master peripheral
    Route::get('/mas','MasterController@index');
    Route::post('/add-mas','MasterController@save');
    Route::get('/edit-mas/{code}','MasterController@edit');
    Route::put('/update-mas/{code}','MasterController@update');
    Route::delete('/delete-mas/{invent_code}','MasterController@delete');
    Route::get('/getImage/{kode}','MasterController@getImage');
    Route::get('/getBarcode/{invent_code}','MasterController@getBarcode');
    //Route::get('/report-master-excel','MasterController@cetak_excel');
    //Route::get('/get-kode','MasterController@getKode');

    //mutasi peripheral
    Route::get('/mut','MutasiController@index');
    Route::post('/add-mut','MutasiController@save');
    Route::get('/edit-mut/{code}','MutasiController@edit');
    Route::put('/update-mut/{code}','MutasiController@update');
    Route::delete('/delete-mut/{imutasi_id}','MutasiController@delete');
    //Route::get('/report-mutasi-pdf','MutasiController@cetak_pdf');
    //Route::get('/report-mutasi-excel','MutasiController@cetak_excel');

    //pembelian peripheral
    Route::get('/pem','PembelianController@index');
    Route::post('/add-pem','PembelianController@save');
    Route::get('/edit-pem/{code}','PembelianController@edit');
    Route::put('/update-pem/{code}','PembelianController@update');
    Route::delete('/delete-pem/{purchase_id}','PembelianController@delete');
    //Route::get('/report-pem-pdf','PembelianController@cetak_pdf');
    //Route::get('/report-pem-excel','PembelianController@cetak_excel');

    //Detail pembelian peripheral
    Route::get('/detail-pem/{code}','PembelianDetailController@index');
    Route::post('/add-detail-pem/{code}','PembelianDetailController@save');
    Route::get('/edit-detail-pem/{purchase}','PembelianDetailController@edit');
    Route::put('/update-detail-pem/{code}/{purchase}','PembelianDetailController@update');
    Route::delete('/delete-detail-pem/{code}/{dpurchase_id}','PembelianDetailController@delete');
    Route::get('/getSuppDate/{code}','PembelianDetailController@getSuppDate');
    Route::get('/getValuta/{code}','PembelianDetailController@getValuta');
    //Route::get('/report-pem-detail-pdf/{purchase_id}','PembelianDetailController@cetak_pdf');
    //Route::get('/report-pem-detail-excel/{purchase_id}','PembelianDetailController@cetak_excel');

    //cash advance
    Route::get('/cash','CashController@index');
    Route::post('/add-cash','CashController@save');
    Route::get('/edit-cash/{code}','CashController@edit');
    Route::put('/update-cash/{code}','CashController@update');
    Route::delete('/delete-cash/{ca_id}','CashController@delete');
    //Route::get('/report-cash-pdf','CashController@cetak_pdf');
    //Route::get('/report-cash-excel','CashController@cetak_excel');

    //mng_user
    Route::get('/get-user','MngUserController@index');
    Route::post('/add-user','MngUserController@save');
    Route::get('/edit-user/{code}','MngUserController@edit');
    Route::put('/update-user/{code}','MngUserController@update');
    Route::delete('/delete-user/{usr_id}','MngUserController@delete');
    Route::get('/get-verificator/{div_id}','MngUserController@getVerif');
    //divisi_refs
    Route::get('/divisi','DivisiRefsController@index');
    Route::get('/get-divisi','DivisiRefsController@getDivisi');
    Route::get('/edit-divisi/{code}','DivisiRefsController@edit');
    Route::put('/update-divisi/{code}','DivisiRefsController@update');
    Route::delete('/delete-divisi/{div_id}','DivisiRefsController@delete');
    //mng_roles
    Route::get('/role','MngRolesController@index');
    Route::post('/save-role','MngRolesController@save');
    Route::get('/get-role','MngRolesController@getRole');
    Route::get('/edit-role/{code}','MngRolesController@edit');
    Route::put('/update-role/{code}','MngRolesController@update');
    Route::delete('/delete-role/{rol_id}','MngRolesController@delete');

    //Mng_usr_roles
    Route::get('/get-rolee/{id}','MngUsrRoleController@getRole');
    Route::post('/save-usr-role','MngUsrRoleController@save');
    Route::get('/edit-usr-role/{code}','MngUsrRoleController@edit');
    Route::put('/update-usr-role/{code}','MngUsrRoleController@update');

    //Mng_role_menu
    Route::post('/save-role-menu','MngRoleMenuController@save');
    Route::get('/edit-role-menu/{code}','MngRoleMenuController@edit');
    Route::put('/update-role-menu/{code}','MngRoleMenuController@update');

    //Mng_module
    Route::get('/module','ModuleController@index');
    Route::get('/get-module','ModuleController@getModule');
    Route::post('/save-module','ModuleController@save');
    Route::get('/edit-module/{code}','ModuleController@edit');
    Route::put('/update-module/{code}','ModuleController@update');
    Route::delete('/delete-module/{mod_id}','ModuleController@delete');

    //Mng_menu
    Route::post('/get-menu-user','MngMenuController@getMenuUser');
    Route::get('/menu','MngMenuController@index');
    Route::get('/get-parent','MngMenuController@getParent');
    Route::get('/get-menu','MngMenuController@getMenu');
    Route::get('/edit-menu/{code}','MngMenuController@edit');
    Route::post('/save-menu','MngMenuController@save');
    Route::put('/update-menu/{code}','MngMenuController@update');
    Route::delete('/delete-menu/{menu_id}','MngMenuController@delete');

    //dashboard
    Route::get('/getCountUser/{usr_name}','DashboardController@countUser');
    Route::get('/getCountDivisi1/{usr_name}','DashboardController@countDivisi1');
    Route::get('/getCountDivisi2','DashboardController@countDivisi2');
    Route::get('/getCountDivisi3/{full_name}','DashboardController@countDivisi3');
    Route::get('/status-per-divisi','DashboardController@countPerStatusPerDivisi');
    Route::get('/count-per-status','DashboardController@countPerStatus');
    Route::get('/get-tahun','DashboardController@getTahun');
    Route::get('/get-tahun-user/{bulanUser}','DashboardController@getTahunUser');
    Route::get('/get-tahun-requestor/{bulanRequestor}','DashboardController@getTahunRequestor');
    Route::get('/get-bulan','DashboardController@getBulan');
    Route::get('/count-per-divuser-tahun/{tahunUser}','DashboardController@countPerDivUserTahun');
    Route::get('/count-per-divreq-tahun/{tahunRequestor}','DashboardController@countPerDivRequestorTahun');
    Route::get('/count-per-divuser-bulan/{tahunnUser}/{bulanUser}','DashboardController@countPerDivUserBulan');
    Route::get('/count-per-divreq-bulan/{tahunnRequestor}/{bulanRequestor}','DashboardController@countPerDivRequestorBulan');
    Route::get('/get-status','DashboardController@getStatus');
    Route::get('/count-per-divuser-status/{statusUser}','DashboardController@countPerDivUserStatus');
    Route::get('/count-per-divreq-status/{statusRequestor}','DashboardController@countPerDivRequestorStatus');
    Route::get('/count-per-personel','DashboardController@countPerPersonnel');
    Route::get('/get-personnel','DashboardController@getPersonnel');
    Route::get('/count-per-status-ict/{ictPersonnel}','DashboardController@countPerStatusIct');

});
Route::middleware('auth:sanctum')->group(function(){
    //ict request
    Route::get('/get-ict/{usr_name}','IctController@getIct');
    Route::post('/add-ict','IctController@save');
    Route::get('/edit-ict/{code}','IctController@edit');
    Route::put('/update-ict/{code}','IctController@update');
    Route::delete('/delete-ict/{ireq_id}','IctController@delete');
    Route::get('/getNoreq','IctController@getNoreq');
    Route::get('/getNameBu/{noreq}','IctController@getNameBu');
    //divisi 1
    Route::get('/get-permohonan/{usr_name}','IctController@getPermohonan');
    
    //divisi 2
    Route::get('/get-permohonan-divisi','IctController@getPermohonanDivisi');
    //divisi 3
    Route::get('/get-sedang-dikerjakan/{usr_fullname}','IctController@getSedangDikerjakan');
    //end divisi 3

    //divisi 4
    Route::get('/get-ictDivisi4','IctController@ictDivisi4');
    //end

    Route::post('/updateAssign','IctController@updateAssign');
    Route::get('/updateStatusPermohonan/{code}','IctController@updateStatusPermohonan');
    Route::get('/updateStatusPenugasan/{ireq_id}','IctController@updateStatusPenugasan');
    Route::put('/updateStatusReject/{code}','IctController@updateStatusReject');
    Route::get('/updateStatusSubmit/{ireq_id}','IctController@updateStatusSubmit');
    Route::get('/updateStatusClosing/{ireq_id}','IctController@updateStatusClosing');
    //Route::get('/report-ict-excel','IctController@cetak_excel');
    //Route::get('/report-ict-pdf','IctController@cetak_pdf');

    //ict request (detail)
    Route::get('/ict-detail/{code}','IctDetailController@index');
    Route::get('/ict-detail-penugasan/{code}','IctDetailController@detailPenugasan');
    Route::get('/get-detail-done/{code}/{usr_fullname}','IctDetailController@getDetailDone');
    Route::post('/add-ict-detail/{code}','IctDetailController@save');
    Route::get('/edit-ict-detail/{code}/{ireq}','IctDetailController@edit');
    Route::put('/update-ict-detail/{code}/{ireq}','IctDetailController@update');
    Route::delete('/delete-ict-detail/{ireq_id}','IctDetailController@delete');
    Route::get('/get-noreq/{code}','IctDetailController@getNo_req');
    Route::get('/get-verif/{code}','IctDetailController@getDetailVerif');
    Route::get('/detail/{ireqd_id}','IctDetailController@getDetail');
    Route::put('/update-status-done/{code}','IctDetailController@updateStatusDone');
    Route::put('/updateAssignPerDetail/{code}','IctDetailController@updateAssign');
    Route::get('/updateStatusClosingDetail/{ireqd_id}/{code}','IctDetailController@updateStatusClosingDetail');
    //Route::get('/report-ict-detail-pdf/{code}','IctDetailController@cetak_pdf');
    //Route::get('/report-ict-detail-excel/{code}','IctDetailController@cetak_excel');

    Route::get('/getMerk','LookupsController@getMerk');
    Route::get('/getStatusIct','LookupsController@getStatusIct');
    Route::get('/getKondisi','LookupsController@getKondisi');
    Route::get('/getStatus','LookupsController@getStatus');
    Route::get('/getType','LookupsController@getType');
    Route::get('/getMataUang','LookupsController@getMataUang');
    Route::get('/getMethodePurch','LookupsController@getMethodePurch');
    Route::get('/getSatuan','LookupsController@getSatuan');
    Route::get('/get-kode','MasterController@getKode');
    Route::get('/get-kode-ict/{code}','MasterController@getKodeIct');
});
//laporan
Route::get('/req-per-status-excel','LaporanController@cetak_excel_per_status');
Route::get('/req-per-status-pdf','LaporanController@cetak_pdf_per_status');
Route::get('/req-div-req-per-bulan-pdf/{tahunnRequestor}/{bulanRequestor}','LaporanController@cetak_pdf_div_req_per_bulan');
Route::get('/req-div-req-per-bulan-excel/{tahunnRequestor}/{bulanRequestor}','LaporanController@cetak_excel_div_req_per_bulan');
Route::get('/req-div-user-per-bulan-excel/{tahunnUser}/{bulanUser}','LaporanController@cetak_excel_div_user_per_bulan');
Route::get('/req-div-user-per-bulan-pdf/{tahunnUser}/{bulanUser}','LaporanController@cetak_pdf_div_user_per_bulan');
Route::get('/req-div-req-per-tahun-excel/{tahunRequestor}','LaporanController@cetak_excel_div_req_per_tahun');
Route::get('/req-div-req-per-tahun-pdf/{tahunRequestor}','LaporanController@cetak_pdf_div_req_per_tahun');
Route::get('/req-div-user-per-tahun-excel/{tahunUser}','LaporanController@cetak_excel_div_user_per_tahun');
Route::get('/req-div-user-per-tahun-pdf/{tahunUser}','LaporanController@cetak_pdf_div_user_per_tahun');
Route::get('/req-div-req-per-status-excel/{statusRequestor}','LaporanController@cetak_excel_div_req_per_status');
Route::get('/req-div-req-per-status-pdf/{statusRequestor}','LaporanController@cetak_pdf_div_req_per_status');
Route::get('/req-div-user-per-status-excel/{statusUser}','LaporanController@cetak_excel_div_user_per_status');
Route::get('/req-div-user-per-status-pdf/{statusUser}','LaporanController@cetak_pdf_div_user_per_status');
Route::get('/req-per-personnel-excel','LaporanController@cetak_excel_per_personnel');
Route::get('/req-per-personnel-pdf','LaporanController@cetak_pdf_per_personnel');
Route::get('/req-per-status-per-personnel-pdf/{ictPersonnel}','LaporanController@cetak_pdf_per_status_per_personnel');
Route::get('/req-per-status-per-personnel-excel/{ictPersonnel}','LaporanController@cetak_excel_per_status_per_personnel');

//bisnis
Route::get('/get-bisnis','BisnisController@getBisnis');
Route::get('/report-master-pdf','MasterController@cetak_pdf');
Route::get('/report-master-excel','MasterController@cetak_excel');
Route::get('/report-mutasi-excel','MutasiController@cetak_excel');
Route::get('/report-mutasi-pdf','MutasiController@cetak_pdf');
Route::get('/report-cash-pdf','CashController@cetak_pdf');
Route::get('/report-cash-excel','CashController@cetak_excel');
Route::get('/report-pem-detail-pdf/{purchase_id}','PembelianDetailController@cetak_pdf');
Route::get('/report-pem-detail-excel/{purchase_id}','PembelianDetailController@cetak_excel');
Route::get('/report-pem-excel','PembelianController@cetak_excel');
Route::get('/report-pem-pdf','PembelianController@cetak_pdf');
Route::get('/report-supplier-pdf','SupplierController@cetak_pdf');
Route::get('/report-supplier-excel','SupplierController@cetak_excel');
Route::get('/report-lookups-pdf','LookupsController@cetak_pdf');
Route::get('/report-lookups-excel','LookupsController@cetak_excel');
Route::get('/report-ict-detail-pdf/{code}','IctDetailController@cetak_pdf');
Route::get('/report-ict-detail-excel/{code}','IctDetailController@cetak_excel');
Route::get('/report-ict-detail-pdf-reject/{code}','IctDetailController@cetak_pdf_reject');
Route::get('/report-ict-detail-excel-reject/{code}','IctDetailController@cetak_excel_reject');
Route::get('/report-ict-excel-permohonan','IctController@cetak_excel_permohonan');
Route::get('/report-ict-pdf-permohonan','IctController@cetak_pdf_permohonan');
Route::get('/report-ict-excel-verifikasi','IctController@cetak_excel_verifikasi');
Route::get('/report-ict-pdf-verifikasi','IctController@cetak_pdf_verifikasi');
Route::get('/report-ict-excel-reject','IctController@cetak_excel_reject');
Route::get('/report-ict-pdf-reject','IctController@cetak_pdf_reject');
Route::get('/report-ict-excel-sedang-dikerjakan','IctController@cetak_excel_sedang_dikerjakan');
Route::get('/report-ict-pdf-sedang-dikerjakan','IctController@cetak_pdf_sedang_dikerjakan');
Route::get('/report-ict-excel-sudah-dikerjakan','IctController@cetak_excel_sudah_dikerjakan');
Route::get('/report-ict-pdf-sudah-dikerjakan','IctController@cetak_pdf_sudah_dikerjakan');
Route::get('/report-ict-excel-selesai','IctController@cetak_excel_selesai');
Route::get('/report-ict-pdf-selesai','IctController@cetak_pdf_selesai');