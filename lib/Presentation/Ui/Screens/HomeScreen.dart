import 'package:emergency_app/Presentation/Ui/Utilts/assatsLocation.dart';
import 'package:emergency_app/Presentation/Ui/widget/Appbar.dart';
import 'package:emergency_app/Presentation/Ui/widget/HomeCard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body:   Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Text("Emergency Assistance",style:
            TextStyle(fontSize: 16,fontWeight: FontWeight.bold ,color: Colors.grey ),),
            SizedBox(height: 20,),
            Wrap(
              spacing: 15,
              runSpacing: 15,
              children: [
                HomeCard(
                  image: AssatsLocation.hospitalPNG,
                  text: "HealthCare",
                ),
                HomeCard(
                  image: AssatsLocation.firePng,
                  text: "Fire And Safety",
                ),
                HomeCard(
                  image: AssatsLocation.policePng,
                  text: "Police",
                ),
                HomeCard(
                  image: AssatsLocation.accidenrPng,
                  text: "Accident",
                ),

              ],

            ),
            SizedBox(height: 20,),
            Text("Aluart Your  comtact in case of emergency",style:TextStyle(
                fontSize: 16,fontWeight: FontWeight.bold ,color: Colors.grey ),),
            SizedBox(height: 20,),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(100),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  )
                ],
              ),
              child:  Center(
                child: InkWell(

                    onLongPress: (){
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          title: const Text("SOS"),
                          content: const Text("Are you sure you want to send SOS"),
                          actions: [
                            TextButton(onPressed: (){}, child: const Text("Yes")),
                            TextButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: const Text("No")),
                          ],
                        );
                      });
                    },
                    child: Image.asset(AssatsLocation.sos,height: 65,width: 65,))
              ),
            )

          ],
        ),
      )
    );
  }
}

