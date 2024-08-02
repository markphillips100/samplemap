import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// Takes a stream of a pair of directions locations and renders the locations as pins if not null,
/// and renders a wayfinding path if both locations are known.
/// NOTE: We take a stream rather than static object so that we don't rebuild the map when directions are changed.
class SampleMap extends StatefulWidget {

  const SampleMap({
    super.key,
  });

  @override
  State<SampleMap> createState() => _SampleMapState();
}

class _SampleMapState extends State<SampleMap> {
  late WebViewController _controller;

  @override
  void initState() {

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted);

    _clearCache();

    _controller.loadRequest
    (Uri.parse(
      //"https://au.apps.dmp1.192.168.200.4.nip.io/tuckerboxshopmobileapi/map"
      "https://samples.azuremaps.com/animations/animate-a-gps-trace"      
    ));

    super.initState();
  }

  Future<void> _clearCache() async {
    await _controller.clearCache();
    await _controller.clearLocalStorage();
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: _controller);
  }
}
