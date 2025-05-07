// file to test new endpoints implemented in json models

// You can use this file as reference for using this module but doing this is not recommended :D

import 'dart:io';
//import 'package:intl/intl.dart';
//import 'package:intl/intl.dart';
import 'package:lib_smilingschool/lib_smilingschool.dart';
//import 'package:lib_smilingschool/src/api/bindings/calendar.dart';
//import 'package:lib_smilingschool/src/api/bindings/attendance.dart';
//import 'package:lib_smilingschool/src/api/bindings/assessment.dart';
//import 'package:lib_smilingschool/src/api/models/notifications.models.dart';

void main() async {
  stdout.write("User >");
  var user = stdin.readLineSync() ?? "";
  stdout.write("Pass >");
  var pass = stdin.readLineSync() ?? "";
  // DEBUG
  //print('$user | $pass');
  InfoMentor client;
  client = await UserPass().loginCredentials(user, pass);
  var isAuthenticated = await client.authentication?.isAuthenticated();
  print(isAuthenticated ?? false);

  /*print((await client.timetable?.getTimetableList(
          -120,
          DateTime.fromMillisecondsSinceEpoch(1727107913000),
          DateTime.fromMillisecondsSinceEpoch(1727539913000)))
      ?.first
      .toJson());*/

  /*print((await client.notifications
          ?.updateNotificationState([48572524], NotificationState.unread))
      ?.toJson());

  print((await client.notifications?.getNotifications())
      ?.notifications
      ?.first
      .toJson());
  print((await client.notifications?.appData())?.translations?.toJson());

  print((await client.account?.preferencesAppData())?.privacyUrl);*/
  /*print(
      (await client.assessment?.appData(AssessmentAppDataTab.summaryAssessment))
          ?.academicYearItems
          .first);*/
  /*print((await client.assessment
          ?.getSummaryAssessmentsLgr22([325357, 325360, 325363]))
      ?.summaryAssessmentMarks
      .first
      .subject);*/
  /*print((await client.assessment?.getNavigationItems(331883))
      ?.selfAssessmentItemsList
      .first
      .title);*/
  /*print((await client.assessment?.selfAssessmentGetItems(7406587, 331883))
      ?.title);*/
  /*print((await client.assessment?.taskGetItems(1003, 331883))?.contextType);*/
  /*print((await client.assessment?.taskGetDialog(5569396))?.text);*/
  /*print(
      (await client.assessment?.selfAssessmentGetDialog(7039067, 2074, 327286))
          ?.text);*/
  // Should be working, did some tests but cannot guarantee it won't die on us in production
  // <SpamixOfficial>
  //print((await client.attendance?.setSecondaryStatus(10695, false))?.success);
  /*print((await client.attendance?.registerAttendance(
          false, AttendanceDay.today, AttendanceAbsenceType.day))
      ?.comment);*/
  /*print((await client.attendance?.getLeaveRequestList())?.first);*/
  /*print((await client.calendar?.appData(CalendarAppDataTab.whole_week))
      ?.todayDate);*/
  /*print((await client.calendar?.getIcalSubscriptionUri()));*/
  /*print((await client.calendar?.getEntries(
          DateFormat("yyyy/MM/dd").parse("2024/12/23"), DateTime.now()))
      ?.first
      .description);*/
  /*print((await client.classlist?.appData())?.fileUploadConfig.allowedMimeTypes);*/
  /*print((await client.classlist?.getPupil("953878"))?.details.name);*/
  /*print((await client.classlist
          ?.getStaff("660383", establishmentId: "0000012345"))
      ?.details
      .pictureUrl);*/
  /*print((await client.resource?.downloadThumbnail(15178104, 1000, 1000)));*/
  /*print((await client.task?.appData())?.allowedMimeTypes);*/
  /*print((await client.task?.getTasks(327286))?.items.first.assignedOn);*/
  /*print((await client.timeregistration?.appData())?.timeRegistrationDates);*/
  /*print((await client.timeregistration?.getTimeRegistration(DateTime(2025, 5, 5)))?.days.first.date);*/
}
