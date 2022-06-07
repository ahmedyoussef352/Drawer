import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food2/sreens/Home/Home.dart';
import 'package:food2/sreens/My_profile/My_profile.dart';

class DrawerSide extends StatefulWidget {
  const DrawerSide({Key? key}) : super(key: key);

  @override
  State<DrawerSide> createState() => _DrawerSideState();
}

class _DrawerSideState extends State<DrawerSide> {
  Widget _listTile(String title, IconData iconData) {
    return InkWell(
      child: Container(
          height: 50,
          child: ListTile(
              leading: Icon(
                iconData,
                size: 35,
              ),
              title: Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 17),
              ))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return (Drawer(
      backgroundColor: Colors.black,
      child: Container(
        color: Color.fromARGB(255, 237, 204, 71),
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: ListView(
            children: [
              
            
              Container(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 245, 206, 50),
                        backgroundImage: (NetworkImage(
                            "https://s3.envato.com/files/328957910/vegi_thumb.png")),
                        radius: 37,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Guest',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Container(
                              width: 75,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black)),
                              child: Center(
                                  child: Text(
                                'LOGIN',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: ((context) => Home())));
              }
              ,child: _listTile('Home', Icons.home_outlined),),
              _listTile("Review Cart", Icons.shop_outlined),
              InkWell(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: ((context) => MyProfile())));
              }
                ,child: _listTile("My Profile", Icons.person_outlined,)),
              _listTile("Notificatio", Icons.notifications_outlined),
              _listTile("Rating & Review", Icons.star_outline),
              _listTile("Wishlist", Icons.favorite_outline),
              _listTile("Raise a Complaint", Icons.copy_outlined),
              _listTile("FAQs", Icons.format_quote_outlined),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact Support',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Calue',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          '+910990426594',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Mail us',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Vegi.com',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
