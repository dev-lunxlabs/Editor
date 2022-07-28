import 'package:file_picker/file_picker.dart';

Future<List<String?>> pickVideos() async {
  late List<String?> listPath = [];

  FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.video);
  if (result != null) {
    listPath = result.paths;
  }
  return listPath;
}
