import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:gallery_saver/gallery_saver.dart';
//import 'package:flutter/services.dart';
import 'dart:async';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// Amplify Flutter Packages
/*import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';*/

// Generated in previous step
//import 'amplifyconfiguration.dart';
//import 'package:amplify_storage_s3/amplify_storage_s3.dart';

/*
class MyWidgetsBinding extends WidgetsFlutterBinding {
  @override
  ImageCache createImageCache() => MyImageCache();
}
*/
void main() {
  //MyWidgetsBinding();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  //imageCache.clear();
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Project PDP!',
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatelessWidget {
  const _MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
          backgroundColor: const ui.Color.fromARGB(255, 18, 32, 18),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/Background1.png'),
              ),
            ),
            padding: const EdgeInsets.all(30),
            child: Column(children: <Widget>[
              const Spacer(),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/The Farmer's Market.png"),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //Account login
                    children: <Widget>[
                      //Account login
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const ui.Color.fromARGB(255, 18, 32, 18)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const _Login()),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text("Login"),
                        ),
                      ),
                      //About Us
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const ui.Color.fromARGB(255, 18, 32, 18)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const _Login()),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text("About us"),
                        ),
                      ),
                    ]),
              )
            ])));
  }
}

class _Login extends StatefulWidget {
  const _Login({Key? key}) : super(key: key);

  @override
  Login createState() => Login();
}

class Login extends State<_Login> {
  @override
  Widget build(BuildContext context) {
    String message = "Please Enter your Login Credentials to Continue";
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
          backgroundColor: const ui.Color.fromARGB(255, 18, 32, 18),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/Background2.png'),
              ),
            ),
            padding: const EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                const Spacer(),
                const Spacer(),
                Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image:
                          AssetImage("assets/images/The Farmer's Market.png"),
                    ),
                  ),
                ),
                const Spacer(),
                Text(message,
                    style: const TextStyle(
                        fontSize: 15,
                        color: ui.Color.fromARGB(255, 18, 32, 18))),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ui.Color.fromARGB(255, 18, 32, 18))),
                      labelText: 'user id',
                      hintText: 'Example : your_name123',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const ui.Color.fromARGB(255, 14, 41, 16),
                    onPrimary: Colors.white,
                  ),
                  child: const Text('Login'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const _MyAccount()),
                    );
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const ui.Color.fromARGB(255, 14, 41, 16),
                    onPrimary: Colors.white,
                  ),
                  child: const Text('New to the community?'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const _SignUp()),
                    );
                  },
                )
              ],
            )));
  }
}

//Display user account
class _MyAccount extends StatefulWidget {
  const _MyAccount({Key? key}) : super(key: key);

  @override
  MyAccount createState() => MyAccount();
}

// ignore: must_be_immutable
class MyAccount extends State<_MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Jhon Doe'),
          backgroundColor: const ui.Color.fromARGB(255, 89, 131, 92),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/Background2.png'),
              ),
            ),
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Column(children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            //Go to Prediction Page
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                    alignment: Alignment.center,
                                    width: 100,
                                    height: 100,
                                    //allign?
                                    child: Image.asset(
                                        'assets/images/profileDefault.jpg'))),

                            Column(children: <Widget>[
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, left: 20, right: 20),
                                  child: Container(
                                    color: const ui.Color.fromARGB(
                                        255, 49, 98, 51),
                                    alignment: Alignment.topLeft,
                                    child: const SizedBox(
                                        width: 230,
                                        child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text(
                                                "User BioData / Farm Name / Production Chain Details / Location",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white)))),
                                  )),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      const ui.Color.fromARGB(255, 14, 41, 16),
                                  onPrimary: Colors.white,
                                ),
                                child:
                                    const Text('Diseased Plant Image Upload'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const _PredictionPage()),
                                  );
                                },
                              ),
                            ]),
                          ]),

                      //Notifications
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Container(
                              height: 400,
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.only(
                                  bottom: 6.0), //Same as `blurRadius` i guess
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: const ui.Color.fromARGB(255, 49, 98, 51),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                              ),
                              child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text('NOTIFICATIONS',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white))),
                            ),
                          ),
                        ),
                      ),
                      //Embedded User Timeline and History
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Container(
                              height: 200,
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.only(
                                  bottom: 6.0), //Same as `blurRadius` i guess
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: const ui.Color.fromARGB(255, 49, 98, 51),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                              ),
                              child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text('TIMELINE / HISTORY OF UPLOADS',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white))),
                            ),
                          ),
                        ),
                      ),
                      //Google maps
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Container(
                              alignment: Alignment.center,
                              height: 200,
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.only(
                                  bottom: 6.0), //Same as `blurRadius` i guess
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: const ui.Color.fromARGB(255, 49, 98, 51),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                              ),
                              child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                      'Embedded Google Maps to pint out near by farm locations ',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white))),
                            ),
                          ),
                        ),
                      ),
                    ])))));
  }
}

//Create New user account
class _SignUp extends StatefulWidget {
  const _SignUp({Key? key}) : super(key: key);

  @override
  SignUp createState() => SignUp();
}

// ignore: must_be_immutable
class SignUp extends State<_SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Account'),
        backgroundColor: const ui.Color.fromARGB(255, 14, 41, 16),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/Background1.png'),
          ),
        ),
      ),
      //Add Body Code from here
    );
  }
}

//Home Page Common to All users
class _PredictionPage extends StatefulWidget {
  const _PredictionPage({Key? key}) : super(key: key);

