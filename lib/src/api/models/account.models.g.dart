// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreferencesAppData _$PreferencesAppDataFromJson(Map<String, dynamic> json) =>
    PreferencesAppData(
      PreferencesAppDataTranslation.fromJson(
          json['translations'] as Map<String, dynamic>),
      json['privacyUrl'] as String,
      PreferencesAppDataSections.fromJson(
          json['sections'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PreferencesAppDataToJson(PreferencesAppData instance) =>
    <String, dynamic>{
      'translations': instance.translations,
      'privacyUrl': instance.privacyUrl,
      'sections': instance.sections,
    };

PreferencesAppDataSections _$PreferencesAppDataSectionsFromJson(
        Map<String, dynamic> json) =>
    PreferencesAppDataSections(
      PreferencesAppDataSectionPrivacy.fromJson(
          json['privacy'] as Map<String, dynamic>),
      PreferencesAppDataSectionSettings.fromJson(
          json['accountSettings'] as Map<String, dynamic>),
      PreferencesAppDataSectionsNotifications.fromJson(
          json['pushNotifications'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PreferencesAppDataSectionsToJson(
        PreferencesAppDataSections instance) =>
    <String, dynamic>{
      'privacy': instance.privacy,
      'accountSettings': instance.accountSettings,
      'pushNotifications': instance.pushNotifications,
    };

PreferencesAppDataSectionsNotifications
    _$PreferencesAppDataSectionsNotificationsFromJson(
            Map<String, dynamic> json) =>
        PreferencesAppDataSectionsNotifications(
          (json['notifications'] as List<dynamic>)
              .map((e) => PreferencesAppDataSectionsNotification.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          json['translations'] as Map<String, dynamic>?,
          json['codeName'] as String,
          json['title'] as String,
          PreferencesAppDataSectionNotificationsUrls.fromJson(
              json['urls'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$PreferencesAppDataSectionsNotificationsToJson(
        PreferencesAppDataSectionsNotifications instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
      'codeName': instance.codeName,
      'title': instance.title,
      'translations': instance.translations,
      'urls': instance.urls,
    };

PreferencesAppDataSectionNotificationsUrls
    _$PreferencesAppDataSectionNotificationsUrlsFromJson(
            Map<String, dynamic> json) =>
        PreferencesAppDataSectionNotificationsUrls(
          json['updateNotification'] as String,
        );

Map<String, dynamic> _$PreferencesAppDataSectionNotificationsUrlsToJson(
        PreferencesAppDataSectionNotificationsUrls instance) =>
    <String, dynamic>{
      'updateNotification': instance.updateNotification,
    };

PreferencesAppDataSectionsNotification
    _$PreferencesAppDataSectionsNotificationFromJson(
            Map<String, dynamic> json) =>
        PreferencesAppDataSectionsNotification(
          (json['id'] as num).toInt(),
          json['isSelected'] as bool,
          json['appCodeName'] as String,
          json['typeDescription'] as String,
          json['typeName'] as String,
        );

Map<String, dynamic> _$PreferencesAppDataSectionsNotificationToJson(
        PreferencesAppDataSectionsNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isSelected': instance.isSelected,
      'appCodeName': instance.appCodeName,
      'typeName': instance.typeName,
      'typeDescription': instance.typeDescription,
    };

PreferencesAppDataSectionPrivacy _$PreferencesAppDataSectionPrivacyFromJson(
        Map<String, dynamic> json) =>
    PreferencesAppDataSectionPrivacy(
      json['showName'] as bool,
      json['showAddress'] as bool,
      json['showPhone'] as bool,
      json['showMobile'] as bool,
      json['onlyShowPrivacyPolicy'] as bool,
      json['isChildVisibleInContactList'] as bool,
      json['pupils'] as Map<String, dynamic>?,
      json['studentId'] as Map<String, dynamic>?,
      json['translations'] as Map<String, dynamic>?,
      json['urls'] as Map<String, dynamic>?,
      json['codeName'] as String,
      json['title'] as String,
    );

Map<String, dynamic> _$PreferencesAppDataSectionPrivacyToJson(
        PreferencesAppDataSectionPrivacy instance) =>
    <String, dynamic>{
      'showName': instance.showName,
      'showAddress': instance.showAddress,
      'showPhone': instance.showPhone,
      'showMobile': instance.showMobile,
      'onlyShowPrivacyPolicy': instance.onlyShowPrivacyPolicy,
      'isChildVisibleInContactList': instance.isChildVisibleInContactList,
      'pupils': instance.pupils,
      'studentId': instance.studentId,
      'translations': instance.translations,
      'urls': instance.urls,
      'codeName': instance.codeName,
      'title': instance.title,
    };

PreferencesAppDataSectionSettings _$PreferencesAppDataSectionSettingsFromJson(
        Map<String, dynamic> json) =>
    PreferencesAppDataSectionSettings(
      json['showUsername'] as bool,
      json['codeName'] as String,
      json['title'] as String,
      json['translations'] as Map<String, dynamic>?,
      PreferencesAppDataSectionSettingsUrls.fromJson(
          json['urls'] as Map<String, dynamic>),
      json['username'] as String,
      (json['languageOptions'] as List<dynamic>)
          .map((e) => PreferencesAppDataSectionLanguageOption.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PreferencesAppDataSectionSettingsToJson(
        PreferencesAppDataSectionSettings instance) =>
    <String, dynamic>{
      'showUsername': instance.showUsername,
      'translations': instance.translations,
      'username': instance.username,
      'codeName': instance.codeName,
      'title': instance.title,
      'urls': instance.urls,
      'languageOptions': instance.languageOptions,
    };

PreferencesAppDataSectionSettingsUrls
    _$PreferencesAppDataSectionSettingsUrlsFromJson(
            Map<String, dynamic> json) =>
        PreferencesAppDataSectionSettingsUrls(
          json['save'] as String,
        );

Map<String, dynamic> _$PreferencesAppDataSectionSettingsUrlsToJson(
        PreferencesAppDataSectionSettingsUrls instance) =>
    <String, dynamic>{
      'save': instance.save,
    };

PreferencesAppDataSectionLanguageOption
    _$PreferencesAppDataSectionLanguageOptionFromJson(
            Map<String, dynamic> json) =>
        PreferencesAppDataSectionLanguageOption(
          json['key'] as String,
          json['value'] as String,
          json['cultureCode'] as String,
          json['selected'] as bool,
        );

Map<String, dynamic> _$PreferencesAppDataSectionLanguageOptionToJson(
        PreferencesAppDataSectionLanguageOption instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'cultureCode': instance.cultureCode,
      'selected': instance.selected,
    };

PreferencesAppDataTranslation _$PreferencesAppDataTranslationFromJson(
        Map<String, dynamic> json) =>
    PreferencesAppDataTranslation(
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

Map<String, dynamic> _$PreferencesAppDataTranslationToJson(
        PreferencesAppDataTranslation instance) =>
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
