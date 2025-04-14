
object luke{
    var cantidadViajes = 0
    var ultimoRecuerdo = null
    var vehiculo = alambiqueVeloz

    method cantidadViajes() = cantidadViajes
    method viajar(lugar){
        if (lugar.puedeLlegar(vehiculo)) {
            cantidadViajes = cantidadViajes + 1
            ultimoRecuerdo = lugar.recuerdoTipico()
            vehiculo.consumirCombustible()
        }
        else{
            console.println("No LLego Capo, cambia de vehiculo pa")
        }
    }
    method ultimoRecuerdo() = ultimoRecuerdo
    method cambiarVehiculo(nuevo) {vehiculo = nuevo}
    method vehiculo() = vehiculo
    //method cambiarRecuerdo(lugar) {ultimoRecuerdo = lugar.recuerdoTipico()}
}

//Vehiculos
object alambiqueVeloz {
    var rapido = true
    var combustible = 80
    const consumoPorViaje = 10

    method tieneCombustible() = combustible >= consumoPorViaje
    method consumirCombustible() {
        combustible = combustible - consumoPorViaje
    }
    method rapido() = rapido
    method combustible() = combustible
}

object superChatarra {
  var municiones = 50
  const consumoPorViaje = 15

  method combustible() = municiones *5
  method tieneCombustible() = self.combustible() >= consumoPorViaje
  method municiones() = municiones 
  method consumirCombustible() {
    self.combustible() - consumoPorViaje
    municiones = municiones -5
    }
  method rapido() = municiones < 100
  
}

//Destinos
object paris{
    method recuerdoTipico() = "Llavero Torre Eiffel"
    method puedeLlegar(vehiculo) =  vehiculo.combustible() >= 50
}

object buenosAires{
    method recuerdoTipico() = "Mate"
    method puedeLlegar(vehiculo) =  vehiculo.rapido() 
}

object bagdad {
    var recuerdo = "bidon de petroleo"
    method recuerdoTipico() = recuerdo
    method recuerdo(nuevo) {recuerdo = nuevo }
    method puedeLlegar(cualquierVehiculo) = true
}

object lasVegas{
    var homenaje = paris
    method homenaje(lugar) {homenaje = lugar}
    method recuerdoTipico() = homenaje.recuerdoTipico()
    method puedeLlegar(vehiculo) = homenaje.puedeLlegar(vehiculo)
}

object hurlingham {
  method recuerdoTipico() = "Souvenir UNAHUR"
  method puedeLlegar(vehiculo) =  vehiculo.rapido() && (vehiculo.combustible() >= 30)
}




object perro {
  var energia = 100

  method ladrar() {
    energia = energia - 10
    console.println("¡Guau!")
  }
  method energia() = energia
}