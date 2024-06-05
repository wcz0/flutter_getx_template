
import 'package:flutter/material.dart';

class IndexRoute extends StatefulWidget {
  const IndexRoute({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<IndexRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Index'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Index',
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(5),
      child: const TextField(
        decoration: InputDecoration(
          hintText:  "搜索",
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}