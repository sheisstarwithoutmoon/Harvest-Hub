import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Screen'),
      ),
      body: content(),
    );
  }

  Widget content() {
    return FlutterMap(
      options: const MapOptions(
        initialCenter: LatLng(13.5553, 80.0267),
        initialZoom: 11,
        interactionOptions: InteractionOptions(flags: ~InteractiveFlag.doubleTapZoom),
      ),
      children: [
        openStreetMapTileLayer, // Add the tile layer only once
        const MarkerLayer(
          markers: [
            Marker(
              point: LatLng(13.5553, 80.0267),
              width: 60,
              height: 60,
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.location_pin,
                size: 40,
                color: Colors.red,
              ),
            ),
            Marker(
              point: LatLng(13.5500, 80.0200), // Only one marker for this location
              width: 60,
              height: 60,
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.location_pin,
                size: 20,
                color: Colors.green,
              ),
            ),
            Marker(
              point: LatLng(13.5253, 80.0200), // Only one marker for this location
              width: 60,
              height: 60,
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.location_pin,
                size: 20,
                color: Colors.green,
              ),
            ),
            Marker(
              point: LatLng(13.5300, 80.0202), // Only one marker for this location
              width: 60,
              height: 60,
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.location_pin,
                size: 20,
                color: Colors.green,
              ),
            ),
            Marker(
              point: LatLng(13.5353, 80.0220), // Only one marker for this location
              width: 60,
              height: 60,
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.location_pin,
                size: 20,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ],
    );
  }

  TileLayer get openStreetMapTileLayer => TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        userAgentPackageName: 'dev.fleaflet.flutter_map.example',
      );
}
