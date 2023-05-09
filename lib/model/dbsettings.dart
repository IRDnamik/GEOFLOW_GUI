class DbSetting {
  final int? id;
  final String databaseName;
  final String host;
  final String user;
  final String password;

  DbSetting(
      {this.id,
      required this.databaseName,
      required this.host,
      required this.user,
      required this.password});
}
