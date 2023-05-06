import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class FileStorage {

  static Future<String> getExternalDocumentPath() async {
    // To check whether permission is given for the app or not.
     var status = await Permission.storage.status;
     if (!status.isGranted){
       // if not we will ask for permission first time
       await Permission.storage.request();

     }
     Directory _directory = Directory("");

     if(Platform.isAndroid){
       // Redirects it to download folder in android
       _directory = Directory("/storage/emulated/0/Download");
     }
     else {
       _directory = await getApplicationDocumentsDirectory();
     }

     final exPath  = _directory.path;

     print("Saved path: $exPath");

     await Directory(exPath).create(recursive: true);
     return exPath;

  }

  static Future<String> get _localPath async{
    final String directory = await getExternalDocumentPath();
    return directory;
  }

  static Future<File> writeCounter(String bytes,  String name) async {
    final path = await getExternalDocumentPath();
    File file = File("$path/$name");
    print('Save File ');

    // write the data in the file you have created
    return file.writeAsString(bytes);

  }

}