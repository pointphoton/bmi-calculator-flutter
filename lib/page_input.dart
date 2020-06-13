import 'package:flutter/material.dart';

//size
const htBottomContainer = 80.0;

//colors
const colorBottomContainerBg = Color(0x99FE0225);
const colorContainers = Color(0xBB4A1125);

class PageInput extends StatefulWidget {
  @override
  _PageInputState createState() => _PageInputState();
}

class _PageInputState extends State<PageInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ResuableCard(
                  colour: colorContainers,
                ),
              ),
              Expanded(
                child: ResuableCard(
                  colour: colorContainers,
                ),
              )
            ],
          )),
          Expanded(child: ResuableCard(colour: colorContainers)),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ResuableCard(
                  colour: colorContainers,
                ),
              ),
              Expanded(
                child: ResuableCard(
                  colour: colorContainers,
                ),
              )
            ],
          )),
          Container(
            color: colorBottomContainerBg,
            margin: EdgeInsets.only(top: 10.0),
            height: htBottomContainer,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}

class ResuableCard extends StatelessWidget {
  ResuableCard({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
