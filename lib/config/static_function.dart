// Function to extract text content from HTML
String extractStringFromHTML(String htmlString) {
  // Remove HTML tags and attributes
  String withoutTags = htmlString.replaceAll(RegExp(r'<[^>]*>'), '');

  // Remove leading and trailing whitespace
  String trimmedString = withoutTags.trim();

  return trimmedString;
}
