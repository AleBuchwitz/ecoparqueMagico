object dragon {
    var temperatura = 200

  method edad() = 90
  method esDiurna() = true
  method esNocturna() = false
  method temperaturaCorporal() = temperatura
  method puedeSerEntrenado() = temperatura > 100
  method esJoven() = self.edad() < 100
  method puedeSerCuidado(cuidador) = cuidador.soportaAltasTemperaturas()
  method alimentarse() {
    temperatura += 20
  }
  method entrenar() {
    if(self.puedeSerEntrenado()){
        temperatura -= 40
    }
  }
  method dormir() {
    temperatura = 200
  }
}
object unicornio {
    var poderMagico = 3
    var estaFeliz = true

  method edad() = 30
  method esDiurna() = true
  method esNocturna() = false
  method estaFeliz() = estaFeliz 
  method puedeSerEntrenado() = poderMagico >= 5
  method esJoven() = self.edad() < 50
  method puedeSerCuidado(cuidador) = true
  method alimentarse() {
    poderMagico += 1
  }
  method dormir() {
    estaFeliz = !estaFeliz
  }
  method entrenar() {
    if(self.puedeSerEntrenado()){
        estaFeliz = true
    }
  }
}
object sirena {
    var habilidadAcuatica = 40

  method edad() = 60
  method esDiurna() = false
  method esNocturna() = true
  method puedeSerCuidado(cuidador) = cuidador.sabeNadar()
  method esJoven() = self.edad() < 45
  method alimentarse() {
    habilidadAcuatica *= 1.5
  }
  method nadarUnaDistancia(metros) {
    if(habilidadAcuatica > 0){
        habilidadAcuatica -= metros
    }
  }
  method practicarParaLaBatalla() {
    if(habilidadAcuatica > 0){
        habilidadAcuatica -= 20
    }
  }
  method entrenar() {
    self.nadarUnaDistancia(habilidadAcuatica / 2)
    self.practicarParaLaBatalla()
  }
  method dormir() {
    habilidadAcuatica = 40
  }
}
object fenix {
    var energia = 0
    var tienePlumajeReluciente = true
    var edad = 180

  method edad() = edad
  method energia() = energia
  method esPichon() = self.edad() <5
  method esDiurna() = true
  method esNocturna() = true
  method puedeSerCuidado(cuidador) = cuidador.soportaAltasTemperaturas() && cuidador.experiencia() > 5
  method esJoven() = self.edad() < 150
  method setEnergia() {
    if(tienePlumajeReluciente){
        energia = self.edad()
    }
    else{
        energia = self.edad() / 2
    }
  }
  method alimentarse() {
    if(self.esPichon()){
        edad += 1
    }
    else{
        tienePlumajeReluciente = true
    }
  }
  method entrenar() {
    if(!self.esPichon()){
        edad *= 1.1
        tienePlumajeReluciente = false
    }
  }
  method dormir() {
    tienePlumajeReluciente = false
    if(edad > 200){
        edad = 1
    }
  }
}
object gargola {
    var edad = 15
    var formaEstatua = false
    var formaViva = true

  method edad() = edad
  method formaEstatua() = formaEstatua
  method formaViva() = formaViva
  method esDiurna() = false
  method esNocturna() = true
  method puedeSerCuidado(cuidador) = self.formaViva()
  method esJoven() = true
  method alimentarse() {
    
  }
  method entrenar() {
    edad -= 1
    formaEstatua = true
    formaViva = false
  }
  method dormir() {
    edad += 5
  }
  method cambiarAFormaViva() {
    formaEstatua = false
    formaViva = true
  }
}