import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prakerin/constants.dart';

class  HomeScreen StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
      padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 40), 
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.03),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
          )
        ),
        child: Wrap(
          children: <Widget>[
            Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <widget>[
                    Container(
                      alignment: Alignment.center,
                    height: 30, 
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF9C00).withOpacity(0.12),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      "assets\icons\running.svg", 
                      height: 12,
                      widht: 12,
                      ),
                    ),
                    SizedBox(widht: 5),
                    Text("Confirmed Cases",
                     maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      )
                    ]
                ),
              ),
              Row(children: <widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: kTextColor),
                      children: [
                        TextSpan(
                          text: "1,062 \n", 
                      style: Theme.of(context).textTheme.title.copyWith(
                        fontWeight: FontWeight.bold
                        ),
                        ),
                        TextSpan(
                          text: "People" , 
                          style: TextStyle(
                          fontSize: 12,
                          height: 2,
                          )
                          )
                      ]
                      ),
                    ),
                ),
                Expanded(
                  child: LineReportChart(),
                  )
                ],
              )
            ],
          ),
          )
          ],
        ),
      ),
      );
      
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,withOpacity(.03),
      elevation: 0,
      leading: IconButton(
      icon: SvgPicture.asset("assets\icons\menu.svg"), 
      onPressed: () {}
      ),
      actions: <Widget>[IconButton(icon: SvgPicture.asset("assets\icons\search.svg"),
       onPressed: () {}, 
       ),
       ],
      );
  }
}
