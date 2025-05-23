// Etapa 2 - Solicitantes

class Persona{
    const provincia

    method puedeSerAtendido(unProfesional) = 
        unProfesional.trabajoEnProvincias().contains(provincia)
}

class Institucion {
    const universidades = #{}
    
    //Chequea si un profesional estudio en alguna universidad del #{} 
    method puedeSerAtendido(unProfesional) = 
        universidades.any({u => u == unProfesional.universidad()})

}

class Club{
    const  provincias = #{}
    
    //Chequea si hay alguna provincia del #{} en la cual el profesional trabaje
    method puedeSerAtendido(unProfesional) =
        provincias.any({p => unProfesional.trabajoEnProvincias().contains(p)})
}