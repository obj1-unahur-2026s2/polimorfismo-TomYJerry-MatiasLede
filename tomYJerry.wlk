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

    method estaFeliz(){
        /*Se solicita saber si Tom está feliz, y lo está cuando su energía 
        es mayor a 50 (empieza en 50).
        */
        return energia > 50
    }
    method puedeRecorrer(distancia){
        /*Se solicita saber si tom puede cazar un ratón que está a cierta 
        distancia (indicando la distancia). Puede cazar si tiene energía 
        suficiente para recorrer esa distancia. Es decir, la energía que 
        gastaría en correr la distancia es menor a su propia energía.
        */
        return distancia / 2 < energia
    }
    method cazar(raton, distancia){
        /*Cazar un ratón si puede, y hacer que lo coma. Nota: Acá se busca ser 
        capaz de evitar la duplicación de código (subtareas), y manejar 
        correctamente métodos booleanos de consulta.
        */
        if (self.puedeRecorrer(distancia)){
            self.correr(distancia)
            self.comer(raton)
        }
    }


}

object jerry {
    /*Jerry, cuyo peso es la `edad * 20`. Al inicio tiene 2 años, pero puede 
    cumplir años. 
    */
    var edad=2
    method peso()= edad * 20
    method cumplirAnios(){
        edad=edad + 1
    }
}

object nibbles {
    //Nibbles, cuyo peso es 35, siempre
    method peso()=35
}

object perez {
    //Perez tiene 4 de energía y su peso es 'su energía / 2'
    method energia()= 4
    method peso()= self.energia() /2
}