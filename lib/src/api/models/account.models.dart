import 'package:json_annotation/json_annotation.dart';

part 'account.models.g.dart';

@JsonSerializable()
class PreferencesAppData {
  final PreferencesAppDataTranslation translations;
  String privacyUrl;
  final PreferencesAppDataSections sections;
  PreferencesAppData(this.translations, this.privacyUrl, this.sections);
  factory PreferencesAppData.fromJson(Map<String, dynamic> json) =>
      _$PreferencesAppDataFromJson(json);
  Map<String, dynamic> toJson() => _$PreferencesAppDataToJson(this);
}

@JsonSerializable()
class PreferencesAppDataSections {
  final PreferencesAppDataSectionPrivacy privacy;
  final PreferencesAppDataSectionSettings accountSettings;
  final PreferencesAppDataSectionsNotifications pushNotifications;
  PreferencesAppDataSections(
      this.privacy, this.accountSettings, this.pushNotifications);

  factory PreferencesAppDataSections.fromJson(Map<String, dynamic> json) =>
      _$PreferencesAppDataSectionsFromJson(json);
  Map<String, dynamic> toJson() => _$PreferencesAppDataSectionsToJson(this);
}

@JsonSerializable()
class PreferencesAppDataSectionsNotifications {
  final List<PreferencesAppDataSectionsNotification> notifications;
  final String codeName, title;
  final Map<String, dynamic>? translations;
  final PreferencesAppDataSectionNotificationsUrls urls;

  PreferencesAppDataSectionsNotifications(this.notifications, this.translations,
      this.codeName, this.title, this.urls);

  factory PreferencesAppDataSectionsNotifications.fromJson(
          Map<String, dynamic> json) =>
      _$PreferencesAppDataSectionsNotificationsFromJson(json);
  Map<String, dynamic> toJson() =>
      _$PreferencesAppDataSectionsNotificationsToJson(this);
}

@JsonSerializable()
class PreferencesAppDataSectionNotificationsUrls {
  final String updateNotification;
  PreferencesAppDataSectionNotificationsUrls(this.updateNotification);

  factory PreferencesAppDataSectionNotificationsUrls.fromJson(
          Map<String, dynamic> json) =>
      _$PreferencesAppDataSectionNotificationsUrlsFromJson(json);
  Map<String, dynamic> toJson() =>
      _$PreferencesAppDataSectionNotificationsUrlsToJson(this);
}

@JsonSerializable()
class PreferencesAppDataSectionsNotification {
  final int id;
  final bool isSelected;
  final String appCodeName, typeName, typeDescription;
  PreferencesAppDataSectionsNotification(this.id, this.isSelected,
      this.appCodeName, this.typeDescription, this.typeName);

  factory PreferencesAppDataSectionsNotification.fromJson(
          Map<String, dynamic> json) =>
      _$PreferencesAppDataSectionsNotificationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$PreferencesAppDataSectionsNotificationToJson(this);
}

@JsonSerializable()
class PreferencesAppDataSectionPrivacy {
  final bool showName,
      showAddress,
      showPhone,
      showMobile,
      onlyShowPrivacyPolicy,
      isChildVisibleInContactList;

  final Map<String, dynamic>? pupils, studentId, translations, urls;
  final String codeName, title;

  PreferencesAppDataSectionPrivacy(
      this.showName,
      this.showAddress,
      this.showPhone,
      this.showMobile,
      this.onlyShowPrivacyPolicy,
      this.isChildVisibleInContactList,
      this.pupils,
      this.studentId,
      this.translations,
      this.urls,
      this.codeName,
      this.title);

  factory PreferencesAppDataSectionPrivacy.fromJson(
          Map<String, dynamic> json) =>
      _$PreferencesAppDataSectionPrivacyFromJson(json);
  Map<String, dynamic> toJson() =>
      _$PreferencesAppDataSectionPrivacyToJson(this);
}

