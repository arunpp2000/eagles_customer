
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


const myColors = Color(0xFF4B39EF);

List<String> partners = [];
List<String> institutes = [];
List<String> programTracks = [];
Map<String, dynamic> trackCodebyId = {};

void main() async {
  if (kIsWeb) {
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBfw-AQfk7DPNJXJsrbqjydm5aekKROU2E",
            authDomain: "eagles-2505e.firebaseapp.com",
            projectId: "eagles-2505e",
            storageBucket: "eagles-2505e.appspot.com",
            messagingSenderId: "147570494207",
            appId: "1:147570494207:web:9f01c32d9ed5ea57e5daca",
            measurementId: "G-QJD8GTPLWX"));

    runApp(MyApp());
  } else {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getPartner();
    // getInstitute();
    // getProgramTrack();
  }

  // getPartner() {
  //   FirebaseFirestore.instance
  //       .collection('partners')
  //       .snapshots()
  //       .listen((event) {
  //     partners = [];
  //     if (event.docs.isNotEmpty) {
  //       for (DocumentSnapshot partner in event.docs) {
  //         partners.add(partner.get('name'));
  //       }
  //     }
  //     if (mounted) {
  //       setState(() {});
  //     }
  //   });
  // }
  //
  // getInstitute() {
  //   FirebaseFirestore.instance
  //       .collection('institutions')
  //       .snapshots()
  //       .listen((event) {
  //     institutes = [];
  //     if (event.docs.isNotEmpty) {
  //       for (DocumentSnapshot institute in event.docs) {
  //         institutes.add(institute.get('name'));
  //       }
  //     }
  //     if (mounted) {
  //       setState(() {});
  //     }
  //   });
  // }
  //
  // getProgramTrack() async {
  //   FirebaseFirestore.instance
  //       .collection('programTrack')
  //   // .limit(limit)
  //       .snapshots()
  //       .listen((event) {
  //     programTracks = [];
  //     if (event.docs.isNotEmpty) {
  //       for (DocumentSnapshot program in event.docs) {
  //         programTracks.add(program.get('trackName'));
  //         trackCodebyId[program.id] = program.get('trackCode');
  //       }
  //     }
  //
  //     if (mounted) {
  //       setState(() {});
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Text('eagle customer'),
    );
  }
}
