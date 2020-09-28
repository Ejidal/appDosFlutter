import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

///Esta clase llama al archivo con los datos (json)

class _MenuProvider { 

	List<dynamic>opciones = [];

	_MenuProvider(){ }

	Future<List<dynamic>>cargarData()async{
		
		final resp = await rootBundle.loadString('data/menu_opts.json');
			Map dataMap = json.decode(resp);
			opciones = dataMap['rutas'];
		return opciones;

	}//Future
}//MenuProvider

final menuProvider = new _MenuProvider();