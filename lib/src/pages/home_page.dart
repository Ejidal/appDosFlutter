import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
	       			appBar: AppBar(
								backgroundColor: Colors.cyan,
	               				title: Text('ChipoCluda', 
											style:TextStyle(
													fontSize:40,
													color: Colors.pink),//TextStyle
										),//Text
					),//AppBar
	       			body: ListView(
								children:<Widget>[
									ListTile(
										title: Text('Ropa para playa Mujer',
													style:TextStyle(
														fontSize:20,
														color:Colors.pink[200]),//TexStyle
											   ),//Text
									),//ListTile
									
									Divider(
										height:20,
										indent:20,
										endIndent:20,
										thickness:4,
										color:Colors.yellow),//Divider

									ListTile(
										title: Text('Ropa para playa Hombre',
													style:TextStyle(
														fontSize:20,
														color:Colors.blue[200],
														),//TexStyle
											   ),//Text
									),//ListTile

								],//<Widget>
							),//ListView

	       		);//Scaffold
			}//build

//Widget _lista(){
	//return ListView(
	//	children:);
	//}//_lista

}//HomePage
