import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task.models.g.dart';

@JsonSerializable()
class TaskAppData {
  TaskAppDataTranslations translations;
  TaskAppDataUrls urls;
  int maxUploadSize, messageSubjectSize;
  bool isRestricted, canSendMessages;
  List<String> allowedExtensions;
  List<String?>
      allowedMimeTypes; // they threw in a random null in the response list...we have no idea why ¯\_(ツ)_/¯
  TaskAppDataOption filterOption;
  TaskTask taskResults;
  TaskAppData(
      this.translations,
      this.urls,
      this.allowedExtensions,
      this.allowedMimeTypes,
      this.canSendMessages,
      this.filterOption,
      this.isRestricted,
      this.maxUploadSize,
      this.messageSubjectSize,
      this.taskResults);

  factory TaskAppData.fromJson(Map<String, dynamic> json) =>
      _$TaskAppDataFromJson(json);
  Map<String, dynamic> toJson() => _$TaskAppDataToJson(this);
}

@JsonSerializable()
class TaskAppDataOption {
  bool showCoursesFilter;
  TaskAppDataOptionItem subjects, teachers, academicYears, courses;
  TaskAppDataOption(this.showCoursesFilter, this.academicYears, this.courses,
      this.subjects, this.teachers);

  factory TaskAppDataOption.fromJson(Map<String, dynamic> json) =>
      _$TaskAppDataOptionFromJson(json);
  Map<String, dynamic> toJson() => _$TaskAppDataOptionToJson(this);
}

@JsonSerializable()
class TaskAppDataOptionItem {
  String? defaultText;
  List<TaskAppDataOptionItemOption> options;
  TaskAppDataOptionItem(this.defaultText, this.options);

  factory TaskAppDataOptionItem.fromJson(Map<String, dynamic> json) =>
      _$TaskAppDataOptionItemFromJson(json);
  Map<String, dynamic> toJson() => _$TaskAppDataOptionItemToJson(this);
}

@JsonSerializable()
class TaskAppDataOptionItemOption {
  String key, value;
  bool selected;
  TaskAppDataOptionItemOption(this.key, this.selected, this.value);

  factory TaskAppDataOptionItemOption.fromJson(Map<String, dynamic> json) =>
      _$TaskAppDataOptionItemOptionFromJson(json);
  Map<String, dynamic> toJson() => _$TaskAppDataOptionItemOptionToJson(this);
}

@JsonSerializable()
class TaskAppDataTranslations {
  String noResultsMessage,
      comments,
      file,
      link,
      reference,
      resourcesHeader,
      curriculumHeader,
      activityHeader,
      milestoneHeader,
      overdue,
      due,
      done,
      back,
      readMore,
      show,
      hide,
      addNote,
      optionalPartsMessage,
      optionalPartsButton,
      returnToList,
      previousTask,
      nextTask,
      pageCount,
      milestone,
      addMilestone,
      addFile,
      addMessage,
      edit,
      save,
      send,
      cancel,
      filterTasks,
      filterBy,
      subject,
      teacher,
      selectSubject,
      selectTeacher,
      apply,
      clear,
      filterHelperMessage,
      filterHelperLinkText,
      optionalParts,
      previousPage,
      nextPage,
      yourNote,
      attachmentWrongType,
      attachmentSizeSumTooLarge,
      uploading,
      editMilestones,
      submit,
      unsubmit,
      dateFormat,
      altFormat,
      add,
      fileList,
      document,
      addO365File,
      noResultsFound,
      page,
      previous,
      next,
      taskHandInSelectAnyFile,
      sendMessage,
      newMessage,
      title,
      download,
      errorLoadingImage,
      close,
      assignments,
      noTasksToShow,
      goodJob,
      noOverdueTasks,
      completedAllTasks,
      noDueTasks,
      workOnOverdueTasks,
      workOnDueTasks,
      notCompletedAnyTasks,
      pleaseNote,
      plagiarismWarning,
      optOut;
  TaskAppDataTranslations(
      this.noResultsMessage,
      this.comments,
      this.file,
      this.link,
      this.reference,
      this.resourcesHeader,
      this.curriculumHeader,
      this.activityHeader,
      this.milestoneHeader,
      this.overdue,
      this.due,
      this.done,
      this.back,
      this.readMore,
      this.show,
      this.hide,
      this.addNote,
      this.optionalPartsMessage,
      this.optionalPartsButton,
      this.returnToList,
      this.previousTask,
      this.nextTask,
      this.pageCount,
      this.milestone,
      this.addMilestone,
      this.addFile,
      this.addMessage,
      this.edit,
      this.save,
      this.send,
      this.cancel,
      this.filterTasks,
      this.filterBy,
      this.subject,
      this.teacher,
      this.selectSubject,
      this.selectTeacher,
      this.apply,
      this.clear,
      this.filterHelperMessage,
      this.filterHelperLinkText,
      this.optionalParts,
      this.previousPage,
      this.nextPage,
      this.yourNote,
      this.attachmentWrongType,
      this.attachmentSizeSumTooLarge,
      this.uploading,
      this.editMilestones,
      this.submit,
      this.unsubmit,
      this.dateFormat,
      this.altFormat,
      this.add,
      this.fileList,
      this.document,
      this.addO365File,
      this.noResultsFound,
      this.page,
      this.previous,
      this.next,
      this.taskHandInSelectAnyFile,
      this.sendMessage,
      this.newMessage,
      this.title,
      this.download,
      this.errorLoadingImage,
      this.close,
      this.assignments,
      this.noTasksToShow,
      this.goodJob,
      this.noOverdueTasks,
      this.completedAllTasks,
      this.noDueTasks,
      this.workOnOverdueTasks,
      this.workOnDueTasks,
      this.notCompletedAnyTasks,
      this.pleaseNote,
      this.plagiarismWarning,
      this.optOut);
  factory TaskAppDataTranslations.fromJson(Map<String, dynamic> json) =>
      _$TaskAppDataTranslationsFromJson(json);
  Map<String, dynamic> toJson() => _$TaskAppDataTranslationsToJson(this);
}

