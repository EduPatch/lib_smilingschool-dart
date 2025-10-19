import 'package:lib_smilingschool/src/api/models/communication.models.dart';
import 'package:lib_smilingschool/src/api_base.dart';

/// API Bindings for the communication endpoints
///
/// NOTE: We chose not to implement GetCurrentList here because we have no return data for it whatsoever, so we have no idea how to actually map it to json.
///
/// If you manage to get response data from it which isn't an empty list, feel free to contact me (Spamix) or another lib_smilingshcool-dart maintainer on discord!
/// Discord username: sapmix
///
/// - Edupatch maintainers
class Communication extends BaseAPI {
  Communication({required super.client});

  Future<CommunicationAppData> appData() async {
    var rs = await super
        .client
        ?.post("https://hub.infomentor.se/communication/communication/appData");
    return Future.value(CommunicationAppData.fromJson(rs?.data));
  }

  Future<CommunicationNewsList> getNewsList(
      {int pageSize = -1,
      CommunicationSort sort = CommunicationSort.none,
      CommunicationSortType sortBy = CommunicationSortType.date}) async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/communication/news/GetNewsList",
        data: {
          "pageSize": pageSize,
          "sortBy": createCommunicationKey(sort, sortBy)
        });

    return Future.value(CommunicationNewsList.fromJson(rs?.data));
  }

  /// Returns all the data from the GetLinksList endpoint
  ///
  /// NOTE: typeIds are the ids you get back from appData
  /// in linkTypeFilters
  Future<CommunicationLinksList> getLinksList(
      {int pageSize = 5,
      int page = 1,
      CommunicationSort sort = CommunicationSort.asc,
      CommunicationSortType sortBy = CommunicationSortType.title,
      List<int>? typeIds}) async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/communication/links/GetLinksList",
        data: {
          "page": page,
          "pageSize": pageSize,
          "sortBy": createCommunicationKey(sort, sortBy),
          "typeIds": typeIds != null ? typeIds.join(",") : ""
        });
    return Future.value(CommunicationLinksList.fromJson(rs?.data));
  }

  /// Returns all Files from the GetDocumentsList endpoint
  ///
  /// NOTE: typeIds are the ids you get back from appData
  /// in linkTypeFilters
  Future<CommunicationDocumentsList> getDocumentsList(
      {int pageSize = 5,
      int page = 1,
      CommunicationSort sort = CommunicationSort.asc,
      CommunicationSortType sortBy = CommunicationSortType.title,
      List<int>? typeIds}) async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/communication/documents/GetdocumentsList",
        data: {
          "page": page,
          "pageSize": pageSize,
          "sortBy": createCommunicationKey(sort, sortBy),
          "typeIds": typeIds != null ? typeIds.join(",") : ""
        });
    return Future.value(CommunicationDocumentsList.fromJson(rs?.data));
  }
}

enum CommunicationSort { none, asc, desc }

enum CommunicationSortType { date, title, author }

String createCommunicationKey(
    CommunicationSort sort, CommunicationSortType sortBy) {
  String sortWord;
  String sortByWord;

  switch (sort) {
    case CommunicationSort.asc:
      sortWord = "SORT_ASC";
    case CommunicationSort.desc:
      sortWord = "SORT_DESC";
    default:
      sortWord = "SORT_NONE";
  }

  switch (sortBy) {
    case CommunicationSortType.title:
      sortByWord = "title";
    case CommunicationSortType.author:
      sortByWord = "publishedBy";
    default:
      sortByWord = "lastPublishDate";
  }

  return "${sortByWord}___$sortWord";
}
