import 'package:flutter/material.dart';
import 'package:flutter_app_resume/config/palette.dart';
import 'package:flutter_app_resume/model/Subject.dart';


class Qualification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      child: Wrap(
        children: [
          Card(
            margin: EdgeInsets.all(0),
            color: Color(0xffFAF9FB),
            child: Container(
              margin: EdgeInsets.symmetric(
                  vertical: screenSize.height * 0.05, horizontal: 8),
              width: double.infinity,
              child: Wrap(
                children: [
                  Column(
                    children: [
                      Text(
                        "QUALIFICATION",
                        style: TextStyle(
                            color: Color(0xff498CF4).withAlpha(200),
                            letterSpacing: Palette.SecondaryTitleSpacing,
                            fontWeight: FontWeight.normal,
                            fontSize: Palette.SecondaryTitleSize),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "AWESOME JOURNEY",
                        style: TextStyle(
                            color: Color(0xff498CF4),
                            fontSize: Palette.PrimaryTitleSize,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.04,
                      ),
                      Container(
                          alignment: Alignment.topCenter,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Education(
                                  title: "Education",
                                  subjects: recentSubs,
                                  isExp: false),
                              Education(
                                title: "Experience",
                                subjects: recentExps,
                                isExp: true,
                              )
                            ],
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Education extends StatelessWidget {
  final title;
  final isExp;
  final List<Subject> subjects;

  const Education({Key key, this.title, this.subjects, this.isExp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleView(title: title, isExp: isExp),
          SizedBox(
            height: 16,
          ),
          Container(
            child: Wrap(
              direction: Axis.vertical,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomeLeadingView(),
                    SizedBox(
                      width: 4,
                    ),
                    EducationItem(sub: subjects[0])
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomeLeadingView(),
                    SizedBox(
                      width: 5,
                    ),
                    EducationItem(sub: subjects[1])
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomeLeadingView(),
                    SizedBox(
                      width: 5,
                    ),
                    EducationItem(sub: subjects[2])
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TitleView extends StatelessWidget {
  final bool isExp;

  const TitleView({Key key, this.isExp, @required this.title})
      : super(key: key);

  final title;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isExp ? Icon(Icons.file_present) : Icon(Icons.cast_for_education),
        Container(
          margin: EdgeInsets.only(left: 8),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              letterSpacing: 1.5,
              color: Color(0xff394562),
            ),
          ),
        )
      ],
    );
  }
}

class EducationItem extends StatelessWidget {
  final Subject sub;

  const EducationItem({Key key, this.sub}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            sub.course,
            style: TextStyle(
                color: Color(0xff394562),
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            sub.faculty,
            style: TextStyle(
                color: Color(0xff394562).withOpacity(0.7),
                fontSize: 8,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.date_range,
                size: 10,
                color: Color(0xff498CF4),
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                sub.year,
                style: TextStyle(color: Color(0xff498CF4), fontSize: 8),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CustomeLeadingView extends StatelessWidget {
  const CustomeLeadingView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff498CF4), width: 1),
                      borderRadius: BorderRadius.circular(12)),
                ),
                Container(
                  width: 4,
                  height: 4,
                  decoration: BoxDecoration(
                      color: Color(0xff498CF4),
                      borderRadius: BorderRadius.circular(4)),
                ),
              ],
            ),
            Container(
              height: 40,
              width: 1,
              color: Color(0xff498CF4),
            )
          ]),
        ],
      ),
    );
  }
}
