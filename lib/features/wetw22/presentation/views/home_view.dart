import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/config/utils/app_media_query.dart';
import 'package:wtew22/config/utils/app_strings.dart';
import 'package:wtew22/config/utils/app_values.dart';
import 'package:wtew22/features/wetw22/domain/entities/activity.dart';
import 'package:wtew22/features/wetw22/domain/entities/day.dart';
import 'package:wtew22/features/wetw22/domain/entities/note.dart';
import 'package:wtew22/features/wetw22/presentation/widgets/day_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  final List<Day> days = const [
    Day(
      id: "1",
      name: "Day 1",
      notes: [
        Note(
          id: "1",
          title: "Note 1",
          description: "Content 1",
        )
      ],
      activities: [
        Activity(
          id: "1",
          order: 1,
          instructor: "Tarek",
          activityType: ActivityType.session,
          place: "K1 - Electrical Building",
          note: Note(
            id: "1",
            title: "Note 1",
            description: "Description 1",
          ),
          title: "Session 1",
          description: "About",
          dayDate: "25 September",
          startDate: "9:30",
          endDate: "10:00",
        ),
        Activity(
          id: "1",
          order: 2,
          instructor: "Tarek",
          activityType: ActivityType.session,
          place: "K1 - Electrical Building",
          note: Note(
            id: "1",
            title: "Note 1",
            description: "Description 1",
          ),
          title: "Session 1",
          description: "About",
          dayDate: "25 September",
          startDate: "9:30",
          endDate: "10:00",
        ),
        Activity(
          id: "1",
          order: 3,
          instructor: "Tarek",
          activityType: ActivityType.session,
          place: "K1 - Electrical Building",
          note: Note(
            id: "1",
            title: "Note 1",
            description: "Description 1",
          ),
          title: "Session 1",
          description: "About",
          dayDate: "25 September",
          startDate: "9:30",
          endDate: "10:00",
        ),
        Activity(
          id: "1",
          order: 4,
          instructor: "Tarek",
          activityType: ActivityType.session,
          place: "K1 - Electrical Building",
          note: Note(
            id: "1",
            title: "Note 1",
            description: "Description 1",
          ),
          title: "Session 1",
          description: "About",
          dayDate: "25 September",
          startDate: "9:30",
          endDate: "10:00",
        ),
      ],
      date: "10-10-2022",
    ),
    Day(
      id: "1",
      name: "Day 2",
      notes: [
        Note(
          id: "1",
          title: "Note 2",
          description: "Content 2",
        )
      ],
      activities: [
        Activity(
          id: "1",
          order: 1,
          instructor: "Tarek",
          activityType: ActivityType.session,
          place: "K1 - Electrical Building",
          note: Note(
            id: "1",
            title: "Note 1",
            description: "Description 1",
          ),
          title: "Session 2",
          description: "About",
          dayDate: "25 September",
          startDate: "9:30",
          endDate: "10:00",
        ),
        Activity(
          id: "1",
          order: 2,
          instructor: "Tarek",
          activityType: ActivityType.session,
          place: "K1 - Electrical Building",
          note: Note(
            id: "1",
            title: "Note 1",
            description: "Description 1",
          ),
          title: "Session 2",
          description: "About",
          dayDate: "25 September",
          startDate: "9:30",
          endDate: "10:00",
        ),
        Activity(
          id: "1",
          order: 3,
          instructor: "Tarek",
          activityType: ActivityType.session,
          place: "K1 - Electrical Building",
          note: Note(
            id: "1",
            title: "Note 1",
            description: "Description 1",
          ),
          title: "Session 2",
          description: "About",
          dayDate: "25 September",
          startDate: "9:30",
          endDate: "10:00",
        ),
        Activity(
          id: "1",
          order: 4,
          instructor: "Tarek",
          activityType: ActivityType.session,
          place: "K1 - Electrical Building",
          note: Note(
            id: "1",
            title: "Note 1",
            description: "Description 1",
          ),
          title: "Session 2",
          description: "About",
          dayDate: "25 September",
          startDate: "9:30",
          endDate: "10:00",
        ),
      ],
      date: "10-10-2022",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accentColor,
      appBar: AppBar(
        backgroundColor: AppColors.accentColor,
        title: const Text(
          AppStrings.welcomeMessage,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: days.length,
              itemBuilder: (context, index) {
                return DayCard(
                  day: days[index],
                  length: days.length,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TimelineTile extends StatelessWidget {
  const TimelineTile({
    Key? key,
    required this.activity,
  }) : super(key: key);

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(
                    context.width * 0.02,
                  ),
                  child: Text(
                    activity.place,
                    style: TextStyle(
                      fontSize: context.height * 0.02,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(
                    context.width * 0.02,
                  ),
                  child: Text(
                    activity.dayDate,
                    style: TextStyle(
                      fontSize: context.height * 0.015,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(
                context.width * AppPadding.headerPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: context.height * 0.1,
                    width: context.width * 0.5,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.primaryColor,
                          blurRadius: 5,
                          spreadRadius: 0.5,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: context.width * AppPadding.headerPadding,
                          ),
                          child: Text(
                            activity.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  context.height * AppPadding.headerPadding,
                            ),
                          ),
                        ),
                        SizedBox(height: context.height * 0.002),
                        Container(
                          padding: EdgeInsets.only(
                            left: context.width * 0.03,
                          ),
                          child: Text(
                            activity.instructor,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: context.height * 0.015,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: context.height * 0.1,
                    width: context.width * 0.2,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.primaryColor,
                          blurRadius: 5,
                          spreadRadius: 0.5,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          activity.startDate,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: context.height * 0.017,
                          ),
                        ),
                        SizedBox(height: context.height * 0.002),
                        Text(
                          activity.endDate,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: context.height * 0.017,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
