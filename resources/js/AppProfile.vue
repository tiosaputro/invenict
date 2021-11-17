<template>
	<div class="layout-profile" v-if="loggedIn">
		<div>
			<img :src="'/profile/' + user.usr_foto" alt="Profile" />
		</div>
		<button class="p-link layout-profile-link" @click="onClick">
			<span class="username">{{user.usr_name}}</span>
			<i class="pi pi-fw pi-cog"></i>
		</button>
        <transition name="layout-submenu-wrapper">
            <ul v-show="expanded">
                <li><button class="p-link" @click="Logout"><i class="pi pi-fw pi-power-off"></i><span>Logout</span></button></li>
            </ul>
        </transition>
	</div>
</template>

<script>
	export default {
		data() {
			return {
			loggedIn: localStorage.getItem("loggedIn"),
            token: localStorage.getItem('token'),
            user: [],
			expanded: false,
			}
		},
		created(){
			this.getUser();
		},
		methods: {
			getUser(){
					this.axios.get('/api/user', {headers: {'Authorization': 'Bearer '+this.token}})
					.then((response) => {
						this.user = response.data;
					}).catch(error=>{
					if (error.response.status == 401) {
						this.$toast.add({
							severity:'error', summary: 'Error', detail:'Sesi Login Expired'
						});
						localStorage.clear();
						localStorage.setItem("Expired","true")
						setTimeout( () => this.$router.push('/login'),2000);
						}
					});
			},
			onClick(event){
				this.expanded = !this.expanded;
				event.preventDefault();
			},
			Logout(){
				axios.get('/api/logout', {headers: {'Authorization': 'Bearer '+this.token}}).then(() => {
					this.user= [];
					localStorage.clear();
					localStorage.setItem("logOut", "true");
					this.$router.push('/login');
            	 });
        }
		},
	}
</script>