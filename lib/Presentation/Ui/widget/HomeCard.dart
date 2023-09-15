import 'package:flutter/material.dart';
class HomeCard extends StatelessWidget {

   final String image;
  final  String text;

  final onTap;

  const HomeCard({

    super.key, required this.image, required this.text, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
     borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: SizedBox(
        height: 180,
        width: 180,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image,height: 100,width: 100),
              const SizedBox(height: 10,),
               Text(text,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black54),),
            ],
          ),

        ),

      ),
    );
  }
}
