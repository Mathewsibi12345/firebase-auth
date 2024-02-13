import 'package:flutter/material.dart';
import 'package:flutter_application_employment_managment_system/controllers/auth.dart';
import 'package:flutter_application_employment_managment_system/views/base.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
   // Text editing controllers for handling user input
final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _loading = false; // Variable to track loading state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignUP"),
        backgroundColor: Colors.red,
      ),
      
body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(hintText: 'Email'),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () async {
                 // Set loading state to true
                setState(() {
                  _loading = true;});
                  if (_loading){}
                // Call registration method from AuthService when Create Account button is pressed
                final message = await AuthService().registration(
                  email: _emailController.text,
                  password: _passwordController.text,
                );
                // Set loading state back to false
                setState(() {
                  _loading = false;
                });
                // If registration is successful, navigate to the Home screen
                if (message!.contains('Success')) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const Home(email: ' ',)));
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    // Show a SnackBar with the registration result message
                    content: Text(message),
                  ),
                );
              },
              child: _loading
                  ? const CircularProgressIndicator() 
                  // Show loading indicator if _loading is true
                  : const Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}