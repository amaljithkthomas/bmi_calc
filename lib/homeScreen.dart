import 'package:bmi_calculator/bmi_calculation.dart';
import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/card_gender_selection.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Gender? selectedGender;
  int height = 160;
  int weight = 60;
  int age = 18;

  // Color maleCardColour = inactiveCardColour;
  // Color femaleCardColour = inactiveCardColour;
  //
  // void checkGender({Gender? gender})
  // {
  //   if(gender == Gender.male)
  //     {
  //       if(maleCardColour == inactiveCardColour)
  //         {
  //           maleCardColour = activeACardColour;
  //           femaleCardColour = inactiveCardColour;
  //         }else
  //           {
  //             maleCardColour = activeACardColour;
  //           }
  //     }
  //   if(gender == Gender.female)
  //       {
  //         if(femaleCardColour == inactiveCardColour)
  //           {
  //             femaleCardColour = activeACardColour;
  //             maleCardColour = inactiveCardColour;
  //           }else
  //             {
  //               femaleCardColour = activeACardColour;
  //             }
  //       }
  //
  //
  // }
  void onDoubleTap({Gender? gender}) {
    // if(gender == Gender.male)
    //   {
    //     //maleCardColour = inactiveCardColour;
    //     selectedGender = null;
    //   }else if(gender == Gender.female)
    //     {
    //       //femaleCardColour = inactiveCardColour;
    //       selectedGender = null;
    //     }
    gender == Gender.male ? selectedGender = null : selectedGender = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        //backgroundColor: const Color(0xFF0A0E21),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      //colour: maleCardColour,
                      colour: selectedGender == Gender.male
                          ? activeACardColour
                          : inactiveCardColour,
                      onTapped: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      onDoubleTapped: () {
                        setState(() {
                          onDoubleTap(gender: Gender.male);
                        });
                      },
                      cardChild: CardGenderSelection(
                        gender: 'MALE',
                        genderIcon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      //colour: femaleCardColour,
                      colour: selectedGender == Gender.female
                          ? activeACardColour
                          : inactiveCardColour,
                      onTapped: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      onDoubleTapped: () {
                        setState(() {
                          onDoubleTap(gender: Gender.female);
                        });
                      },
                      cardChild: CardGenderSelection(
                        genderIcon: FontAwesomeIcons.venus,
                        gender: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeACardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: TextStyle(
                      color: textColour,
                      fontSize: fontSize,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: inCardNumberText,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          fontSize: fontSize,
                          color: textColour,
                        ),
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                      //activeColor: Color(0xFFEB1555),

                      min: 100.0,
                      max: 230.0,
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.toInt();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeACardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            color: textColour,
                            fontSize: fontSize,
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: inCardNumberText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              operation: () {
                                setState(() {
                                  weight--;
                                  // print(weight);
                                });
                              },
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              operation: () {
                                setState(() {
                                  weight++;
                                  //print(weight);
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
                  child: ReusableCard(
                    colour: activeACardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                            color: textColour,
                            fontSize: fontSize,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: inCardNumberText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              operation: () {
                                setState(() {
                                  age--;
                                  //print(age);
                                });
                              },
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              operation: () {
                                setState(() {
                                  age++;
                                  //print(age);
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonName: 'CALCULATE',
            onTap: () {
              BmiCalculation resCalc = BmiCalculation(weight: weight, height: height);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext ctx) => ResultPage(
                    bmiResult: resCalc.calculateBMI(),
                    resultText: resCalc.getResult(),
                    resultFeedback: resCalc.getFeedback(),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}



