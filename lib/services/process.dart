import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'package:archive/archive.dart';

class Process {
  Future<void> selectDirectory() async {
    String? selectedDir = await FilePicker.platform.getDirectoryPath();

    if (selectedDir == null) {
      // raise exception
      // User canceled the picker
    }
  }
}
