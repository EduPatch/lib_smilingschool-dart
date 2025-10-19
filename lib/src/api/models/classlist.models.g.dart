// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classlist.models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClasslistAppData _$ClasslistAppDataFromJson(Map<String, dynamic> json) =>
    ClasslistAppData(
      ClasslistAppDataTranslations.fromJson(
          json['translations'] as Map<String, dynamic>),
      ClasslistAppDataUserConfig.fromJson(
          json['userConfig'] as Map<String, dynamic>),
      ClasslistAppDataUrls.fromJson(json['urls'] as Map<String, dynamic>),
      ClasslistAppDataFileUploadConfig.fromJson(
          json['fileUploadConfig'] as Map<String, dynamic>),
      (json['groupConfig'] as List<dynamic>)
          .map((e) => ClasslistAppDataGroupConfigItem.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClasslistAppDataToJson(ClasslistAppData instance) =>
    <String, dynamic>{
      'translations': instance.translations,
      'urls': instance.urls,
      'userConfig': instance.userConfig,
      'fileUploadConfig': instance.fileUploadConfig,
      'groupConfig': instance.groupConfig,
    };

ClasslistAppDataTranslations _$ClasslistAppDataTranslationsFromJson(
        Map<String, dynamic> json) =>
    ClasslistAppDataTranslations(
      json['contacts'] as String,
      json['staffDetailsHeader'] as String,
      json['pupilDetailsHeader'] as String,
      json['parentDetailsHeader'] as String,
      json['miscellaneousContacts'] as String,
      json['discardEmailMessage'] as String,
      json['discardEmailTitle'] as String,
      json['yes'] as String,
      json['groupTutorTitle'] as String,
      json['sendSMS'] as String,
      json['call'] as String,
      json['sendEmail'] as String,
      json['back'] as String,
      json['cancel'] as String,
      json['send'] as String,
      json['attachFile'] as String,
      json['group'] as String,
      json['groupLabel'] as String,
      json['addressLabel'] as String,
      json['nameLabel'] as String,
      json['relationLabel'] as String,
      json['phoneLabel'] as String,
      json['toLabel'] as String,
      json['subjectLabel'] as String,
      json['attachmentsLabel'] as String,
      json['emailLabel'] as String,
      json['mobileLabel'] as String,
      json['mobileSMSLabel'] as String,
      json['privacyMessage'] as String,
      json['noEmailMessage'] as String,
      json['attachmentTooLarge'] as String,
      json['attachmentWrongType'] as String,
      json['attachmentSizeSumTooLarge'] as String,
      json['allParents'] as String,
      json['appointmentTime'] as String,
      json['composeEmail'] as String,
      json['emailInfoText'] as String,
      json['ccPlaceholder'] as String,
      json['returnToList'] as String,
      json['noEmail'] as String,
      json['pleaseSelect'] as String,
      json['ccButton'] as String,
      json['ccLabel'] as String,
      json['addAttachments'] as String,
      json['typeYourMessageHere'] as String,
      json['noResultsMessage'] as String,
    );

Map<String, dynamic> _$ClasslistAppDataTranslationsToJson(
        ClasslistAppDataTranslations instance) =>
    <String, dynamic>{
      'contacts': instance.contacts,
      'staffDetailsHeader': instance.staffDetailsHeader,
      'pupilDetailsHeader': instance.pupilDetailsHeader,
      'parentDetailsHeader': instance.parentDetailsHeader,
      'miscellaneousContacts': instance.miscellaneousContacts,
      'discardEmailMessage': instance.discardEmailMessage,
      'discardEmailTitle': instance.discardEmailTitle,
      'yes': instance.yes,
      'groupTutorTitle': instance.groupTutorTitle,
      'sendSMS': instance.sendSMS,
      'call': instance.call,
      'sendEmail': instance.sendEmail,
      'back': instance.back,
      'cancel': instance.cancel,
      'send': instance.send,
      'attachFile': instance.attachFile,
      'group': instance.group,
      'groupLabel': instance.groupLabel,
      'addressLabel': instance.addressLabel,
      'nameLabel': instance.nameLabel,
      'relationLabel': instance.relationLabel,
      'phoneLabel': instance.phoneLabel,
      'toLabel': instance.toLabel,
      'subjectLabel': instance.subjectLabel,
      'attachmentsLabel': instance.attachmentsLabel,
      'emailLabel': instance.emailLabel,
      'mobileLabel': instance.mobileLabel,
      'mobileSMSLabel': instance.mobileSMSLabel,
      'privacyMessage': instance.privacyMessage,
      'noEmailMessage': instance.noEmailMessage,
      'attachmentTooLarge': instance.attachmentTooLarge,
      'attachmentWrongType': instance.attachmentWrongType,
      'attachmentSizeSumTooLarge': instance.attachmentSizeSumTooLarge,
      'allParents': instance.allParents,
      'appointmentTime': instance.appointmentTime,
      'composeEmail': instance.composeEmail,
      'emailInfoText': instance.emailInfoText,
      'ccPlaceholder': instance.ccPlaceholder,
      'returnToList': instance.returnToList,
      'noEmail': instance.noEmail,
      'pleaseSelect': instance.pleaseSelect,
      'ccButton': instance.ccButton,
      'ccLabel': instance.ccLabel,
      'addAttachments': instance.addAttachments,
      'typeYourMessageHere': instance.typeYourMessageHere,
      'noResultsMessage': instance.noResultsMessage,
    };

ClasslistAppDataUrls _$ClasslistAppDataUrlsFromJson(
        Map<String, dynamic> json) =>
    ClasslistAppDataUrls(
      Uri.parse(json['bulkEmailForm'] as String),
      Uri.parse(json['emailForm'] as String),
      Uri.parse(json['getClassList'] as String),
      Uri.parse(json['getPupil'] as String),
      Uri.parse(json['getStaff'] as String),
      Uri.parse(json['sendEmail'] as String),
      Uri.parse(json['uploadFileUrl'] as String),
    );

Map<String, dynamic> _$ClasslistAppDataUrlsToJson(
        ClasslistAppDataUrls instance) =>
    <String, dynamic>{
      'getClassList': instance.getClassList.toString(),
      'uploadFileUrl': instance.uploadFileUrl.toString(),
      'getPupil': instance.getPupil.toString(),
      'getStaff': instance.getStaff.toString(),
      'bulkEmailForm': instance.bulkEmailForm.toString(),
      'emailForm': instance.emailForm.toString(),
      'sendEmail': instance.sendEmail.toString(),
    };

ClasslistAppDataUserConfig _$ClasslistAppDataUserConfigFromJson(
        Map<String, dynamic> json) =>
    ClasslistAppDataUserConfig(
      json['canSendEmail'] as bool,
      json['canViewPhone'] as bool,
      json['isPupil'] as bool,
    );

Map<String, dynamic> _$ClasslistAppDataUserConfigToJson(
        ClasslistAppDataUserConfig instance) =>
    <String, dynamic>{
      'canSendEmail': instance.canSendEmail,
      'canViewPhone': instance.canViewPhone,
      'isPupil': instance.isPupil,
    };

ClasslistAppDataFileUploadConfig _$ClasslistAppDataFileUploadConfigFromJson(
        Map<String, dynamic> json) =>
    ClasslistAppDataFileUploadConfig(
      (json['allowedMimeTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      (json['maxUploadSize'] as num).toInt(),
    );

Map<String, dynamic> _$ClasslistAppDataFileUploadConfigToJson(
        ClasslistAppDataFileUploadConfig instance) =>
    <String, dynamic>{
      'allowedMimeTypes': instance.allowedMimeTypes,
      'maxUploadSize': instance.maxUploadSize,
    };

ClasslistAppDataGroupConfigItem _$ClasslistAppDataGroupConfigItemFromJson(
        Map<String, dynamic> json) =>
    ClasslistAppDataGroupConfigItem(
      (json['id'] as num).toInt(),
      json['isStaffGroup'] as bool,
      (json['items'] as List<dynamic>)
          .map((e) => ClasslistAppDataGroupConfigItemItem.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      json['title'] as String,
    );

Map<String, dynamic> _$ClasslistAppDataGroupConfigItemToJson(
        ClasslistAppDataGroupConfigItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isStaffGroup': instance.isStaffGroup,
      'items': instance.items,
    };

ClasslistAppDataGroupConfigItemItem
    _$ClasslistAppDataGroupConfigItemItemFromJson(Map<String, dynamic> json) =>
        ClasslistAppDataGroupConfigItemItem(
          json['address'] as String?,
          json['canReceiveEmail'] as bool,
          json['email'] as String?,
          json['establishmentId'] as String?,
          json['id'] as String,
          json['name'] as String?,
          json['phone'] as String?,
        );

Map<String, dynamic> _$ClasslistAppDataGroupConfigItemItemToJson(
        ClasslistAppDataGroupConfigItemItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'address': instance.address,
      'establishmentId': instance.establishmentId,
      'id': instance.id,
      'canReceiveEmail': instance.canReceiveEmail,
    };

ClasslistPupil _$ClasslistPupilFromJson(Map<String, dynamic> json) =>
    ClasslistPupil(
      ClasslistPupilDetails.fromJson(json['details'] as Map<String, dynamic>),
      (json['parents'] as List<dynamic>)
          .map((e) => ClasslistPupilParent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClasslistPupilToJson(ClasslistPupil instance) =>
    <String, dynamic>{
      'details': instance.details,
      'parents': instance.parents,
    };

ClasslistPupilDetails _$ClasslistPupilDetailsFromJson(
        Map<String, dynamic> json) =>
    ClasslistPupilDetails(
      json['canViewAddresses'] as bool,
      json['address'] as String,
      json['canViewPhone'] as bool,
      json['canViewRelationship'] as bool,
      json['groups'] as String,
      json['phone'] as String,
      json['mobile'] as String?,
      json['id'] as String,
      json['isTutor'] as bool,
      json['name'] as String,
    );

Map<String, dynamic> _$ClasslistPupilDetailsToJson(
        ClasslistPupilDetails instance) =>
    <String, dynamic>{
      'groups': instance.groups,
      'address': instance.address,
      'phone': instance.phone,
      'id': instance.id,
      'name': instance.name,
      'mobile': instance.mobile,
      'canViewAddresses': instance.canViewAddresses,
      'canViewPhone': instance.canViewPhone,
      'canViewRelationship': instance.canViewRelationship,
      'isTutor': instance.isTutor,
    };

ClasslistPupilParent _$ClasslistPupilParentFromJson(
        Map<String, dynamic> json) =>
    ClasslistPupilParent(
      json['canViewAddresses'] as bool,
      json['address'] as String,
      json['canViewPhone'] as bool,
      json['canViewRelationship'] as bool,
      json['groups'] as String?,
      json['phone'] as String,
      json['mobile'] as String,
      json['canEmail'] as bool,
      json['canViewMobile'] as bool,
      json['canViewName'] as bool,
      json['id'] as String,
      json['isTutor'] as bool,
      json['name'] as String,
      json['relation'] as String,
    );

Map<String, dynamic> _$ClasslistPupilParentToJson(
        ClasslistPupilParent instance) =>
    <String, dynamic>{
      'address': instance.address,
      'phone': instance.phone,
      'mobile': instance.mobile,
      'relation': instance.relation,
      'id': instance.id,
      'name': instance.name,
      'groups': instance.groups,
      'canViewAddresses': instance.canViewAddresses,
      'canViewPhone': instance.canViewPhone,
      'canViewRelationship': instance.canViewRelationship,
      'canEmail': instance.canEmail,
      'canViewName': instance.canViewName,
      'canViewMobile': instance.canViewMobile,
      'isTutor': instance.isTutor,
    };

ClasslistStaff _$ClasslistStaffFromJson(Map<String, dynamic> json) =>
    ClasslistStaff(
      ClasslistStaffDetails.fromJson(json['details'] as Map<String, dynamic>),
      json['parents'] as List<dynamic>,
    );

Map<String, dynamic> _$ClasslistStaffToJson(ClasslistStaff instance) =>
    <String, dynamic>{
      'details': instance.details,
      'parents': instance.parents,
    };

ClasslistStaffDetails _$ClasslistStaffDetailsFromJson(
        Map<String, dynamic> json) =>
    ClasslistStaffDetails(
      json['address'] as String?,
      json['appointmentHours'] as String,
      json['canViewAddresses'] as bool,
      json['canViewPhone'] as bool,
      json['canViewRelationship'] as bool,
      json['groups'] as String?,
      json['id'] as String,
      json['isTutor'] as bool,
      json['mobile'] as String?,
      json['name'] as String,
      json['phone'] as String?,
      Uri.parse(json['pictureUrl'] as String),
    );

Map<String, dynamic> _$ClasslistStaffDetailsToJson(
        ClasslistStaffDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'appointmentHours': instance.appointmentHours,
      'mobile': instance.mobile,
      'groups': instance.groups,
      'address': instance.address,
      'phone': instance.phone,
      'pictureUrl': instance.pictureUrl.toString(),
      'canViewAddresses': instance.canViewAddresses,
      'canViewPhone': instance.canViewPhone,
      'canViewRelationship': instance.canViewRelationship,
      'isTutor': instance.isTutor,
    };
