import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentLocation = LatLng(25.1193, 55.3773);

class OrderTrackingPage extends StatefulWidget {
  const OrderTrackingPage({super.key});

  @override
  State<OrderTrackingPage> createState() => _OrderTrackingPageState();
}

class _OrderTrackingPageState extends State<OrderTrackingPage> {
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);
  static const LatLng destination = LatLng(37.33429383, -122.06600055);

  late GoogleMapController _mapController;
  Map<String, Marker> _markers = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Track order",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: currentLocation,
          zoom: 14.0, // sourceLocation, zoom: 13.5
        ),
        onMapCreated: (controller) {
          _mapController = controller;
          addMarker("test", currentLocation);
        },
        markers: _markers.values.toSet(),
      ),
    );
  }

  addMarker(String id, LatLng location) async {
    var markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'assets/imgs/housse.jpeg');
    var marker = Marker(
      markerId: MarkerId(id),
      position: location,
      infoWindow: const InfoWindow(
        title: 'Title of place',
        snippet: 'Some description of the place',
      ),
      icon: markerIcon,
    );

    _markers[id] = marker;
    setState(() {});
  }
}
