String firstLevelDivider = '|';
String secondLevelDivider = ';';

extension Cleaner on String {
  String trimDivider(String divider) {
    if (this.contains(divider) &&
        this.length > 0 &&
        this.substring(0, 1) == divider) {
      return this.substring(1, this.length);
    } else {
      return this;
    }
  }
}
