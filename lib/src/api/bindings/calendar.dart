import 'package:lib_smilingschool/src/api/models/calendar.models.dart';
import 'package:lib_smilingschool/src/api_base.dart';

class Calendar extends BaseAPI {
  Calendar({required super.client});

  Future<CalendarAppData> appData(CalendarAppDataTab tab,
      {int? since, int? selectedWeek, int? selectedYear}) async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/calendarv2/calendarv2/appData",
        queryParameters: {
          "selectedWeek": selectedWeek,
          "selectedYear": selectedWeek,
          "codename": "calendarv2",
          "action": tab.toString(),
          "tab": tab.toString(),
          "_": since
        });
    return Future.value(CalendarAppData.fromJson(rs?.data));
  }
}

enum CalendarAppDataTab {
  whole_week,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday
}
