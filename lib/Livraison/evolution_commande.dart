// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:geolocator_web/geolocator_web.dart';
// import 'package:location/location.dart';
// import 'package:location_platform_interface/location_platform_interface.dart';


// class EvolutionCommande extends StatefulWidget {
//   static String routeName = "/evolution_commande";
//   final String title= "";
//   var location = new Location();
//   var currentLocation = await location.getLocation();

//  EvolutionCommande({super.key});
// FutureBuilder<TResult> FutureBuilder({Key ? key},
// {Future<TResult> future}, 
// {TResult initialData}, 
// {Widget Function(BuildContext, AsyncSnapshot<LocationData>) builder}
// )

//   @override
//   State<EvolutionCommande> createState() => _EvolutionCommandeState();
// }

// class _EvolutionCommandeState extends State<EvolutionCommande> {
//   @override
//   Widget build(BuildContext context) {
//    return Scaffold(
//         appBar: AppBar(
//         title: Text(widget.title),
//         ),
//         body: FutureBuilder(
//             future: currentLocation,
//             builder: (BuildContext context, AsyncSnapshot<LocationData> snapshot) {
//             switch (snapshot.connectionState) {
//                 case ConnectionState.waiting:
//                     return new Center(child: new CircularProgressIndicator());
//                 case ConnectionState.done:
//                     if (snapshot.hasError) {
//                         return new Text(
//                         '${snapshot.error}',
//                         style: TextStyle(color: Colors.red),
//                         );
//                     } else {
//                         return new Center(
//                         child: Text(snapshot.data.latitude.toString() +
//                             " - " +
//                             snapshot.data.longitude.toString()),
//                         );
//                     }
//                 default:
//                     return new Text('');
//             }
//             })
//     );
//   }
// }
