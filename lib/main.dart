import 'package:flutter/material.dart';

void main() => {
      runApp(const MaterialApp(
        home: MyApp(),
      ))
    };

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img-1.jpeg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[600],
            ),
            const Text('Name',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            const SizedBox(
              height: 10.0,
            ),
            Text('Posh-23',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 16.0)),
            const SizedBox(height: 20.0),
            const Text('CURRENT NINJA LEVEL',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            const SizedBox(
              height: 10.0,
            ),
            Text('$ninjaLevel',
                style:
                    TextStyle(color: Colors.amberAccent[200], fontSize: 16.0)),
            const SizedBox(height: 30.0),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey[400]),
                const SizedBox(
                  width: 20.0,
                ),
                Text(
                  'joshuamayowa23@yahoo.com',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.00,
                      letterSpacing: 1.0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
