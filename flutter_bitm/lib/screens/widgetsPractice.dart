import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bitm/screens/first_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidgetPractice extends StatefulWidget {
  const WidgetPractice({super.key});

  @override
  State<WidgetPractice> createState() => _WidgetPracticeState();
}

class _WidgetPracticeState extends State<WidgetPractice> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Difference Widgets'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/5087/5087579.png',
              height: .3.sh,
            ),
            TextField(
              controller: emailController,
              readOnly: false,
              autofocus: true,
              cursorColor: Colors.blue,
              keyboardType: TextInputType.emailAddress,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  label: Text('Email'),
                  hintText: 'Enter Your Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            Container(
              height: 10,
            ),
            TextField(
              obscureText: true,
              controller: passwordController,
              readOnly: false,
              autofocus: true,
              cursorColor: Colors.blue,
              keyboardType: TextInputType.emailAddress,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.security),
                  label: Text('Password'),
                  hintText: 'Enter Your Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            Container(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: RichText(
                text: TextSpan(
                    text: "Not a member yet? ",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    // style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => FirstPage()));
                            },
                          text: 'Sign Up !',
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue)),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
