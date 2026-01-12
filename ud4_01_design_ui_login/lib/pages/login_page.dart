import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 230, 46, 21),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset('assets/images/path_logo.png'),
                Text(
                  'Beautiful, Private Sharing',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 239, 121, 110),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                ),

                Text(
                  'Already have a Path account?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 246, 149, 133),
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 246, 149, 133),
                      ),
                    ),
                  ),
                ),

                Text(
                  'By using Path, you agree to Path\'s',
                  style: TextStyle(
                    color: Color.fromARGB(255, 246, 149, 133),
                    fontSize: 15,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Terms of Use',
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      'and',
                      style: TextStyle(
                        color: Color.fromARGB(255, 246, 149, 133),
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
