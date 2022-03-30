

import 'package:location_permissions/location_permissions.dart';

Future<bool> checkLocation() async {
  var status = await LocationPermissions().checkPermissionStatus();
  if(status == PermissionStatus.granted){
    return true;
  }
  else{
    await LocationPermissions().requestPermissions();
    var stat =  await LocationPermissions().checkPermissionStatus();
    print(stat);
    if(stat == PermissionStatus.granted){
      return true;
    }
    else{
      return false;
    }
  }
}