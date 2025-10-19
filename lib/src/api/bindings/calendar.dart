import 'package:intl/intl.dart';
import 'package:lib_smilingschool/src/api/models/calendar.models.dart';
import 'package:lib_smilingschool/src/api_base.dart';

/// API Bindings for the Calendar endpoints
class Calendar extends BaseAPI {
  Calendar({required super.client});

  /// Get the calendar AppData, used by the infomentor hub app for translations, default values, etc.
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

  /// Get the Ical Subscription URL.
  ///
  /// The URL uses the webcal protocol (webcal://)
  Future<Uri> getIcalSubscriptionUri() async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/calendarv2/calendarv2/geticalsubscriptionuri");
    var url = rs?.data.toString().replaceAll(RegExp(r'"'), '');
    return Future.value(Uri.tryParse(url ?? "https://example.com"));
  }

  /// Get all calendar entries from a specific time period.
  ///
  /// Start and Ending dates are obligatory!
  Future<List<CalendarEntry>> getEntries(
      DateTime startDate, DateTime endDate) async {
    String startDateString, endDateString;
    // Don't use any predefined methods like yMd() here because locals can differ between international and swedish
    startDateString = DateFormat('yyyy/MM/dd').format(startDate);
    endDateString = DateFormat('yyyy/MM/dd').format(endDate);
    var rs = await super.client?.post(
        "https://hub.infomentor.se/calendarv2/calendarv2/getentries",
        data: {"startDate": startDateString, "endDate": endDateString});

    return (rs?.data as List<dynamic>)
        .map((val) => CalendarEntry.fromJson(val))
        .toList();
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
