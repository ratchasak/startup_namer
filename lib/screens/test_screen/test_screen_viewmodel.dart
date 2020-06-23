import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';
import 'package:startup_namer/app/locator.dart';
import 'package:startup_namer/services/media_service.dart';

class TestScreenViewModel extends BaseViewModel {
  final _mediaService = locator<MediaService>();
  File _selectedImage;

  bool get hasSelectedImage => _selectedImage != null;

  File get selectedImage => _selectedImage;

  Future selectImage({@required bool fromGallery}) async {
    _selectedImage =
    await runBusyFuture(_mediaService.getImage(fromGallery: fromGallery));
  }
}
