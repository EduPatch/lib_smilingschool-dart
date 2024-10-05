// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'communication.models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunicationAppData _$CommunicationAppDataFromJson(
        Map<String, dynamic> json) =>
    CommunicationAppData(
      CommunicationAppDataUrls.fromJson(json['urls'] as Map<String, dynamic>),
      CommunicationAppDataTranslations.fromJson(
          json['translations'] as Map<String, dynamic>),
      ConsentViewConfig.fromJson(
          json['consentViewConfig'] as Map<String, dynamic>),
      json['hasNewsAccess'] as bool,
      json['thirdSecurityInitData'],
      (json['linkTypeFilters'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as String?),
      ),
    );

Map<String, dynamic> _$CommunicationAppDataToJson(
        CommunicationAppData instance) =>
    <String, dynamic>{
      'hasNewsAccess': instance.hasNewsAccess,
      'thirdSecurityInitData': instance.thirdSecurityInitData,
      'linkTypeFilters':
          instance.linkTypeFilters.map((k, e) => MapEntry(k.toString(), e)),
      'consentViewConfig': instance.consentViewConfig,
      'translations': instance.translations,
      'urls': instance.urls,
    };

CommunicationAppDataUrls _$CommunicationAppDataUrlsFromJson(
        Map<String, dynamic> json) =>
    CommunicationAppDataUrls(
      Uri.parse(json['getNewsList'] as String),
      Uri.parse(json['getDocumentsList'] as String),
      Uri.parse(json['getLinksList'] as String),
    );

Map<String, dynamic> _$CommunicationAppDataUrlsToJson(
        CommunicationAppDataUrls instance) =>
    <String, dynamic>{
      'getNewsList': instance.getNewsList.toString(),
      'getDocumentsList': instance.getDocumentsList.toString(),
      'getLinksList': instance.getLinksList.toString(),
    };

CommunicationAppDataTranslations _$CommunicationAppDataTranslationsFromJson(
        Map<String, dynamic> json) =>
    CommunicationAppDataTranslations(
      json['communication'] as String,
      json['sort'] as String,
      json['filterSearch'] as String,
      json['filter'] as String,
      json['more'] as String,
      json['downloadAttachment'] as String,
      json['dateAdded'] as String,
      json['author'] as String,
      json['title'] as String,
      json['name'] as String,
      json['description'] as String,
      json['tags'] as String,
      json['types'] as String,
      json['url'] as String,
      json['copy'] as String,
      json['communicationTypeTabs'] as String,
      json['news'] as String,
      json['newsSearch'] as String,
      json['newsNoResults'] as String,
      json['newsErrorLoadingImage'] as String,
      json['newsItemImage'] as String,
      json['newsNoItemsToShow'] as String,
      json['by'] as String,
      json['on'] as String,
      json['documents'] as String,
      json['documentsNoItemsToShow'] as String,
      json['links'] as String,
      json['linksNoItemsToShow'] as String,
      json['consents'] as String,
      json['consentsPast'] as String,
    );

Map<String, dynamic> _$CommunicationAppDataTranslationsToJson(
        CommunicationAppDataTranslations instance) =>
    <String, dynamic>{
      'communication': instance.communication,
      'sort': instance.sort,
      'filterSearch': instance.filterSearch,
      'filter': instance.filter,
      'more': instance.more,
      'downloadAttachment': instance.downloadAttachment,
      'dateAdded': instance.dateAdded,
      'author': instance.author,
      'title': instance.title,
      'name': instance.name,
      'description': instance.description,
      'tags': instance.tags,
      'types': instance.types,
      'url': instance.url,
      'copy': instance.copy,
      'communicationTypeTabs': instance.communicationTypeTabs,
      'news': instance.news,
      'newsSearch': instance.newsSearch,
      'newsNoResults': instance.newsNoResults,
      'newsErrorLoadingImage': instance.newsErrorLoadingImage,
      'newsItemImage': instance.newsItemImage,
      'newsNoItemsToShow': instance.newsNoItemsToShow,
      'by': instance.by,
      'on': instance.on,
      'documents': instance.documents,
      'documentsNoItemsToShow': instance.documentsNoItemsToShow,
      'links': instance.links,
      'linksNoItemsToShow': instance.linksNoItemsToShow,
      'consents': instance.consents,
      'consentsPast': instance.consentsPast,
    };

