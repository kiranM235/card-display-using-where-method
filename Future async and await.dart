void main() async {
  print("Starting");
//   get("https://google.com")
//     .then( 
//     (value) {
//       print(value);
//     }
//          );
  var response = await get("https://google.com");
  print(response);
  
}

Future<String> get(String url) {
  return Future.delayed(
    Duration(seconds: 1),
    () {
      return "This is the response";
    },
  );
}
