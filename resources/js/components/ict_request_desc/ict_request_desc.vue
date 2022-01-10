<template>
  <div class="p-grid crud-demo">
    <div class="p-col-12">
      <div class="card">
        <Toast />
        <ConfirmDialog/> 
        <Toolbar class="p-mb-4" v-if="this.active == 1">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <h4>ICT Request (Request Yang Belum Diverifikasi)</h4>
              </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          v-if="this.active == 1"
          :value="ict"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
                {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:10rem">
            <template #body="slotProps">
              <Button
                        v-if="slotProps.data.ireq_status == null"
                        class="p-button-rounded p-button-info p-mr-2 p-mb-2"
                        icon="pi pi-pencil"
                        @click="
                          $router.push({
                            name: 'Edit Ict Request',
                            params: { code: slotProps.data.ireq_id },})"
                      />
                      <Button
                        v-if="slotProps.data.ireq_status == null"
                        icon="pi pi-trash"
                        class="p-button-rounded p-button-danger p-mr-2 p-mb-2"
                        @click="DeleteIct(slotProps.data.ireq_id)"
                      />
                      <Button
                        class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                        icon="pi pi-info-circle"
                        @click="$router.push({
                            name: 'Ict Request Detail Desc',
                            params: { code: slotProps.data.ireq_id }, })"
                      />
            </template>
          </Column>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>
        <Toolbar class="p-mb-4" v-if="this.active == 2">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <h4>ICT Request (Request Yang Sudah Diverifikasi)</h4>
              </div>
            </div>
          </template>
        </Toolbar>   
        <DataTable
          v-if="this.active == 2"
          :value="sdhDiverifikasi"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
                {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                      name: 'Ict Request Detail Desc',
                      params: { code: slotProps.data.ireq_id }, })"
              />
            </template>
          </Column>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>
        <Toolbar class="p-mb-4" v-if="this.active == 3">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <h4>ICT Request (Request Yang Direject)</h4>
              </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          v-if="this.active == 3"
          :value="diReject"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
                {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_reason" header="Alasan" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                      name: 'Ict Request Detail Desc',
                      params: { code: slotProps.data.ireq_id }, })"
              />
            </template>
          </Column>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>
        <Toolbar class="p-mb-4" v-if="this.active == 4">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <h4>ICT Request (Request Yang Sedang Dikerjakan)</h4>
              </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          v-if="this.active == 4"
          :value="sdgDikerjakan"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
            </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
                {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                      name: 'Ict Request Detail Desc',
                      params: { code: slotProps.data.ireq_id }, })"
              />
            </template>
          </Column>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>
        <Toolbar class="p-mb-4" v-if="this.active == 5">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <h4>ICT Request (Request Yang Sudah Dikerjakan)</h4>
              </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          v-if="this.active == 5"
          :value="sdhDikerjakan"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
                {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                      name: 'Ict Request Detail Desc',
                      params: { code: slotProps.data.ireq_id }, })"
              />
            </template>
          </Column>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>
        <Toolbar class="p-mb-4" v-if="this.active == 6">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
			  <div class="p-col">
			    <h4>ICT Request (Request Yang Sudah Selesai)</h4>
			  </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          v-if="this.active == 6"
          :value="sdhSelesai"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
                {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                      name: 'Ict Request Detail Desc',
                      params: { code: slotProps.data.ireq_id }, })"
              />
            </template>
          </Column>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>
        <Toolbar class="p-mb-4" v-if="this.active == 7">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
			  <div class="p-col">
			    <h4>ICT Request (Request Yang Menunggu Diverifikasi)</h4>
			  </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          v-if="this.active == 7"
          :value="permohonan"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                  name: 'Ict Request Detail Desc',
                  params: { code: slotProps.data.ireq_id }, })"
                />
              <Button
                class="p-button-rounded p-button-success p-mr-2 p-mb-2"
                icon="pi pi-check-square"
                @click="$router.push({
                  name: 'Ict Request Desc Verifikasi',
                  params: { code: slotProps.data.ireq_id }, })"
              />
            </template>
          </Column>
           <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>
        <Toolbar class="p-mb-4" v-if="this.active == 8">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <h4>ICT Request (Request Yang Sudah Diverifikasi)</h4>
              </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          v-if="this.active == 8"
          :value="verif"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                  name: 'Ict Request Detail Desc',
                  params: { code: slotProps.data.ireq_id }, })"
                />
            </template>
          </Column>
           <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>
        <Toolbar class="p-mb-4" v-if="this.active == 9">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <h4>ICT Request (Request Yang Direject)</h4>
              </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          v-if="this.active == 9"
          :value="reject"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_reason" header="Alasan" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                  name: 'Ict Request Detail Desc',
                  params: { code: slotProps.data.ireq_id }, })"
                />
            </template>
          </Column>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>
        <Toolbar class="p-mb-4" v-if="this.active == 10">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <h4>ICT Request (Request Yang Sedang Dikerjakan)</h4>
              </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          v-if="this.active == 10"
          :value="sedangDikerjakan"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                  name: 'Ict Request Detail Desc',
                  params: { code: slotProps.data.ireq_id }, })"
                />
            </template>
          </Column>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>
        <Toolbar class="p-mb-4" v-if="this.active == 11">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <h4>ICT Request (Request Yang Sudah Dikerjakan)</h4>
              </div>
            </div>
          </template>
        </Toolbar>
        <DataTable
          v-if="this.active == 11"
          :value="sudahDikerjakan"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                  name: 'Ict Request Detail Desc',
                  params: { code: slotProps.data.ireq_id }, })"
                />
            </template>
          </Column>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable> 
        <Toolbar class="p-mb-4" v-if="this.active == 12">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <h4>ICT Request (Request Yang Sudah Selesai)</h4>
              </div>
            </div>
          </template>
        </Toolbar>   
        <DataTable
          v-if="this.active == 12"
          :value="selesai"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                  name: 'Ict Request Detail Desc',
                  params: { code: slotProps.data.ireq_id }, })"
                />
            </template>
          </Column>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>
        <Toolbar class="p-mb-4" v-if="this.active == 13">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <h4>ICT Request (Request Yang Belum Diassign)</h4>
              </div>
            </div>
          </template>
        </Toolbar>   
        <DataTable
          v-if="this.active == 13"
          :value="blmDiassign"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:8rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:8rem">
            <template #body="slotProps">
              {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:8rem"/>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:8rem"/>
          <Column field="ireq_assigned_to" header="Petugas(ICT)" :sortable="true" style="min-width:8rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                  name: 'Ict Request Detail Desc',
                  params: { code: slotProps.data.ireq_id }, })"
                />
                <Button
                  class="p-button-raised p-button-info p-button-text p-mr-2 p-mb-2"
                  label="Assign Per-Request"
                  @click="AssignPerRequest(slotProps.data.ireq_id)"
                />
                <Button
                  class="p-button-raised p-button-text p-mr-2 p-mb-2"
                  label="Assign Per-Detail"
                  @click="$router.push({
                    name: 'Ict Request Desc Assign Per Detail',
                    params: { code: slotProps.data.ireq_id }, })"
                  />
                  <Button
                    v-if="slotProps.data.ireq_count_status == slotProps.data.ireq_count_id"
                    class="p-button-raised p-button-success p-button-text p-mr-2 p-mb-2"
                    label="Submit"
                    @click="submit(slotProps.data.ireq_id)"
                  />
            </template>
          </Column>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>
        <Toolbar class="p-mb-4" v-if="this.active == 14">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <h4>ICT Request (Request Yang Sedang Dikerjakan)</h4>
              </div>
            </div>
          </template>
        </Toolbar>   
        <DataTable
          v-if="this.active == 14"
          :value="sudahDiassign"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                  name: 'Ict Request Detail Desc',
                  params: { code: slotProps.data.ireq_id }, })"
                />
            </template>
          </Column>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>
        <Toolbar class="p-mb-4" v-if="this.active == 15">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <h4>ICT Request (Request Yang Sudah Dikerjakan)</h4>
              </div>
            </div>
          </template>
        </Toolbar>   
        <DataTable
          v-if="this.active == 15"
          :value="sudahDikerjakann"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                  name: 'Ict Request Detail Desc',
                  params: { code: slotProps.data.ireq_id }, })"
                />
            </template>
          </Column>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable> 
        <Toolbar class="p-mb-4" v-if="this.active == 16">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <h4>ICT Request (Request Yang Sudah Selesai)</h4>
              </div>
            </div>
          </template>
        </Toolbar>   
        <DataTable
          v-if="this.active == 16"
          :value="sudahslsi"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:12rem">
            <template #body="slotProps">
              {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:12rem"/>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:12rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                  name: 'Ict Request Detail Desc',
                  params: { code: slotProps.data.ireq_id }, })"
                />
            </template>
          </Column>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>     
        <Toolbar class="p-mb-4" v-if="this.active == 17">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <h4>ICT Request (Request Yang Sedang Dikerjakan)</h4>
              </div>
            </div>
          </template>
        </Toolbar>   
        <DataTable
          v-if="this.active == 17"
          :value="sedngDikerjakan"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:8rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:8rem">
            <template #body="slotProps">
                {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:8rem"/>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:8rem"/>
          <Column field="ireq_assigned_to" header="Petugas (ICT)" :sortable="true" style="min-width:8rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                  name: 'Ict Request Desc Detail Divisi 3',
                  params: { code: slotProps.data.ireq_id }, })"
                />
            </template>
          </Column>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>
        <Toolbar class="p-mb-4" v-if="this.active == 18">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <h4>ICT Request (Request Yang Sudah Dikerjakan)</h4>
              </div>
            </div>
          </template>
        </Toolbar>   
        <DataTable
          v-if="this.active == 18"
          :value="sudhDikerjakan"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:8rem"/>
          <Column field="ireqd_id" header="No. Detail" :sortable="true" style="min-width:8rem"/>
          <Column field="invent_code" header="Nama Peripheral" :sortable="true" style="min-width:8rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:8rem">
            <template #body="slotProps">
              {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:8rem"/>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:8rem"/>
          <Column style="min-width:12rem">
            <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                  name: 'Ict Request Desc Detail Divisi 3',
                  params: { code: slotProps.data.ireq_id }, })"
                />
            </template>
          </Column>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>
        <Toolbar class="p-mb-4" v-if="this.active == 19">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <h4>ICT Request (Request Yang Sudah Selesai)</h4>
              </div>
            </div>
          </template>
        </Toolbar>   
        <DataTable
          v-if="this.active == 19"
          :value="selesaiii"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:8rem"/>
          <Column field="ireqd_id" header="No. Detail" :sortable="true" style="min-width:8rem"/>
          <Column field="invent_code" header="Nama Peripheral" :sortable="true" style="min-width:8rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:8rem">
            <template #body="slotProps">
              {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:8rem"/>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:8rem"/>
          <Column style="min-width:12rem">
            <!-- <template #body="slotProps">
              <Button
                class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                icon="pi pi-info-circle"
                @click="$router.push({
                  name: 'Ict Request Desc Detail Divisi 3',
                  params: { code: slotProps.data.ireq_id }, })"
                />
            </template> -->
          </Column>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>     
        <Toolbar class="p-mb-4" v-if="this.active == 20">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <h4>ICT Request (Request Yang Sudah Dikerjakan)</h4>
              </div>
            </div>
          </template>
        </Toolbar>   
        <DataTable
          v-if="this.active == 20"
          :value="sdHDikerjakan4"
          :paginator="true"
          :rows="25"
          :loading="loading"
          :filters="filters"
          :rowHover="true"
          paginatorTemplate="FirstPageLink PrevPageLink PageLinks NextPageLink LastPageLink CurrentPageReport RowsPerPageDropdown"
          :rowsPerPageOptions="[5, 10, 15, 20, 25, 30, 35, 40, 45, 50]"
          currentPageReportTemplate="Showing {first} to {last} of {totalRecords} ICT Request"
          responsiveLayout="scroll"
        >
        <template #header>
            <div class="table-header p-text-right">
                <span class="p-input-icon-left">
                    <i class="pi pi-search" />
                        <InputText
                          v-model="filters['global'].value"
                          placeholder="Search. . ."
                        />
                </span>
             </div>
        </template>
        <template #empty>
            Not Found
        </template>
        <template #loading>
            Loading ICT Request data. Please wait.
        </template>
          <Column field="ireq_no" header="No. Request" :sortable="true" style="min-width:8rem"/>
          <Column field="ireqd_id" header="No. Detail" :sortable="true" style="min-width:8rem"/>
          <Column field="invent_code" header="Nama Peripheral" :sortable="true" style="min-width:8rem"/>
          <Column field="ireq_date" header="Tgl.Request" :sortable="true" style="min-width:8rem">
            <template #body="slotProps">
              {{ formatDate(slotProps.data.ireq_date) }}
            </template>
          </Column>
          <Column field="ireq_requestor" header="Pemohon" :sortable="true" style="min-width:8rem"/>
          <Column field="ireq_user" header="Pengguna" :sortable="true" style="min-width:8rem"/>
          <Column field="ireq_assigned_to" header="Petugas(ICT)" :sortable="true" style="min-width:8rem"/>
          <Column>
            <template #body="slotProps">
              <Button
                v-if="slotProps.data.ireq_status != 'Close'"
                class="p-button-raised p-button-text p-mr-2 p-mb-2"
                label="Closing"
                @click="ClosingPerDetail(slotProps.data.ireqd_id, slotProps.data.ireq_no)"
              />
            </template>
          </Column>
          <template #footer>
            <div class="p-grid p-dir-col">
              <div class="p-col">
                <div class="box">
                  <Button
                    label="Kembali"
                    class="p-button-raised p-button p-mr-2 p-mb-2"
                    icon="bi bi-skip-backward-fill"
                    @click="$router.push({
                    name: 'Dashboard'})"
                  />
                </div>
			      </div>
          </div>
        </template>
        </DataTable>
        <Dialog
          v-model:visible="dialogAssign"
          :style="{ width: '400px' }"
          header="Assign Per-Request"
          :modal="true"
          :closable="false"
          class="p-fluid"
        >
        <div class="p-fluid">
          <div class="p-field p-grid">
            <label class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:100px">Petugas (ICT)</label>
              <div class="p-col-3 p-md-6">
                <Dropdown
                  v-model="assign.name"
                    :options="petugas"
                    optionValue="name"
                    optionLabel="name"
                    placeholder="Pilih Petugas (ICT)"
                    :class="{ 'p-invalid': submitted && !assign.name }"
                />
                <small v-if="submitted && !assign.name" class="p-error">
                  Petugas(ICT) Harus Diisi
                </small>
              </div>
          </div>
        </div>
        <template #footer>
          <Button label="Simpan" @click="updateAssign()" class="p-button" autofocus />
          <Button label="Cancel" @click="cancelAssign()" class="p-button-text" />
        </template>
        </Dialog>
      </div>
    </div>
  </div>
