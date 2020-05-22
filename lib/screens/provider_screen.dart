import 'package:flutter/material.dart';

import 'package:startup_namer/service_locator.dart';
import 'package:startup_namer/storage_service.dart';

class ProviderScreen extends StatefulWidget {
  @override
  _ProviderScreenState createState() => _ProviderScreenState();
}

class _ProviderScreenState extends State<ProviderScreen> {
  StorageService _myService = getIt<StorageService>();

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
