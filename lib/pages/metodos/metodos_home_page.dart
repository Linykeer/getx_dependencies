import 'package:flutter/material.dart';

class MetodosHomePage extends StatelessWidget {
  const MetodosHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Metodos Home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/metodos/putpage');
                },
                child: const Text('PUT'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/metodos/lazyPut');
                },
                child: const Text('Lazy PUT'),
              )
            ],
          ),
        ));
  }
}
