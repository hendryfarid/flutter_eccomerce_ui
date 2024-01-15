import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_ui/screen/home/widget/itemproduct.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
        leading: Icon(Icons.menu, color: Colors.black,),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.cyan.shade900,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                )
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text("Hi Hendry", style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white
                  ),),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: Text("Are you looking for quality products? you are at the right place, continue your shopping.", 
                      style: TextStyle(
                        color: Colors.white60,
                        height: 1.5
                      ), textAlign: TextAlign.center,),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)
                      )
                    ),
                  )
                ],
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -70),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration( 
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0,5),
                      color: Theme.of(context).primaryColor.withOpacity(.2),
                      spreadRadius: 2,
                      blurRadius: 5
                    )
                  ]
                  
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search product',
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20)
                        ),
                      )
                    ),
                    Container(
                      padding: const EdgeInsets.all(5), 
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        shape: BoxShape.circle
                      ),
                      child: Icon(Icons.search,  color: Colors.white, size: 25,),
                       
                    )
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -60),
              child: const Column(
                children: [
                  ItemProduct(),
                  ItemProduct(),
                  ItemProduct(),
                  ItemProduct(),
                  ItemProduct(),
                  ItemProduct(),
                  ItemProduct(),
                  ItemProduct(),
                ],
              ),
            )
          ],
      
        ),
      ),
    );
  }
}