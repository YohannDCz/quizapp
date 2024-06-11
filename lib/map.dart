import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:quizapp/quiz.dart';

class PointOfInterest {
  final String id;
  final LatLng location;

  PointOfInterest({required this.id, required this.location});
}

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? _controller;

  List<PointOfInterest> pointsOfInterest = [
    PointOfInterest(
      id: '0',
      location: const LatLng(40.75, 14.4896),
    ),
    PointOfInterest(
      id: '1',
      location: const LatLng(40.7484, 14.4896),
    ),
    PointOfInterest(
      id: '2',
      location: const LatLng(40.745, 14.4896),
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Carte de Pompéi')),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(40.7484, 14.4896),
          zoom: 15,
        ),
        onMapCreated: (controller) => _controller = controller,
        markers: pointsOfInterest
            .map((poi) => Marker(
                  markerId: MarkerId(poi.id),
                  position: poi.location,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizScreen(quizId: poi.id),
                        ));
                  },
                ))
            .toSet(),
      ),
    );
  }
}