@JsonSerializable()
class TaskAppDataUrls {
  Uri getTask,
      getTasks,
      setNote,
      uploadHandIn,
      downloadHandIn,
      deleteHandIn,
      editMilestones,
      addComment,
      setMilestoneStatus,
      setTaskStatus,
      acknowledgeOptionalParts,
      addOffice365File,
      uploadThirdPartyHandIns,
      sendMessage;

  TaskAppDataUrls(
      this.acknowledgeOptionalParts,
      this.addComment,
      this.addOffice365File,
      this.deleteHandIn,
      this.downloadHandIn,
      this.editMilestones,
      this.getTask,
      this.getTasks,
      this.sendMessage,
      this.setMilestoneStatus,
      this.setNote,
      this.setTaskStatus,
      this.uploadHandIn,
      this.uploadThirdPartyHandIns);

  factory TaskAppDataUrls.fromJson(Map<String, dynamic> json) =>
      _$TaskAppDataUrlsFromJson(json);
  Map<String, dynamic> toJson() => _$TaskAppDataUrlsToJson(this);
}

// End of TaskAppdata

// Start of TaskTask

@JsonSerializable()
class TaskTask {
  List<TaskTaskItem> items;
  bool more;
  int totalOverdue, totalDue, totalDone;
  TaskTask(
      this.items, this.more, this.totalDone, this.totalDue, this.totalOverdue);

  factory TaskTask.fromJson(Map<String, dynamic> json) =>
      _$TaskTaskFromJson(json);
  Map<String, dynamic> toJson() => _$TaskTaskToJson(this);
}

@JsonSerializable()
class TaskTaskItem {
  int id, milestoneCount, milestonesComplete;
  bool read,
      hasUnreadComments,
      hasLinks,
      hasFiles,
      hasReferences,
      showOptionalPartsMessage,
      isOverdue,
      isWithinCurrentTimeframe,
      showOnedriveResource;

  @JsonKey(toJson: _dateToJson, fromJson: _dateFromJson)
  DateTime dueDate;

  @JsonKey(toJson: _preciseDateToJson, fromJson: _preciseDateFromJson)
  DateTime assignedOn, dueDateDateValue;

  String statusText, description, subject, title;
  TaskTaskItem(
      this.assignedOn,
      this.description,
      this.dueDate,
      this.dueDateDateValue,
      this.hasFiles,
      this.hasLinks,
      this.hasReferences,
      this.hasUnreadComments,
      this.id,
      this.isOverdue,
      this.isWithinCurrentTimeframe,
      this.milestoneCount,
      this.milestonesComplete,
      this.read,
      this.showOnedriveResource,
      this.showOptionalPartsMessage,
      this.statusText,
      this.subject,
      this.title);

  factory TaskTaskItem.fromJson(Map<String, dynamic> json) =>
      _$TaskTaskItemFromJson(json);
  Map<String, dynamic> toJson() => _$TaskTaskItemToJson(this);

  static DateTime _dateFromJson(String val) =>
      DateFormat('dd/MM/yyyy').parse(val);
  static String _dateToJson(DateTime val) =>
      DateFormat('dd/MM/yyyy').format(val);

  static DateTime _preciseDateFromJson(String val) => DateTime.parse(val);
  static String _preciseDateToJson(DateTime val) => val.toIso8601String();
}

// End of TaskTask
