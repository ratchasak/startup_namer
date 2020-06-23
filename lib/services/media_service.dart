import 'dart:io';
import 'package:image_picker/image_picker.dart';

class MediaService {
  Future<File> getImage({bool fromGallery}) {
    return ImagePicker.pickImage(
        source: fromGallery ? ImageSource.gallery : ImageSource.camera);
  }
}
