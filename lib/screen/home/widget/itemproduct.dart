import 'package:flutter/material.dart';



class ItemProduct extends StatelessWidget {
  const ItemProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
           borderRadius: BorderRadius.circular(10),
          child: Image.asset('assets/images/product1.png', fit: BoxFit.cover, height: 120, width: 100,),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Here is product', style: Theme.of(context).textTheme.titleLarge,),
              SizedBox(width: 10,),
              Text(
                'Here is the description of this project, kindly read it carefully. We offer 10% discount on this product.',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  height: 1.5
                ),
              ),
              const SizedBox(height: 5,),
              Text('Rp 10000', style: Theme.of(context).textTheme.titleSmall?.copyWith(
                
              ),)

            ],
          ),
        )
      ],
    );
  }
}