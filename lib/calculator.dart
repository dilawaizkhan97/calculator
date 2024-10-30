import 'package:flutter/material.dart';
class Calculator extends StatefulWidget {
  Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController number1=TextEditingController();
  TextEditingController number2=TextEditingController();
  TextEditingController number3=TextEditingController();

  int result=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Calculator',style: TextStyle(color: Colors.white,fontSize: 30,),),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,

        ),

        body: Column(children: [
          Padding(padding: EdgeInsets.all(30),
            child: Container(
              height: 55,
              width: 260,
              decoration: BoxDecoration(border: Border.all(color: Colors.blueGrey.shade200),

                borderRadius:BorderRadius.circular(10) ,
              ),
              child:Padding(padding:
              EdgeInsets.only(left:15),

                  child:TextFormField(keyboardType:TextInputType.number ,
                    controller: number1,
                    decoration: InputDecoration(
                      hintText: 'Enter your 1st number',
                      border: InputBorder.none,
                    ),
                  )
              ),
            ),),
          Container(
            height: 55,
            width: 260,
            margin: EdgeInsets.all(21),
            decoration: BoxDecoration(
              border:Border.all(color: Colors.blueGrey.shade200),
              borderRadius:BorderRadius.circular(10),
            ),
            child:Padding(padding: EdgeInsets.only(left: 15) ,
              child:TextFormField(keyboardType:TextInputType.number,
                controller: number2,

                decoration: InputDecoration(
                  hintText:' Enter your 2nd number',

                  border: InputBorder.none,

                ),
              ),
            ),
          ),
          Container(
            height:55 ,
            width: 260,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey.shade200),
              borderRadius: BorderRadius.circular(10),


            ),
            child: Padding(padding: EdgeInsets.only(left: 15),
              child:TextFormField (keyboardType: TextInputType.number,
                controller :number3,
                decoration: InputDecoration(
                  hintText: 'Enter your 3rd number',
                  border: InputBorder.none,

                ),
              ),
            ),
          ),Text('Result:$result',style: const TextStyle(color: Colors.blueGrey,fontSize: 30)),
          SizedBox(height:22,),
          Row(
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: [SizedBox(width:9,),
                FloatingActionButton(backgroundColor: Colors.blueAccent.shade100,
                  onPressed:(){
                    int a=int.parse(number1.text);
                    int b=int.parse(number2.text);
                    int c=int.parse(number3.text);
                    int d=a-b-c;
                    result=d;
                    setState(() {

                    });
                    print('Result=$result');

                  },

                  child: Icon(Icons.minimize_rounded,color: Colors.white,),
                ),Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    crossAxisAlignment:CrossAxisAlignment.center,

                    children: [SizedBox(width: 9),
                      FloatingActionButton(backgroundColor: Colors.blueAccent.shade100, onPressed: (){
                        int x=int.parse(number1.text);
                        int y=int.parse(number2.text);
                        int z=int.parse(number3.text);
                        int r=x*y*z;
                        result=r;
                        setState(() {

                        });
                        print('Result=$result');
                      },
                        child: Icon(Icons.cancel_rounded,color: Colors.white,),),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.center,
                        crossAxisAlignment:CrossAxisAlignment.center,

                        children: [SizedBox(width: 9),
                          FloatingActionButton(backgroundColor: Colors.blueAccent.shade100,
                            onPressed:(){
                              int u=int.parse(number1.text);
                              int h=int.parse(number2.text);
                              int k=int.parse(number3.text);
                              int j=u+h+k;
                              result=j;
                              setState(() {

                              });
                              print('Result=$result');

                            },
                            child: Icon(Icons.add,color: Colors.white,),

                          )
                        ],
                      ),
                    ])
              ])

        ])
    );
  }
}










