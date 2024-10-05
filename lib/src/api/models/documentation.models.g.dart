// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documentation.models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentationAppData _$DocumentationAppDataFromJson(
        Map<String, dynamic> json) =>
    DocumentationAppData(
      DocumentationAppDataTranslation.fromJson(
          json['translations'] as Map<String, dynamic>),
      json['isGuardian'] as bool,
      (json['loggedInUserIM2Id'] as num).toInt(),
      (json['tabs'] as List<dynamic>)
          .map((e) => $enumDecode(_$DocumentationTabEnumMap, e))
          .toList(),
      json['thirdSecuirtyInitData'],
      DocumentationAppDataUrls.fromJson(json['urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DocumentationAppDataToJson(
        DocumentationAppData instance) =>
    <String, dynamic>{
      'translations': instance.translations,
      'urls': instance.urls,
      'tabs': instance.tabs.map((e) => _$DocumentationTabEnumMap[e]!).toList(),
      'thirdSecuirtyInitData': instance.thirdSecuirtyInitData,
      'isGuardian': instance.isGuardian,
      'loggedInUserIM2Id': instance.loggedInUserIM2Id,
    };

const _$DocumentationTabEnumMap = {
  DocumentationTab.journal: 'journal',
  DocumentationTab.portfolio: 'portfolio',
  DocumentationTab.iup: 'iup',
  DocumentationTab.specialPlan: 'specialPlan',
  DocumentationTab.conference: 'conference',
};

DocumentationAppDataTranslation _$DocumentationAppDataTranslationFromJson(
        Map<String, dynamic> json) =>
    DocumentationAppDataTranslation(
      json['documentation'] as String,
      json['documentationTypeTabs'] as String,
      json['journal'] as String,
      json['journalNoResults'] as String,
      json['on'] as String,
      json['by'] as String,
      json['journalEntry'] as String,
      json['iup'] as String,
      json['term'] as String,
      json['version'] as String,
      json['current'] as String,
      json['status'] as String,
      json['inProgress'] as String,
      json['complete'] as String,
      json['iupNoResults'] as String,
      json['more'] as String,
      json['portfolio'] as String,
      json['portfolioNoResults'] as String,
      json['specialPlan'] as String,
      json['specialPlanNoResults'] as String,
      json['onGoing'] as String,
      json['finished'] as String,
      json['createdBy'] as String,
      json['lastEditedBy'] as String,
      json['finishedBy'] as String,
      json['attachments'] as String,
      json['file'] as String,
      json['download'] as String,
    );

Map<String, dynamic> _$DocumentationAppDataTranslationToJson(
        DocumentationAppDataTranslation instance) =>
    <String, dynamic>{
      'documentation': instance.documentation,
      'documentationTypeTabs': instance.documentationTypeTabs,
      'journal': instance.journal,
      'journalNoResults': instance.journalNoResults,
      'on': instance.on,
      'by': instance.by,
      'journalEntry': instance.journalEntry,
      'iup': instance.iup,
      'term': instance.term,
      'version': instance.version,
      'current': instance.current,
      'status': instance.status,
      'inProgress': instance.inProgress,
      'complete': instance.complete,
      'iupNoResults': instance.iupNoResults,
      'more': instance.more,
      'portfolio': instance.portfolio,
      'portfolioNoResults': instance.portfolioNoResults,
      'specialPlan': instance.specialPlan,
      'specialPlanNoResults': instance.specialPlanNoResults,
      'onGoing': instance.onGoing,
      'finished': instance.finished,
      'createdBy': instance.createdBy,
      'lastEditedBy': instance.lastEditedBy,
      'finishedBy': instance.finishedBy,
      'attachments': instance.attachments,
      'file': instance.file,
      'download': instance.download,
    };

DocumentationAppDataUrls _$DocumentationAppDataUrlsFromJson(
        Map<String, dynamic> json) =>
    DocumentationAppDataUrls(
      Uri.parse(json['getJournalList'] as String),
      Uri.parse(json['getPupilIUPFilter'] as String),
      Uri.parse(json['getPupilIUPData'] as String),
      Uri.parse(json['portfolioAppData'] as String),
      Uri.parse(json['getSpecialPlan'] as String),
      Uri.parse(json['getSpecialPlanVersion'] as String),
    );

Map<String, dynamic> _$DocumentationAppDataUrlsToJson(
        DocumentationAppDataUrls instance) =>
    <String, dynamic>{
      'getJournalList': instance.getJournalList.toString(),
      'getPupilIUPFilter': instance.getPupilIUPFilter.toString(),
      'getPupilIUPData': instance.getPupilIUPData.toString(),
      'portfolioAppData': instance.portfolioAppData.toString(),
      'getSpecialPlan': instance.getSpecialPlan.toString(),
      'getSpecialPlanVersion': instance.getSpecialPlanVersion.toString(),
    };
