import 'package:App/componet/nav_bar_superior.dart';
import 'package:flutter/material.dart';

class IndexCartelera extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.cabecera(),
        this.infoSerie(),
        this.botonera()
      ],
    );
  }


  Widget cabecera(){
    return Stack(
      children: <Widget>[
        Image.network(
            'https://www.nacionflix.com/__export/1615595979385/sites/debate/img/2021/03/12/godzilla-vs-kong-3d-poster_crop1615595927023.jpg_1902800913.jpg',
            height: 350.0,
            fit: BoxFit.cover),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black38,
                    Colors.black
                  ]
              )
          ),
        ),
        NavBarSuperior()
      ],
    );
  }
  Widget infoSerie(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Telenovelas',
          style: TextStyle(color: Colors.white,
          fontSize: 10.0),),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record,color: Colors.red,  size: 5.0),
        SizedBox(width: 6.0),
        Text(
          'Suspenso insostenible',
          style: TextStyle(
             color: Colors.white,
              fontSize: 10.0),),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record,color: Colors.red,  size: 5.0),
        SizedBox(width: 6.0),
        Text(
          'De suspenso',
          style: TextStyle(
              color: Colors.white,
              fontSize: 10.0),),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record,color: Colors.red,  size: 5.0),
        SizedBox(width: 6.0),
        Text(
          'Adolescentes',
          style: TextStyle(
              color: Colors.white,
              fontSize: 10.0),)
      ],
    );
  }
  Widget botonera(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.check, color: Colors.white),
              SizedBox(width: 3.0),
              Text(
                'Mi lista',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0
                ),
              )
            ],
          ),
          FlatButton.icon(
              onPressed: () {},
              color: Colors.white,
              icon: Icon(
                Icons.play_arrow,
                color: Colors.black,
              ),
              label: Text('Reproducir')
          ),
          Column(
            children: <Widget>[
              Icon(Icons.info_outline, color: Colors.white),
              SizedBox(width: 3.0),
              Text(
                'Información',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0
                ),
              )
            ],
          ),
        ],
      ),
    );
  }


}
