import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        alignment: Alignment.center,
        color: Colors.blue,
        child: Container(
          margin: EdgeInsets.all(16.0),
          child: Column(
            children: [
              FlightDestination('Indonesia Airways', 'Surabaya to Jakarta'),
              Container(
                margin: EdgeInsets.only(top: 16.0),
              ),
              FlightDestination('Air Asia', 'Jakarta to Silicon Valley'),
              FlightLogo('images/flight.png'),
            ],
          ),
        ),
      ),
    );
  }
}

class FlightDestination extends StatelessWidget {
  final String plane;
  final String destination;

  FlightDestination(this.plane, this.destination, {key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: Text(
              plane,
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.w700,
                fontSize: 30.0,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Expanded(
            child: Text(
              destination,
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Architects Daughter',
                fontSize: 20.0,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ],
      );
}

class FlightLogo extends StatelessWidget {
  final String imageLocation;

  FlightLogo(this.imageLocation, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage(imageLocation);
    Image image = Image(
      image: assetImage,
      width: 250.0,
      height: 250.0,
    );
    return Container(
      child: image,
    );
  }
}
