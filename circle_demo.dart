import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CircleDemo extends StatefulWidget {
  const CircleDemo({Key? key}) : super(key: key);

  @override
  _CircleDemoState createState() => _CircleDemoState();
}

class _CircleDemoState extends State<CircleDemo> {
  //
  LatLng yavatmalLocation = LatLng(20.3899, 78.1307);

  Set<Circle> circleSet = {};
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        title: Text('Circle Demo'),
      ),

      //
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: yavatmalLocation,
          zoom: 15,
        ),

        //
        circles: circleSet,

        onLongPress: placeCircle,
        //  {
        // show single circle on map

        // Circle(
        //   circleId: CircleId('circle'),
        //   center: yavatmalLocation,
        //   radius: 50,
        //   strokeColor: Colors.green.shade200,
        //   strokeWidth: 3,
        //   fillColor: Colors.green.shade100,
        // ),
        //},
      ),
    );
  }

  void placeCircle(LatLng position) {
    // create circle on map

    Circle circle = Circle(
      circleId: CircleId('${circleSet.length}'),
      center: position,
      radius: 50,
      strokeColor: Colors.green.shade200,
      strokeWidth: 3,
      fillColor: Colors.green.shade100,
    );

    // add circle to set
    circleSet.add(circle);

    setState(() {
      //
    });
  }
}
