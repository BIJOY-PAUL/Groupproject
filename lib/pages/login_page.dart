import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  TextEditingController userController =TextEditingController();

  TextEditingController passwrod =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,

      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,

        children: [


        Container(

          height: 300,
          width: 500,

           child:  Image.asset("assets/images/login_image.png",fit:BoxFit.cover,)
        ),

        SizedBox(height: 15,),
        
        Text("Welcome",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),

        SizedBox(height: 15,),

        // user input name

          Container(

            constraints: BoxConstraints(
              minHeight: 60,
              maxWidth: 450,




            ),

            child:   TextField(



                  controller: userController,


                  cursorColor: Colors.green,
                  decoration:InputDecoration(

                    border: OutlineInputBorder(

                      borderSide: BorderSide(color: Colors.green,width: 2),

                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),


                    )),

                    labelText: "User name",
                    prefix: Icon(Icons.man_2_rounded),




                  ),
              ),

          ),




        SizedBox(height: 15,),

        // user password

          Container(

            constraints: BoxConstraints(
              minHeight: 60,
              maxWidth: 450,
            ),

            child:  TextField(

              controller: passwrod  ,

              cursorColor: Colors.green,

              obscureText: true,

              decoration:InputDecoration(

                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green,width: 2),
                    borderRadius: BorderRadius.only(


                  topLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),


                )),

                labelText: "Password",

                prefix: Icon(Icons.password_rounded),

              ),
            ),




          ),


        SizedBox(height: 15,),

        //login button

        ElevatedButton(onPressed: (){

          print("Hi codepur");

        }, child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)),

        SizedBox(height: 15,),





      ],),


    );
  }
}
