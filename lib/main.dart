import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false; // Tracks the visibility of the password

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const  Color(0xFFc8d9e1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Padding for the entire screen
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // The Container for the two buttons
              Container(
                padding: const EdgeInsets.all(20), // Padding inside the container
                decoration: BoxDecoration(
                  color: const Color(0xFFa2b8c8),// Background color of the container
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                        shape: const StadiumBorder(),
                        backgroundColor: const Color(0xFF2596BE),
                         // Sign In button color
                      ),
                      child: const Text('SIGN IN',
                      style: TextStyle(color: Colors.white),),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                        shape: const StadiumBorder(),
                        backgroundColor: const Color(0xFFa2b8c8) // Sign Up button color
                      ),
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Content outside the container
              const Text(
                'Welcome Back',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                'Login to continue',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  labelText: 'E Mail',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100, vertical: 15),
                  shape: const StadiumBorder(),
                  backgroundColor: const Color(0xFF2596BE), // Submit button color
                ),
                child: const Text('SUBMIT',
                style: TextStyle(color:Colors.white,),),
              ),
              const SizedBox(height: 30),
              const Text('or continue with'),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton.icon(
                    icon: Image.asset('./lib/search.png', width: 20),
                    label: const Text('Continue with Google',
                    style: TextStyle(color: Colors.black),),
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//             Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const LoginScreen()),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     shape: const StadiumBorder(),
//                     backgroundColor: Colors.blue, // Sign In button color
//                   ),
//                   child: const Text('SIGN IN'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const SignUpPage()),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     shape: const StadiumBorder(),
//                     backgroundColor: Colors.blue, // Sign Up button color
//                   ),
//                   child: const Text('SIGN UP', style: TextStyle(color: Colors.grey)),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               'Welcome Back',
//               style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 5),
//             const Text(
//               'Login to continue',
//               style: TextStyle(fontSize: 16, color: Colors.grey),
//             ),
//             const SizedBox(height: 30),
//             TextField(
//               decoration: InputDecoration(
//                 prefixIcon: const Icon(Icons.email),
//                 labelText: 'E Mail',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             TextField(
//               obscureText: !_isPasswordVisible,
//               decoration: InputDecoration(
//                 prefixIcon: const Icon(Icons.lock),
//                 labelText: 'Password',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 suffixIcon: IconButton(
//                   icon: Icon(
//                     _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       _isPasswordVisible = !_isPasswordVisible;
//                     });
//                   },
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                 padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
//                 shape: const StadiumBorder(),
//                 backgroundColor: Colors.blue, // Submit button color
//               ),
//               child: const Text('SUBMIT'),
//             ),
//             const SizedBox(height: 30),
//             const Text('or continue with'),
//             const SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 OutlinedButton.icon(
//                   icon: Image.asset('./lib/search.png', width: 20),
//                   label: const Text('Continue with Google'),
//                   onPressed: () {},
//                   style: OutlinedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isPasswordVisible = false; // Tracks the visibility of the password

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const  Color(0xFFc8d9e1),
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Padding for the entire screen
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container for the two buttons
            Container(
              padding: const EdgeInsets.all(20), // Padding inside the container
              decoration: BoxDecoration(
                color: const Color(0xFFa2b8c8), // Background color of the container
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      shape: const StadiumBorder(),
                      backgroundColor: const Color(0xFFa2b8c8), // Sign In button color
                    ),
                    child: const Text('SIGN IN',
                    style: TextStyle(color: Colors.white),),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.blue, // Sign Up button color
                    ),
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Content outside the container
            const Text(
              'Welcome To Eduvate',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Join our community for educational excellence',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                labelText: 'E Mail',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 100, vertical: 15),
                shape: const StadiumBorder(),
                backgroundColor: Colors.blue, // Submit button color
              ),
              child: const Text('SUBMIT'),
            ),
            const SizedBox(height: 30),
            const Text('or continue with'),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  icon: Image.asset('./lib/search.png', width: 20),
                  label: const Text('Continue with Google'),
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
