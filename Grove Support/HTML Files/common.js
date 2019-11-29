function execute() {
            document.getElementById("loading").style.display = "block"
            setTimeout(hidegif, 3000);
        }
    function hidegif() {
        document.getElementById("loading").style.display = "none"
        document.getElementById("myForm").reset();
        
        document.getElementById("sent").style.display = "block"
        setTimeout(hidesent, 3000);
    }
    function hidesent() {
        document.getElementById("sent").style.display = "none"
    }
    function changeScreenSize() {
        
        if(navigator.onLine){
            document.getElementById("sent").style.display = "none"
            document.getElementById("alert").style.display = "none"
            document.getElementById("loading").style.display = "none"
        } else {
            document.getElementById("sent").style.display = "none"
            document.getElementById("alert").style.display = "block"
            document.getElementById("loading").style.display = "none"
        }
        
        var x = document.getElementById("load");
        
        if(window.innerWidth == 383) {
            window.resizeTo(382, 443);
            window.focus();
            x.style.display = "none";
        } else {
            window.resizeTo(383, 444);
            window.focus();
            x.style.display = "none";
        }
        
    }
