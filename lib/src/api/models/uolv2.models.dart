import 'package:json_annotation/json_annotation.dart';

part 'uolv2.models.g.dart';

enum UolState {
  @JsonValue("active")
  active,
  @JsonValue("notstarted")
  notstarted,
  @JsonValue("finished")
  finished;

  @override
  String toString() {
    switch (this) {
      case UolState.active:
        return "New";
      case UolState.notstarted:
        return "Read";
      case UolState.finished:
        return "Cleared";
    }
  }
}

enum UolSectionType {
  @JsonValue("uol")
  uol,
  @JsonValue("timeline")
  timeline,
  @JsonValue("task")
  task,
  @JsonValue("syllabus")
  syllabus,
  @JsonValue("statement")
  statement,
  @JsonValue("resource")
  resource,
  @JsonValue("objective")
  objective;

  @override
  String toString() {
    switch (this) {
      case UolSectionType.uol:
        return "uol";
      case UolSectionType.timeline:
        return "timeline";
      case UolSectionType.task:
        return "task";
      case UolSectionType.syllabus:
        return "syllabus";
      case UolSectionType.resource:
        return "resource";
      case UolSectionType.statement:
        return "statement";
      case UolSectionType.objective:
        return "objective";
    }
  }
}

/// Response from AppData endpoint
@JsonSerializable()
class UolV2AppData {
  /// Subject-ids list
  List<int> subjectFilter;
  List<UolState> stateFilter;
  DateTime lastChanged;
  int currentAcademicYearId;
  bool hasChosenPreviousAcademicYear;

  List<UolV2Uol> uols;
  List<UolV2Subject> subjects;
  List<UolV2AcademicYear> academicYears;
  UolV2Translations translations;
  UolV2Urls urls;
  UolV2AppData(
      this.currentAcademicYearId,
      this.hasChosenPreviousAcademicYear,
      this.lastChanged,
      this.stateFilter,
      this.subjectFilter,
      this.uols,
      this.academicYears,
      this.subjects,
      this.translations,
      this.urls);
  factory UolV2AppData.fromJson(Map<String, dynamic> json) =>
      _$UolV2AppDataFromJson(json);
  Map<String, dynamic> toJson() => _$UolV2AppDataToJson(this);
}

/// Response from GetUols endpoint
///
/// Very minor variation of [UolV2AppData]
@JsonSerializable()
class UolV2Uols {
  /// Subject-ids list
  List<int> subjectFilter;
  List<UolState> stateFilter;
  DateTime lastChanged;
  int currentAcademicYearId;
  bool hasChosenPreviousAcademicYear;

  List<UolV2Uol> uols;
  List<UolV2Subject> subjects;
  List<UolV2AcademicYear> academicYears;
  UolV2Uols(
    this.currentAcademicYearId,
    this.hasChosenPreviousAcademicYear,
    this.lastChanged,
    this.stateFilter,
    this.subjectFilter,
    this.uols,
    this.academicYears,
    this.subjects,
  );
  factory UolV2Uols.fromJson(Map<String, dynamic> json) =>
      _$UolV2UolsFromJson(json);
  Map<String, dynamic> toJson() => _$UolV2UolsToJson(this);
}

@JsonSerializable()
class UolV2Uol {
  int id;
  String title;
  UolState state;

  /// Subject-ids list
  List<int> subjects;
  UolV2Uol(this.id, this.state, this.subjects, this.title);
  factory UolV2Uol.fromJson(Map<String, dynamic> json) =>
      _$UolV2UolFromJson(json);
  Map<String, dynamic> toJson() => _$UolV2UolToJson(this);
}

@JsonSerializable()
class UolV2Subject {
  /// Specifies order in the filter section, not very important to respect when building your own UI
  int order;

  String name;

