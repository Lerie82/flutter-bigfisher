import 'dart:io';

get curDir => Directory.current.absolute;
get scanFiles => Directory.fromRawPath(curDir + "scans")
    .exists()
    .then((b) => getScanFiles(Directory.fromRawPath(curDir + "scans")))
    .then((value) => {
          //
        });

getScanFiles(var fs) async {
  await for (var entry in fs.list(recursive: true, followLinks: false)) {
    //
  }
}

/*
scanDir.isDirectory(myPath).then((isDir) {
if (isDir) {
print('$myPath is a directory');
} else {
print('$myPath is not a directory');
}
});*/
