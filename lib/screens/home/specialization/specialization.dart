import 'package:flutter/material.dart';
import 'package:flutter_app_resume/config/palette.dart';
import 'package:flutter_app_resume/config/platform.dart';
import 'package:flutter_app_resume/model/specialization.dart';
import 'package:flutter_app_resume/screens/home/specialization/stack_experience.dart';

class Specialization extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PlatFormCheck dimension = PlatFormCheck.of(context);

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
                              style: Theme.of(context).textTheme.bodyText1.copyWith(
                                  color: Color(0xff498CF4).withAlpha(200),
                                  letterSpacing: Palette.SecondaryTitleSpacing,
                                  fontWeight: FontWeight.normal,),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "SPECIALIZING IN",
                              style: Theme.of(context).textTheme.headline5.copyWith(
                                  color: Color(0xff498CF4)),
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
                                    dimension.type == PlatformType.MOBILE
                                        ? 11 / 6
                                        : 11 / 2,
                                primary: false,
                                crossAxisSpacing:
                                    dimension.type == PlatformType.MOBILE
                                        ? 6
                                        : 16,
                                mainAxisSpacing:
                                    dimension.type == PlatformType.MOBILE
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
                                            width: dimension.type ==
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
                                                  style: Theme.of(context).textTheme.subtitle1.copyWith(
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
                                                  style: Theme.of(context).textTheme.bodyText2.copyWith(
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
                                                  style: Theme.of(context).textTheme.bodyText2.copyWith(
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
                StackExperience(platform: dimension)
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