  @override
  PredictionPage createState() => PredictionPage();
}

// ignore: must_be_immutable
class PredictionPage extends State<_PredictionPage> {
  XFile? display;
  String user = "Jhon Doe";
  String species = 'tomato';
  String plantpart = 'leaf';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(user),
          backgroundColor: const ui.Color.fromARGB(255, 77, 112, 79),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/backgroundForPrediction.png'),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: const SizedBox(
                            width: 400,
                            child: Text(
                                "You need to upload an image before we can analyze it for you",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white))),
                      )),
                  Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: const Text(
                              "You can choose to upload an image from your gallery or directly click an image of the diseased plant",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white)))),

                  Container(
                      //color: const ui.Color.fromARGB(255, 56, 92, 56),
                      height: 100.0,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.topCenter,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(20),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: const ui.Color.fromARGB(
                                        255, 82, 141, 85),
                                    onPrimary: Colors.white,
                                  ),
                                  child: const SizedBox(
                                      width: 100, child: Text('Click Image')),
                                  onPressed: () {
                                    openCamera();
                                  },
                                )),
                            Padding(
                                padding: const EdgeInsets.all(20),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: const ui.Color.fromARGB(
                                        255, 82, 141, 85),
                                    onPrimary: Colors.white,
                                  ),
                                  child: const SizedBox(
                                      width: 100,
                                      child: Text('Select from Gallery')),
                                  onPressed: () {
                                    selectImg();
                                  },
                                )),
                          ])),
                  Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: const Text(
                              "Please Select the appropriate Species and Plant Part",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white)))),
                  //Drop Down Boxes
                  Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 20, left: 20, right: 20),
                                child: SizedBox(
                                  width: 150,
                                  child: DropdownButtonFormField<String>(
                                      //hint: const Text('Plant Part Effected'),
                                      onChanged: (changedValue) {
                                        plantpart = changedValue!;
                                        setState(() {
                                          plantpart;
                                        });
                                      },
                                      value: plantpart,
                                      dropdownColor: const ui.Color.fromARGB(
                                          255, 61, 104, 62),
                                      items: <String>['stem', 'fruit', 'leaf']
                                          .map((String value) {
                                        return DropdownMenuItem<String>(
                                            value: value,
                                            child: SizedBox(
                                              width: 100,
                                              child: Text(value,
                                                  style: const TextStyle(
                                                      color: Colors.white)),
                                            ));
                                      }).toList()),
                                )),
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 20, left: 20, right: 20),
                                child: SizedBox(
                                  width: 150,
                                  child: DropdownButtonFormField<String>(
                                      //hint: const Text('Species'),
                                      onChanged: (changedValue) {
                                        species = changedValue!;
                                        setState(() {
                                          species;
                                        });
                                      },
                                      value: species,
                                      dropdownColor: const ui.Color.fromARGB(
                                          255, 61, 104, 62),
                                      items: <String>['tomato', 'apple']
                                          .map((String value) {
                                        return DropdownMenuItem<String>(
                                            value: value,
                                            child: SizedBox(
                                              width: 100,
                                              child: Text(value,
                                                  style: const TextStyle(
                                                      color: Colors.white)),
                                            ));
                                      }).toList()),
                                )),
                          ])),
                  Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: const Text("#ErrorMessage (if exists)",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white)))),

                  Padding(
                      padding: const EdgeInsets.only(
                          bottom: 20, left: 20, right: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const ui.Color.fromARGB(255, 82, 141, 85),
                          onPrimary: Colors.white,
                        ),
                        child: const SizedBox(
                            width: 100, child: Text('Run Algorithm')),
                        onPressed: () {
                          //Add code to view results
                        },
                      )),
                  //Display Clicked Image
                  display != null
                      ? Padding(
                          padding: const EdgeInsets.all(20),
                          child: SizedBox(
                            width: 250,
                            height: 250,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Image.file(File(display!.path)),
                            ),
                            //Image.file(display as File, fit: BoxFit.cover),
                          ))
                      : Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  width: 250,
                                  height: 250,
                                  //allign?
                                  child: Image.asset(
                                      'assets/images/placeholder.png')))),
                  Padding(
                      padding: const EdgeInsets.all(25),
                      child: Container(
                          color: const ui.Color.fromARGB(255, 14, 26, 15),
                          height: 550,
                          width: 400,
                          alignment: Alignment.center,
                          child: const Text('Output From the Model',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white))))
                ],
              ),
            )));
  }

  //XFile? camImg;
  final ImagePicker _picker = ImagePicker();
  //XFile? img;

  Future selectImg() async {
    var galImg = await _picker.pickImage(source: ImageSource.gallery);
    if (galImg != null) {
      cropImg(galImg);
    }
  }

  Future openCamera() async {
    var camImg = await _picker.pickImage(source: ImageSource.camera);
    if (camImg != null) {
      cropImg(camImg);
      //GallerySaver.saveImage(croppedImg.path);
    }
  }

  cropImg(img) async {
    File? croppedImg = await ImageCropper().cropImage(
        sourcePath: img.path,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
        compressFormat: ImageCompressFormat.jpg,
        compressQuality: 100,
        androidUiSettings: const AndroidUiSettings(
          toolbarColor: ui.Color.fromARGB(255, 14, 41, 16),
          statusBarColor: ui.Color.fromARGB(255, 14, 41, 16),
          backgroundColor: ui.Color.fromARGB(255, 14, 41, 16),
        ));
    setState(() {
      display = XFile(croppedImg!.path);
    });
  }
}
