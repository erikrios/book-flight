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
              BookFlightButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class FlightDestination extends StatelessWidget {
  final String _plane;
  final String _destination;

  FlightDestination(String plane, String destination, {key})
      : _plane = plane,
        _destination = destination,
        super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: Text(
              _plane,
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
              _destination,
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
  final String _imageLocation;

  FlightLogo(String imageLocation, {Key key})
      : _imageLocation = imageLocation,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage(_imageLocation);
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

class BookFlightButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        child: RaisedButton(
          onPressed: () => _showAlertDialog(context),
          child: Text(
            'Book Your Flight',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0),
          ),
          color: Colors.purple,
        ),
        width: 250.0,
        height: 50.0,
      );

  void _showAlertDialog(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      title: Text('Flight Booked Successfully'),
      content: Text('Have a pleasant flight'),
    );

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
