import 'package:json_annotation/json_annotation.dart';

part 'account.models.g.dart';

@JsonSerializable()
class PreferencesAppData {
  final preferencesAppDataTranslation translations;
  PreferencesAppData(this.translations);
  factory PreferencesAppData.fromJson(Map<String, dynamic> json) =>
      _$PreferencesAppDataFromJson(json);
  Map<String, dynamic> toJson() => _$PreferencesAppDataToJson(this);
}

@JsonSerializable()
class preferencesAppDataTranslation {
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
  preferencesAppDataTranslation(
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
  factory preferencesAppDataTranslation.fromJson(Map<String, dynamic> json) =>
      _$preferencesAppDataTranslationFromJson(json);
  Map<String, dynamic> toJson() => _$preferencesAppDataTranslationToJson(this);
}
