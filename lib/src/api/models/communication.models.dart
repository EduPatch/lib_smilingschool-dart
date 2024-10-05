import 'package:json_annotation/json_annotation.dart';

part 'communication.models.g.dart';

@JsonSerializable()
class CommunicationAppData {
  bool hasNewsAccess;
  dynamic thirdSecurityInitData;
  Map<int, String?> linkTypeFilters;
  ConsentViewConfig consentViewConfig;
  CommunicationAppDataTranslations translations;
  CommunicationAppDataUrls urls;

  CommunicationAppData(this.urls, this.translations, this.consentViewConfig,
      this.hasNewsAccess, this.thirdSecurityInitData, this.linkTypeFilters);
  factory CommunicationAppData.fromJson(Map<String, dynamic> json) =>
      _$CommunicationAppDataFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationAppDataToJson(this);
}

@JsonSerializable()
class CommunicationAppDataUrls {
  Uri getNewsList, getDocumentsList, getLinksList;

  CommunicationAppDataUrls(
      this.getNewsList, this.getDocumentsList, this.getLinksList);
  factory CommunicationAppDataUrls.fromJson(Map<String, dynamic> json) =>
      _$CommunicationAppDataUrlsFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationAppDataUrlsToJson(this);
}

@JsonSerializable()
class CommunicationAppDataTranslations {
  String communication,
      sort,
      filterSearch,
      filter,
      more,
      downloadAttachment,
      dateAdded,
      author,
      title,
      name,
      description,
      tags,
      types,
      url,
      copy,
      communicationTypeTabs,
      news,
      newsSearch,
      newsNoResults,
      newsErrorLoadingImage,
      newsItemImage,
      newsNoItemsToShow,
      by,
      on,
      documents,
      documentsNoItemsToShow,
      links,
      linksNoItemsToShow,
      consents,
      consentsPast;
  CommunicationAppDataTranslations(
      this.communication,
      this.sort,
      this.filterSearch,
      this.filter,
      this.more,
      this.downloadAttachment,
      this.dateAdded,
      this.author,
      this.title,
      this.name,
      this.description,
      this.tags,
      this.types,
      this.url,
      this.copy,
      this.communicationTypeTabs,
      this.news,
      this.newsSearch,
      this.newsNoResults,
      this.newsErrorLoadingImage,
      this.newsItemImage,
      this.newsNoItemsToShow,
      this.by,
      this.on,
      this.documents,
      this.documentsNoItemsToShow,
      this.links,
      this.linksNoItemsToShow,
      this.consents,
      this.consentsPast);
  factory CommunicationAppDataTranslations.fromJson(
          Map<String, dynamic> json) =>
      _$CommunicationAppDataTranslationsFromJson(json);
  Map<String, dynamic> toJson() =>
      _$CommunicationAppDataTranslationsToJson(this);
}

@JsonSerializable()
class ConsentViewConfig {
  bool hasConsentsAccess,
      hasConsentWithoutBankIdLicense,
      hasConsentWithBankIdLicense,
      isLoggedInWithBankId;
  int pupilIM2Id, parentIM2Id, countOfGuardians, establishmentId;
  String culture;

  ConsentViewConfigTranslations translations;
  ConsentViewConfigUrls urls;

  @JsonKey(toJson: _groupIdsToJson, fromJson: _groupIdsFromJson)
  List<int> groupIds;

  ConsentViewConfig(
      this.urls,
      this.translations,
      this.hasConsentWithBankIdLicense,
      this.hasConsentWithoutBankIdLicense,
      this.hasConsentsAccess,
      this.isLoggedInWithBankId,
      this.pupilIM2Id,
      this.parentIM2Id,
      this.countOfGuardians,
      this.establishmentId,
      this.culture,
      this.groupIds);

  // Custom implementation
  static String? _groupIdsToJson(List<int> val) =>
      val.isEmpty != true ? val.join(',') : null;
  // To List, oneline because couldn't bother make a whole function for this
  static List<int> _groupIdsFromJson(String? val) => val != null
      ? val.split(",").toList().map((i) => int.parse(i)).toList()
      : [];

