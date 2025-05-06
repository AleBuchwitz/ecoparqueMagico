import habitantes.*
import trabajadores.*
object ecoparque {
    const equipoDeTrabajadores = #{german, laura, jimena}
    const criaturas = #{dragon, unicornio, sirena, fenix, gargola}

  method contratarUnTrabajador(trabajador) {
    equipoDeTrabajadores.add(trabajador)
  }
  method despedirUnTrabajador(trabajador) {
    equipoDeTrabajadores.remove(trabajador)
  }
  method despedirATodoslosTrabajadores() {
    equipoDeTrabajadores.clear()
  }
  method agregarVariosTrabajadoresALaVez(trabjador1, trabjador2) {
    equipoDeTrabajadores.addAll(trabjador1, trabjador2)
  }
  method equipoDeTrabajoGrande() = equipoDeTrabajadores.size() > 3
  method necesitaTrabajadores() = equipoDeTrabajadores.size() == 0
  method puedeSerCuidadoPorElEcoParque(habitante) {
    return equipoDeTrabajadores.any({
        t => habitante.puedeSerCuidado(t)
    })
  }
  method todosLosHabitantesQuePuedenCuidarUnHabitante(habitante) {
    return equipoDeTrabajadores.filter({
        t => habitante.puedeSerCuidado(t)
    })
  }
  method cantidadDeAnimalesViejos() {
    return criaturas.count({
        c => !c.esJoven()
    })
  }
  method cuidarHabitante(habitante) {
    return equipoDeTrabajadores.find({
        t => t.cuidarUnAnimal(habitante)
    })
  }
}