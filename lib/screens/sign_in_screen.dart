import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {

  const SignInScreen ({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
final TextEditingController _usernameController =
    TextEditingController();

final TextEditingController _passwordController =
    TextEditingController();

String _errorText = '';
bool _isSignedIn = false;
bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sing In')),
    body: Center(
    child: Form(
      child: Column(
        // TODO: 4. Atur alignment
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        // TODO 5. TextFormField nama pengguna
          TextFormField(
          controller: _usernameController,
          decoration: const InputDecoration(
          labelText: 'Nama Pengguna',
          border: OutlineInputBorder(),
        ),
      ),
        const SizedBox(height: 20,),
        // TODO 6. TextFormField kata sandi
        const SizedBox(height: 20),
        TextFormField(
          controller: _passwordController,
          decoration: InputDecoration(
          labelText: 'Kata Sandi',
          errorText: _errorText.isNotEmpty ? _errorText : null,
          border: const OutlineInputBorder(),
          suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _obscurePassword= !_obscurePassword;
            });
          }, // diisi setelah jadi Stateful
          icon: Icon(_obscurePassword
              ? Icons.visibility_off
              : Icons.visibility),
  ),

        ),
      obscureText: _obscurePassword,
    ),

        // TODO 7. ElevatedButton Sign In
        const SizedBox(height: 20),
        ElevatedButton(
        onPressed: () {},
        child: const Text('Sign In'),
    ),
        // TODO: 8. Pasang TextButton Sign Up
        const SizedBox(height: 10),
        RichText(
        text: TextSpan(
        text: 'Belum punya akun? ',
        style: const TextStyle(fontSize: 16, color: Colors.deepPurple),
        children: [
          TextSpan(
            text: 'Daftar di sini.',
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline),
        recognizer: TapGestureRecognizer()..onTap = () {},
      ),
    ],
  ),
),

        ],
      ),
    ),
  ),
  );
  }
}