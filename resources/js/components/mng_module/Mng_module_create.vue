<template>
  <div>
        <Toast />
        <div class="card">
        <Toolbar class="p-mb-4">
          <template v-slot:left>
            <div class="p-grid p-dir-col">
			        <div class="p-col">
				        <h4>Management Module</h4>
			        </div>
            </div>
          </template>
        </Toolbar>
             <div class="row">
                <div class="col-sm-6">
             <form @submit.prevent="CreateModule">
                 <div class="card-body">
               <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="tipe" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Module Name</label>
                 <div class="p-col-3 p-md-6">
                <InputText
                  v-model="mod_name"
                  placeholder="Masukan Module Name"
                  :class="{ 'p-invalid': errors.mod_name }"
                />
                   <small v-if="errors.mod_name" class="p-error">
                      {{ errors.mod_name[0] }}
                  </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="kode" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Module Description</label>
                 <div class="p-col-3 p-md-6">
                  <InputText
                    v-model="mod_desc"
                    placeholder="Masukan Module Description"
                    :class="{ 'p-invalid': errors.mod_desc  }"
                  />
                    <small v-if="errors.mod_desc" class="p-error">
                      {{ errors.mod_desc[0] }}
                  </small>
                  </div>
                </div>
              </div>
              <div class="p-fluid">
                <div class="p-field p-grid">
                <label for="Status" class="p-col-12 p-mb-2 p-md-2 p-mb-md-0" style="width:120px">Module Status</label>
                 <div class="p-col-3 p-md-6">
               <Dropdown
                  v-model="mod_stat"
                  :options="stat"
                  :showClear="true"
                  optionLabel="nama"
                  optionValue="code"
                  placeholder="Select A Status"
                  :class="{ 'p-invalid': errors.mod_stat }"
                />
                   <small v-if="errors.mod_stat" class="p-error">
                      {{ errors.mod_stat[0] }}
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
                  @click="$router.push('/mng-module')"
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
      mod_name:'',
      mod_desc:'',
      mod_stat:'',
      stat: [
        { nama: "Aktif", code: "T" },
        { nama: "Tidak Aktif", code: "F" },
      ],
      token: localStorage.getItem('token')
    };
  },
  methods: {
    CreateModule() {
        this.errors = [];

        const data = new FormData();
        data.append("mod_name", this.mod_name);
        data.append("mod_desc", this.mod_desc);
        data.append("mod_stat", this.mod_stat);


        this.axios.post('api/save-module',data,{headers: {'Authorization': 'Bearer '+this.token}}).then(()=>{
        this.$toast.add({
          severity: "success",
          summary: "Success Message",
          detail: "Success Create",
        });
        setTimeout( () => this.$router.push('/mng-module'),1000);
        }).catch(error=>{
          this.errors = error.response.data.errors;
         });
      },
  },
};
</script>