import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor){
    return Container(
      child: ElevatedButton(onPressed: (){
        // TODO add function for button press

      },
       child: Text(btntxt, 
       style: TextStyle(
         fontSize: 35,
         color: txtcolor
       ),
       ),
       style: ElevatedButton.styleFrom(
       
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
    // foregroundColor: btncolor
    
    // shadowColor: btncolor
  ),
      ),

    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Calculator'),
      backgroundColor: Colors.black),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // calculator display
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(padding: EdgeInsets.all(10.0),
                  child: Text('0' ,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white ,
                  fontSize: 100),
                  ), 
                  )
                ],
              ) ,  

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // here buttons functions will be called
                  calcbutton('AC', Colors.grey, Colors.black),
                  calcbutton('+/-', Colors.grey, Colors.black),
                  calcbutton('%', Colors.grey, Colors.black),
                  calcbutton('/', Colors.amber, Colors.black),

                ],

              ), 
              SizedBox(height: 10,),


                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // here buttons functions will be called
                  calcbutton('7', Colors.grey, Colors.black),
                  calcbutton('8', Colors.grey, Colors.black),
                  calcbutton('9', Colors.grey, Colors.black),
                  calcbutton('x', Colors.amber, Colors.black),

                ],

              ), 
              SizedBox(height: 10,),


                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // here buttons functions will be called
                  calcbutton('4', Colors.grey, Colors.black),
                  calcbutton('5', Colors.grey, Colors.black),
                  calcbutton('6', Colors.grey, Colors.black),
                  calcbutton('-', Colors.amber, Colors.black),

                ],

              ), 
              SizedBox(height: 10,),

                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // here buttons functions will be called
                  calcbutton('1', Colors.grey, Colors.black),
                  calcbutton('2', Colors.grey, Colors.black),
                  calcbutton('3', Colors.grey, Colors.black),
                  calcbutton('+', Colors.amber, Colors.black),

                ],

              ), 
              SizedBox(height: 10,),

              // last row

              Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                children: [
                  ElevatedButton(onPressed: (){}, 
                  child: Text(''),
                  )
                ],
              )
          ],
        ),
        ),

    );
  }
}