  factory ConsentViewConfig.fromJson(Map<String, dynamic> json) =>
      _$ConsentViewConfigFromJson(json);
  Map<String, dynamic> toJson() => _$ConsentViewConfigToJson(this);
}

@JsonSerializable()
class ConsentViewConfigUrls {
  Uri getCurrentList,
      getDetails,
      createConsent,
      simpleBankIdSign,
      bankIdSign,
      bankIdCollect,
      grandIdSign,
      grandIdCollect,
      initializeBankIdSigning,
      getBankIdSignStatus,
      createResponseAfterBankIdSigning,
      initializeGrandIdSigning,
      getGrandIdSignStatus,
      createResponseAfterGrandIdSigning;

  ConsentViewConfigUrls(
      this.getCurrentList,
      this.getDetails,
      this.createConsent,
      this.simpleBankIdSign,
      this.bankIdSign,
      this.bankIdCollect,
      this.grandIdSign,
      this.grandIdCollect,
      this.initializeBankIdSigning,
      this.getBankIdSignStatus,
      this.createResponseAfterBankIdSigning,
      this.initializeGrandIdSigning,
      this.getGrandIdSignStatus,
      this.createResponseAfterGrandIdSigning);

  factory ConsentViewConfigUrls.fromJson(Map<String, dynamic> json) =>
      _$ConsentViewConfigUrlsFromJson(json);
  Map<String, dynamic> toJson() => _$ConsentViewConfigUrlsToJson(this);
}

@JsonSerializable()
class ConsentViewConfigTranslations {
  String consents,
      consentsCurrent,
      consentsPast,
      consentsNoActiveMsg,
      consentsNoExpiredMsg,
      consentsGiveRefuse,
      consentsIGiveConsent,
      consentsConfirmation,
      consentsConfirmationBankID,
      consentsSignWithBankIDBtn,
      consentsGiveBtn,
      consentsRefuseBtn,
      commonCancel,
      commonClose,
      commonStatus,
      commonYes,
      commonApproved,
      consentsGiven,
      consentsRefused,
      consentForm,
      consentsExpiredDate,
      consentsExpiryDate,
      consentsExpiredOn,
      consentsExpiresOn,
      consentsFailedToChangeConsent,
      consentsExpiredWithoutDecision,
      consentsAwaitingYourDecision,
      consentsAwaitingAnotherDecision,
      consentsRefuseConsent,
      consentsConfirmRefuseConsentDescription,
      refused,
      noDecision,
      consentsNoCurrentConsentsFound,
      consentsNoPastConsentsFound,
      commonEdit,
      commonActions,
      consentsProvideDecision,
      consentsProvideConsentDecision,
      approved,
      partialApproved,
      expired,
      consentsExpiredRequest,
      consentsNoConsentRegistered,
      consentsHalfRegistered,
      noSelectResultsThatMatchInput,
      communicationConsentsGiveWithBankID,
      communicationConsentsRefuseWithBankID,
      consentsBankIdSigningFailed,
      consentsBankIdSigningInstructions,
      consentsBankIdSigningComplete,
      commonCloseTabThankYou,
      commonCloseTabInstructions;

  @JsonKey(name: "new")
  String newWord;
  ConsentViewConfigTranslations(
      this.newWord,
      this.consents,
      this.consentsCurrent,
      this.consentsPast,
      this.consentsNoActiveMsg,
      this.consentsNoExpiredMsg,
      this.consentsGiveRefuse,
      this.consentsIGiveConsent,
      this.consentsConfirmation,
      this.consentsConfirmationBankID,
      this.consentsSignWithBankIDBtn,
      this.consentsGiveBtn,
      this.consentsRefuseBtn,
      this.commonCancel,
      this.commonClose,
      this.commonStatus,
      this.commonYes,
      this.commonApproved,
      this.consentsGiven,
      this.consentsRefused,
      this.consentForm,
      this.consentsExpiredDate,
      this.consentsExpiryDate,
      this.consentsExpiredOn,
      this.consentsExpiresOn,
      this.consentsFailedToChangeConsent,
      this.consentsExpiredWithoutDecision,
      this.consentsAwaitingYourDecision,
      this.consentsAwaitingAnotherDecision,
      this.consentsRefuseConsent,
      this.consentsConfirmRefuseConsentDescription,
      this.refused,
      this.noDecision,
      this.consentsNoCurrentConsentsFound,
      this.consentsNoPastConsentsFound,
      this.commonEdit,
      this.commonActions,
      this.consentsProvideDecision,
      this.consentsProvideConsentDecision,
      this.approved,
      this.partialApproved,
      this.expired,
      this.consentsExpiredRequest,
      this.consentsNoConsentRegistered,
      this.consentsHalfRegistered,
      this.noSelectResultsThatMatchInput,
      this.communicationConsentsGiveWithBankID,
      this.communicationConsentsRefuseWithBankID,
      this.consentsBankIdSigningFailed,
      this.consentsBankIdSigningInstructions,
      this.consentsBankIdSigningComplete,
      this.commonCloseTabThankYou,
      this.commonCloseTabInstructions);

