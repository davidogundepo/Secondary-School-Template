import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_lfutter_project/bloc_navigation_bloc/navigation_bloc.dart';
import 'package:second_lfutter_project/second_main.dart';


class MyThirdPage extends StatefulWidget with NavigationStates{
  MyThirdPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyThirdPageState createState() => _MyThirdPageState();
}

class _MyThirdPageState extends State<MyThirdPage> {

  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.pinkAccent,
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("Third Page",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Image.network(
                      "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Click button to move to SubPage Three'),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Go to SubPage Three'),
              onPressed: () {
                navigateToSubPage(context);
              },
            )
          ],
        ),
      ),
        ),
    );
  }

}
