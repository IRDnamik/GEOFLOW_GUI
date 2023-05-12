class DbSetting {
  final int? id;
  final String databaseName;
  final int port;
  final String host;
  final String dbuser;
  final String password;

  DbSetting(
      {this.id,
      required this.databaseName,
      required this.port,
      required this.host,
      required this.dbuser,
      required this.password});
}

class GdriveSetting {
  final String email;

  GdriveSetting(this.email);
}
