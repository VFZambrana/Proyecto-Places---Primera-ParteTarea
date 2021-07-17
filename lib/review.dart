import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  //variables
  String pathFoto;
  String textoNombreUsuario;
  String textoResumenUsuario;
  int cantidadEstrellas;
  String textoComentario;

  //metodo constructor
  Review(this.pathFoto,this.textoNombreUsuario,this.textoResumenUsuario,this.cantidadEstrellas,this.textoComentario);

  @override
  Widget build(BuildContext context){
    //foto
    final foto = Container(
      margin: EdgeInsets.only(
        right: 10
      ),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
            pathFoto

          ),
              fit: BoxFit.cover
        )
      )
    );

    //nombre de usuario
    final nombreUsuario = Container(
      child: Text(
        textoNombreUsuario,
              style: TextStyle(
          fontFamily: "Lato",
        fontSize: 22

        ),
      ),
    );

    //resumen usuario
    final resumenUsuario = Container(
      margin: EdgeInsets.only(
        right: 10
      ),
      child: Text(
        textoResumenUsuario,
            style: TextStyle(
          fontFamily: "Lato",
          color: Colors.black54
      ),
      ),
    );

    //estrellas
    final estrella = Container(
      margin: EdgeInsets.only(
        right: 5,
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
        size: 18,
      ),
    );

    final estrellaVacia = Container(
      margin: EdgeInsets.only(
          right: 5
      ),
      child: Icon(
        Icons.star_border,
        size: 18,
        color: Colors.black54
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

    //fila resumen
    final filaResumen = Row(
      children: <Widget>[
        filaestrellas
      ],
    );

//comentario
    final comentario = Container(
      child: Text(
        textoComentario,
        style: TextStyle(
          fontFamily: "lato"
      ),
      ),
    );

    //colmuna review
    final columnReview = Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        nombreUsuario,
        filaResumen,
        comentario
      ],
    );

  //review
    final review = Row(
      children: <Widget>[
        foto,
        columnReview
      ],
    );

    return review;
  }
}