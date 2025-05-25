// Etapa 1 - Profesionales y empresas

//Empresas de servicios
class Empresa{
    const empleados = #{}
    const clientes = #{}
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

    // Etapa 4 - Registro de trabajos hechos
    method darServivcio(unSolicitante) {
        if(self.puedeSatisfacerA(unSolicitante)){
            //Guardar a un profesional que cumpla la condicion
            const unProfesional = empleados.find({e => unSolicitante.puedeSerAtendido(e)})
            //Utilzar al profesional para que reciba un mensaje
            unProfesional.cobrar(unProfesional.honorarios()) 
            clientes.add(unSolicitante)
        }
    }
    method cantidadDeClientes() = clientes.size()

    method esCliente(unSolicitante) = clientes.contains(unSolicitante)

    //Desafio final - Profesional poco atractivo

    method esPocoAtractivo(unProfesional){ 
        //Guardo en una const las provincias del profesional para compararlas
        const provinciasProfesional = unProfesional.trabajoEnProvincias()

        //Busco un profesional dentro de los empleados de la empresa que trabaje en 
        //las mismas provincias que el profesional guardado y lo guardo tambien.
        const otroProfesional = empleados.find({e => e.trabajoEnProvincias() == provinciasProfesional})
        
        //Retorno si el otro profesional cobra mas barato que el primero
        return otroProfesional.honorarios() < unProfesional.honorarios()
    }
}