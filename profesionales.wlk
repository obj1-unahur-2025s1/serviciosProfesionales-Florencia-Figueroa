import universidades_y_provincias.*

// Etapa 1 - Profesionales y empresas

//Profecionales:
class ProfesionalesVinculados {
    //Le agrego property para luego por consultarlo / modificarlo
    const property universidad      

    //Puedo ponerle los () por que anteriormente use un property
    method honorarios() = universidad.honorarios() 
    //Puedo meter un objeto de esta forma en un conjunto
    method trabajoEnProvincias() = #{universidad.provincia()}
}

class ProfesionalesAsociados {
    const property universidad

    method honorarios() = 3000
    method trabajoEnProvincias() = #{entreRios, santaFe, corrientes}
}

class ProfesionalesLibres {
    const property universidad
    const property trabajoEnProvincias = #{}
    const property honorarios

    method puedeTrabajarEn(unaProvincia){
        trabajoEnProvincias.add(unaProvincia)
    }
}