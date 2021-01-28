import 'package:flutter/material.dart';
import 'package:flutter_app_resume/config/palette.dart';
import 'package:flutter_app_resume/config/platform.dart';
import 'package:flutter_app_resume/model/specialization.dart';
import 'package:flutter_app_resume/screens/home/specialization/stack_experience.dart';

class Specialization extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PlatFormCheck platFormCheck = PlatFormCheck.of(context);
    Dimension dimension = platFormCheck.dimension;

    return Wrap(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: dimension.verticalMargin),
          child: Wrap(
            children: [
              Stack(children: [
                Card(
                  margin:
                      EdgeInsets.only(top: 0, bottom: 40, left: 0, right: 0),
                  color: Color(0xffFAF9FB),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: dimension.verticalMargin,
                        horizontal: dimension.horizontalMargin),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Text(
                              "WHAT I DO",
                              style: TextStyle(
                                  color: Color(0xff498CF4).withAlpha(200),
                                  letterSpacing: Palette.SecondaryTitleSpacing,
                                  fontWeight: FontWeight.normal,
                                  fontSize: dimension.Title8),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "SPECIALIZING IN",
                              style: TextStyle(
                                  color: Color(0xff498CF4),
                                  fontSize: dimension.Title5,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: dimension.space1,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: GridView.count(
                                // Create a grid with 2 columns. If you change the scrollDirection to
                                // horizontal, this produces 2 rows.
                                physics: ScrollPhysics(),
                                crossAxisCount: 2,
                                scrollDirection: Axis.vertical,
                                childAspectRatio:
                                    platFormCheck.type == PlatformType.MOBILE
                                        ? 11 / 6
                                        : 11 / 2,
                                primary: false,
                                crossAxisSpacing:
                                    platFormCheck.type == PlatformType.MOBILE
                                        ? 6
                                        : 16,
                                mainAxisSpacing:
                                    platFormCheck.type == PlatformType.MOBILE
                                        ? 6
                                        : 16,
                                shrinkWrap: true,
                                // Generate 100 widgets that display their index in the List.
                                children: List.generate(4, (index) {
                                  return Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(colors: [
                                                specializations[index]
                                                    .startColor,
                                                specializations[index].endCOlor
                                              ]),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      specializations[index]
                                                          .icon)),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      dimension.itemRadius)),
                                            ),
                                            constraints: BoxConstraints(
                                                maxHeight:
                                                    dimension.itemSize.height,
                                                maxWidth:
                                                    dimension.itemSize.width)),
                                        SizedBox(
                                            width: platFormCheck.type ==
                                                    PlatformType.MOBILE
                                                ? 8
                                                : 30),
                                        Flexible(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  specializations[index].title,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontSize: dimension.Title7,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 1.2,
                                                    color: Palette
                                                        .specialTitleColor,
                                                  ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Text(
                                                  specializations[index]
                                                      .detail1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontSize: dimension.Title9,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color:
                                                        Palette.specialdColor,
                                                  ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Text(
                                                  specializations[index].dtail2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontSize: dimension.Title9,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color:
                                                        Palette.specialdColor,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                StackExperience(platform: platFormCheck)
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
