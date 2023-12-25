import 'package:fbla_sp/signup/signup3.dart';
import 'package:flutter/material.dart';
import 'signup1.dart';

void main() {
  runApp(const sign2());
}

class sign2 extends StatelessWidget {
  const sign2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 7, 6, 80),
                    Color.fromARGB(255, 19, 70, 165),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            const Positioned(
              top: 90,
              left: 20,
              child: Text(
                'Confirm your\nemail ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 200.0,
              bottom: 30,
              width: 370,
              child: SignUP2(),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUP2 extends StatelessWidget {
  SignUP2({Key? key}) : super(key: key);
  TextEditingController myControllerSignInCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(255, 249, 251, 252),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 10,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      width: 320,
      height: 700,
      child: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '2 out of 3',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 70,
            left: 20,
            child: Text(
              'We just sent a confirmation code to\nplaceholder@gmail.com',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17,
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 234, 239, 238),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(10),
                  width: 290,
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Confirmation code ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 189,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 234, 239, 238),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(10),
                  width: 290,
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    controller: myControllerSignInCon,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 35,
                      color: Color.fromARGB(255, 0, 0,
                          0), // Change the text color to your desired color
                    ),
                    decoration: const InputDecoration(
                      hintText: "***-***",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -5,
            left: 10,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.grey,
                size: 30,
              ),
              onPressed: () {
                // Handle back button press
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUP1()),
                );
              },
            ),
          ),
          Positioned(
            top: 310,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 290,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 185, 78, 78),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Sign3()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(290, 50),
                      foregroundColor: Colors.transparent,
                      backgroundColor:
                          Colors.transparent, // Transparent text color
                      elevation: 0, // No shadow
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 260,
            left: 30,
            child: RichText(
              text: const TextSpan(
                text: 'Didn\'t get the email? ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 228, 225, 225),
                  fontSize: 15,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Click here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
