
import 'package:flutter/material.dart';


class SelectionPageUnity extends StatefulWidget {
  const SelectionPageUnity({Key? key}) : super(key: key);

  @override
  State<SelectionPageUnity> createState() => _SelectionPageUnityState();
}

class _SelectionPageUnityState extends State<SelectionPageUnity> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4283F1),
        leading: BackButton(
          onPressed: () => Navigator.pushReplacementNamed(context, "/selectionPage")
        ),
        elevation: 0,

      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(" Unity Testleri ",
                  style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 25)
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),

                child: Form(
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[

                        Padding(
                            padding: EdgeInsets.fromLTRB(20, 20.0, 20.0, 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                SizedBox(

                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül1 : Giriş ve Kurulumu ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff34a652),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),


                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 2: Programlamaya Giriş",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff34a652),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 3: Değerlerin Kullanılması",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff34a652),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 4: Sayısal Operasyonlar",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff34a652),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 5: Class:Namespace Yapıları",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff34a652),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 6: Mantıksal Operasyonlar",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff34a652),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 7: Unity Temel Ekranları",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff34a652),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 8: 2 Boyutlu Asetlerle Çalışma",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff34a652),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 9: Karakter Animasyonu",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff34a652),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 10: Uygulama Sıralaması",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff34a652),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 20)),
                                SizedBox(
                                  width: double.infinity,
                                  child: new ElevatedButton(
                                    child: Text(
                                      "Modül 11: Karakter Animasyonu 2",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Raleway',
                                        fontSize: 22.0,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff34a652),
                                        minimumSize: Size(75,100)
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ],
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


}