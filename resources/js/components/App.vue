<template>
<!-- If loggedin  -->
  <div :class="containerClass" v-if="loggedIn" @click="onWrapperClick">
    <AppTopBar @menu-toggle="onMenuToggle" />

    <transition name="layout-sidebar">
      <div
        :class="sidebarClass"
        @click="onSidebarClick"
        v-show="isSidebarVisible()"
      >
        <div class="layout-logo">
          <router-link to="/Dashboard">
            <img alt="Emp" src="/assets/layout/images/logo_emp_new.png" width="100" />
          </router-link>
        </div>

        <AppProfile />
        <AppMenu :model="menuUser" @menuitem-click="onMenuItemClick" />
      </div>
    </transition>

    <div class="layout-main">
      <router-view />
    </div>
    <AppFooter />
  </div>
  <div :class="containerClass" v-else-if="!loggedIn">
   <div class="layout-main">
      <router-view />
    </div>
  </div>
  
</template>
<!-- End If Not sign In -->

<script>
import AppTopBar from '../AppTopbar.vue';
import AppProfile from '../AppProfile.vue';
import AppMenu from '../AppMenu.vue';
import AppConfig from '../AppConfig.vue';
import AppFooter from '../AppFooter.vue';

export default {
  data() {  
    return {
      id: null,
      token: null,
      loggedIn : null,
      layoutMode: "static",
      layoutColorMode: "dark",
      staticMenuInactive: false,
      overlayMenuActive: false,
      mobileMenuActive: false,
      menuAdmin: [
        { label: "Dashboard", icon: "pi pi-fw pi-home", to: "/Dashboard" },
        {
          label: 'Peripheral', icon: 'pi pi-fw pi-sitemap',
          	items: [
               { label: "Master Peripheral", icon: "pi pi-fw pi-th-large", to: "/master-peripheral" },
               { label: "Mutasi Peripheral", icon: "pi pi-fw pi-bookmark", to: "/mutasi-peripheral" },
               { label: "Pembelian Peripheral", icon: "pi pi-fw pi-bars", to: "/pembelian-peripheral" },
            ]
        },
        { label: "Referensi", icon: 'pi pi-fw pi-list', 
            items: [
               { label: "Referensi Suplier", icon: "pi pi-fw pi-briefcase", to: "/referensi-supplier" },
               { label: "Referensi Lookups ", icon: "pi pi-fw pi-clone", to: "/referensi-lookups" },
            ]
        },
        { label: "ICT request", icon: "pi pi-fw pi-ticket", to: "/ict-request" },
        { label: "ICT request Divisi 1", icon: "pi pi-fw pi-ticket", to: "/ict-request-divisi1" },
        { label: "ICT request Divisi 2", icon: "pi pi-fw pi-ticket", to: "/ict-request-divisi2" },
        { label: "ICT request Divisi 3", icon: "pi pi-fw pi-ticket", to: "/ict-request-divisi3" },
        { label: "Cash Advance", icon: "pi pi-fw pi-money-bill", to: "/cash-advance" },
         { label: "Management", icon: 'pi pi-fw pi-list', 
            items: [
                { label: "Management User", icon: "pi pi-fw pi-money-bill", to: "/mng-user" },
                { label: "Management Role", icon: "pi pi-fw pi-money-bill", to: "/mng-role" },
                { label: "Management Module", icon: "pi pi-fw pi-money-bill", to: "/mng-module" },
                { label: "Management Menu", icon: "pi pi-fw pi-money-bill", to: "/mng-menu" },
            ]
        },
      ],
      menuUser:[],
      role:[],
      menuId:[]
    };
  },
  created(){
    this.cekRole();
  },
  watch: {
    $route() {
      this.menuActive = false;
      this.$toast.removeAllGroups();
      this.cekRole();
    },
},
  methods: {
    cekRole(){
      this.loggedIn = localStorage.getItem("loggedIn");
      if(!this.loggedIn){
        this.role = [];
        this.menuId = [];
        this.menuUser = [];
        this.$router.push('/login');
      }
      else if(this.loggedIn){
        if(!this.menuUser.length){
          this.id = localStorage.getItem("id");
          this.token = localStorage.getItem("token");
          this.axios.get('/api/get-role/'+ this.id, {headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.role = response.data;
            this.cekMenuId();
          });
        }
      }
    },
    cekMenuId(){
          this.axios.post('/api/get-menu-id',this.role,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.menuId = response.data;
            this.getMenu();
          });
    },
    getMenu(){
          this.axios.post('/api/get-menu-user',this.menuId,{headers: {'Authorization': 'Bearer '+this.token}}).then((response)=>{
            this.menuUser = response.data;
          });
    },
    onWrapperClick() {
      if (!this.menuClick) {
        this.overlayMenuActive = false;
        this.mobileMenuActive = false;
      }
      this.menuClick = false;
    },
    onMenuToggle() {
      this.menuClick = true;
      if (this.isDesktop()) {
        if (this.layoutMode === "overlay") {
          if (this.mobileMenuActive === true) {
            this.overlayMenuActive = true;
          }
          this.overlayMenuActive = !this.overlayMenuActive;
          this.mobileMenuActive = false;
        } else if (this.layoutMode === "static") {
          this.staticMenuInactive = !this.staticMenuInactive;
        }
      } else {
        this.mobileMenuActive = !this.mobileMenuActive;
      }

      event.preventDefault();
    },
    onSidebarClick() {
      this.menuClick = true;
    },
    onMenuItemClick(event) {
      if (event.item && !event.item.items) {
        this.overlayMenuActive = false;
        this.mobileMenuActive = false;
      }
    },
    onLayoutChange(layoutMode) {
      this.layoutMode = layoutMode;
    },
    onLayoutColorChange(layoutColorMode) {
      this.layoutColorMode = layoutColorMode;
    },
    addClass(element, className) {
      if (element.classList) element.classList.add(className);
      else element.className += " " + className;
    },
    removeClass(element, className) {
      if (element.classList) element.classList.remove(className);
      else
        element.className = element.className.replace(
          new RegExp(
            "(^|\\b)" + className.split(" ").join("|") + "(\\b|$)",
            "gi"
          ),
          " "
        );
    },
    isDesktop() {
      return window.innerWidth > 1024;
    },
    isSidebarVisible() {
      if (this.isDesktop()) {
        if (this.layoutMode === "static") return !this.staticMenuInactive;
        else if (this.layoutMode === "overlay") return this.overlayMenuActive;
        else return true;
      } else {
        return true;
      }
    },
  },
  computed: {
    containerClass() {
      return [
        "layout-wrapper",
        {
          "layout-overlay": this.layoutMode === "overlay",
          "layout-static": this.layoutMode === "static",
          "layout-static-sidebar-inactive":
            this.staticMenuInactive && this.layoutMode === "static",
          "layout-overlay-sidebar-active":
            this.overlayMenuActive && this.layoutMode === "overlay",
          "layout-mobile-sidebar-active": this.mobileMenuActive,
        },
      ];
    },
    sidebarClass() {
      return [
        "layout-sidebar",
        {
          "layout-sidebar-dark": this.layoutColorMode === "dark",
          "layout-sidebar-light": this.layoutColorMode === "light",
        },
      ];
    },
    logo() {
      return this.layoutColorMode === "dark"
        ? "/assets/layout/images/logo_emp.svg"
        : "/assets/layout/images/logo_emp.png";
    },
  },
  beforeUpdate() {
    if (this.mobileMenuActive)
      this.addClass(document.body, "body-overflow-hidden");
    else this.removeClass(document.body, "body-overflow-hidden");
  },
  components: {
        'AppTopBar': AppTopBar,
        'AppProfile': AppProfile,
        'AppMenu': AppMenu,
        'AppConfig': AppConfig,
        'AppFooter': AppFooter,
  },
}
</script>

<style lang="scss">
@import '../App.scss';
</style>
