import 'package:flutter/material.dart';
import 'package:my_flutter_app/poke_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TopPage(),
    );
  }
}

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) => PokeListItem(index: index)),
    );
  }
}

class PokeListItem extends StatelessWidget {
  const PokeListItem({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: const Text("No 138 Omnyte",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        subtitle: const Text("Rock, Water"),
        leading: Container(
          width: 80,
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(.5),
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage(
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/138.png",
              ),
            ),
          ),
        ),
        trailing: const Icon(Icons.navigate_next),
        onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) =>
                    const PokeDetail(title: "No 138 Omnyte"),
              ))
            });
  }
}
