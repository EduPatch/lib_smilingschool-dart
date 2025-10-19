import 'package:json_annotation/json_annotation.dart';

part 'classlist.models.g.dart';

@JsonSerializable()
class ClasslistAppData {
  ClasslistAppDataTranslations translations;
  ClasslistAppDataUrls urls;
  ClasslistAppDataUserConfig userConfig;
  ClasslistAppDataFileUploadConfig fileUploadConfig;
  List<ClasslistAppDataGroupConfigItem> groupConfig;

  ClasslistAppData(this.translations, this.userConfig, this.urls,
      this.fileUploadConfig, this.groupConfig);

  factory ClasslistAppData.fromJson(Map<String, dynamic> json) =>
      _$ClasslistAppDataFromJson(json);
  Map<String, dynamic> toJson() => _$ClasslistAppDataToJson(this);
}

@JsonSerializable()
class ClasslistAppDataTranslations {
  String contacts,
      staffDetailsHeader,
      pupilDetailsHeader,
      parentDetailsHeader,
      miscellaneousContacts,
      discardEmailMessage,
      discardEmailTitle,
      yes,
      groupTutorTitle,
      sendSMS,
      call,
      sendEmail,
      back,
      cancel,
      send,
      attachFile,
      group,
      groupLabel,
      addressLabel,
      nameLabel,
      relationLabel,
      phoneLabel,
      toLabel,
      subjectLabel,
      attachmentsLabel,
      emailLabel,
      mobileLabel,
      mobileSMSLabel,
      privacyMessage,
      noEmailMessage,
      attachmentTooLarge,
      attachmentWrongType,
      attachmentSizeSumTooLarge,
      allParents,
      appointmentTime,
      composeEmail,
      emailInfoText,
      ccPlaceholder,
      returnToList,
      noEmail,
      pleaseSelect,
      ccButton,
      ccLabel,
      addAttachments,
      typeYourMessageHere,
      noResultsMessage;
  ClasslistAppDataTranslations(
      this.contacts,
      this.staffDetailsHeader,
      this.pupilDetailsHeader,
      this.parentDetailsHeader,
      this.miscellaneousContacts,
      this.discardEmailMessage,
      this.discardEmailTitle,
      this.yes,
      this.groupTutorTitle,
      this.sendSMS,
      this.call,
      this.sendEmail,
      this.back,
      this.cancel,
      this.send,
      this.attachFile,
      this.group,
      this.groupLabel,
      this.addressLabel,
      this.nameLabel,
      this.relationLabel,
      this.phoneLabel,
      this.toLabel,
      this.subjectLabel,
      this.attachmentsLabel,
      this.emailLabel,
      this.mobileLabel,
      this.mobileSMSLabel,
      this.privacyMessage,
      this.noEmailMessage,
      this.attachmentTooLarge,
      this.attachmentWrongType,
      this.attachmentSizeSumTooLarge,
      this.allParents,
      this.appointmentTime,
      this.composeEmail,
      this.emailInfoText,
      this.ccPlaceholder,
      this.returnToList,
      this.noEmail,
      this.pleaseSelect,
      this.ccButton,
      this.ccLabel,
      this.addAttachments,
      this.typeYourMessageHere,
      this.noResultsMessage);
  factory ClasslistAppDataTranslations.fromJson(Map<String, dynamic> json) =>
      _$ClasslistAppDataTranslationsFromJson(json);
  Map<String, dynamic> toJson() => _$ClasslistAppDataTranslationsToJson(this);
}

@JsonSerializable()
class ClasslistAppDataUrls {
  Uri getClassList,
      uploadFileUrl,
      getPupil,
      getStaff,
      bulkEmailForm,
      emailForm,
      sendEmail;

  ClasslistAppDataUrls(this.bulkEmailForm, this.emailForm, this.getClassList,
      this.getPupil, this.getStaff, this.sendEmail, this.uploadFileUrl);

  factory ClasslistAppDataUrls.fromJson(Map<String, dynamic> json) =>
      _$ClasslistAppDataUrlsFromJson(json);
  Map<String, dynamic> toJson() => _$ClasslistAppDataUrlsToJson(this);
}

@JsonSerializable()
class ClasslistAppDataUserConfig {
  bool canSendEmail, canViewPhone, isPupil;
  ClasslistAppDataUserConfig(
      this.canSendEmail, this.canViewPhone, this.isPupil);

  factory ClasslistAppDataUserConfig.fromJson(Map<String, dynamic> json) =>
      _$ClasslistAppDataUserConfigFromJson(json);
  Map<String, dynamic> toJson() => _$ClasslistAppDataUserConfigToJson(this);
}

