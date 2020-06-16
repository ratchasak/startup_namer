import 'package:flutter/material.dart';
import 'package:startup_namer/app/locator.dart';
import 'package:startup_namer/screens/album_list_viewmodel.dart';

// class AlbumList extends StatelessWidget {
//   final List<AlbumViewModel> albums;

//   AlbumList({this.albums});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: this.albums.length,
//       itemBuilder: (context, index) {
//         final album = this.albums[index];

//         return ListTile(
//           contentPadding: EdgeInsets.all(10),
//           title: Text(album.title),
//         );
//       },
//     );
//   }
// }

class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final vm = Provider.of<AlbumListViewModel>(context);
    AlbumListViewModel model = locator<AlbumListViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: Column(
        children: <Widget>[
          // Center(
          //   child: Container(
          //     child: RaisedButton(
          //       child: Text('press'),
          //       onPressed: () {
          //         print(vm.fetchAlbums().toString());
          //       },
          //     ),
          //   ),
          // ),
          // Expanded(
          //   child: AlbumList(albums: vm.albums),
          // ),
          // FutureBuilder<String>(
          //   future: model.fetchAlbums(),
          //   builder: (BuildContext context, AsyncSnapshot<AlbumListViewModel> snapshot) {
          //     return Text('$snapshot.title');
          //   },
          // ),
        ],
      ),
    );
    // return Container(
    //   color: Colors.teal,
    //   width: double.infinity,
    //   child: SafeArea(
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Container(
    //           width: 100.0,
    //           color: Colors.red,
    //         ),
    //         Container(
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Container(
    //                 width: 100.0,
    //                 height: 100.0,
    //                 color: Colors.yellow,
    //               ),
    //               Container(
    //                 width: 100.0,
    //                 height: 100.0,
    //                 color: Colors.green,
    //               ),
    //             ],
    //           ),
    //         ),
    //         Container(
    //           width: 100.0,
    //           color: Colors.blue,
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
