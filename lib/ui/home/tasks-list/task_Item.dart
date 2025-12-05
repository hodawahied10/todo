import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(18)
            
      ),
      child: Slidable(

        startActionPane: ActionPane(
          extentRatio: .4,
            motion: DrawerMotion(),
            children: [
              SlidableAction(onPressed: (bulidContext){

              },
                backgroundColor: Colors.red,
                label: 'Delete',
                icon: Icons.delete,
                borderRadius: BorderRadius.only(
                  topRight:Radius.circular(18) ,
                  bottomLeft: Radius.circular(18),
                ),

              )

            ]),
        child: Container(

          padding:EdgeInsets.all(12) ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white
          ),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Theme.of(context).primaryColor
                ),

              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('this is title',style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Theme.of(context).primaryColor
                    ),),
                    Text('this is description')

                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color:  Theme.of(context).primaryColor
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 18),
                  child: Icon(Icons.check,
                    color: Colors.white,
                    size: 48,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  
}