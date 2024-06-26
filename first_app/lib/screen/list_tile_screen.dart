// import 'package:first_app/common_widget/list_tile_widget.dart';
// import 'package:flutter/material.dart';

// class ListTileScreen extends StatelessWidget {
//   const ListTileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('ListTile'),
//         ),
//         body: SingleChildScrollView(
//           // wrapping with widget for sccollable
//           child: Column(
//             children: [
//               // Using for loop to print listtile 100 times
//               for (int i = 0; i < 100; i++) ...{
//                 if (i % 2 == 0) ...{
//                   ListTileWidget(
//                     index: i,
//                   )
//                   // ListTile(
//                   //     leading: const Icon(Icons.ac_unit),
//                   //     title: const Text('Title'),
//                   //     subtitle: const Text('Subtitle'),
//                   //     trailing: const Icon(Icons.delete),
//                   //     onTap: () {
//                   //       debugPrint('ListTile tapped');
//                   //     }),
//                 }
//               }

//               // ListTile(
//               // leading: const Icon(Icons.accessible_forward),
//               // title: const Text('Kiran Rana'),
//               // subtitle: const Text('Kathmandu, Nepal'),
//               // trailing: const Icon(Icons.delete),
//               // onTap: () {
//               //   debugPrint('ListTile tapped');
//               // }),
//             ],
//           ),
//         ));
//   }
// }

// .....................

import 'package:first_app/common_widget/list_tile_widget.dart';
import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'List Tile',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i <= 1000; i++) ...{
              // if (i % 2 == 0)
              //   ListTileWidget(
              //     index: i,
              //   ),
              if (i % 2 == 0) ...{
                ListTileWidget(
                  index: i,
                  imageName: 'assets/images/image_2.jpg',
                ),
              } else ...{
                ListTileWidget(
                    index: i, imageName: 'assets/images/image_1.jpg'),
              }
            }
          ],
        ),
      ),
    );
  }
}
