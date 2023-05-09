class DbSetting {
  final int? id;
  final String databaseName;
  final String host;
  final String dbuser;
  final String password;

  DbSetting(
      {this.id,
      required this.databaseName,
      required this.host,
      required this.dbuser,
      required this.password});
}

class GdriveSetting {
  final String email;
  final String password;

  GdriveSetting(this.email, this.password);
}
