import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pahlevikun.github.io/common/config/app_config.dart';
import 'package:pahlevikun.github.io/common/config/screen_util.dart';
import 'package:pahlevikun.github.io/common/widget/page_title.dart';
import 'package:pahlevikun.github.io/data/resume/resume_data.dart';
import 'package:pahlevikun.github.io/presentation/base_page.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class AwardsSection extends StatefulWidget {
  AwardsSection(GlobalKey key) : super(key: key);

  @override
  _AwardsSectionState createState() => _AwardsSectionState();
}

class _AwardsSectionState extends State<AwardsSection> {
  final _data = ResumeData.getData().awards;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      color: Colors.white,
      child: Padding(
        padding: SizeConfig.PAGE_CONTENT_PADDING,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            PageTitle("Certificates, Awards & Honors"),
            Timeline.builder(
              itemBuilder: timelineItemBuilder,
              itemCount: ResumeData.getData().experience.length,
              position: TimelinePosition.Left,
              shrinkWrap: true,
            )
          ],
        ),
      ),
    );
  }

  TimelineModel timelineItemBuilder(BuildContext context, int position) {
    final data = _data[position];
    return TimelineModel(
        Padding(
          padding: const EdgeInsets.only(
              top: SizeConfig.LARGE_SIZE,
              left: SizeConfig.MEDIUM_SIZE,
              right: SizeConfig.MEDIUM_SIZE),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                data.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.BODY_3_FONT_SIZE,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.SMALL_SIZE),
                child: Text(
                  data.year,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.BODY_1_FONT_SIZE,
                  ),
                ),
              ),
              Text(
                data.institution,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.BODY_1_FONT_SIZE,
                ),
              ),
              Visibility(
                visible: data.description.isNotEmpty,
                child: const SizedBox(
                  height: SizeConfig.LARGE_SIZE,
                ),
              ),
              Text(
                data.description,
                textAlign: TextAlign.justify,
              ),
              Padding(
                padding: const EdgeInsets.only(top: SizeConfig.SMALL_SIZE),
                child: Divider(
                  color: AppConfig.secondaryColor,
                ),
              )
            ],
          ),
        ),
        position: position % 2 == 0
            ? TimelineItemPosition.left
            : TimelineItemPosition.right,
        isFirst: position == 0,
        isLast: position == _data.length,
        iconBackground: AppConfig.secondaryColor,
        icon: Icon(
          FontAwesomeIcons.briefcase,
          color: Colors.white,
        ));
  }
}
