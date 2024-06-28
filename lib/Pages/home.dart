
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:videoplayer/screens/itemsScreen.dart';
import 'package:videoplayer/screens/newsList.dart';


class Home extends StatelessWidget{
  const Home({super.key});


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage", style: TextStyle(fontFamily: 'Poppins',fontSize: 20, color: Colors.white),),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      extendBodyBehindAppBar: false,
      drawer: Drawer(
        backgroundColor: Colors.blueAccent,
        child: Container(
          color: Colors.white,
          child: ListView(
            children: const [
              DrawerHeader(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent),
                  child: Center(
                      child: Text(
                        "VidPlay",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 35 ),))
              ),
              ListTile(
                leading: Icon(Iconsax.magic_star, size: 20,),
                title: Text("My Favorites", style: TextStyle(fontSize: 15, fontFamily: 'Poppins' ),),
              ),
              ListTile(
                leading: Icon(Iconsax.play_add, size: 20,),
                title: Text("My playlist", style: TextStyle(fontSize: 15, fontFamily: 'Poppins' ),),
              ),
              
              ListTile(
                //onTap: ,
                leading: Icon(Icons.exit_to_app, size: 20,),
                title: Text("Exit", style: TextStyle(fontSize: 15, fontFamily: 'Poppins' ),),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 15, right: 15),
                children: [
                  const SizedBox( height: 20,),
                  const Text(
                    "Recently Played",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),),
                 const SizedBox(height: 10,),
                 SizedBox(
                   height: 160,
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                       itemCount: 10,
                       itemBuilder: (context, index){
                         return GestureDetector(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context) =>  const Item()));
                           },
                           child: Container(
                             width: 150,
                             margin: const EdgeInsets.only(left: 10, right: 10),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                             ),
                             child: const Card(
                               elevation: 5,
                               color: Colors.white,
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Icon(Icons.error_outline_rounded, size: 40, color: Colors.red,),
                                   SizedBox(height: 10,),
                                   Text(
                                     "Error while getting data",
                                     style: TextStyle(
                                       fontSize: 10,
                                       fontFamily: 'Poppins'
                                     ),
                                   )
                                 ],
                               ),
                             ),
                             ));
                       }
                   ),
                 ),

                  const SizedBox( height: 30,),
                  const Text(
                    "News: Streams",
                    style:  TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    height: 200,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const NewsList()));
                      },
                      child:  const Card(
                        elevation: 5,
                        color: Colors.greenAccent,
                        /*
                      * child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "New video",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  color: Colors.black26,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ],
                      ),
                      * */
                      ),
                    )
                  ),


                  const SizedBox( height: 30,),
                  const Text(
                    "For you: New Playlist",
                    style:  TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 340,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (context, index){
                          return GestureDetector(
                            onTap: (){},
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10,),
                              alignment: Alignment.center,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text("${index +1}"),
                            ),
                          );
                        }
                    ),
                  ),

                  const SizedBox( height: 30,),
                  const Text(
                    "Ads: Switch to Premium",
                    style:  TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    height: 200,
                    child: const Card(
                      elevation: 5,
                      color: Colors.purpleAccent,
                    ),
                  ),


                  const SizedBox( height: 30,),
                  const Text(
                    "Tools",
                    style:  TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    height: 200,
                    child: const Card(
                      elevation: 5,
                      color: Colors.redAccent,
                    ),
                  )
                ],
              )
    );
  }
}
