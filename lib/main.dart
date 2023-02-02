import 'package:flutter/material.dart';
import 'package:hangman/model.dart';

void main() {
  runApp(const Hangman());
}

class Hangman extends StatefulWidget {
  const Hangman({Key? key}) : super(key: key);

  @override
  State<Hangman> createState() => _HangmanState();
}

class _HangmanState extends State<Hangman> {
  @override
  int count = 0;
  bool answervisiblity = false;
  bool head = false;
  bool body = false;
  bool lha = false;
  bool rha = false;
  bool lle = false;
  bool rle = false;
  bool l1=false;
  bool l2=false;
  bool l3=false;
  bool l4=false;
  bool l5=false;
  bool l6=false;





  letter1(String tx, bool visib){
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            color: Colors.black,
            height: 40,
            width: 40,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: visib,
                    child: Text(
                      tx,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ])),
      ),
    );

  }
  alpha1(String txt){
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius:
              BorderRadius.all(Radius.circular(10)),
              color: Colors.blueGrey,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 3),
                )
              ]),

          height: 30,
          // width: 30,
          child: Center(
            child: InkWell(
              onTap: (){
                setState(() {
                  if(txt=='B'){
                    l1=true;
                  }else if(txt=='A'){
                    l2=true;
                  }
                  else if(txt=='S'){
                    l3=true;
                  }
                  else if(txt=='I'){
                    l4=true;
                  }
                  else if(txt=='T'){
                    l5=true;
                  }
                  else if(txt=='H'){
                    l6=true;
                  }
                  else{
                    count=count+1;
                    if(count==1){
                      head=true;
                    }
                    else if(count==2){
                      body=true;
                    }
                    else if(count==3){
                      lha=true;
                    }
                    else if(count==4){
                      rha=true;
                    }
                    else if(count==5){
                      lle=true;
                    }
                    else if(count==6){
                      rle=true;
                    }
                  }




                });
              },

              child: Text(txt,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );


  }
 // List letter = ['F', 'L', 'U', 'T', 'T', 'E', 'R'];
  // List alpha = [
  //   'A',
  //   'B',
  //   'C',
  //   'D',
  //   'E',
  //   'F',
  //   'G',
  //   'H',
  //   'I',
  //   'J',
  //   'K',
  //   'L',
  //   'M',
  //   'N',
  //   'O',
  //   'P',
  //   'Q',
  //   'R',
  //   'S',
  //   'T',
  //   'U',
  //   'V',
  //   'W',
  //   'X',
  //   'Y',
  //   'Z'
  // ];
  // List<Model> Demo = [
  //   Model(p: "images/hang.png", id: 0),
  //   Model(p: "images/head.png", id: 1),
  //   Model(p: "images/task.png", id: 2),
  //   Model(p: "images/task2.png", id: 3),
  //   Model(p: "images/la.png", id: 4),
  //   Model(p: "images/task1.png", id: 5),
  //   Model(p: "images/ll.png", id: 6),
  // ];
  /*int index=0;
  void next(){
    if(index<Demo.length-1){
      index++;
    }
  }
  String img(){
    return Demo[index].p;
  }

   op(int x){
    if(Demo[index].id<7){
      print(index);
      Image.asset(Demo[index].p);
      // AssetImage(Demo[index].p);
      next();
    }
  }
*/

  // void check(String s) {
  //   for(int i=0;i<alpha.length;i++){
  //     for(int j=0;j<letter.length;j++){
  //       if(alpha[i]==letter[j]){
  //
  //
  //
  //       }
  //     }
  //
  //   }
  //
  //
  // }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.indigo,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  height: 250,
                  width: double.maxFinite,
                  child: Center(

                    child: Stack(
                      children: [

                        Image.asset( "images/hang.png"),
                        Visibility(
                          visible: head,
                            child: Image.asset("images/head.png")),
                        Visibility(
                          visible: body,
                            child: Image.asset("images/task.png")),
                        Visibility(
                          visible:lha ,
                            child: Image.asset( "images/task2.png")),
                        Visibility(visible: rha,
                            child: Image.asset("images/la.png")),
                        Visibility(visible: lle,
                            child: Image.asset( "images/task1.png")),
                        Visibility(visible: rle,
                            child: Image.asset("images/ll.png")),


                        // Image.asset('${Model(id: 0, p: "images/hang.png")}'),
                        // Image.asset('${Model(id: 1, p: "images/head.png")}'),
                        // Image.asset('${Model(id: 2, p: "images/task.png")}'),
                        // Image.asset('${Model(id: 3, p: "images/task2.png")}'),
                        // Image.asset('${Model(id: 4, p: "images/la.png")}'),
                        // Image.asset('${Model(id: 5, p: "images/task1.png")}'),
                        // Image.asset('${Model(id: 6, p: "images/ll.png")}'),

                        //     // Image.asset("images/hang.png",),
                        //     // Image.asset("images/head.png",),
                        //     // Image.asset("images/task.png",),
                        //     // Image.asset("images/task2.png",),
                        //     // Image.asset("images/la.png",),
                        //     // Image.asset("images/task1.png",),
                        //     // Image.asset("images/ll.png",),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height:20 ,
                ),
                Row(
                  children: [
                    letter1("B",l1),
                    letter1("A",l2),
                    letter1("S",l3),
                    letter1("I",l4),
                    letter1("T",l5),
                    letter1("H",l6),


                  ],
                ),

                SizedBox(height: 30,),
                Row(
                  children: [
                    alpha1("A"),
                    alpha1("B"),
                    alpha1("C"),
                    alpha1("D"),
                    alpha1("E"),
                    alpha1("F"),
                    alpha1("G"),
                  ],
                ),
                Row(
                  children: [
                    alpha1("H"),
                    alpha1("I"),
                    alpha1("J"),
                    alpha1("K"),
                    alpha1("L"),
                    alpha1("M"),
                    alpha1("N"),
                  ],
                ),
                Row(
                  children: [
                    alpha1("O"),
                    alpha1("P"),
                    alpha1("Q"),
                    alpha1("R"),
                    alpha1("S"),
                    alpha1("T"),
                    alpha1("U"),
                  ],
                ),
                Row(
                  children: [
                    alpha1("V"),
                    alpha1("W"),
                    alpha1("X"),
                    alpha1("Y"),
                    alpha1("Z"),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
