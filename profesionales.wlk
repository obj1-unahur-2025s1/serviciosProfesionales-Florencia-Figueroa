import universidades_y_provincias.*

// Etapa 1 - Profesionales y empresas

//Profecionales:
class ProfesionalesVinculados {
    //Le agrego property para luego por consultarlo / modificarlo
    const  universidad      

    method universidad() = universidad
    //Puedo ponerle los () por que anteriormente use un property
    method honorarios() = universidad.honorarios() 
    //Puedo meter un objeto de esta forma en un conjunto
    method trabajoEnProvincias() = #{universidad.provincia()}

    // Etapa 3 - Cobros
    //Envia un valor a un metodo de otro objeto
    method cobrar(unImporte){
        universidad.recibirDonaciones(unImporte / 2)
    }      
}

class ProfesionalesAsociados {
    const  universidad

    method universidad() = universidad
    method honorarios() = 3000
    method trabajoEnProvincias() = #{entreRios, santaFe, corrientes}
    method cobrar(unImporte){
        asociacionDelLitoral.recibirDonaciones(unImporte)}
}

class ProfesionalesLibres {
    const  universidad
    const property trabajoEnProvincias = #{}
    const property honorarios
    var totalRecaudado = 0

    method universidad() = universidad
    method puedeTrabajarEn(unaProvincia){
        trabajoEnProvincias.add(unaProvincia)
    }
    method cobrar(unImporte){totalRecaudado += unImporte}
    
    method totalRecaudado() = totalRecaudado

    method pasarDinero(unaPersona, unaCantidad){
        totalRecaudado -= unaCantidad
        unaPersona.cobrar(unaCantidad)
    }
}