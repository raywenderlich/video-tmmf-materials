import 'package:flutter/material.dart';
import '../utils/strings.dart';

class FormResult extends StatelessWidget {
  final Map<String, dynamic>? result;

  const FormResult({Key? key, this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 300,
      child: ListView.builder(
        itemCount: result!.length,
        itemBuilder: (BuildContext context, int index) {
          final key = result!.keys.elementAt(index);
          final title = camelCaseToTitle(key);
          return Column(
            children: <Widget>[
              ListTile(
                title: Text('$title'),
                subtitle: Text('${result![key]}'),
              ),
              const Divider(
                height: 2.0,
              ),
            ],
          );
        },
      ),
    );
  }
}
