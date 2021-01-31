import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'uygulama cercevesi',
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog Uygulaması"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  String blogYazisi = 'Bloga Hosgeldiniz';

  martGoster() {
    setState(() {
      blogYazisi = 'Martgeldigecti';
    });
  }

  nisanGoster() {
    setState(() {
      blogYazisi = 'Nisangeldigecti';
    });
  }

  mayisGoster() {
    setState(() {
      blogYazisi = 'Mayisgeldigecti';
    });
  }

  haziranGoster() {
    setState(() {
      blogYazisi = 'Hazirangeldigecti';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(blogYazisi),
          RaisedButton(
            onPressed: martGoster,
            child: Text('Mart Yazısı'),
          ),
          RaisedButton(
            onPressed: nisanGoster,
            child: Text('NisanYazisi'),
          ),
          RaisedButton(
            onPressed: mayisGoster,
            child: Text('MayisYazisi'),
          ),
          RaisedButton(
            onPressed: haziranGoster,
            child: Text('HaziranYazisi'),
          ),
        ],
      )),
    );
  }
}
