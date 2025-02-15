import 'package:lib_smilingschool/src/api_base.dart';

/// API Bindings for the resources endpoints
class Resource extends BaseAPI {
  Resource({required super.client});

  /// Get a resource by it's ID. Used for getting documents, pdfs, etc. For thumbnails you shall use downloadThumbnail
  ///
  /// **Returns raw data**
  Future<dynamic> downloadResource(int id) async {
    // We dont give any parameters to api, Moduletype or connectionID at the moment because I have no idea what they are meant for!
    // Just using defaults
    var rs = await super.client?.post(
        "https://hub.infomentor.se/Resources/Resource/Download/$id",
        queryParameters: {
          "api": "IM2",
          "ModuleType": "None",
          "ConnectionId": 0
        });
    return Future.value(rs?.data);
  }

  /// Get a thumbnail by it's ID. Width and height are obligatory!
  ///
  /// **Returns raw data**
  ///
  /// **NOTE**: Width and height sets either width OR height depending on the type of image.
  /// If horizontal the width will be controlling the width of the image, and height will have no effect essentially
  /// If vertical the height will be controlling the height of the image, and width will have no effect essentially
  Future<dynamic> downloadThumbnail(int id, int width, int height) async {
    // We dont give any parameters to api, Moduletype or connectionID at the moment because I have no idea what they are meant for!
    // Just using defaults
    var rs = await super.client?.post(
        "https://hub.infomentor.se/Resources/Resource/Thumbnail/$id",
        queryParameters: {
          "api": "IM2",
          "ModuleType": "None",
          "ConnectionId": 0,
          "width": width,
          "height": height
        });
    return Future.value(rs?.data);
  }
}