</template>
<script>
import moment from 'moment';
import {FilterMatchMode} from 'primevue/api';
export default {
  data() {
    return {
        active : 1,
        loading: true,
        token: localStorage.getItem('token'),
        ict: [],
        sdhDiverifikasi:[],
        diReject:[],
        sdgDikerjakan:[],
        sdhDikerjakan:[],
        sdhSelesai:[],
        permohonan:[],
        verif:[],
        reject:[],
        sedangDikerjakan:[],
        sudahDikerjakan:[],
        selesai:[],
        sudahslsi:[],
        sudahDikerjakann:[],
        sudahDiassign:[],
        blmDiassign:[],
        sedngDikerjakan:[],
        sudhDikerjakan: [],
        selesaiii: [],
        sdHDikerjakan4:[],
        selesai4:[],
        assign:{
          id:null,
          name: null
          },
        petugas:[],
        submitted: false,
        dialogAssign: false,
        filters: { 'global': {value: null, matchMode: FilterMatchMode.CONTAINS} },
        usr_name: localStorage.getItem('usr_name'),
        user:[],
    };
  },
  mounted() {
    this.getActive();
  },
  methods: {
    formatDate(date) {
      return moment(date).format("DD MMM YYYY")
    },
      getActive(){
        if(localStorage.getItem('active')){
          this.active = localStorage.getItem('active');
          if (this.active <= 6){
              this.getIct();
          }
          else if (this.active >= 7 && this.active <= 12){
            this.getIct2();
          } 
          else if (this.active > 12 && this.active <= 16){
            this.getIct3();
          }
          else if (this.active > 16 && this.active <=19){
            this.getUser();
          }
          else if (this.active > 19 && this.active <=21){
            this.getIct5();
          }
        }
      },
      getIct(){
        this.axios.get('api/get-ict/'+this.usr_name,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.ict = response.data.ict;
        this.sdhDiverifikasi = response.data.ict1;
        this.diReject = response.data.ict2;
        this.sdgDikerjakan = response.data.ict3;
        this.sdhDikerjakan = response.data.ict4;
        this.sdhSelesai = response.data.ict5;
        this.loading = false;
      }).catch(error=>{
          if (error.response.status == 403) {
           this.$toast.add({
            severity:'error', summary: 'Error', detail:'Cannot Access This Page'
          });
          setTimeout( () => this.$router.push('/Dashboard'),2000);
          }
           else if (error.response.status == 401) {
            this.$toast.add({
            severity:'error', summary: 'Error', detail:'Sesi Login Expired'
            });
            localStorage.clear();
            localStorage.setItem('Expired','true')
            setTimeout( () => this.$router.push('/login'),2000);
           }
        });
      },
      getIct2(){
        this.axios.get('/api/get-permohonan/'+this.usr_name,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.permohonan = response.data.ict;
        this.verif = response.data.ict1;
        this.reject = response.data.ict2;
        this.sedangDikerjakan = response.data.ict3;
        this.sudahDikerjakan = response.data.ict4;
        this.selesai = response.data.ict5;
        this.loading = false;
        });
      },
      getIct3(){
        this.axios.get('api/get-permohonan-divisi',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
          this.blmDiassign = response.data.ict;
          this.sudahDiassign = response.data.ict1;
          this.sudahDikerjakann = response.data.ict2;
          this.sudahslsi = response.data.ict3;
          this.loading = false;
        });
      },
      getUser(){
        this.axios.get('api/user',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
          this.user = response.data;
          this.getIct4();
        });
      },
      getIct4(){
        this.axios.get('api/get-sedang-dikerjakan/'+this.user.usr_fullname,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.sedngDikerjakan = response.data.ict;
        this.sudhDikerjakan = response.data.ict1;
        this.selesaiii = response.data.ict2;
        this.loading = false;
        });
      },
      getIct5(){
      this.axios.get('api/get-ictDivisi4',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=> {
        this.sdHDikerjakan4 = response.data.ict;
        this.selesai4 = response.data.ict2;
        this.loading = false;
      }).catch(error=>{
        if (error.response.status == 401) {
            this.$toast.add({
            severity:'error', summary: 'Error', detail:'Sesi Login Expired'
            });
            localStorage.clear();
            localStorage.setItem('Expired','true')
            setTimeout( () => this.$router.push('/login'),2000);
           }
        });
      },
      AssignPerRequest(ireq_id){
          this.assign.id = ireq_id;
          this.axios.get('api/get-pekerja', {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.petugas = response.data;
          });
          this.dialogAssign = true;
      },
      updateAssign(){
        this.submitted = true;
        if(this.assign.name != null){
          this.axios.post('api/updateAssign',this.assign, {headers: {'Authorization': 'Bearer '+this.token}}).then(()=>{
            this.assign = {
              id : null,
              name : null
              };
            this.submitted = false;
            this.dialogAssign = false;
            this.$toast.add({
              severity: "info",
              summary: "Confirmed",
              detail: "Berhasil Assign",
              life: 3000,
            });
            this.getActive();
          });
        }
      },
      cancelAssign(){
          this.assign =
          {
              id : null,
              name : null
            };
          this.petugas = [];
          this.dialogAssign = false;
          this.submitted = false;
      }, 
      submit(ireq_id){
        this.$confirm.require({
        message: "Apakah Anda Yakin Ingin Mensubmit?",
        header: "ICT Request    ",
        icon: "pi pi-info-circle",
        acceptClass: "p-button",
        acceptLabel: "Ya",
        rejectLabel: "Tidak",
        accept: () => {
          this.$toast.add({
            severity: "info",
            summary: "Confirmed",
            detail: "Berhasil Disubmit",
            life: 3000,
          });
          this.axios.get('api/updateStatusPenugasan/' +ireq_id, {headers: {'Authorization': 'Bearer '+this.token}});
          this.getActive();
        },
        reject: () => {},
      });
      }, 
  },
};
</script>