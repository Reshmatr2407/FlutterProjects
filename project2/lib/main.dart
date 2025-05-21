import 'package:flutter/material.dart';
import 'package:project2/page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Common Header Navigation Bar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page1(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Common Header Navigation Bar'),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: (String value) {
              // Navigate to the corresponding page based on the selected option
              switch (value) {
                case 'Page 1':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page11()),
                  );
                  break;
                case 'Page 2':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page21()),
                  );
                  break;
                case 'Page 3':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page31()),
                  );
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return {'Page 11', 'Page 21', 'Page 31'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Welcome to the Homepage!'),
      ),
    );
  }
}

class Page11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonPage(
      title: 'Page 1',
      content: 'Welcome to Page 1!',
    );
  }
}

class Page21 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonPage(
      title: 'Page 2',
      content: 'Welcome to Page 2!',
    );
  }
}

class Page31 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonPage(
      title: 'Page 3',
      content: 'Welcome to Page 3!',
    );
  }
}

class CommonPage extends StatelessWidget {
  final String title;
  final String content;

  CommonPage({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Common Header Navigation Bar'),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: (String value) {
              // Navigate to the corresponding page based on the selected option
              switch (value) {
                case 'Page 1':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page11()),
                  );
                  break;
                case 'Page 2':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page21()),
                  );
                  break;
                case 'Page 3':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page31()),
                  );
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return {'Page 1', 'Page 2', 'Page 3'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Center(
        child: Text(content),
      ),
    );
  }
}
