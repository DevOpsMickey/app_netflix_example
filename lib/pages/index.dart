import 'package:App/componet/index_cartelera.dart';
import 'package:App/componet/item_img.dart';
import 'package:App/componet/item_redondeado.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          IndexCartelera(),
          this.listaPeliculasHorizontal('Avances', ItemRedondeado(), 7),
          SizedBox(width: 10.0),
          this.listaPeliculasHorizontal('Peliculas de acción', ItemImg(), 10),
          SizedBox(width: 10.0),
        ],
      ),
    );
  }
  Widget listaPeliculasHorizontal(String titulo, Widget item, int cantidad){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(
            titulo,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index){
              return item;
            },
          ),
        ),
      ],
    );
  }
}

