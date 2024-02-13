    //   body:  Padding(
    //     padding: const EdgeInsets.all(15.0),
    //     child: Column(
    //       children: [
            
    //         const Padding(
    //           padding: EdgeInsets.all(8.0),
    //           child: TextField(
    //             decoration: InputDecoration(
    //              border: OutlineInputBorder(), labelText: "Email"),
    //           ),
    //         ),
    //         const Padding(
    //           padding: EdgeInsets.all(8.0),
    //           child: TextField(
    //             obscureText: true,
    //             decoration: InputDecoration(
    //              border: OutlineInputBorder(), labelText: "Password"),
    //           ),
    //         ),
            
            
    //       ElevatedButton(onPressed: () {},
    //       style: ButtonStyle(
    //         minimumSize:
    //         MaterialStateProperty.all(const Size(double.infinity,50)) ,
    //       backgroundColor: MaterialStateProperty.all(Colors.blue)
    //       ),
    //         child: const Text("Submit",style: TextStyle(fontSize: 20),))
    //       ],
    //     ),
    //   ),
    // );
    // import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_employment_managment_system/views/home.dart';
// import 'package:flutter_application_employment_managment_system/views/signupPage.dart';



// class AuthService {
//   // Method for user registration
//   Future<String?> registration({
//     required String email,
//     required String password,
//   }) async {
//     try {
//       // Attempt to create a user with the provided email and password
//       await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return 'Success';
//     } on FirebaseAuthException catch (e) {
//       // Handle specific FirebaseAuthException cases and return appropriate error messages
//       if (e.code == 'weak-password') {
//         return 'The password provided is too weak.';
//       } else if (e.code == 'email-already-in-use') {
//         return 'The account already exists for that email.';
//       } else {
//         // Return the general error message for other exceptions
//         return e.message;
//       }
//     } catch (e) {
//       // Return the general error message for any other exceptions
//       return e.toString();
//     }
//   }
//  // Method for user login
//   Future<String?> login({
//     required String email,
//     required String password,
//   }) async {
//     try {
//       // Attempt to sign in with the provided email and password
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return 'Success';
//     } on FirebaseAuthException catch (e) {
//       // Handle specific FirebaseAuthException cases and return appropriate error messages
//       if (e.code == 'user-not-found') {
//         return 'No user found for that email.';
//       } else if (e.code == 'wrong-password') {
//         return 'Wrong password provided for that user.';
//       } else {
//         return e.message;
//       }
//     } catch (e) {
//       return e.toString();
//     }
//   }
// }