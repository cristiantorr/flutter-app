import 'package:clone_netflix/componentes/navbar_superior.dart';
import 'package:flutter/material.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.cabecera(),
        this.infoSerie(),
        SafeArea(child: this.botonera()),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: <Widget>[
        Image.network(
          'https://occ-0-4097-3933.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABUm3a5AE5Jkr0ayVJcsqj7DcTkGZ-eOJ1iNtpNO_iImNodQM3uJMlTZaGaqvIjdRhE96teXoqmQFvVQldfzRSp7mJwbA.jpg',
          height: 350,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                Colors.black12,
                Colors.black,
              ])),
        ),
        SafeArea(child: NavBarSuperior()),
      ],
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Telenovela',
          style: TextStyle(color: Colors.white, fontSize: 13.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          'Suspenso',
          style: TextStyle(color: Colors.white, fontSize: 13.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          'Infantiles',
          style: TextStyle(color: Colors.white, fontSize: 13.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          'Drama',
          style: TextStyle(color: Colors.white, fontSize: 13.0),
        ),
      ],
    );
  }

  Widget botonera() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(Icons.check, color: Colors.white),
            SizedBox(height: 10.0),
            Text(
              'Mi lista',
              style: TextStyle(color: Colors.white, fontSize: 13.0),
            )
          ],
        ),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            foregroundColor: MaterialStateProperty.all(Colors.black),
          ),
          icon: Icon(
            Icons.play_arrow,
            color: Colors.black,
          ),
          label: Text('Reproducir'),
        ),
        Column(
          children: <Widget>[
            Icon(Icons.info_outline, color: Colors.white),
            SizedBox(height: 13.0),
            Text(
              'Mi lista',
              style: TextStyle(color: Colors.white, fontSize: 13.0),
            )
          ],
        ),
      ],
    );
  }
}