  /// SubjectID
  int id;
  UolV2Subject(this.id, this.name, this.order);
  factory UolV2Subject.fromJson(Map<String, dynamic> json) =>
      _$UolV2SubjectFromJson(json);
  Map<String, dynamic> toJson() => _$UolV2SubjectToJson(this);
}

@JsonSerializable()
class UolV2AcademicYear {
  int id;
  String title;
  bool selected, hasUols;
  UolV2AcademicYear(this.id, this.hasUols, this.selected, this.title);
  factory UolV2AcademicYear.fromJson(Map<String, dynamic> json) =>
      _$UolV2AcademicYearFromJson(json);
  Map<String, dynamic> toJson() => _$UolV2AcademicYearToJson(this);
}

@JsonSerializable()
class UolV2Translations {
  @JsonKey(name: "new")
  String wordNew;

  String unitsOfLearning,
      viewAssessments,
      hide,
      show,
      overdue,
      due,
      done,
      showAll,
      openDownload,
      close,
      pageCount,
      returnToList,
      prevItem,
      nextItem,
      noTitle,
      emptyCell,
      status,
      errorLoadingImage,
      noItemsToShow,
      download,
      noUnits,
      active,
      notStarted,
      finished,
      filterSubjects,
      filterTimeSpan,
      filterStatus,
      filterUnitListing,
      filterButton;
  UolV2Translations(
      this.unitsOfLearning,
      this.viewAssessments,
      this.hide,
      this.show,
      this.overdue,
      this.due,
      this.done,
      this.showAll,
      this.openDownload,
      this.close,
      this.pageCount,
      this.returnToList,
      this.prevItem,
      this.nextItem,
      this.noTitle,
      this.emptyCell,
      this.status,
      this.errorLoadingImage,
      this.noItemsToShow,
      this.download,
      this.noUnits,
      this.active,
      this.notStarted,
      this.finished,
      this.filterSubjects,
      this.filterTimeSpan,
      this.filterStatus,
      this.filterUnitListing,
      this.filterButton,
      this.wordNew);
  factory UolV2Translations.fromJson(Map<String, dynamic> json) =>
      _$UolV2TranslationsFromJson(json);
  Map<String, dynamic> toJson() => _$UolV2TranslationsToJson(this);
}

@JsonSerializable()
class UolV2Urls {
  Uri getUol,
      getUols,
      persistFilter,
      allObjectives,
      allTasks,
      allTimelineEntries;
  UolV2Urls(this.allObjectives, this.allTasks, this.allTimelineEntries,
      this.getUol, this.getUols, this.persistFilter);
  factory UolV2Urls.fromJson(Map<String, dynamic> json) =>
      _$UolV2UrlsFromJson(json);
  Map<String, dynamic> toJson() => _$UolV2UrlsToJson(this);
}

// Also TODO, sections needs to be cleared off to handle this
/*@JsonSerializable()
class UolV2SpecificUol {
  int id;
  String title;
  bool disableEdit, hasAssessments;

  /// Subject-ids list
  List<int> subjects;
  UolV2SpecificUol(this.id, this.subjects, this.title, this.disableEdit,
      this.hasAssessments);
  factory UolV2SpecificUol.fromJson(Map<String, dynamic> json) =>
      _$UolV2SpecificUolFromJson(json);
  Map<String, dynamic> toJson() => _$UolV2SpecificUolToJson(this);
}*/

// TODO, different objects for different types...? Weird, will have to figure this out somehow
// At the same time UoL is like the LEAST used feature I've ever seen...
/*@JsonSerializable()
class UolV2SpecificUolSection {
  UolSectionType type

  /// Subject-ids list
  List<int> subjects;
  UolV2SpecificUolSection(this.id, this.subjects, this.title, this.disableEdit,
      this.hasAssessments);
  factory UolV2SpecificUolSection.fromJson(Map<String, dynamic> json) =>
      _$UolV2SpecificUolSectionFromJson(json);
  Map<String, dynamic> toJson() => _$UolV2SpecificUolSectionToJson(this);
}
*/
