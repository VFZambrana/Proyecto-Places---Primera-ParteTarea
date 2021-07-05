import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget{
  //atributos
  String textoTitulo;
  int cantidadEstrellas;
  String textoDescripcion;

  //constructor
  DescriptionPlace(this.textoTitulo,this.cantidadEstrellas,this.textoDescripcion);

@override
  Widget build(BuildContext context) {
    final titulo = Container(
      margin: EdgeInsets.only(
        right: 30
      ),
      child: Text(
        textoTitulo,
            style: TextStyle(
          fontSize: 34,
        fontWeight: FontWeight.bold
      ),
      ),
    );


    final estrella = Container(
    margin: EdgeInsets.only(
      right: 2,
    ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    final estrellaVacia = Container(
      margin: EdgeInsets.only(
        right: 2
    ),
      child: Icon(
    Icons.star_border,
    color: Colors.black26,
    ),
    );

    //fila estrellas
    List<Container> estrellas = new List();
      for(int i=0; i<5; i++){
        if(i < cantidadEstrellas){
          estrellas.add(estrella);

        }else {
          estrellas.add(estrellaVacia);

        }
    }
    final filaestrellas = Row(
      children: estrellas,
    );

    final filaTitulo = Row(
      children: [
        titulo,
        filaestrellas,
      ],
    );

    final description = Container(
  margin: EdgeInsets.only(
  top: 15
  ),
      child: Text(
        textoDescripcion
      ),
    );
    final descriptionPlace = Column(
      children: [
        filaTitulo,
        description,
      ],
    );
    return descriptionPlace;
  }
}
