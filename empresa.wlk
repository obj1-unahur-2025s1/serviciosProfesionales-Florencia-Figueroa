// Etapa 1 - Profesionales y empresas

//Empresas de servicios
class Empresa{
    const empleados = #{}
    const honorarios

    method contratarEmpleado(unEmpleado) {
        empleados.add(unEmpleado)}

    method empleadosQueEstudiaronEn(unaUniversidad)=
        empleados.filter({e => e.universidad() == unaUniversidad}).size()

    method empleadosCaros() = 
        empleados.filter({e => e.honorarios() > honorarios})

    //.asset() para que me convierta las universidades en un conjunto
    method universidadesFormadoras()=  
        empleados.map({e => e.universidad()}).asSet() 

    method empleadoMasBarato() = 
        empleados.min({e => e.honorarios()})

    method esGenteAcotada() =
        empleados.all({e => e.trabajoEnProvincias().size() <= 3})

    // Etapa 2 - Solicitantes
    method puedeSatisfacerA(unSolicitante) =
        empleados.any({empleado => unSolicitante.puedeSerAtendido(empleado)})
}