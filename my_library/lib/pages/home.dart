import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column( //same as flex column
        children: [ //display children of xolumn (will be in order)
          textField()
        ],
      ),
    );
  }

  Container textField() {
    return Container(
          margin: EdgeInsets.only(top: 40, left: 20, right: 20, ), //make round e
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow( //add shadow around search box to make it more visible
                color: Color.fromRGBO(29, 22, 23, 0.11),
                blurRadius: 40,
                spreadRadius: 0.0

              )
            ]
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(12),
              hintText: 'Search Pancake', //placeholder
              hintStyle: TextStyle( //placeholder text
                color: Color(0xffDDDADA),
                fontSize: 14,
              ),
              prefixIcon: Padding( //icon at beggining
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset('assets/icons/Search.svg'),
              ),
              suffixIcon: Container( //icon at end
                width: 100,
                child: IntrinsicHeight( //need to put Intrinsic Height to have the small bar divider
                  child: Row( //align the elements in a row (same as flex)
                    mainAxisAlignment: MainAxisAlignment.end, //equivalent of flex
                    children: [
                      VerticalDivider( //bar divider
                        color: Colors.black,
                        indent: 10,
                        endIndent: 10,
                        thickness: 0.15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: SvgPicture.asset('assets/icons/Filter.svg'),
                      ),
                    ],
                  ),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none
              )
            ),
          ),
        );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        'Breakfast',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.white,
      leading: 
        GestureDetector(
          onTap: () {
            
          },
          
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/icons/Arrow - Left 2.svg',
              height: 20,
              width: 20,
              ),
            decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)
            ),
          ),
        ),
      actions: [
        GestureDetector(
          onTap: () {
            
          },
          child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          width: 37,
          child: SvgPicture.asset(
            'assets/icons/dots.svg',
            height: 5,
            width: 5,
            ),
          decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10)
          ),
          ),
        )
      ],
    );
  }
}