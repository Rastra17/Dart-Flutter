import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar'),
      ),
      backgroundColor: const Color.fromARGB(255, 146, 45, 173),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 111, 177, 181),
                  ),
                ),
                const Text(
                  "Keeping track of wherever you go!",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                    color: Color.fromARGB(255, 77, 190, 198),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffaeaeae),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xffeeeeee),
                  ),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Color(0xffaeaeae),
                      size: 18,
                    ),
                    filled: true,
                    fillColor: const Color(0xff323a47),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffaeaeae),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xffeeeeee),
                  ),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color(0xffaeaeae),
                      size: 18,
                    ),
                    filled: true,
                    fillColor: const Color(0xff323a47),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Color(0xff32e0c4),
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff32e0c4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Color(0xff222831),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Don\'t have an account yet? ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 76, 193, 132),
                      fontSize: 14,
                    ),
                  ),
                  TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(
                      color: Color(0xff32e0c4),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
