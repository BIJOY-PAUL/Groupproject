import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
 homePage({super.key});

  int day=30;
  String name ="Bijoy18";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [Center(child: Text("Flutter",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange),)),
        Center(child: Text("Master",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),))],),
      ),),

      body:  Center(
          child: Container(
            child: Text("Welcome to $day days of flutter by $name",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),

          ),
        ),

      drawer: Drawer(
        child: Material(
          color: Colors.blueAccent,
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage()),);
              
            },
            child: Container(
              padding: EdgeInsets.only(
                top:MediaQuery.of(context).padding.top,
                bottom: 24,
              ),
              child: Column(
                children: [
                  CircleAvatar(

                    radius: 52,
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLA994hpL3PMmq0scCuWOu0LGsjef49dyXVg&s"),
                  ),
                  SizedBox(height: 12,),
                  Text("Bijoy Paul ",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 12,),
                  Text("bijoypal4856@gmail.com",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 12,),
                  Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.home_outlined),
                        title: Text("Home"),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.favorite_border),
                        title: Text("Favorites"),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),

                      ListTile(
                        leading: Icon(Icons.workspaces),
                        title: Text("Workflow"),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.account_tree_outlined),
                        title: Text("plugin"),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),

                      ListTile(
                        leading: Icon(Icons.update),
                        title: Text("Updates"),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),

                      ListTile(
                        leading: Icon(Icons.circle_notifications_outlined),
                        title: Text("Notification"),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),

                      ListTile(
                        leading: Icon(Icons.share),
                        title: Text("Share"),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),







                    ],
                  )


                ],

              ),

            ),

          ),



        ),


      ),





      );

  }
}
