import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  home:NinjaCard() ,
));

// stateful widget
class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

int sem = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 12, 11, 11),
      appBar: AppBar(
        title:Text("IDENTITY"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 37, 35, 35),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if(sem<8){
              sem++;
            }
            else{
              sem=0;
            }
          });
        },
        backgroundColor: Colors.grey,
        child: Icon(Icons.add),),
      body: Padding(
        
        padding: EdgeInsets.fromLTRB(40.0, 50.0, 40.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Center(
            child: CircleAvatar(backgroundImage: NetworkImage('https://imgs.search.brave.com/APWSE87ebfjyd0jcyyAsdi_eM340POfuVe0_dpuMUfQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9kb3Rl/c3BvcnRzLmNvbS93/cC1jb250ZW50L3Vw/bG9hZHMvMjAyMy8w/MS8wNjEzMDYxNS9V/bnRpdGxlZC02Lmpw/Zz93PTEyMDA'),
            radius: 77.0,
            ),
          ),
          Divider(
            height: 60.0,
            color: const Color.fromARGB(255, 37, 35, 35),
          ),
          Text(
            "Name",
           style: TextStyle(
            color: Colors.grey,
           fontSize: 22.0,
           letterSpacing: 2)
           ),
          Padding(
            padding: const EdgeInsets.fromLTRB(55.0, 2.0, 0.0, 0.0),
            child: Text(
             "Sarthak_N",
             style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 30.0,     
              letterSpacing: 1.6,
              fontWeight: FontWeight.bold)
             ),
             
          ),
          SizedBox(
            height: 35.0,
          ),
          Text(
            "Semester",
           style: TextStyle(
            color: Colors.grey,
           fontSize: 22.0,
           letterSpacing: 2)
           ),
          Padding(
            padding: const EdgeInsets.fromLTRB(55.0, 2.0, 0.0, 0.0),
            child: Text(
             "$sem",
             style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 30.0,
              letterSpacing: 1.6,
              fontWeight: FontWeight.bold)
             ),
             
          ),
          SizedBox(
            height: 35.0,
          ),
          Text(
            "Institute",
           style: TextStyle(
            color: Colors.grey,
           fontSize: 22.0,
           letterSpacing: 2)
           ),
          Padding(
            padding: const EdgeInsets.fromLTRB(55.0, 2.0, 0.0, 0.0),
            child: Text(
             "IIIT L",
             style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 30.0,
              letterSpacing: 1.6,
              fontWeight: FontWeight.bold)
             ),
             
          ),
          SizedBox(height: 30,),
        Row(
          children: [
            Text("Email",
            style: TextStyle(color: Colors.grey,
            fontSize: 22.0,letterSpacing: 2.0),),
            SizedBox(width: 10,),
            Icon(Icons.mail,color: Colors.grey,)
          ],
        
      ),
      Padding(
            padding: const EdgeInsets.fromLTRB(55.0, 2.0, 0.0, 0.0),
            child: Text(
             "LCS2023039@iiitl.ac.in",
             style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 24.0,
              // letterSpacing: 1.6,
              fontWeight: FontWeight.bold
              )
             ),
             
          ),
          
        ]),
      ),
      
    );
  }
}


