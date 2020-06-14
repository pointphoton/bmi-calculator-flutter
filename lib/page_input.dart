import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

class PageInput extends StatefulWidget {
  @override
  _PageInputState createState() => _PageInputState();
}

class _PageInputState extends State<PageInput> {
  Gender selectedGender;
  int height = 150;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(children: [
            Expanded(
              child: ResuableCard(
                onPressed: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                childCard: IconContent(
                  iconData: FontAwesomeIcons.mars,
                  strText: 'MALE',
                ),
                colour: selectedGender == Gender.male
                    ? kColorActiveCard
                    : kColorInactiveCard,
              ),
            ),
            Expanded(
              child: ResuableCard(
                onPressed: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                childCard: IconContent(
                  iconData: FontAwesomeIcons.venus,
                  strText: 'FEMALE',
                ),
                colour: selectedGender == Gender.female
                    ? kColorActiveCard
                    : kColorInactiveCard,
              ),
            ),
          ])),
          Expanded(
            child: ResuableCard(
              colour: kColorActiveCard,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kTxtLabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kTxtNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: kTxtLabelStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 24.0)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 50,
                      max: 250,
                      onChanged: (double newVal) {
                        setState(() {
                          height = newVal.toInt();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ResuableCard(
                  colour: kColorActiveCard,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: kTxtLabelStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kTxtNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            pressed: () {
                              setState(() {
                                this.weight++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            pressed: () {
                              setState(() {
                                this.weight--;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ResuableCard(
                  colour: kColorActiveCard,
                ),
              )
            ],
          )),
          Container(
            color: kColorBottomContainerBg,
            margin: EdgeInsets.only(top: 10.0),
            height: kHeightBottomContainer,
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.pressed});
  final IconData icon;
  final Function pressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: pressed,
      elevation: 0.0,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFFCC4F5E),
    );
  }
}

enum Gender { male, female }
