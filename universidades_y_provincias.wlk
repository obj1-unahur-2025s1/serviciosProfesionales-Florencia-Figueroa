// Etapa 1 -Profesionales y empresas 

//Universidades
class Universidad {
    const property provincia    //Le agrego property para luego por consultarlo / modificarlo
    const property honorarios   //Le agrego property para luego por consultarlo / modificarlo 
    var donaciones

    method recibirDonaciones(unImporte){donaciones += unImporte}
    method totalDonaciones() = donaciones
}

object asociacionDelLitoral {
    var donaciones = 0
    method recibirDonaciones(unImporte){donaciones += unImporte}
    method totalDonaciones() = donaciones
}

//Provincias
object buenosAires {}
object santaFe {}
object corrientes {}
object cordoba {}
object misiones {}
object entreRios {}