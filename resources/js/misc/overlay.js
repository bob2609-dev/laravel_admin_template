import jQuery from "jquery";

$(document).on('DOMContentLoaded', () => {

    window.$ = jQuery;




})

 window.showLoadingOverlay=()=> {
    document.getElementById("loading-overlay").style.display = "flex";
}

window. hideLoadingOverlay=() =>{
    document.getElementById("loading-overlay").style.display = "none";
}