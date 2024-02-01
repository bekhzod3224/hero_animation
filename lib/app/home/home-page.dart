import 'package:flutter/material.dart';
import 'package:hero_animation/app/core/hero-items.dart';
import 'package:hero_animation/app/home/hero_details.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final controller  = HeroItems();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      
        title: Text(""),
      ),
      body: Center(
        
        child: ListView.builder(
          itemCount: controller.items.length,
          itemBuilder: (context, index){
          return ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HeroDetails(data: controller.items[index])));
            },
            title: Text(controller.items[index].name),
            leading: Hero(tag: controller.items[index].images, child: CircleAvatar(radius: 30, backgroundImage: AssetImage(controller.items[index].images))) ,
          ) ;
        }),
      ),
     
    );
  }
}