  factory ConsentViewConfigTranslations.fromJson(Map<String, dynamic> json) =>
      _$ConsentViewConfigTranslationsFromJson(json);
  Map<String, dynamic> toJson() => _$ConsentViewConfigTranslationsToJson(this);
}

// News Items
@JsonSerializable()
class CommunicationNewsList {
  List<CommunicationNewsItem> items;

  CommunicationNewsList(this.items);
  factory CommunicationNewsList.fromJson(Map<String, dynamic> json) =>
      _$CommunicationNewsListFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationNewsListToJson(this);
}

@JsonSerializable()
class CommunicationNewsItem {
  int id;
  String title,
      content,
      publishedDate,
      publishedDateString,
      publishedBy,
      newsImageUrl,
      newsThumbnailImageUrl;
  List<dynamic>
      attachments; // No data in list on response, will update when data is available!
  CommunicationNewsItem(
      this.id,
      this.attachments,
      this.title,
      this.content,
      this.publishedDate,
      this.publishedDateString,
      this.publishedBy,
      this.newsImageUrl,
      this.newsThumbnailImageUrl);
  factory CommunicationNewsItem.fromJson(Map<String, dynamic> json) =>
      _$CommunicationNewsItemFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationNewsItemToJson(this);
}

// Links items

@JsonSerializable()
class CommunicationLinksList {
  int totalItemCount;
  List<CommunicationLinksItem> items;

  CommunicationLinksList(this.items, this.totalItemCount);
  factory CommunicationLinksList.fromJson(Map<String, dynamic> json) =>
      _$CommunicationLinksListFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationLinksListToJson(this);
}

@JsonSerializable()
class CommunicationLinksItem {
  int id;
  String name, publishedBy, description, publishedDateString;
  dynamic type;
  Uri url;
  DateTime publishedDate;

  CommunicationLinksItem(this.id, this.description, this.name, this.publishedBy,
      this.publishedDate, this.publishedDateString, this.type, this.url);
  factory CommunicationLinksItem.fromJson(Map<String, dynamic> json) =>
      _$CommunicationLinksItemFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationLinksItemToJson(this);
}

// Documents Items

@JsonSerializable()
class CommunicationDocumentsList {
  int totalItemCount;
  List<CommunicationDocumentsItem> items;

  CommunicationDocumentsList(this.items, this.totalItemCount);
  factory CommunicationDocumentsList.fromJson(Map<String, dynamic> json) =>
      _$CommunicationDocumentsListFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationDocumentsListToJson(this);
}

@JsonSerializable()
class CommunicationDocumentsItem {
  int id, fileSize;
  String title, type, publishedDateString, fileType;
  String? description;
  Uri fileUrl;

  CommunicationDocumentsItem(
      this.id,
      this.description,
      this.title,
      this.publishedDateString,
      this.type,
      this.fileSize,
      this.fileUrl,
      this.fileType);
  factory CommunicationDocumentsItem.fromJson(Map<String, dynamic> json) =>
      _$CommunicationDocumentsItemFromJson(json);
  Map<String, dynamic> toJson() => _$CommunicationDocumentsItemToJson(this);
}