ConsentViewConfig _$ConsentViewConfigFromJson(Map<String, dynamic> json) =>
    ConsentViewConfig(
      ConsentViewConfigUrls.fromJson(json['urls'] as Map<String, dynamic>),
      ConsentViewConfigTranslations.fromJson(
          json['translations'] as Map<String, dynamic>),
      json['hasConsentWithBankIdLicense'] as bool,
      json['hasConsentWithoutBankIdLicense'] as bool,
      json['hasConsentsAccess'] as bool,
      json['isLoggedInWithBankId'] as bool,
      (json['pupilIM2Id'] as num).toInt(),
      (json['parentIM2Id'] as num).toInt(),
      (json['countOfGuardians'] as num).toInt(),
      (json['establishmentId'] as num).toInt(),
      json['culture'] as String,
      ConsentViewConfig._groupIdsFromJson(json['groupIds'] as String?),
    );

Map<String, dynamic> _$ConsentViewConfigToJson(ConsentViewConfig instance) =>
    <String, dynamic>{
      'hasConsentsAccess': instance.hasConsentsAccess,
      'hasConsentWithoutBankIdLicense': instance.hasConsentWithoutBankIdLicense,
      'hasConsentWithBankIdLicense': instance.hasConsentWithBankIdLicense,
      'isLoggedInWithBankId': instance.isLoggedInWithBankId,
      'pupilIM2Id': instance.pupilIM2Id,
      'parentIM2Id': instance.parentIM2Id,
      'countOfGuardians': instance.countOfGuardians,
      'establishmentId': instance.establishmentId,
      'culture': instance.culture,
      'translations': instance.translations,
      'urls': instance.urls,
      'groupIds': ConsentViewConfig._groupIdsToJson(instance.groupIds),
    };

ConsentViewConfigUrls _$ConsentViewConfigUrlsFromJson(
        Map<String, dynamic> json) =>
    ConsentViewConfigUrls(
      Uri.parse(json['getCurrentList'] as String),
      Uri.parse(json['getDetails'] as String),
      Uri.parse(json['createConsent'] as String),
      Uri.parse(json['simpleBankIdSign'] as String),
      Uri.parse(json['bankIdSign'] as String),
      Uri.parse(json['bankIdCollect'] as String),
      Uri.parse(json['grandIdSign'] as String),
      Uri.parse(json['grandIdCollect'] as String),
      Uri.parse(json['initializeBankIdSigning'] as String),
      Uri.parse(json['getBankIdSignStatus'] as String),
      Uri.parse(json['createResponseAfterBankIdSigning'] as String),
      Uri.parse(json['initializeGrandIdSigning'] as String),
      Uri.parse(json['getGrandIdSignStatus'] as String),
      Uri.parse(json['createResponseAfterGrandIdSigning'] as String),
    );

Map<String, dynamic> _$ConsentViewConfigUrlsToJson(
        ConsentViewConfigUrls instance) =>
    <String, dynamic>{
      'getCurrentList': instance.getCurrentList.toString(),
      'getDetails': instance.getDetails.toString(),
      'createConsent': instance.createConsent.toString(),
      'simpleBankIdSign': instance.simpleBankIdSign.toString(),
      'bankIdSign': instance.bankIdSign.toString(),
      'bankIdCollect': instance.bankIdCollect.toString(),
      'grandIdSign': instance.grandIdSign.toString(),
      'grandIdCollect': instance.grandIdCollect.toString(),
      'initializeBankIdSigning': instance.initializeBankIdSigning.toString(),
      'getBankIdSignStatus': instance.getBankIdSignStatus.toString(),
      'createResponseAfterBankIdSigning':
          instance.createResponseAfterBankIdSigning.toString(),
      'initializeGrandIdSigning': instance.initializeGrandIdSigning.toString(),
      'getGrandIdSignStatus': instance.getGrandIdSignStatus.toString(),
      'createResponseAfterGrandIdSigning':
          instance.createResponseAfterGrandIdSigning.toString(),
    };

