import 'package:flutter/material.dart';
import 'package:neatness_project/constants.dart';
class GeoLocalisation extends StatefulWidget {
  const GeoLocalisation({super.key});
  static String id = '/geo_localisation';
  @override
  State<GeoLocalisation> createState() => _GeoLocalisationState();
}

class _GeoLocalisationState extends State<GeoLocalisation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.red,
          child: Text(
              'eee'
          ),
        ),
      ),
      body: ElevatedButton(
        child: Text('return'),
        onPressed: ()=>Navigator.pop(context),
      ),
    );
  }
}
