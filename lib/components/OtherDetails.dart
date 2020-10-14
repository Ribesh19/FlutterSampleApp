import 'package:flutter/material.dart';
import 'package:sampleapp/components/OtherDetailCards.dart';

class OtherDetails extends StatelessWidget {
  var TitleList = ["Contact Us", "Terms and Conditions", ""];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20
      ),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) =>
            OtherDetailCards(itemIndex: index, Titlename: TitleList[index]),
      ),
    );
  }
}
