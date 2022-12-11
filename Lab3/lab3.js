var acc = document.getElementsByClassName("accordion");
    var i;
    for (i = 0; i < acc.length; i++) {
        acc[i].addEventListener("click", function() {
            this.classList.toggle("active");

            var panel = this.nextElementSibling;
            if (panel.style.display === "block") {
                panel.style.display = "none";
            } else {
                panel.style.display = "block";
            }
        });
    }
    function tree(node,delim) {
        var idget = document.getElementById('end');
        if (node == document.documentElement) idget.innerHTML = "";
        for (var i = 0; i <node.childElementCount; i++) {
            console.log(node.children[i].tagName); idget.innerHTML += delim + node.children[i].tagName + "<br/>";
            if (node.children[i].id != 'end') {
                tree(node.children[i],delim + "\u00A0" + "\u00A0" + "\u00A0" + "\u00A0")
            } 
       }
    }