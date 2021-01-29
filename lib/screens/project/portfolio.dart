import 'package:flutter/material.dart';
import 'package:flutter_app_resume/config/platform.dart';

import 'package:flutter_app_resume/model/RecentWork.dart';

class BodyWidget extends StatefulWidget {
  final RecentWork recentWork;
  final PlatFormCheck platFormCheck;
  BodyWidget({this.recentWork,this.platFormCheck});
  

  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> with TickerProviderStateMixin {
  bool isHovered = false;

  hoverActivation(hoverState) {
    setState(() {
      isHovered = hoverState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        hoverActivation(true);
      },
      onExit: (event) {
        hoverActivation(false);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        color: Colors.black.withOpacity(isHovered ? 0.5 : 0),
        child: InkWell(
          onTap: () {
           // js.context.callMethod('open', [widget.recentWork.projectLink]);
          },
          child: Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: widget.recentWork.backColor,
                borderRadius: BorderRadius.circular(8)),
            alignment: Alignment.topCenter,
            child: OverflowBox(
              child: Container(
                padding: EdgeInsets.all(widget.platFormCheck.horizontalMargin/2),
                child: new LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            widget.recentWork.companyIcon,
                            height: 8,
                            width: 8,
                          ),
                          Text(
                            widget.recentWork.companyName,
                            style: TextStyle(
                                color: widget.recentWork.titleColor, fontSize: 6),
                          )
                        ],
                      ),
                      SizedBox(
                        height: widget.platFormCheck.screenSize.height * 0.018,
                      ),
                      Text(
                        widget.recentWork.projTitle,
                        style: Theme.of(context).textTheme.headline6.copyWith(
                            color: widget.recentWork.titleColor,
                            letterSpacing: 0.5,)
                      ),
                      SizedBox(
                        height:  widget.platFormCheck.screenSize.height * 0.007,
                      ),
                      Text(
                        widget.recentWork.projDesc,
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                            color: widget.recentWork.desColor,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height:  widget.platFormCheck.screenSize.height * 0.005,
                      ),
                      Flexible(
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                    image: AssetImage(widget.recentWork.projectImage),
                                    fit: BoxFit.cover)),
                            height: double.infinity,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
