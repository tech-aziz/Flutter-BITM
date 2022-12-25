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
  // GlobalKey<FormState> formKey = new GlobalKey();
  // GlobalKey<FormState> ourKey = GlobalKey();
  final _userKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_rounded),
        actions: [Icon(Icons.more_vert)],
        centerTitle: true,
        elevation: 0,
        title: Text('Widgets'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: _userKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/5087/5087579.png',
                  height: .3.sh,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter email';
                    }
                  },
                  controller: emailController,
                  readOnly: false,
                  autofocus: true,
                  cursorColor: Colors.blue,
                  keyboardType: TextInputType.emailAddress,
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      decorationThickness: 0,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
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
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter password';
                    }
                  },
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          if (_userKey.currentState!.validate()) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => FirstPage()));
                          } else {
                            return;
                          }
                        },
                        child: Text('Submit')),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: RichText(
                        text: TextSpan(
                            text: "Not a member yet? ",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                            // style: DefaultTextStyle.of(context).style,
                            children: [
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FirstPage()));
                                    },
                                  text: 'Sign Up !',
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue)),
                            ]),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
