import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:social_media/provider/firebase_provider.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  String _caption;
  String _type;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      color: Colors.black,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              autocorrect: false,
              decoration: InputDecoration(
                  labelText: 'Caption', prefixIcon: Icon(Icons.closed_caption)),
              onChanged: (value) {
                setState(() {
                  _caption = value;
                });
              },
              validator: (value) {
                if (value.isEmpty) {
                  return 'Cannot be empty';
                }
                return null;
              },
            ),
            DropdownButtonFormField(
              icon: Icon(Icons.arrow_drop_down_circle),
              value: _type,
              // decoration: InputDecoration(hintText: 'Type'),
              // hint: Text('Type'),
              items: [
                DropdownMenuItem(
                  value: 'All',
                  child: Text('All'),
                ),
                DropdownMenuItem(
                  value: "Relationship",
                  child: Text('Relationship'),
                ),
                DropdownMenuItem(
                  value: 'Girl Talk',
                  child: Text('Girl Talk'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _type = value;
                });
              },
            ),
            FlatButton(
              onPressed: () async {
                if (_formKey.currentState.validate()) {
                  await FirebaseProvider().addPostToDb(_caption, _type);
                  ExtendedNavigator.of(context).pop();
                }
              },
              child: Text(
                'SUBMIT',
                style: TextStyle(color: Colors.black),
              ),
              color: Theme.of(context).accentColor,
            ),
          ],
        ),
      ),
    );
  }
}
