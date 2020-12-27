import 'package:flutter/material.dart'; 

class Result extends StatelessWidget { 
final int resultScore; 
final Function resetHandler; 

Result(this.resultScore, this.resetHandler); 

//Remark Logic 
String get resultPhrase { 
	String resultText; 
	if (resultScore >= 41) { 
	resultText = 'You are candidate master!'; 
	print(resultScore); 
	} else if (resultScore >= 31) { 
	resultText = 'you are expert!'; 
	print(resultScore); 
	} else if (resultScore >= 21) { 
	resultText = 'You need to work more!'; 
	} else if (resultScore >= 1) { 
	resultText = 'You need to work hard!'; 
	} else { 
	resultText = 'This is a poor score!'; 
	print(resultScore); 
	} 
	return resultText; 
} 

@override 
Widget build(BuildContext context) { 
	return Center( 
	child: Column( 
		mainAxisAlignment: MainAxisAlignment.center, 
		children: <Widget>[ 
		Text( 
			resultPhrase, 
			style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), 
			textAlign: TextAlign.right, 
		), //Text 
		Text( 
			'Score ' '$resultScore', 
			style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold), 
			textAlign: TextAlign.left, 
		), //Text 
		FlatButton( 
			child: Text( 
			'Restart Quiz!', 
			), //Text 
			textColor: Colors.yellowAccent, 
			onPressed: resetHandler, 
		), //FlatButton 
		], //<Widget>[] 
	), //Column 
	); //Center 
} 
} 
