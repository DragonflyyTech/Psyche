function irArriba(){
        window. addEventListener('scroll', () =>{
        var scroll = document.documentElement.scrollTop;
        console.log(scroll);
        var botonArriba = document.getElementById("btonabajo");
        
        if(scroll<300){
            
            botonArriba.style.right = "80px";
        }else{
            botonArriba.style.right = "-150px";
        }
        
    });
    }
irArriba();