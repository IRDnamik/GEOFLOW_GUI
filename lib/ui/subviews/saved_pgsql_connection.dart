import 'package:flutter/material.dart';
import 'package:geoflow_gui/model/dbsettings.dart';

class SavedPgsqlConnection extends StatelessWidget {
  final List<DbSetting> databaseName = [
    DbSetting(databaseName: "MyDB", port: 4321, host: 'localhost', dbuser: "postgres", password: "123456"),
    DbSetting(databaseName: "MyDB1", port: 4321, host: 'localhost', dbuser: "postgres", password: "123456"),
    DbSetting(databaseName: "MyDB2", port: 4321, host: 'localhost', dbuser: "postgres", password: "123456"),
    DbSetting(databaseName: "MyDB3", port: 4321, host: 'localhost', dbuser: "postgres", password: "123456"),
  ];

  SavedPgsqlConnection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 200),
          child: SizedBox(
            height: 50.0 * databaseName.length,
            child: ListView.builder(
              itemCount: databaseName.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(Colors.grey),
                      elevation: MaterialStateProperty.all(2),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.storage),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(databaseName[index].databaseName),
                        ),
                      ],
                    ),
                    onPressed: () {
                      // set data source  as PGSQL and quit dialog
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
