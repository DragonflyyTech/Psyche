function irArriba(){
        window. addEventListener('scroll', () =>{
        var scroll = document.documentElement.scrollTop;
        console.log(scroll);
        var botonArriba = document.getElementById("btonabajo");
        
        if(scroll<300){
            
            botonArriba.style.left = "20px";
        }else{
            botonArriba.style.left = "-150px";
        }
        
    });
    }
irArriba();