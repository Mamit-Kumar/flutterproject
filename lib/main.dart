import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Flutter Mafia"),
          ),
          body: const MyHomePage(),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 375,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 15,
                offset: const Offset(-5, -5),
                color: Colors.grey[300]!,
                spreadRadius: 1,
              ),
              BoxShadow(
                blurRadius: 15,
                offset: const Offset(5, 5),
                color: Colors.grey[200]!,
                spreadRadius: 1,
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 5, top: 8),
                  child: Image(
                    height: 40,
                    width: 40,
                    image: NetworkImage(
                        'https://img.icons8.com/external-victoruler-flat-victoruler/2x/external-girl-people-victoruler-flat-victoruler-2.png'),
                  ),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "Hi FlutterMafia",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text("The Exciting World of Digital Art"),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 5, top: 8),
                      child: Image(
                        height: 30,
                        width: 30,
                        image: NetworkImage(
                            'https://img.icons8.com/ios-glyphs/344/menu-2.png'),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  height: 270,
                  width: double.infinity,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1589923158776-cb4485d99fd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Image(
                  height: 30,
                  width: 30,
                  image: NetworkImage('https://img.icons8.com/external-royyan-wijaya-detailed-outline-royyan-wijaya/344/external-comment-communication-royyan-wijaya-detailed-outline-royyan-wijaya.png'),
                ),
                Image(
                  height: 30,
                  width: 30,
                  image: NetworkImage('https://img.icons8.com/ios/344/camera--v1.png'),
                ),
                Image(
                  height: 30,
                  width: 30,
                  image: NetworkImage('https://img.icons8.com/ios-glyphs/344/share-rounded.png'),
                ),
                Image(
                  height: 30,
                  width: 30,
                  image: NetworkImage('https://img.icons8.com/fluency/344/filled-like.png'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
