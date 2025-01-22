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
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        _build_background(),
      ],
    );
  }

  Widget _build_background() {
    return Center(
      child: Stack(
        children: [
          Container(
            color: Colors.pink,
            width: MediaQuery.of(context).size.width,
            height: 400,
          ),
          Positioned(
            top: 100,
            left: MediaQuery.of(context).size.width / 2 -
                100, // Center the logo horizontally
            child: Image.asset(
              'images/image_login_screen.png', // Replace with your image path
              width: 200, // Adjust the size of the logo
              height: 200,
            ),
          ),
        ],
      ),
    );
  }

//   Widget _buildBody() {
//     return Center(
//       child: Container(
//         constraints: BoxConstraints(
//           maxWidth: 500,
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("Login"),
//                 _buildEmailTextField(),
//                 _buildPassTextField(),
//                 _buildLoginButton(),
//                 _buildSignupButton(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildLoginButton() {
//     return Container(
//       margin: EdgeInsets.all(10),
//       width: 300,
//       height: 50,
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.indigo,
//           foregroundColor: Colors.white,
//         ),
//         onPressed: () {
//           if (_emailCtrl.text == "admin" && _passCtrl.text == "admin") {
//             Navigator.of(context).push(
//               MaterialPageRoute(
//                 builder: (context) => MainScreen(),
//               ),
//             );
//           } else {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text("Login Failed"),
//               ),
//             );
//           }
// },
//         child: Text("Login"),
//       ),
//     );
//   }

//   Widget _buildSignupButton() {
//     return TextButton(
//       style: TextButton.styleFrom(
//         foregroundColor: Colors.indigo,
//       ),
//       onPressed: () {},
//       child: Text("Sign up for a new account"),
//     );
//   }

//   final _emailCtrl = TextEditingController();

//   Widget _buildEmailTextField() {
//     return TextField(
//       controller: _emailCtrl,
//       style: TextStyle(color: Colors.black),
//       decoration: InputDecoration(
//         hintText: "Enter Email",
//         hintStyle: TextStyle(color: Colors.grey),
//         icon: Icon(Icons.email),
//       ),
//       keyboardType: TextInputType.emailAddress,
//       autocorrect: false,
//     );
//   }

//   final _passCtrl = TextEditingController();
//   bool _hidePassword = true;

//   Widget _buildPassTextField() {
//     return TextField(
//       controller: _passCtrl,
//       style: TextStyle(color: Colors.black),
//       decoration: InputDecoration(
//         hintText: "Enter Password",
//         hintStyle: TextStyle(color: Colors.grey),
//         icon: Icon(Icons.key),
//         suffixIcon: IconButton(
//           onPressed: () {
//             setState(() {
//               _hidePassword = !_hidePassword;
//             });
//           },
//           icon: Icon(
//             _hidePassword ? Icons.visibility : Icons.visibility_off,
//           ),
//         ),
//       ),
//       obscureText: _hidePassword,
//     );
//   }
}