ConsentViewConfigTranslations _$ConsentViewConfigTranslationsFromJson(
        Map<String, dynamic> json) =>
    ConsentViewConfigTranslations(
      json['new'] as String,
      json['consents'] as String,
      json['consentsCurrent'] as String,
      json['consentsPast'] as String,
      json['consentsNoActiveMsg'] as String,
      json['consentsNoExpiredMsg'] as String,
      json['consentsGiveRefuse'] as String,
      json['consentsIGiveConsent'] as String,
      json['consentsConfirmation'] as String,
      json['consentsConfirmationBankID'] as String,
      json['consentsSignWithBankIDBtn'] as String,
      json['consentsGiveBtn'] as String,
      json['consentsRefuseBtn'] as String,
      json['commonCancel'] as String,
      json['commonClose'] as String,
      json['commonStatus'] as String,
      json['commonYes'] as String,
      json['commonApproved'] as String,
      json['consentsGiven'] as String,
      json['consentsRefused'] as String,
      json['consentForm'] as String,
      json['consentsExpiredDate'] as String,
      json['consentsExpiryDate'] as String,
      json['consentsExpiredOn'] as String,
      json['consentsExpiresOn'] as String,
      json['consentsFailedToChangeConsent'] as String,
      json['consentsExpiredWithoutDecision'] as String,
      json['consentsAwaitingYourDecision'] as String,
      json['consentsAwaitingAnotherDecision'] as String,
      json['consentsRefuseConsent'] as String,
      json['consentsConfirmRefuseConsentDescription'] as String,
      json['refused'] as String,
      json['noDecision'] as String,
      json['consentsNoCurrentConsentsFound'] as String,
      json['consentsNoPastConsentsFound'] as String,
      json['commonEdit'] as String,
      json['commonActions'] as String,
      json['consentsProvideDecision'] as String,
      json['consentsProvideConsentDecision'] as String,
      json['approved'] as String,
      json['partialApproved'] as String,
      json['expired'] as String,
      json['consentsExpiredRequest'] as String,
      json['consentsNoConsentRegistered'] as String,
      json['consentsHalfRegistered'] as String,
      json['noSelectResultsThatMatchInput'] as String,
      json['communicationConsentsGiveWithBankID'] as String,
      json['communicationConsentsRefuseWithBankID'] as String,
      json['consentsBankIdSigningFailed'] as String,
      json['consentsBankIdSigningInstructions'] as String,
      json['consentsBankIdSigningComplete'] as String,
      json['commonCloseTabThankYou'] as String,
      json['commonCloseTabInstructions'] as String,
    );

Map<String, dynamic> _$ConsentViewConfigTranslationsToJson(
        ConsentViewConfigTranslations instance) =>
    <String, dynamic>{
      'consents': instance.consents,
      'consentsCurrent': instance.consentsCurrent,
      'consentsPast': instance.consentsPast,
      'consentsNoActiveMsg': instance.consentsNoActiveMsg,
      'consentsNoExpiredMsg': instance.consentsNoExpiredMsg,
      'consentsGiveRefuse': instance.consentsGiveRefuse,
      'consentsIGiveConsent': instance.consentsIGiveConsent,
      'consentsConfirmation': instance.consentsConfirmation,
      'consentsConfirmationBankID': instance.consentsConfirmationBankID,
      'consentsSignWithBankIDBtn': instance.consentsSignWithBankIDBtn,
      'consentsGiveBtn': instance.consentsGiveBtn,
      'consentsRefuseBtn': instance.consentsRefuseBtn,
      'commonCancel': instance.commonCancel,
      'commonClose': instance.commonClose,
      'commonStatus': instance.commonStatus,
      'commonYes': instance.commonYes,
      'commonApproved': instance.commonApproved,
      'consentsGiven': instance.consentsGiven,
      'consentsRefused': instance.consentsRefused,
      'consentForm': instance.consentForm,
      'consentsExpiredDate': instance.consentsExpiredDate,
      'consentsExpiryDate': instance.consentsExpiryDate,
      'consentsExpiredOn': instance.consentsExpiredOn,
      'consentsExpiresOn': instance.consentsExpiresOn,
      'consentsFailedToChangeConsent': instance.consentsFailedToChangeConsent,
      'consentsExpiredWithoutDecision': instance.consentsExpiredWithoutDecision,
      'consentsAwaitingYourDecision': instance.consentsAwaitingYourDecision,
      'consentsAwaitingAnotherDecision':
          instance.consentsAwaitingAnotherDecision,
      'consentsRefuseConsent': instance.consentsRefuseConsent,
      'consentsConfirmRefuseConsentDescription':
          instance.consentsConfirmRefuseConsentDescription,
      'refused': instance.refused,
      'noDecision': instance.noDecision,
      'consentsNoCurrentConsentsFound': instance.consentsNoCurrentConsentsFound,
      'consentsNoPastConsentsFound': instance.consentsNoPastConsentsFound,
      'commonEdit': instance.commonEdit,
      'commonActions': instance.commonActions,
      'consentsProvideDecision': instance.consentsProvideDecision,
      'consentsProvideConsentDecision': instance.consentsProvideConsentDecision,
      'approved': instance.approved,
      'partialApproved': instance.partialApproved,
      'expired': instance.expired,
      'consentsExpiredRequest': instance.consentsExpiredRequest,
      'consentsNoConsentRegistered': instance.consentsNoConsentRegistered,
      'consentsHalfRegistered': instance.consentsHalfRegistered,
      'noSelectResultsThatMatchInput': instance.noSelectResultsThatMatchInput,
      'communicationConsentsGiveWithBankID':
          instance.communicationConsentsGiveWithBankID,
      'communicationConsentsRefuseWithBankID':
          instance.communicationConsentsRefuseWithBankID,
      'consentsBankIdSigningFailed': instance.consentsBankIdSigningFailed,
      'consentsBankIdSigningInstructions':
          instance.consentsBankIdSigningInstructions,
      'consentsBankIdSigningComplete': instance.consentsBankIdSigningComplete,
      'commonCloseTabThankYou': instance.commonCloseTabThankYou,
      'commonCloseTabInstructions': instance.commonCloseTabInstructions,
      'new': instance.newWord,
    };

