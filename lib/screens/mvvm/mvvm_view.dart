import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:startup_namer/screens/mvvm/mvvm_viewmodel.dart';

class MvvmView extends StatelessWidget {
  const MvvmView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //   create: (context) => MvvmViewModel(),
    //   child: Consumer<MvvmViewModel>(
    //     builder: (context, model, child) {
    //       print(model);
    //       return Scaffold(
    //         appBar: AppBar(),
    //         body: Text('Total price: ${model.posts}'),
    //       );
    //     },
    //   ),
    // );
    return ViewModelBuilder<MvvmViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text(model.title),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: model.updateCounter,
        ),
      ),
      viewModelBuilder: () => MvvmViewModel(),
    );
  }
}
