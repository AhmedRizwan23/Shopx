import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

signupuser(String useremail, userpassword) async {
  try {
    User? userid = FirebaseAuth.instance.currentUser;
    await FirebaseFirestore.instance.collection("users").doc(userid?.uid).set({
      'useremail': useremail,
      'created at': DateTime.now(),
      'userid': userid?.uid,
    }).then((value) => {
          print("data added"),
          FirebaseAuth.instance.signOut(),
        });
  } on FirebaseAuthException catch (e) {
    print("error $e ");
  }
}