@JsonSerializable()
class ClasslistAppDataFileUploadConfig {
  List<String> allowedMimeTypes;
  int maxUploadSize;
  ClasslistAppDataFileUploadConfig(this.allowedMimeTypes, this.maxUploadSize);

  factory ClasslistAppDataFileUploadConfig.fromJson(
          Map<String, dynamic> json) =>
      _$ClasslistAppDataFileUploadConfigFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ClasslistAppDataFileUploadConfigToJson(this);
}

@JsonSerializable()
class ClasslistAppDataGroupConfigItem {
  int id;
  String title;
  bool isStaffGroup;
  List<ClasslistAppDataGroupConfigItemItem> items;
  ClasslistAppDataGroupConfigItem(
      this.id, this.isStaffGroup, this.items, this.title);

  factory ClasslistAppDataGroupConfigItem.fromJson(Map<String, dynamic> json) =>
      _$ClasslistAppDataGroupConfigItemFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ClasslistAppDataGroupConfigItemToJson(this);
}

@JsonSerializable()
class ClasslistAppDataGroupConfigItemItem {
  String? name, phone, email, address, establishmentId;
  String id;
  bool canReceiveEmail;
  ClasslistAppDataGroupConfigItemItem(this.address, this.canReceiveEmail,
      this.email, this.establishmentId, this.id, this.name, this.phone);

  factory ClasslistAppDataGroupConfigItemItem.fromJson(
          Map<String, dynamic> json) =>
      _$ClasslistAppDataGroupConfigItemItemFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ClasslistAppDataGroupConfigItemItemToJson(this);
}

// End of ClasslistAppdata

// Start of ClasslistPupil

@JsonSerializable()
class ClasslistPupil {
  ClasslistPupilDetails details;
  List<ClasslistPupilParent> parents;
  ClasslistPupil(this.details, this.parents);

  factory ClasslistPupil.fromJson(Map<String, dynamic> json) =>
      _$ClasslistPupilFromJson(json);
  Map<String, dynamic> toJson() => _$ClasslistPupilToJson(this);
}

@JsonSerializable()
class ClasslistPupilDetails {
  String groups, address, phone, id, name;
  String? mobile;
  bool canViewAddresses, canViewPhone, canViewRelationship, isTutor;
  ClasslistPupilDetails(
      this.canViewAddresses,
      this.address,
      this.canViewPhone,
      this.canViewRelationship,
      this.groups,
      this.phone,
      this.mobile,
      this.id,
      this.isTutor,
      this.name);

  factory ClasslistPupilDetails.fromJson(Map<String, dynamic> json) =>
      _$ClasslistPupilDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$ClasslistPupilDetailsToJson(this);
}

@JsonSerializable()
class ClasslistPupilParent {
  String address, phone, mobile, relation, id, name;
  String? groups;
  bool canViewAddresses,
      canViewPhone,
      canViewRelationship,
      canEmail,
      canViewName,
      canViewMobile,
      isTutor;
  ClasslistPupilParent(
      this.canViewAddresses,
      this.address,
      this.canViewPhone,
      this.canViewRelationship,
      this.groups,
      this.phone,
      this.mobile,
      this.canEmail,
      this.canViewMobile,
      this.canViewName,
      this.id,
      this.isTutor,
      this.name,
      this.relation);

  factory ClasslistPupilParent.fromJson(Map<String, dynamic> json) =>
      _$ClasslistPupilParentFromJson(json);
  Map<String, dynamic> toJson() => _$ClasslistPupilParentToJson(this);
}

// End of ClasslistPupil

// Start of ClasslistStaff

@JsonSerializable()
class ClasslistStaff {
  ClasslistStaffDetails details;
  List<dynamic>
      parents; // Listen I don't know either what the hell is going on here but a staff member can have parents????
  ClasslistStaff(this.details, this.parents);

  factory ClasslistStaff.fromJson(Map<String, dynamic> json) =>
      _$ClasslistStaffFromJson(json);
  Map<String, dynamic> toJson() => _$ClasslistStaffToJson(this);
}

@JsonSerializable()
class ClasslistStaffDetails {
  String id, name, appointmentHours;
  String? mobile, groups, address, phone;
  Uri pictureUrl;
  bool canViewAddresses, canViewPhone, canViewRelationship, isTutor;
  ClasslistStaffDetails(
      this.address,
      this.appointmentHours,
      this.canViewAddresses,
      this.canViewPhone,
      this.canViewRelationship,
      this.groups,
      this.id,
      this.isTutor,
      this.mobile,
      this.name,
      this.phone,
      this.pictureUrl);

  factory ClasslistStaffDetails.fromJson(Map<String, dynamic> json) =>
      _$ClasslistStaffDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$ClasslistStaffDetailsToJson(this);
}

// End of ClasslistStaff
