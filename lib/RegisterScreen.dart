import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginscreendesgin/LoginScreen.dart';

import 'draw.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Colors.blue, Colors.purple])),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    const SizedBox(
                      width: 60,
                    ),
                    const Text(
                      'SIGNUP',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                RotatedBox(
                  //angle: 180 * (22 / 7) / 180,
                  quarterTurns: 2,
                  child: Container(child: buildTopcontainer(context)),
                ),
                Container(height: 220, child: buildBottomcontainer()),
                const SizedBox(
                  height: 17,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTopcontainer(context) => ClipPath(
        //RoundedDiagonalPathClipper()
        clipper: roundedDiagonalPathClipper(),
        child: Container(
          height: 400,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
            color: Colors.white,
          ),
          child: RotatedBox(
            // angle: 180 * (22 / 7) / 180,
            quarterTurns: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                      Icons.edit,
                      color: Colors.grey[800],
                    )),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Phone',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                      Icons.phone_android,
                      color: Colors.grey[800],
                    )),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.grey[800],
                    )),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey[800],
                      ),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Colors.grey[900],
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: <Color>[Colors.blue, Colors.purple])),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
  Widget buildBottomcontainer() => ClipPath(
        //RoundedDiagonalPathClipper()
        clipper: roundedDiagonalPathClipper(),
        child: Container(
          height: 400,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Already have an Account?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[800]),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: <Color>[Colors.blue, Colors.purple])),
                    child: const Text(
                      'SIGNUP',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
