class ImagePath {
  static directoryPath(String name) => 'assets/images/$name';
  static directorySvgPath(String name) => 'assets/svg_icons/$name';
  static tempImageDirectory(String name) => 'assets/temp_images/$name';

  /// ----------------------------- SVG path -----------------------------




  /// ----------------------------- Images path -----------------------------
  static String defaultProfileIcon = directoryPath('default_profile_icon.jpg');
  static String foodImage = directoryPath('food_image.jpg');



  /// ----------------------------- Temp Images path -----------------------------

}