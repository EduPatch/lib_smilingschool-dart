import 'package:json_annotation/json_annotation.dart';

part 'documentation.models.g.dart';

@JsonSerializable()
class DocumentationAppData {
  final DocumentationAppDataTranslation translations;
  final DocumentationAppDataUrls urls;
  List<DocumentationTab> tabs;
  dynamic thirdSecuirtyInitData;
  bool isGuardian;
  int loggedInUserIM2Id;

  DocumentationAppData(this.translations, this.isGuardian,
      this.loggedInUserIM2Id, this.tabs, this.thirdSecuirtyInitData, this.urls);
  factory DocumentationAppData.fromJson(Map<String, dynamic> json) =>
      _$DocumentationAppDataFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentationAppDataToJson(this);
}

@JsonSerializable()
class DocumentationAppDataTranslation {
  String documentation,
      documentationTypeTabs,
      journal,
      journalNoResults,
      on,
      by,
      journalEntry,
      iup,
      term,
      version,
      current,
      status,
      inProgress,
      complete,
      iupNoResults,
      more,
      portfolio,
      portfolioNoResults,
      specialPlan,
      specialPlanNoResults,
      onGoing,
      finished,
      createdBy,
      lastEditedBy,
      finishedBy,
      attachments,
      file,
      download;
  DocumentationAppDataTranslation(
      this.documentation,
      this.documentationTypeTabs,
      this.journal,
      this.journalNoResults,
      this.on,
      this.by,
      this.journalEntry,
      this.iup,
      this.term,
      this.version,
      this.current,
      this.status,
      this.inProgress,
      this.complete,
      this.iupNoResults,
      this.more,
      this.portfolio,
      this.portfolioNoResults,
      this.specialPlan,
      this.specialPlanNoResults,
      this.onGoing,
      this.finished,
      this.createdBy,
      this.lastEditedBy,
      this.finishedBy,
      this.attachments,
      this.file,
      this.download);
  factory DocumentationAppDataTranslation.fromJson(Map<String, dynamic> json) =>
      _$DocumentationAppDataTranslationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$DocumentationAppDataTranslationToJson(this);
}

@JsonSerializable()
class DocumentationAppDataUrls {
  Uri getJournalList,
      getPupilIUPFilter,
      getPupilIUPData,
      portfolioAppData,
      getSpecialPlan,
      getSpecialPlanVersion;

  DocumentationAppDataUrls(
      this.getJournalList,
      this.getPupilIUPFilter,
      this.getPupilIUPData,
      this.portfolioAppData,
      this.getSpecialPlan,
      this.getSpecialPlanVersion);
  factory DocumentationAppDataUrls.fromJson(Map<String, dynamic> json) =>
      _$DocumentationAppDataUrlsFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentationAppDataUrlsToJson(this);
}

enum DocumentationTab { journal, portfolio, iup, specialPlan, conference }
