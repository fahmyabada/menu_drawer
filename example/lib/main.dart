import 'package:flutter/material.dart';
import 'package:menu_drawer/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ExampleApp(),
    );
  }
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Menu(
        item: [
          ListTile(
            title: const Text(
              'Home',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            leading: const Icon(
              Icons.home,
              color: Colors.grey,
              size: 25,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 1,
            color: Colors.grey[400],
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: const Text(
              'Support',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            leading: const Icon(
              Icons.home,
              color: Colors.grey,
              size: 25,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 1,
            color: Colors.grey[400],
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: const Text(
              'About',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            leading: const Icon(
              Icons.home,
              color: Colors.grey,
              size: 25,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 1,
            color: Colors.grey[400],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
        titleDrawerHeader: "mohamed fahmy",
        width: 320.0,
        colorDrawerHeader: Colors.blue,
        heightDrawerHeader: 70.0,
        widthDrawerHeader: 70.0,
        urlImageDrawerHeader:
        "https://www.escapeauthority.com/wp-content/uploads/2116/11/No-image-found.jpg",
        spaceDrawerHeader: 15.0,
        colorTitleDrawerHeader: Colors.white,
        fontSizeTitleDrawerHeader: 20.0,
        subTitleDrawerHeader: "",
        colorSubTitleDrawerHeader: Colors.white,
        fontSizeSubTitleDrawerHeader: 20.0,
        namePoweredBy: 'PoweredBy',
        colorPoweredBy: Colors.blue,
        fontSizePoweredBy: 17.0,
        heightNameImagePoweredBy: 5,
        pressImagePoweredBy: () {
          print('pressImagePoweredBy');
        },
        urlImagePoweredBy: "assets/logoCompany.png",
        heightImagePoweredBy: 40.0,
        widthImagePoweredBy: 150.0,
        heightImageVersion: 10.0,
        nameVersion: 'Version',
        valueVersion: "1.0",
        colorVersion: Colors.blue,
        fontSizeVersion: 17.0,
      ),
    );
  }
}
