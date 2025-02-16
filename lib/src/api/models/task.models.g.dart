// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskAppData _$TaskAppDataFromJson(Map<String, dynamic> json) => TaskAppData(
      TaskAppDataTranslations.fromJson(
          json['translations'] as Map<String, dynamic>),
      TaskAppDataUrls.fromJson(json['urls'] as Map<String, dynamic>),
      (json['allowedExtensions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      (json['allowedMimeTypes'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
      json['canSendMessages'] as bool,
      TaskAppDataOption.fromJson(json['filterOption'] as Map<String, dynamic>),
      json['isRestricted'] as bool,
      (json['maxUploadSize'] as num).toInt(),
      (json['messageSubjectSize'] as num).toInt(),
      TaskTask.fromJson(json['taskResults'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskAppDataToJson(TaskAppData instance) =>
    <String, dynamic>{
      'translations': instance.translations,
      'urls': instance.urls,
      'maxUploadSize': instance.maxUploadSize,
      'messageSubjectSize': instance.messageSubjectSize,
      'isRestricted': instance.isRestricted,
      'canSendMessages': instance.canSendMessages,
      'allowedExtensions': instance.allowedExtensions,
      'allowedMimeTypes': instance.allowedMimeTypes,
      'filterOption': instance.filterOption,
      'taskResults': instance.taskResults,
    };

TaskAppDataOption _$TaskAppDataOptionFromJson(Map<String, dynamic> json) =>
    TaskAppDataOption(
      json['showCoursesFilter'] as bool,
      TaskAppDataOptionItem.fromJson(
          json['academicYears'] as Map<String, dynamic>),
      TaskAppDataOptionItem.fromJson(json['courses'] as Map<String, dynamic>),
      TaskAppDataOptionItem.fromJson(json['subjects'] as Map<String, dynamic>),
      TaskAppDataOptionItem.fromJson(json['teachers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskAppDataOptionToJson(TaskAppDataOption instance) =>
    <String, dynamic>{
      'showCoursesFilter': instance.showCoursesFilter,
      'subjects': instance.subjects,
      'teachers': instance.teachers,
      'academicYears': instance.academicYears,
      'courses': instance.courses,
    };

TaskAppDataOptionItem _$TaskAppDataOptionItemFromJson(
        Map<String, dynamic> json) =>
    TaskAppDataOptionItem(
      json['defaultText'] as String?,
      (json['options'] as List<dynamic>)
          .map((e) =>
              TaskAppDataOptionItemOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TaskAppDataOptionItemToJson(
        TaskAppDataOptionItem instance) =>
    <String, dynamic>{
      'defaultText': instance.defaultText,
      'options': instance.options,
    };

TaskAppDataOptionItemOption _$TaskAppDataOptionItemOptionFromJson(
        Map<String, dynamic> json) =>
    TaskAppDataOptionItemOption(
      json['key'] as String,
      json['selected'] as bool,
      json['value'] as String,
    );

Map<String, dynamic> _$TaskAppDataOptionItemOptionToJson(
        TaskAppDataOptionItemOption instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'selected': instance.selected,
    };

TaskAppDataTranslations _$TaskAppDataTranslationsFromJson(
        Map<String, dynamic> json) =>
    TaskAppDataTranslations(
      json['noResultsMessage'] as String,
      json['comments'] as String,
      json['file'] as String,
      json['link'] as String,
      json['reference'] as String,
      json['resourcesHeader'] as String,
      json['curriculumHeader'] as String,
      json['activityHeader'] as String,
      json['milestoneHeader'] as String,
      json['overdue'] as String,
      json['due'] as String,
      json['done'] as String,
      json['back'] as String,
      json['readMore'] as String,
      json['show'] as String,
      json['hide'] as String,
      json['addNote'] as String,
      json['optionalPartsMessage'] as String,
      json['optionalPartsButton'] as String,
      json['returnToList'] as String,
      json['previousTask'] as String,
      json['nextTask'] as String,
      json['pageCount'] as String,
      json['milestone'] as String,
      json['addMilestone'] as String,
      json['addFile'] as String,
      json['addMessage'] as String,
      json['edit'] as String,
      json['save'] as String,
      json['send'] as String,
      json['cancel'] as String,
      json['filterTasks'] as String,
      json['filterBy'] as String,
      json['subject'] as String,
      json['teacher'] as String,
      json['selectSubject'] as String,
      json['selectTeacher'] as String,
      json['apply'] as String,
      json['clear'] as String,
      json['filterHelperMessage'] as String,
      json['filterHelperLinkText'] as String,
      json['optionalParts'] as String,
      json['previousPage'] as String,
      json['nextPage'] as String,
      json['yourNote'] as String,
      json['attachmentWrongType'] as String,
      json['attachmentSizeSumTooLarge'] as String,
      json['uploading'] as String,
      json['editMilestones'] as String,
      json['submit'] as String,
      json['unsubmit'] as String,
      json['dateFormat'] as String,
      json['altFormat'] as String,
      json['add'] as String,
      json['fileList'] as String,
      json['document'] as String,
      json['addO365File'] as String,
      json['noResultsFound'] as String,
      json['page'] as String,
      json['previous'] as String,
      json['next'] as String,
      json['taskHandInSelectAnyFile'] as String,
      json['sendMessage'] as String,
      json['newMessage'] as String,
      json['title'] as String,
      json['download'] as String,
      json['errorLoadingImage'] as String,
      json['close'] as String,
      json['assignments'] as String,
      json['noTasksToShow'] as String,
      json['goodJob'] as String,
      json['noOverdueTasks'] as String,
      json['completedAllTasks'] as String,
      json['noDueTasks'] as String,
      json['workOnOverdueTasks'] as String,
      json['workOnDueTasks'] as String,
      json['notCompletedAnyTasks'] as String,
      json['pleaseNote'] as String,
      json['plagiarismWarning'] as String,
      json['optOut'] as String,
    );

Map<String, dynamic> _$TaskAppDataTranslationsToJson(
        TaskAppDataTranslations instance) =>
    <String, dynamic>{
      'noResultsMessage': instance.noResultsMessage,
      'comments': instance.comments,
      'file': instance.file,
      'link': instance.link,
      'reference': instance.reference,
      'resourcesHeader': instance.resourcesHeader,
      'curriculumHeader': instance.curriculumHeader,
      'activityHeader': instance.activityHeader,
      'milestoneHeader': instance.milestoneHeader,
      'overdue': instance.overdue,
      'due': instance.due,
      'done': instance.done,
      'back': instance.back,
      'readMore': instance.readMore,
      'show': instance.show,
      'hide': instance.hide,
      'addNote': instance.addNote,
      'optionalPartsMessage': instance.optionalPartsMessage,
      'optionalPartsButton': instance.optionalPartsButton,
      'returnToList': instance.returnToList,
      'previousTask': instance.previousTask,
      'nextTask': instance.nextTask,
      'pageCount': instance.pageCount,
      'milestone': instance.milestone,
      'addMilestone': instance.addMilestone,
      'addFile': instance.addFile,
      'addMessage': instance.addMessage,
      'edit': instance.edit,
      'save': instance.save,
      'send': instance.send,
      'cancel': instance.cancel,
      'filterTasks': instance.filterTasks,
      'filterBy': instance.filterBy,
      'subject': instance.subject,
      'teacher': instance.teacher,
      'selectSubject': instance.selectSubject,
      'selectTeacher': instance.selectTeacher,
      'apply': instance.apply,
      'clear': instance.clear,
      'filterHelperMessage': instance.filterHelperMessage,
      'filterHelperLinkText': instance.filterHelperLinkText,
      'optionalParts': instance.optionalParts,
      'previousPage': instance.previousPage,
      'nextPage': instance.nextPage,
      'yourNote': instance.yourNote,
      'attachmentWrongType': instance.attachmentWrongType,
      'attachmentSizeSumTooLarge': instance.attachmentSizeSumTooLarge,
      'uploading': instance.uploading,
      'editMilestones': instance.editMilestones,
      'submit': instance.submit,
      'unsubmit': instance.unsubmit,
      'dateFormat': instance.dateFormat,
      'altFormat': instance.altFormat,
      'add': instance.add,
      'fileList': instance.fileList,
      'document': instance.document,
      'addO365File': instance.addO365File,
      'noResultsFound': instance.noResultsFound,
      'page': instance.page,
      'previous': instance.previous,
      'next': instance.next,
      'taskHandInSelectAnyFile': instance.taskHandInSelectAnyFile,
      'sendMessage': instance.sendMessage,
      'newMessage': instance.newMessage,
      'title': instance.title,
      'download': instance.download,
      'errorLoadingImage': instance.errorLoadingImage,
      'close': instance.close,
      'assignments': instance.assignments,
      'noTasksToShow': instance.noTasksToShow,
      'goodJob': instance.goodJob,
      'noOverdueTasks': instance.noOverdueTasks,
      'completedAllTasks': instance.completedAllTasks,
      'noDueTasks': instance.noDueTasks,
      'workOnOverdueTasks': instance.workOnOverdueTasks,
      'workOnDueTasks': instance.workOnDueTasks,
      'notCompletedAnyTasks': instance.notCompletedAnyTasks,
      'pleaseNote': instance.pleaseNote,
      'plagiarismWarning': instance.plagiarismWarning,
      'optOut': instance.optOut,
    };

TaskAppDataUrls _$TaskAppDataUrlsFromJson(Map<String, dynamic> json) =>
    TaskAppDataUrls(
      Uri.parse(json['acknowledgeOptionalParts'] as String),
      Uri.parse(json['addComment'] as String),
      Uri.parse(json['addOffice365File'] as String),
      Uri.parse(json['deleteHandIn'] as String),
      Uri.parse(json['downloadHandIn'] as String),
      Uri.parse(json['editMilestones'] as String),
      Uri.parse(json['getTask'] as String),
      Uri.parse(json['getTasks'] as String),
      Uri.parse(json['sendMessage'] as String),
      Uri.parse(json['setMilestoneStatus'] as String),
      Uri.parse(json['setNote'] as String),
      Uri.parse(json['setTaskStatus'] as String),
      Uri.parse(json['uploadHandIn'] as String),
      Uri.parse(json['uploadThirdPartyHandIns'] as String),
    );

Map<String, dynamic> _$TaskAppDataUrlsToJson(TaskAppDataUrls instance) =>
    <String, dynamic>{
      'getTask': instance.getTask.toString(),
      'getTasks': instance.getTasks.toString(),
      'setNote': instance.setNote.toString(),
      'uploadHandIn': instance.uploadHandIn.toString(),
      'downloadHandIn': instance.downloadHandIn.toString(),
      'deleteHandIn': instance.deleteHandIn.toString(),
      'editMilestones': instance.editMilestones.toString(),
      'addComment': instance.addComment.toString(),
      'setMilestoneStatus': instance.setMilestoneStatus.toString(),
      'setTaskStatus': instance.setTaskStatus.toString(),
      'acknowledgeOptionalParts': instance.acknowledgeOptionalParts.toString(),
      'addOffice365File': instance.addOffice365File.toString(),
      'uploadThirdPartyHandIns': instance.uploadThirdPartyHandIns.toString(),
      'sendMessage': instance.sendMessage.toString(),
    };

TaskTask _$TaskTaskFromJson(Map<String, dynamic> json) => TaskTask(
      (json['items'] as List<dynamic>)
          .map((e) => TaskTaskItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['more'] as bool,
      (json['totalDone'] as num).toInt(),
      (json['totalDue'] as num).toInt(),
      (json['totalOverdue'] as num).toInt(),
    );

Map<String, dynamic> _$TaskTaskToJson(TaskTask instance) => <String, dynamic>{
      'items': instance.items,
      'more': instance.more,
      'totalOverdue': instance.totalOverdue,
      'totalDue': instance.totalDue,
      'totalDone': instance.totalDone,
    };

TaskTaskItem _$TaskTaskItemFromJson(Map<String, dynamic> json) => TaskTaskItem(
      TaskTaskItem._preciseDateFromJson(json['assignedOn'] as String),
      json['description'] as String,
      TaskTaskItem._dateFromJson(json['dueDate'] as String),
      TaskTaskItem._preciseDateFromJson(json['dueDateDateValue'] as String),
      json['hasFiles'] as bool,
      json['hasLinks'] as bool,
      json['hasReferences'] as bool,
      json['hasUnreadComments'] as bool,
      (json['id'] as num).toInt(),
      json['isOverdue'] as bool,
      json['isWithinCurrentTimeframe'] as bool,
      (json['milestoneCount'] as num).toInt(),
      (json['milestonesComplete'] as num).toInt(),
      json['read'] as bool,
      json['showOnedriveResource'] as bool,
      json['showOptionalPartsMessage'] as bool,
      json['statusText'] as String,
      json['subject'] as String,
      json['title'] as String,
    );

Map<String, dynamic> _$TaskTaskItemToJson(TaskTaskItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'milestoneCount': instance.milestoneCount,
      'milestonesComplete': instance.milestonesComplete,
      'read': instance.read,
      'hasUnreadComments': instance.hasUnreadComments,
      'hasLinks': instance.hasLinks,
      'hasFiles': instance.hasFiles,
      'hasReferences': instance.hasReferences,
      'showOptionalPartsMessage': instance.showOptionalPartsMessage,
      'isOverdue': instance.isOverdue,
      'isWithinCurrentTimeframe': instance.isWithinCurrentTimeframe,
      'showOnedriveResource': instance.showOnedriveResource,
      'dueDate': TaskTaskItem._dateToJson(instance.dueDate),
      'assignedOn': TaskTaskItem._preciseDateToJson(instance.assignedOn),
      'dueDateDateValue':
          TaskTaskItem._preciseDateToJson(instance.dueDateDateValue),
      'statusText': instance.statusText,
      'description': instance.description,
      'subject': instance.subject,
      'title': instance.title,
    };