@JsonSerializable()
class PreferencesAppDataSectionSettings {
  final bool showUsername;
  final Map<String, dynamic>? translations;
  final String username, codeName, title;
  final PreferencesAppDataSectionSettingsUrls urls;
  final List<PreferencesAppDataSectionLanguageOption> languageOptions;

  PreferencesAppDataSectionSettings(
      this.showUsername,
      this.codeName,
      this.title,
      this.translations,
      this.urls,
      this.username,
      this.languageOptions);

  factory PreferencesAppDataSectionSettings.fromJson(
          Map<String, dynamic> json) =>
      _$PreferencesAppDataSectionSettingsFromJson(json);
  Map<String, dynamic> toJson() =>
      _$PreferencesAppDataSectionSettingsToJson(this);
}

@JsonSerializable()
class PreferencesAppDataSectionSettingsUrls {
  final String save;
  PreferencesAppDataSectionSettingsUrls(this.save);

  factory PreferencesAppDataSectionSettingsUrls.fromJson(
          Map<String, dynamic> json) =>
      _$PreferencesAppDataSectionSettingsUrlsFromJson(json);
  Map<String, dynamic> toJson() =>
      _$PreferencesAppDataSectionSettingsUrlsToJson(this);
}

@JsonSerializable()
class PreferencesAppDataSectionLanguageOption {
  final String key, value, cultureCode;
  final bool selected;
  PreferencesAppDataSectionLanguageOption(
      this.key, this.value, this.cultureCode, this.selected);

  factory PreferencesAppDataSectionLanguageOption.fromJson(
          Map<String, dynamic> json) =>
      _$PreferencesAppDataSectionLanguageOptionFromJson(json);
  Map<String, dynamic> toJson() =>
      _$PreferencesAppDataSectionLanguageOptionToJson(this);
}

@JsonSerializable()
class PreferencesAppDataTranslation {
  String languageLabel,
      titleLabel,
      nameLabel,
      firstNameLabel,
      userTitleLabel,
      lastNameLabel,
      homeAddressLabel,
      cityLabel,
      emailLabel,
      confirmEmailLabel,
      telMobileLabel,
      telHomeLabel,
      telWorkLabel,
      messageAllLabel,
      newsAllLabel,
      postCode,
      save,
      cancel,
      emailsNotMatch,
      privacyPupilSwitcherTitler,
      privacyInfoDescription,
      emailEmpty,
      accountSettingsLabel,
      usernameLabel,
      changeLanguageLabel,
      usernameHintLabel,
      emailAsUsernameMessageLabel,
      returnToList,
      preferences,
      makeVisibleInContactListSwitcherTitle,
      privacyTitle,
      privacyText,
      privacyLink;
  PreferencesAppDataTranslation(
      this.languageLabel,
      this.titleLabel,
      this.nameLabel,
      this.firstNameLabel,
      this.userTitleLabel,
      this.lastNameLabel,
      this.homeAddressLabel,
      this.cityLabel,
      this.emailLabel,
      this.confirmEmailLabel,
      this.telMobileLabel,
      this.telHomeLabel,
      this.telWorkLabel,
      this.messageAllLabel,
      this.newsAllLabel,
      this.postCode,
      this.save,
      this.cancel,
      this.emailsNotMatch,
      this.privacyPupilSwitcherTitler,
      this.privacyInfoDescription,
      this.emailEmpty,
      this.accountSettingsLabel,
      this.usernameLabel,
      this.changeLanguageLabel,
      this.usernameHintLabel,
      this.emailAsUsernameMessageLabel,
      this.returnToList,
      this.preferences,
      this.makeVisibleInContactListSwitcherTitle,
      this.privacyTitle,
      this.privacyText,
      this.privacyLink);
  factory PreferencesAppDataTranslation.fromJson(Map<String, dynamic> json) =>
      _$PreferencesAppDataTranslationFromJson(json);
  Map<String, dynamic> toJson() => _$PreferencesAppDataTranslationToJson(this);
}
