import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My first app'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Text(
                  'Mobile App Dev',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.purple,
                    decorationStyle: TextDecorationStyle.dotted,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 6,
                  textAlign: TextAlign.center,
                ),
                const Divider(
                  height: 60.0,
                  color: Colors.green,
                ),
                RichText(
                    text: const TextSpan(
                  text: 'mobile app',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.purple,
                    decorationStyle: TextDecorationStyle.dotted,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                )),
                const Divider(
                  height: 100.0,
                  color: Colors.green,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.flight,
                          size: 60.0,
                        )),
                    const Text(
                      'column2',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    // Image.asset(
                    //   'assets/images/your_image.png', // Replace 'your_image.png' with your actual image asset path
                    //   width: 40,
                    //   height: 40,
                    // ),
                    const Text(
                      'column3',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('common widget demo'),
//         leading: IconButton(
//           icon: const Icon(Icons.menu),
//           onPressed: () {},
//         ),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.menu),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: const Icon(Icons.more_horiz),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: const Icon(Icons.more_vert),
//             onPressed: () {},
//           )
//         ],
//         bottom: PreferredSize(
//           preferredSize: const Size.fromHeight(100.0),
//           child: Container(
//               color: const Color.fromARGB(255, 158, 255, 46),
//               height: 200.0,
//               width: double.infinity,
//               child: const Center(
//                 child: Text('AppBar\'s Bottom'),
//               )),
//         ),
//       ),
//       body: const SafeArea(
//         child: Padding(
//           padding: EdgeInsets.all(20.0),
//           child: SingleChildScrollView(
//             child: Column(
//               children: <Widget>[
//                 ContainerWBox(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ContainerWBox extends StatelessWidget {
//   const ContainerWBox({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Container(
//           height: 200.00,
//           decoration: const BoxDecoration(
//               borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(100.0),
//                   bottomRight: Radius.circular(200.0)
//                   )
//                 ),
//         ),
//       ],
//     );
//   }

