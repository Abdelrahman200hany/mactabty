
abstract class FixImage {


 static String fixImageUrl(String url) {
  if (url.startsWith("http://")) {
    return url.replaceFirst("http://", "https://");
  }
  return url;
}

}

