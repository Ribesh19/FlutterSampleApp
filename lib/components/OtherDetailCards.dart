import 'package:flutter/material.dart';
import 'package:sampleapp/constants.dart';

class OtherDetailCards extends StatelessWidget {
  const OtherDetailCards({
    Key key,
    this.itemIndex,
    this.Titlename
  }) : super(key: key);
  final int itemIndex;
  final String Titlename;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 60,
            margin: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding / 4,
            ),
            child: Container(
              decoration: BoxDecoration(
                //  color: kBlueColor,
                color: Colors.white,
                boxShadow: [kDefaultShadow],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12
                    ),
                    child: Text(
                      // "\$58",
                      //assigned.date,
                      Titlename,
                      style: kOptionsHeadingStyleBlack,
                    ),
                  ),
//                      Image.asset("assets/down_asset1.png"
//                          ,fit: BoxFit.contain,)
                  Icon(
                    Icons.arrow_right,
                    color: Colors.orange,
                    size: 38,
                  )
                ],
              ),
            )),
      ],
    );
  }
}
