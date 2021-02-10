import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 40),
        widht: double.infinity,
        decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(0.03)
          borderRadius: BorderRadius.only()
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ), // BorderRadius.only()
      ), // BoxDecoration
        child: Wrap(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ), // BoxDecoration
              child: Column(
                children: <Widget>
                Row(
                  children: <Widget[
                    Container(
                    alignment: Alignment.center,
                    height: 30,
                    widht 30,
                    decoration: BoxDecoration(
                    color: Color(0xFFFF9C00).withOpacity(0.12),
                    shape: BoxShape.circle,

                  ]
                )
                Container(
                  height: 30,
                  widht 30,
                  decoration: BoxD  ecoration(
                    color: Color(0xFFFF9C00).withOpacity(0.12),
                    shape: BoxShape.circle,
                  ), // BoxDecoration
                )
              )
            )
          ]
        )
      ), // Container
    ); // Scaffold
  )

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor.withOpacity(.03)
      elevation: 0,
      leading: IconButton(
          icon: SvgPicture.asset("assets\icons\menu.svg");
          onPressed: () {},
        ), //IconButton
        action <widget>[
          IconButton(
    )
  }
        leading: IconButton(
          icon: SvgPicture.asset("assets\icons\menu.svg");
          onPressed: () {},
        ), //IconButton
        action <widget>[
          IconButton(
            icon: SvgPicture.asset("assets\icons\search.svg");
            onPressed: () {},
          )
        ]
      ),
    );
  }
}