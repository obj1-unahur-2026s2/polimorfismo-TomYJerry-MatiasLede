object tom {
    var energia=50
    method correr(metros){
        /*Cuando tom corre, su energía disminuye en `cantidad de metros que 
        corrió / 2`
        */
        energia= energia - metros/2
    }
    method comer(raton){
        /*Cuando tom come un ratón, su energía aumenta en `12 + el peso del ratón` */
        energia=energia + 12 + raton.peso()
    }
    method velocidadMaxima(){
        /*Se solicita conocer la velocidad máxima de tom, que es `5 + energía/10`*/
        return 5 + energia / 10
    }
    method energia()= energia //Se solicita saber cuál es su energía.

}

object jerry {

}

object nibbles {

}

object perez {

}