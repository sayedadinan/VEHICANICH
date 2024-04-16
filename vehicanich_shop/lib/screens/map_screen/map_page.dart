import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const LatLng calicut = LatLng(11.2588, 75.7804);
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: calicut,
          zoom: 13,
        ),
        markers: {
          const Marker(
              markerId: MarkerId("marker location"),
              icon: BitmapDescriptor.defaultMarker,
              position: calicut)
        },
      ),
    );
  }
}
