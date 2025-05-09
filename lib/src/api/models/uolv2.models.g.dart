// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uolv2.models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UolV2AppData _$UolV2AppDataFromJson(Map<String, dynamic> json) => UolV2AppData(
      (json['currentAcademicYearId'] as num).toInt(),
      json['hasChosenPreviousAcademicYear'] as bool,
      DateTime.parse(json['lastChanged'] as String),
      (json['stateFilter'] as List<dynamic>)
          .map((e) => $enumDecode(_$UolStateEnumMap, e))
          .toList(),
      (json['subjectFilter'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      (json['uols'] as List<dynamic>)
          .map((e) => UolV2Uol.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['academicYears'] as List<dynamic>)
          .map((e) => UolV2AcademicYear.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['subjects'] as List<dynamic>)
          .map((e) => UolV2Subject.fromJson(e as Map<String, dynamic>))
          .toList(),
      UolV2Translations.fromJson(json['translations'] as Map<String, dynamic>),
      UolV2Urls.fromJson(json['urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UolV2AppDataToJson(UolV2AppData instance) =>
    <String, dynamic>{
      'subjectFilter': instance.subjectFilter,
      'stateFilter':
          instance.stateFilter.map((e) => _$UolStateEnumMap[e]!).toList(),
      'lastChanged': instance.lastChanged.toIso8601String(),
      'currentAcademicYearId': instance.currentAcademicYearId,
      'hasChosenPreviousAcademicYear': instance.hasChosenPreviousAcademicYear,
      'uols': instance.uols,
      'subjects': instance.subjects,
      'academicYears': instance.academicYears,
      'translations': instance.translations,
      'urls': instance.urls,
    };

const _$UolStateEnumMap = {
  UolState.active: 'active',
  UolState.notstarted: 'notstarted',
  UolState.finished: 'finished',
};

UolV2Uols _$UolV2UolsFromJson(Map<String, dynamic> json) => UolV2Uols(
      (json['currentAcademicYearId'] as num).toInt(),
      json['hasChosenPreviousAcademicYear'] as bool,
      DateTime.parse(json['lastChanged'] as String),
      (json['stateFilter'] as List<dynamic>)
          .map((e) => $enumDecode(_$UolStateEnumMap, e))
          .toList(),
      (json['subjectFilter'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      (json['uols'] as List<dynamic>)
          .map((e) => UolV2Uol.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['academicYears'] as List<dynamic>)
          .map((e) => UolV2AcademicYear.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['subjects'] as List<dynamic>)
          .map((e) => UolV2Subject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UolV2UolsToJson(UolV2Uols instance) => <String, dynamic>{
      'subjectFilter': instance.subjectFilter,
      'stateFilter':
          instance.stateFilter.map((e) => _$UolStateEnumMap[e]!).toList(),
      'lastChanged': instance.lastChanged.toIso8601String(),
      'currentAcademicYearId': instance.currentAcademicYearId,
      'hasChosenPreviousAcademicYear': instance.hasChosenPreviousAcademicYear,
      'uols': instance.uols,
      'subjects': instance.subjects,
      'academicYears': instance.academicYears,
    };

UolV2Uol _$UolV2UolFromJson(Map<String, dynamic> json) => UolV2Uol(
      (json['id'] as num).toInt(),
      $enumDecode(_$UolStateEnumMap, json['state']),
      (json['subjects'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      json['title'] as String,
    );

Map<String, dynamic> _$UolV2UolToJson(UolV2Uol instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'state': _$UolStateEnumMap[instance.state]!,
      'subjects': instance.subjects,
    };

UolV2Subject _$UolV2SubjectFromJson(Map<String, dynamic> json) => UolV2Subject(
      (json['id'] as num).toInt(),
      json['name'] as String,
      (json['order'] as num).toInt(),
    );

Map<String, dynamic> _$UolV2SubjectToJson(UolV2Subject instance) =>
    <String, dynamic>{
      'order': instance.order,
      'name': instance.name,
      'id': instance.id,
    };

UolV2AcademicYear _$UolV2AcademicYearFromJson(Map<String, dynamic> json) =>
    UolV2AcademicYear(
      (json['id'] as num).toInt(),
      json['hasUols'] as bool,
      json['selected'] as bool,
      json['title'] as String,
    );

Map<String, dynamic> _$UolV2AcademicYearToJson(UolV2AcademicYear instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'selected': instance.selected,
      'hasUols': instance.hasUols,
    };

UolV2Translations _$UolV2TranslationsFromJson(Map<String, dynamic> json) =>
    UolV2Translations(
      json['unitsOfLearning'] as String,
      json['viewAssessments'] as String,
      json['hide'] as String,
      json['show'] as String,
      json['overdue'] as String,
      json['due'] as String,
      json['done'] as String,
      json['showAll'] as String,
      json['openDownload'] as String,
      json['close'] as String,
      json['pageCount'] as String,
      json['returnToList'] as String,
      json['prevItem'] as String,
      json['nextItem'] as String,
      json['noTitle'] as String,
      json['emptyCell'] as String,
      json['status'] as String,
      json['errorLoadingImage'] as String,
      json['noItemsToShow'] as String,
      json['download'] as String,
      json['noUnits'] as String,
      json['active'] as String,
      json['notStarted'] as String,
      json['finished'] as String,
      json['filterSubjects'] as String,
      json['filterTimeSpan'] as String,
      json['filterStatus'] as String,
      json['filterUnitListing'] as String,
      json['filterButton'] as String,
      json['new'] as String,
    );

Map<String, dynamic> _$UolV2TranslationsToJson(UolV2Translations instance) =>
    <String, dynamic>{
      'new': instance.wordNew,
      'unitsOfLearning': instance.unitsOfLearning,
      'viewAssessments': instance.viewAssessments,
      'hide': instance.hide,
      'show': instance.show,
      'overdue': instance.overdue,
      'due': instance.due,
      'done': instance.done,
      'showAll': instance.showAll,
      'openDownload': instance.openDownload,
      'close': instance.close,
      'pageCount': instance.pageCount,
      'returnToList': instance.returnToList,
      'prevItem': instance.prevItem,
      'nextItem': instance.nextItem,
      'noTitle': instance.noTitle,
      'emptyCell': instance.emptyCell,
      'status': instance.status,
      'errorLoadingImage': instance.errorLoadingImage,
      'noItemsToShow': instance.noItemsToShow,
      'download': instance.download,
      'noUnits': instance.noUnits,
      'active': instance.active,
      'notStarted': instance.notStarted,
      'finished': instance.finished,
      'filterSubjects': instance.filterSubjects,
      'filterTimeSpan': instance.filterTimeSpan,
      'filterStatus': instance.filterStatus,
      'filterUnitListing': instance.filterUnitListing,
      'filterButton': instance.filterButton,
    };

UolV2Urls _$UolV2UrlsFromJson(Map<String, dynamic> json) => UolV2Urls(
      Uri.parse(json['allObjectives'] as String),
      Uri.parse(json['allTasks'] as String),
      Uri.parse(json['allTimelineEntries'] as String),
      Uri.parse(json['getUol'] as String),
      Uri.parse(json['getUols'] as String),
      Uri.parse(json['persistFilter'] as String),
    );

Map<String, dynamic> _$UolV2UrlsToJson(UolV2Urls instance) => <String, dynamic>{
      'getUol': instance.getUol.toString(),
      'getUols': instance.getUols.toString(),
      'persistFilter': instance.persistFilter.toString(),
      'allObjectives': instance.allObjectives.toString(),
      'allTasks': instance.allTasks.toString(),
      'allTimelineEntries': instance.allTimelineEntries.toString(),
    };
