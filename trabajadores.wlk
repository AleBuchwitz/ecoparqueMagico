import habitantes.*
object rodrigo {
    var tutor = null
    var turnoMañana = true
    var turnoNoche = false
    var sabeNadar = true
    var resisteCalor = false

  method sabeNadar() = tutor.sabeNadar()
  method soportaAltasTemperaturas() = resisteCalor
  method experiencia() = 0
  method setTutor(trabajador) {
    tutor = trabajador
  }
  method cambiarTurno() {
    turnoMañana = !turnoMañana
    turnoNoche = !turnoNoche
  }
  method cuidarUnAnimal(animal) {
    if(animal.puedeSerCuidado(self)){
        animal.alimentarse()
        animal.entrenar()
    }
  }
  method aprenderANadar() {
    sabeNadar = true
  }
  method aprenderAResistirAltasTemperaturas() {
    resisteCalor = true
  }
}
object laura {
    const turnoNoche = true
    var sabeNadar = false
    var resisteCalor = true

  method soportaAltasTemperaturas() = resisteCalor
  method sabeNadar() = sabeNadar
  method experiencia() = 2
  method turnoNoche() = turnoNoche
  method cuidarUnAnimal(animal) {
    if(animal.puedeSerCuidado(self)){
        animal.alimentarse()
        animal.entrenar()
    }
  }
  method verAGargola() {
    gargola.cambiarAFormaViva()
    gargola.entrenar()
  }
  method aprenderANadar() {
    sabeNadar = true
  }
  method aprenderAResistirAltasTemperaturas() {
    resisteCalor = true
  }
}
object german {
    const turnoMañana = true

  method experiencia() = 15
  method sabeNadar() = true
  method soportaAltasTemperaturas() = true
  method turnoMañana() = turnoMañana
  method cuidarUnAnimal(animal) {
    if(animal.puedeSerCuidado(self)){
        animal.alimentarse()
        animal.entrenar()
    }
  }
  method enseñarHabilidad(trabajador) {
    trabajador.aprenderANadar()
    trabajador.aprenderAResistirAltasTemperaturas()
  }
}
object jimena {
    const turnoNoche = true
    var llevaTrajeInifugo = true
    var sabeNadar = true
    var resisteCalor = false

  method turnoNoche() = turnoNoche
  method sabeNadar() = sabeNadar
  method soportaAltasTemperaturas() = resisteCalor || llevaTrajeInifugo
  method experiencia() = 8
  method cuidarUnAnimal(animal) {
    if(animal.puedeSerCuidado(self)){
        animal.alimentarse()
        animal.entrenar()
    }
  }
  method ponerTrajeInifigo() {
    llevaTrajeInifugo = true
  }
  method sacarTrajeInifigo() {
    llevaTrajeInifugo = false
  }
  method aprenderANadar() {
    sabeNadar = true
  }
  method aprenderAResistirAltasTemperaturas() {
    resisteCalor = true
  }
}