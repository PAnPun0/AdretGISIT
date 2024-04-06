import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class maps extends StatefulWidget {
  const maps({super.key});

  @override
  State<maps> createState() => _mapsState();
}

class _mapsState extends State<maps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(61.993364, 130.00000),
              initialZoom: 9.2,
              ),
              
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                   markers: [
                    Marker(
                      point: LatLng(61.993364, 130.00000),
                      width: 80,
                      height: 80,
                      child: FlutterLogo(),
                    ),
                  ],
                ),
                MarkerLayer(
                   markers: [
                    Marker(
                      point: LatLng(61.993364, 130.00000),
                      width: 80,
                      height: 80,
                      child: FlutterLogo(),
                    ),
                  ],
                ),
                MarkerLayer(
                   markers: [
                    Marker(
                      point: LatLng(61.993364, 130.00000),
                      width: 80,
                      height: 80,
                      child: FlutterLogo(),
                    ),
                  ],
                ),
                MarkerLayer(
                   markers: [
                    Marker(
                      point: LatLng(61.993364, 130.00000),
                      width: 80,
                      height: 80,
                      child: FlutterLogo(),
                    ),
                  ],
                ),
                MarkerLayer(
                   markers: [
                    Marker(
                      point: LatLng(61.993364, 130.00000),
                      width: 80,
                      height: 80,
                      child: FlutterLogo(),
                    ),
                  ],
                ),
                MarkerLayer(
                   markers: [
                    Marker(
                      point: LatLng(61.993364, 130.00000),
                      width: 80,
                      height: 80,
                      child: FlutterLogo(),
                    ),
                  ],
                ),
                MarkerLayer(
                   markers: [
                    Marker(
                      point: LatLng(61.993364, 130.00000),
                      width: 80,
                      height: 80,
                      child: FlutterLogo(),
                    ),
                  ],
                ),
                MarkerLayer(
                   markers: [
                    Marker(
                      point: LatLng(61.993364, 130.00000),
                      width: 80,
                      height: 80,
                      child: FlutterLogo(),
                    ),
                  ],
                ),
                MarkerLayer(
                   markers: [
                    Marker(
                      point: LatLng(61.993364, 130.00000),
                      width: 80,
                      height: 80,
                      child: FlutterLogo(),
                    ),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}
      
    
  