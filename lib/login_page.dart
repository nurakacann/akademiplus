import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email, password;
  final formkey = GlobalKey<FormState>();
  final firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 30)),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17)),


                child: Image.asset("assets/logo.png" , height: 80),



              ),

              Padding(padding: EdgeInsets.only(top: 10)),
              Text("Akademi+" ,style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
              Padding(padding: EdgeInsets.only(left: 25),
                child: Image.asset("assets/image.png" , height: 320, )
                ,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 0),
                child: Form(
                  key: formkey,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(50), topRight: Radius.circular(50)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 30, right: 25, left: 25),
                      child: Column(
                        children: [
                          Text("GİRİŞ YAP",style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff4283F1),
                        fontWeight: FontWeight.bold,
                      ),),
                          Padding(padding: EdgeInsets.only(top: 30)),

                          emailTextField(),
                          Padding(padding: EdgeInsets.only(top: 15)),

                          passwordTextField(),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          signInButton(),
                          Padding(padding: EdgeInsets.only(top: 25)),

                        ],
                      ),

                    ),

                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }




  TextFormField emailTextField() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "E-mail kısmı boş bırakılmaz";
        } else {}
      },
      onSaved: (value) {
        email = value!;
      },
      style: TextStyle(color: Colors.black),

      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffd0f3d6),
        hintText: 'E-mail',
        enabledBorder: OutlineInputBorder(
          borderSide:
          BorderSide(width: 3, color: Color(0xffd0f3d6)), //<-- SEE HERE
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }

  TextFormField passwordTextField() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "Lütfen şifrenizi giriniz";
        } else {}
      },
      onSaved: (value) {
        password = value!;
      },
      obscureText: true,
      style: TextStyle(color: Colors.black),

      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffd0f3d6),
        hintText: 'Şifre',
        enabledBorder: OutlineInputBorder(
          borderSide:
          BorderSide(width: 3, color: Color(0xffd0f3d6)),
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),

    );
  }



  Center signInButton() {
    return Center(
      child: TextButton(
        onPressed: signIn,
        child: Container(
          height: 50,
          width: 150,
          margin: EdgeInsets.symmetric(horizontal: 60),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xff34A652)),
          child: Center(
            child: customText("Giriş", Color(0xffffffff)),
          ),
        ),
      ),
    );
  }

  void signIn() async {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
      try {
        final userResult = await firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password);
        Navigator.pushReplacementNamed(context, "/selectionPage");
        print(userResult.user!.email);
      } catch (e) {
        print(e.toString());
      }
    } else {}
  }

  Container topImageContainer(double height, String topImage) {
    return Container(
      height: height * .25,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(topImage),
        ),
      ),
    );
  }

  Widget customSizedBox() => SizedBox(
    height: 20,
  );

  Widget customText(String text, Color color) => Text(
    text,
    style: TextStyle(color: color),
  );

  InputDecoration customInputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
    );
  }
}
