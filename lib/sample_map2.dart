// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';

// /// Takes a stream of a pair of directions locations and renders the locations as pins if not null,
// /// and renders a wayfinding path if both locations are known.
// /// NOTE: We take a stream rather than static object so that we don't rebuild the map when directions are changed.
// class SampleMap2 extends StatefulWidget {

//   const SampleMap2({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<SampleMap2> createState() => _SampleMap2State();
// }

// class _SampleMap2State extends State<SampleMap2> {

//   @override
//   Widget build(BuildContext context) {
//     return InAppWebView(
//       initialUrlRequest: URLRequest(
//         url: WebUri(
//           "https://samples.azuremaps.com/animations/animate-a-gps-trace",
//           // "https://au.apps.dmp1.192.168.200.4.nip.io/tuckerboxshopmobileapi/map"
//         )),
//     );
//   }
// }
