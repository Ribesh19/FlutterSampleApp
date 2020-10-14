import 'package:flutter/material.dart';
import 'package:sampleapp/ScreenBodies/HomepageBody.dart';
import '../constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: kGreyBackgroundColor.withOpacity(0.2)
        ),
        child: HomePageBody(),
      )
    );
  }

  AppBar buildAppBar() {
    return AppBar(
     title: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: <Widget>[
         Text('Cancel',
         style: kHeadingButtonStyleBlue),
         Column(
           crossAxisAlignment: CrossAxisAlignment.end,
           children: [
             RichText(
               text: TextSpan(
                   text: 'ID:', style: kHeadingtitleStyleBlack,
                   children: <TextSpan>[
                     TextSpan(text: ' joshan.jt@gmail.com', style: kHeadingContentStyleBlue
                     )
                   ]
               ),
             ),
             RichText(
               text: TextSpan(
                   text: 'Last synced:', style: kHeadingtitleStyleBlack,
                   children: <TextSpan>[
                     TextSpan(text: ' 10/14/2020 @ 09:40pm', style: kHeadingContentStyleBlue
                     )
                   ]
               ),
             ),
           ],
         )
       ],
     ),
    );
  }
}
