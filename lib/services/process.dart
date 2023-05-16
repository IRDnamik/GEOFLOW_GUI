import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'package:archive/archive.dart';
import 'package:geoflow_gui/model/dbsettings.dart';
import 'package:geoflow_gui/ui/subviews/drive_connection.dart';

class Process {
  List<GdriveSetting> gDriveConnections = [];
  List<DbSetting> pgsqlConnections = [];

  void addNewConnection(Object datasourceConnection) {
    if (datasourceConnection is GdriveSetting) {
      gDriveConnections.add(datasourceConnection);
      print(gDriveConnections.toString());
    } else if (datasourceConnection is DbSetting) {
      pgsqlConnections.add(datasourceConnection);
    } else {
      throw Error();
    }
  }

  // Initalize persistant connexion from localdb

  // Pickup directory where shape or raster files are
  Future<void> selectDirectory() async {
    String? selectedDir = await FilePicker.platform.getDirectoryPath();

    if (selectedDir == null) {
      // raise exception
      // User canceled the picker
    }
  }
}
