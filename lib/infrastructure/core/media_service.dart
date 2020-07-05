import 'dart:io';
import 'package:image_picker/image_picker.dart';

class MediaService {
  static MediaService instance = MediaService();
  final picker = ImagePicker();

  Future<File> getProfileImage() async {
    // ignore: invalid_use_of_visible_for_testing_member
    final image = await picker.getImage(source: ImageSource.gallery);
    if (image != null) {
      return File(image.path);
    }
  }
}
