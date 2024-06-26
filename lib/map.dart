import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:quizapp/home.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/shared/models.dart';

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
      location: const LatLng(40.749405, 14.492874),
    ),
    PointOfInterest(
      id: '1',
      location: const LatLng(40.749787, 14.486361),
    ),
    PointOfInterest(
      id: '2',
      location: const LatLng(40.750152, 14.484520),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Carte de Pompéi'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          ),
        ),
      ),
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
                      ),
                    );
                  },
                ))
            .toSet(),
      ),
    );
  }
}
