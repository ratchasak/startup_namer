import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:startup_namer/screens/test_screen/test_screen_viewmodel.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TestScreenViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: !model.hasSelectedImage
            ? Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    color: Colors.blue,
                    child: Text('Pick an image'),
                    onPressed: () => model.selectImage(fromGallery: true),
                  ),
                  MaterialButton(
                    color: Colors.yellow,
                    child: Text('Take an image'),
                    onPressed: () => model.selectImage(fromGallery: false),
                  ),
                ],
              )
            : model.isBusy
                ? CircularProgressIndicator()
                : Image.file(model.selectedImage),
      ),
      viewModelBuilder: () => TestScreenViewModel(),
    );
  }
}
