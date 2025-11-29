
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

class tasks_List extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          CalendarTimeline(
            initialDate: DateTime(2020, 4, 20),
            firstDate: DateTime(2019, 1, 15),
            lastDate: DateTime(2020, 11, 20),
            onDateSelected: (date) => print(date),
            leftMargin: 20,
            monthColor: Colors.black,
            dayColor: Colors.black,
            activeDayColor: Theme.of(context).primaryColor,
            activeBackgroundDayColor: Colors.white,
         //   dayColor: Color(0xFF333A47),
            selectableDayPredicate: (date) => date.day != 23,
            locale: 'en_ISO',
          )
        ],
      ),
    );
  }

}