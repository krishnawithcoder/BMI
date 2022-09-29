import 'package:bmiclculater/constent.dart';
import 'package:bmiclculater/reusible_card.dart';
import 'package:flutter/material.dart';
import 'input_paga.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCUATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: largeButtonTextStyte,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: resultTextStyle,
                  ),
                  Text(
                    '18.9',
                    style: BMITextStyle,
                  ),
                  Text(
                    'Your BMI result is quite low, you should eat more! ',
                    textAlign: TextAlign.center,
                    style: BodyTextStyle,
                  ),
                  BottomButton(
                    buttonTitlle: 'RE CALCULATE',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => InputPage()));
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
