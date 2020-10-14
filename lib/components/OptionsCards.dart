import 'package:flutter/material.dart';
import 'package:sampleapp/constants.dart';

class OptionCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildOptionCards(context,kteal, "General", "Country", "Language","Currency" ),
        buildOptionCards(context,kblue, "Profile", "Company details", "","" ),
        buildOptionCards(context,kyellow, "Subscription", "View, buy and renew", "","" ),
        buildOptionCards(context,kpink, "Vouchers, referral and share", "Earn Free days (up to 180 days fr...", "","" ),

      ],
    );
  }

  Container buildOptionCards(BuildContext context, Color Color, String Title, String Text1, String Text2, String Text3) {
    return Container(
          margin: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding / 2,
          ),
          height: 90,
          child: Stack(children: <Widget>[
            Container(
              height: 90, //136
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                //  color: kBlueColor,
                color: Color,
                boxShadow: [kDefaultShadow],
              ),
              child: Container(
                margin: EdgeInsets.only(top: 35),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
                child: SizedBox(
                  height: 35,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 12
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          // "\$58",
                          //assigned.date,
                          Title,
                          style: kOptionsHeadingStyleWhite,
                        ),
//                      Image.asset("assets/down_asset1.png"
//                          ,fit: BoxFit.contain,)
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      )
                      ],
                    ),
                  ),
                ),
                ),
            Positioned(
              left: 0,
              top: 35,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                      horizontal: 12
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.circle,
                        color: Color,
                        size: 8,
                      ),
                      SizedBox(width: 8,),
                      Text(
                        Text1,
                        style: kOptionsHeadingStyleBlack,
                      ),
//                      Image.asset("assets/down_asset1.png"
//                          ,fit: BoxFit.contain,)
                      Spacer(flex: 2,),
                      Text(
                        Text2,
                        style: kOptionsHeadingStyleBlack,
                      ),
                      Spacer(flex: 3,),
                      Text(
                        Text3,
                        style: kOptionsHeadingStyleBlack,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]
          )
      );
  }
}
