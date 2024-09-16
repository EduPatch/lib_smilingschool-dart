// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreferencesAppData _$PreferencesAppDataFromJson(Map<String, dynamic> json) =>
    PreferencesAppData(
      preferencesAppDataTranslation
          .fromJson(json['translations'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PreferencesAppDataToJson(PreferencesAppData instance) =>
    <String, dynamic>{
      'translations': instance.translations,
    };

preferencesAppDataTranslation _$preferencesAppDataTranslationFromJson(
        Map<String, dynamic> json) =>
    preferencesAppDataTranslation(
      json['languageLabel'] as String,
      json['titleLabel'] as String,
      json['nameLabel'] as String,
      json['firstNameLabel'] as String,
      json['userTitleLabel'] as String,
      json['lastNameLabel'] as String,
      json['homeAddressLabel'] as String,
      json['cityLabel'] as String,
      json['emailLabel'] as String,
      json['confirmEmailLabel'] as String,
      json['telMobileLabel'] as String,
      json['telHomeLabel'] as String,
      json['telWorkLabel'] as String,
      json['messageAllLabel'] as String,
      json['newsAllLabel'] as String,
      json['postCode'] as String,
      json['save'] as String,
      json['cancel'] as String,
      json['emailsNotMatch'] as String,
      json['privacyPupilSwitcherTitler'] as String,
      json['privacyInfoDescription'] as String,
      json['emailEmpty'] as String,
      json['accountSettingsLabel'] as String,
      json['usernameLabel'] as String,
      json['changeLanguageLabel'] as String,
      json['usernameHintLabel'] as String,
      json['emailAsUsernameMessageLabel'] as String,
      json['returnToList'] as String,
      json['preferences'] as String,
      json['makeVisibleInContactListSwitcherTitle'] as String,
      json['privacyTitle'] as String,
      json['privacyText'] as String,
      json['privacyLink'] as String,
    );

Map<String, dynamic> _$preferencesAppDataTranslationToJson(
        preferencesAppDataTranslation instance) =>
    <String, dynamic>{
      'languageLabel': instance.languageLabel,
      'titleLabel': instance.titleLabel,
      'nameLabel': instance.nameLabel,
      'firstNameLabel': instance.firstNameLabel,
      'userTitleLabel': instance.userTitleLabel,
      'lastNameLabel': instance.lastNameLabel,
      'homeAddressLabel': instance.homeAddressLabel,
      'cityLabel': instance.cityLabel,
      'emailLabel': instance.emailLabel,
      'confirmEmailLabel': instance.confirmEmailLabel,
      'telMobileLabel': instance.telMobileLabel,
      'telHomeLabel': instance.telHomeLabel,
      'telWorkLabel': instance.telWorkLabel,
      'messageAllLabel': instance.messageAllLabel,
      'newsAllLabel': instance.newsAllLabel,
      'postCode': instance.postCode,
      'save': instance.save,
      'cancel': instance.cancel,
      'emailsNotMatch': instance.emailsNotMatch,
      'privacyPupilSwitcherTitler': instance.privacyPupilSwitcherTitler,
      'privacyInfoDescription': instance.privacyInfoDescription,
      'emailEmpty': instance.emailEmpty,
      'accountSettingsLabel': instance.accountSettingsLabel,
      'usernameLabel': instance.usernameLabel,
      'changeLanguageLabel': instance.changeLanguageLabel,
      'usernameHintLabel': instance.usernameHintLabel,
      'emailAsUsernameMessageLabel': instance.emailAsUsernameMessageLabel,
      'returnToList': instance.returnToList,
      'preferences': instance.preferences,
      'makeVisibleInContactListSwitcherTitle':
          instance.makeVisibleInContactListSwitcherTitle,
      'privacyTitle': instance.privacyTitle,
      'privacyText': instance.privacyText,
      'privacyLink': instance.privacyLink,
    };
