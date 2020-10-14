import 'package:flutter/material.dart';
import 'package:sampleapp/components/OptionsCards.dart';
import 'package:sampleapp/components/OtherDetails.dart';
import 'package:sampleapp/constants.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            OptionCards(),
            //SizedBox(height:190),
            OtherDetails(),
          ],
        ),
      ),
    );
  }
}