CommunicationNewsList _$CommunicationNewsListFromJson(
        Map<String, dynamic> json) =>
    CommunicationNewsList(
      (json['items'] as List<dynamic>)
          .map((e) => CommunicationNewsItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CommunicationNewsListToJson(
        CommunicationNewsList instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

CommunicationNewsItem _$CommunicationNewsItemFromJson(
        Map<String, dynamic> json) =>
    CommunicationNewsItem(
      (json['id'] as num).toInt(),
      json['attachments'] as List<dynamic>,
      json['title'] as String,
      json['content'] as String,
      json['publishedDate'] as String,
      json['publishedDateString'] as String,
      json['publishedBy'] as String,
      json['newsImageUrl'] as String,
      json['newsThumbnailImageUrl'] as String,
    );

Map<String, dynamic> _$CommunicationNewsItemToJson(
        CommunicationNewsItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'publishedDate': instance.publishedDate,
      'publishedDateString': instance.publishedDateString,
      'publishedBy': instance.publishedBy,
      'newsImageUrl': instance.newsImageUrl,
      'newsThumbnailImageUrl': instance.newsThumbnailImageUrl,
      'attachments': instance.attachments,
    };

CommunicationLinksList _$CommunicationLinksListFromJson(
        Map<String, dynamic> json) =>
    CommunicationLinksList(
      (json['items'] as List<dynamic>)
          .map(
              (e) => CommunicationLinksItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['totalItemCount'] as num).toInt(),
    );

Map<String, dynamic> _$CommunicationLinksListToJson(
        CommunicationLinksList instance) =>
    <String, dynamic>{
      'totalItemCount': instance.totalItemCount,
      'items': instance.items,
    };

CommunicationLinksItem _$CommunicationLinksItemFromJson(
        Map<String, dynamic> json) =>
    CommunicationLinksItem(
      (json['id'] as num).toInt(),
      json['description'] as String,
      json['name'] as String,
      json['publishedBy'] as String,
      DateTime.parse(json['publishedDate'] as String),
      json['publishedDateString'] as String,
      json['type'],
      Uri.parse(json['url'] as String),
    );

Map<String, dynamic> _$CommunicationLinksItemToJson(
        CommunicationLinksItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'publishedBy': instance.publishedBy,
      'description': instance.description,
      'publishedDateString': instance.publishedDateString,
      'type': instance.type,
      'url': instance.url.toString(),
      'publishedDate': instance.publishedDate.toIso8601String(),
    };

CommunicationDocumentsList _$CommunicationDocumentsListFromJson(
        Map<String, dynamic> json) =>
    CommunicationDocumentsList(
      (json['items'] as List<dynamic>)
          .map((e) =>
              CommunicationDocumentsItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['totalItemCount'] as num).toInt(),
    );

Map<String, dynamic> _$CommunicationDocumentsListToJson(
        CommunicationDocumentsList instance) =>
    <String, dynamic>{
      'totalItemCount': instance.totalItemCount,
      'items': instance.items,
    };

CommunicationDocumentsItem _$CommunicationDocumentsItemFromJson(
        Map<String, dynamic> json) =>
    CommunicationDocumentsItem(
      (json['id'] as num).toInt(),
      json['description'] as String?,
      json['title'] as String,
      json['publishedDateString'] as String,
      json['type'] as String,
      (json['fileSize'] as num).toInt(),
      Uri.parse(json['fileUrl'] as String),
      json['fileType'] as String,
    );

Map<String, dynamic> _$CommunicationDocumentsItemToJson(
        CommunicationDocumentsItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fileSize': instance.fileSize,
      'title': instance.title,
      'type': instance.type,
      'publishedDateString': instance.publishedDateString,
      'fileType': instance.fileType,
      'description': instance.description,
      'fileUrl': instance.fileUrl.toString(),
    };
