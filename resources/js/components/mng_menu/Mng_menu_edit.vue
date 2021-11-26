<template>
  <div>
        <Toast />
        <div class="card">
        <Toolbar class="p-mb-4">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
			        <div class="p-col">
				        <h4>Management Menu</h4>
			        </div>
            </div>
          </template>
        </Toolbar>
             <div class="row">
                <div class="col-sm-6">
             <form @submit.prevent="UpdateMenu">
                 <div class="card-body">
                     <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="tipe" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Menu ID</label>
                 <div class="p-col-3 p-md-6">
                <InputText
                  v-model="menu.menu_id"
                  disabled
                />
                  </div>
                </div>
              </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="tipe" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Menu Name</label>
                 <div class="p-col-3 p-md-6">
                <InputText
                  v-model="menu.menu_name"
                  placeholder="Masukan Menu Name"
                  :class="{ 'p-invalid': errors.menu_name }"
                  autofocus
                />
                   <small v-if="errors.menu_name" class="p-error">
                      {{ errors.menu_name[0] }}
                  </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="kode" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Menu Deskripsi</label>
                 <div class="p-col-3 p-md-6">
                  <InputText
                    v-model="menu.menu_desc"
                    placeholder="Masukan Menu Deskripsi"
                    :class="{ 'p-invalid': errors.menu_desc  }"
                  />
                    <small v-if="errors.menu_desc" class="p-error">
                      {{ errors.menu_desc[0] }}
                  </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="kode" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Menu Display</label>
                 <div class="p-col-3 p-md-6">
                  <InputText
                    v-model="menu.menu_display"
                    placeholder="Masukan Menu Display"
                    :class="{ 'p-invalid': errors.menu_display  }"
                  />
                    <small v-if="errors.menu_display" class="p-error">
                      {{ errors.menu_display[0] }}
                  </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="kode" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Controller</label>
                 <div class="p-col-3 p-md-6">
                  <InputText
                    v-model="menu.controller"
                    placeholder="Masukan Controller"
                    :class="{ 'p-invalid': errors.controller  }"
                  />
                    <small v-if="errors.controller" class="p-error">
                      {{ errors.controller[0] }}
                  </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="kode" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Action</label>
                 <div class="p-col-3 p-md-6">
                  <InputText
                    v-model="menu.action"
                    placeholder="Masukan Action"
                  />
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Status" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Menu Status</label>
                 <div class="p-col-3 p-md-6">
               <Dropdown
                  v-model="menu.menu_stat"
                  :options="stat"
                  :showClear="true"
                  optionLabel="nama"
                  optionValue="code"
                  placeholder="Select A Status"
                  :class="{ 'p-invalid': errors.menu_stat }"
                />
                   <small v-if="errors.menu_stat" class="p-error">
                      {{ errors.menu_stat[0] }}
                  </small>
                  </div>
                </div>
              </div>
               <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Status" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Menu Type</label>
                 <div class="p-col-3 p-md-6">
               <Dropdown
                  v-model="menu.menu_type"
                  :options="type"
                  :showClear="true"
                  optionLabel="nama"
                  optionValue="code"
                  placeholder="Select A Menu Type"
                  :class="{ 'p-invalid': errors.menu_type }"
                />
                   <small v-if="errors.menu_type" class="p-error">
                      {{ errors.menu_type[0] }}
                  </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Status" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Module Name</label>
                 <div class="p-col-3 p-md-6">
               <Dropdown
                  v-model="menu.mod_id"
                  :options="modul"
                  :showClear="true"
                  optionLabel="name"
                  optionValue="code"
                  placeholder="Select A Module"
                  :class="{ 'p-invalid': errors.mod_id }"
                />
                   <small v-if="errors.mod_id" class="p-error">
                      {{ errors.mod_id[0] }}
                  </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Status" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Parent ID</label>
                 <div class="p-col-3 p-md-6">
               <Dropdown
                  v-model="menu.parent_id"
                  :options="parent"
                  :showClear="true"
                  optionLabel="name"
                  optionValue="code"
                  placeholder="Select A Parent"
                  :class="{ 'p-invalid': errors.parent_id }"
                />
                   <small v-if="errors.parent_id" class="p-error">
                      {{ errors.parent_id[0] }}
                  </small>
                  </div>
                </div>
              </div>
              </div>
              
              <div class="form-group">
                 <Button
                  class="p-button-rounded p-button-primary p-mr-2 p-mb-2"
                  icon="pi pi-check"
                  label="Simpan"
                  type="submit"
                />
                <Button
                  label="Cancel"
                  class="p-button-rounded p-button-secondary p-mr-2 p-mb-2"
                  icon="pi pi-times"
                  @click="$router.push('/mng-menu')"
                />
              </div>
            </form>
          </div>
      </div>
      </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      errors: [],
      menu:[],
      modul:[],
      parent:[],
      stat: [
        { nama: "Aktif", code: "T" },
        { nama: "Tidak Aktif", code: "F" },
      ],
      type: [
        { nama: "Node", code: "N" },
        { nama: "Leaf", code: "L"}
      ],
      token: localStorage.getItem('token')
    };
  },
  created(){
      this.getModul();
      this.getParent();
      this.getMenu();
  },
  methods: {
      getMenu(){
          this.axios.get('/api/edit-menu/'+ this.$route.params.code,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
              this.menu = response.data;
          });
      },
      getModul(){
          this.axios.get('/api/get-module',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
              this.modul = response.data;
          });
      },
      getParent(){
          this.axios.get('/api/get-parent',{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
              this.parent = response.data;
          });
      },
    UpdateMenu() {
        this.errors = [];

        this.axios.put('/api/update-menu/'+this.$route.params.code ,this.menu,{headers: {'Authorization': 'Bearer '+this.token}}).then(()=>{
        this.$toast.add({
          severity: "success",
          summary: "Success Message",
          detail: "Success Update",
        });
        setTimeout( () => this.$router.push('/mng-menu'),1000);
        }).catch(error=>{
           if ((error.response.status == 422)) {
          this.errors = error.response.data.errors;
          };
         });
      },
  },
};
</script>