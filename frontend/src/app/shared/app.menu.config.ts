import { MenuRootItem } from 'ontimize-web-ngx';

export const MENU_CONFIG: MenuRootItem[] = [
  { id: 'home', name: 'HOME', icon: 'home', route: '/main/home' },
 { id: 'alquileres', name: 'ROOMS', icon: 'night_shelter', route: '/main/alquileres' },
  { id: 'about3', name: 'ABOUT', route: '/main/about3', icon: 'info'},
  { id: 'logout', name: 'LOGOUT', route: '/login', icon: 'power_settings_new', confirm: 'yes' },

];
