require('./bootstrap');
import 'primevue/resources/themes/saga-blue/theme.css';
import 'primevue/resources/primevue.min.css';
import 'primeicons/primeicons.css';
import 'primeflex/primeflex.css';
import './assets/layout/layout.scss';
import './assets/layout/flags/flags.css';
import 'bootstrap/dist/css/bootstrap.css'
import 'jquery/dist/jquery.min'
import 'popper.js/dist/popper.min'
import 'bootstrap/dist/js/bootstrap.min'

import App from './components/App.vue';
import axios from 'axios';
import Button from 'primevue/button';
import Calendar from 'primevue/calendar';
import Chart from 'primevue/chart';
import ColorPicker from 'primevue/colorpicker';
import Column from 'primevue/column';
import ConfirmationService from 'primevue/confirmationservice';
import ConfirmDialog from 'primevue/confirmdialog';
import { createApp, reactive } from 'vue';
import DataTable from 'primevue/datatable';
import { DatePicker } from 'v-calendar';
import Dialog from 'primevue/dialog';
import Dropdown from 'primevue/dropdown';
import FileUpload from 'primevue/fileupload';
import InputText from 'primevue/inputtext';
import InputNumber from 'primevue/inputnumber';
import InlineMessage from 'primevue/inlinemessage';
import MultiSelect from 'primevue/multiselect';
import Message from 'primevue/message';
import Paginator from 'primevue/paginator';
import Password from 'primevue/password';
import PrimeVue from 'primevue/config';
import QrcodeVue from 'qrcode.vue';
import Ripple from 'primevue/ripple';
import router from './router.js';
import { StreamBarcodeReader } from 'vue-barcode-reader';
import TabView from 'primevue/tabview';
import TabPanel from 'primevue/tabpanel';
import Textarea from 'primevue/textarea';
import TreeSelect from 'primevue/treeselect';
import Toolbar from 'primevue/toolbar';
import Toast from 'primevue/toast';
import ToastService from 'primevue/toastservice';
import VueAxios from 'vue-axios';

const app = createApp(App);
app.config.globalProperties.$appState = reactive({ theme: 'saga-blue'});

app.directive('ripple', Ripple);

app.use(ConfirmationService);
app.use(PrimeVue, {ripple: true});
app.use(ToastService);
app.use(VueAxios,axios);
app.use(router);

router.beforeEach(function(to,from,next) {
    window.scrollTo(0,0);
    next();
})
app.component('Button',Button);
app.component('Calendar',Calendar);
app.component('Chart',Chart);
app.component('ColorPicker',ColorPicker);
app.component('ConfirmDialog', ConfirmDialog);
app.component('Column',Column);
app.component('DataTable',DataTable);
app.component('DatePicker',DatePicker);
app.component('Dialog', Dialog);
app.component('Dropdown', Dropdown);
app.component('FileUpload',FileUpload);
app.component('InputText',InputText);
app.component('InputNumber',InputNumber);
app.component('InlineMessage', InlineMessage);
app.component('MultiSelect',MultiSelect);
app.component('Message', Message);
app.component('Paginator', Paginator);
app.component('Password',Password);
app.component('QrcodeVue',QrcodeVue);
app.component('TabView',TabView);
app.component('TabPanel',TabPanel);
app.component('Textarea',Textarea);
app.component('TreeSelect',TreeSelect);
app.component('Toast', Toast);
app.component('Toolbar',Toolbar);
app.component('StreamBarcodeReader', StreamBarcodeReader);

app.mount('#app');