
import 'package:flutter/material.dart';

class FireAndSafety extends StatefulWidget {
  const FireAndSafety({super.key});

  @override
  State<FireAndSafety> createState() => _FireAndSafetyState();
}

class _FireAndSafetyState extends State<FireAndSafety> {

  List<String> fireAndSafety = [
    "Maharani Fire And Safety",
    "Fire And Safety",
    "Fire And Safety",
    "Fire And Safety",
    "Fire And Safety",
    "Fire And Safety",
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Fire And Safety"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(itemBuilder: (context,index)
                {

                  return Card(
                    child: ListTile(
                      iconColor: Colors.redAccent,
                      leading: const Icon(Icons.fire_extinguisher),
                      title: Text(fireAndSafety[index]),
                      subtitle: const Text("Number"),
                      trailing: const Icon(Icons.call),
                    ),
                  );
                },
                  itemCount: fireAndSafety.length,
                ),
              ),
            ],
          ),
        ),
      ),);
  }
}
