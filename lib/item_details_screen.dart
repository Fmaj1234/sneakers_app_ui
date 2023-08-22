import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sneakers_app_ui/cart_screen.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ItemDetailsScreen extends StatefulWidget {
  const ItemDetailsScreen({super.key});

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.home,
          color: Colors.black,
          size: 25,
        ),
        title: Text(
          "Shopping",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 17),
            child: FaIcon(
              FontAwesomeIcons.heart,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                child: Image.asset("assets/images/item.png"),
              )
                  .animate()
                  .slideY(
                      begin: 10,
                      duration: const Duration(
                        milliseconds: 800,
                      ),
                      curve: Curves.easeOut)
                  .fadeIn(
                    begin: 0.1,
                    delay: const Duration(milliseconds: 600),
                  )
                  .moveX(end: 0),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "NIKE Men\'s Shoes",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                )
                    .animate()
                    .fade(duration: const Duration(milliseconds: 600))
                    .slideX(),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nike Air Huarche",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "\$120",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              )
                  .animate()
                  .fade(duration: const Duration(milliseconds: 800))
                  .slideX(),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Sizes",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    _makeSizeButton("US7", true)
                        .animate()
                        .fade(duration: const Duration(milliseconds: 400))
                        .slideX(),
                    SizedBox(width: 8),
                    _makeSizeButton("US7.5", true)
                        .animate()
                        .fade(duration: const Duration(milliseconds: 600))
                        .slideX(),
                    SizedBox(width: 8),
                    _makeSizeButton("US8", false)
                        .animate()
                        .fade(duration: const Duration(milliseconds: 800))
                        .slideX(),
                    SizedBox(width: 8),
                    _makeSizeButton("US8.5", true)
                        .animate()
                        .fade(duration: const Duration(milliseconds: 1200))
                        .slideX(),
                    SizedBox(width: 8),
                    _makeSizeButton("US9", false)
                        .animate()
                        .fade(duration: const Duration(milliseconds: 1400))
                        .slideX(),
                    SizedBox(width: 8),
                    _makeSizeButton("US9.5", true)
                        .animate()
                        .fade(duration: const Duration(milliseconds: 1600))
                        .slideX(),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Faster Shipping options may be available",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: TextStyle(
                    fontSize: 13,
                    height: 1.5,
                    color: Colors.grey,
                  ),
                ),
              )
                  .animate(
                    delay: const Duration(milliseconds: 600),
                  )
                  .fade(
                    duration: const Duration(milliseconds: 600),
                  ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartScreen(),
            ),
          );
        },
        backgroundColor: Colors.black,
        child: Icon(CupertinoIcons.cart),
      ).animate(delay: const Duration(milliseconds: 500)).slideY(
            begin: 1,
            duration: const Duration(
              milliseconds: 600,
            ),
            curve: Curves.fastLinearToSlowEaseIn,
          ),
    );
  }

  Widget _makeSizeButton(String size, bool available) {
    return Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: available
            ? Border.all(color: Colors.grey, width: 0.3)
            : Border.all(color: Colors.transparent, width: 0),
        color: available ? Colors.white : Colors.grey[300],
      ),
      child: Center(
        child: Text(
          size,
          style: available
              ? TextStyle(
                  fontSize: 12.5,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)
              : TextStyle(
                  fontSize: 12.5,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[50]),
        ),
      ),
    );
  }
}
