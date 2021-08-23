import axios from "axios";
import {io} from "socket.io-client";

const URL = 'http://172.20.10.6:3000';

export const apiUrl = axios.create({
    baseURL: `${URL}/api/`,
    headers: { 'Accept': 'application/json' }
});

const URI_SOCKET = `${URL}`;
export const SOCKET = io(URI_SOCKET, {
    transports: ['websocket'],
   // reconnectionAttempts: 15 //Nombre de fois qu'il doit réessayer de se connecter
})