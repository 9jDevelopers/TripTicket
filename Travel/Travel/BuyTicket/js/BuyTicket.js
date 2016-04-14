var updown = document.getElementById("updown");
var detailsupdown = document.getElementById("detailsupdown");
var alignright = document.getElementById("alignright");
var calendar = document.getElementById("calendar");
var Calendar1 = document.getElementById("Calendar1");
var txt;
updown.onclick = function () {
    txt = this.value;
    if (txt === "详情▼") {
        detailsupdown.style.display = "none";
        this.value = "详情▲"
    }
    else{
        detailsupdown.style.display = "block";
        this.value = "详情▼"
    }
}
alignright.onclick = function () {
    
    detailsupdown.style.display = "none";
    updown.value = "详情▲";
}

