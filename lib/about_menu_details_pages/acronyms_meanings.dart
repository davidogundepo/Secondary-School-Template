import 'package:flutter/material.dart';

String schoolName = "ABC College";
String acronymTitle = "Acronym Meanings";
String acronym = "The following acronyms are used in the apps and their meanings are detailed.";
String abc = "ABC - $schoolName";
String sss = "SSS - Senior Secondary School";
String jss = "JSS - Junior Secondary School";
String sp = "SP - School Prefcets";
String sd = "SD - Science Department";
String ad = "AD - Art Department";
String ssd = "SSD - Social Science Department";

String imgAsset = "assets/images/acronym.jpg";

class AcronymsMeanings extends StatefulWidget {
  AcronymsMeanings({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AcronymsMeaningsState createState() => _AcronymsMeaningsState();
}

class _AcronymsMeaningsState extends State<AcronymsMeanings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 31, 41, 1),
      appBar: AppBar(
        title: Text(
          acronymTitle,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 10,
        backgroundColor: Color.fromRGBO(52, 18, 30, 1),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Card(
                margin: EdgeInsets.all(20),
                child: Image.asset(imgAsset),
              ),
            ),
            Container(
              child: Card(
                margin: EdgeInsets.all(20),
                color: Color.fromRGBO(52, 18, 30, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Card(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 15, bottom: 15, left: 30, right: 30),
                            child: Text(
                              acronymTitle,
                              style: TextStyle(
                                  fontSize: 25,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromRGBO(58, 31, 41, 1)
                                      .withAlpha(220),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 30),
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: acronym + '\n\n\n',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: abc + '\n\n',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: sss + '\n\n',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: jss + '\n\n',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: sp + '\n\n',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: sd + '\n\n',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: ad + '\n\n',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: ssd,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
