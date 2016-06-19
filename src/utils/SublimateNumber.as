/**
 * @author Malex
 */
package utils
{
	/**
	 * Преобразует число в текстовый эквивалент.
	 */
	public class SublimateNumber
	{
		/** хранит сублимированное число */
		private static var _string:String;
		
		private static var scalar:Array = ["одна", "двi", "три", "чотири", "п'ять", "шість", "сім", "вісім", "дев'ять"];
		private static var scalarMill:Array = ["один", "два", "три", "чотири", "п'ять", "шість", "сім", "вісім", "дев'ять"];
		private static var twoTen:Array = ["одинадцять", "дванадцять", "тринадцять", "чотирнадцять", "п'ятнадцять", "шестьнадцать", "сімнадцять", "вісімнадцять", "дев'ятнадцять"];
		private static var tens:Array = ["десять", "двадцять", "тридцять", "сорок", "п'ятдесят", "шістдесят", "сімдесят", "вісімдесят", "дев'яносто"];
		private static var hundred:Array = ["сто", "двісті", "триста", "чотириста", "п'ятсот", "шістсот", "сімсот", "вісімсот", "дев'ятсот"];
		private static var million:Array = ["мiльйон", "мiльйони", "мiльйонiв"];
		private static var thausen:Array = ["тисяча", "тисячi", "тисяч"];
				
		public static function convertNote(str:String):String
		{
			_string = "";
			
			//*********************************************************
			//
			// Если длинна числа 1
			//
			//*********************************************************
			
			if(str.length == 1)
			{
				for(var i:int = 0; i < scalar.length; i++){
					if(str == String(i + 1)){
						_string = scalar[i];
					}
				}
			}
			
			//*********************************************************
			//
			// Если длинна числа 2
			//
			//*********************************************************
			
			if(str.length == 2)
			{
				if(str.search("1") == 0){
					if(str.slice(0) == "10"){
						_string = tens[0];
					}
					for(var k:int = 0; k < twoTen.length; k++){
						if(str == ("1" + String(k + 1))){
							_string = twoTen[k];
						}
					}
				}
				var index:int = int(str.slice(0, 1));
				if(index >= 2){
					for(var j:int = 1; j <= tens.length; j++){
						if(str.search(j + 1) == 0){
							_string = tens[j];
							for(var s:int = 0; s < scalar.length; s++){
								var index_1:int = str.indexOf(String(s + 1), 1)
								if(index_1 == str.length - 1){
									_string += " ";
									_string += scalar[s];
								}
							}
						}
					}
				}
			}
			
			//*********************************************************
			//
			// Если длинна числа 3
			//
			//*********************************************************
			
			if(str.length == 3)
			{
				// СОТЫЕ
				for(var a:int = 0; a < hundred.length; a++){
					if(str.search(a + 1) == 0){
						_string = hundred[a];
					}
				}
				
				// ДЕСЯТЫЕ от 10 - 19
				var index_2:int = str.indexOf("1", 1)
				if(index_2 == 1){
					if(str.slice(1) == "10"){
						_string += " ";
						_string += tens[0];
					}else{
						for(var ka:int = 0; ka < twoTen.length; ka++){
							if(str.slice(1) == ("1" + String(ka + 1))){
								_string += " ";
								_string += twoTen[ka];
							}
						}
					}
				}
				// ДЕСЯТЫЕ от 20 - 99
				var index_3:int = int(str.slice(1, 2));
				if(index_3 >= 2){
					for(var b:int = 1; b < tens.length; b++){
						var index_4:int = str.indexOf(String(b + 1), 1);
						if(index_4 == 1){
							_string += " ";
							_string += tens[b];
						}
					}
					
				}
				
				// НАТУРАЛЬНЫЕ от 1 - 9
				var index_5:int = int(str.slice(1, 2));
				if(index_5 == 0 || index_5 > 1){
					for(var sa:int = 0; sa < scalar.length; sa++){
						var index_6:int = str.indexOf(String(sa + 1), 2)
						if(index_6 == str.length - 1){
							_string += " ";
							_string += scalar[sa];
						}
					}
				}
			}
			
			//*********************************************************
			//
			// Если длинна числа 4
			//
			//*********************************************************
			
			if(str.length == 4)
			{
				// ТЫСЯЧНЫЕ
				var index_7:int = int(str.slice(0, 1));
				for(var t:int = 0; t < scalar.length; t++){
					if(index_7 == (t + 1)){
						_string = scalar[t];
					}
				}
				
				/**************************************************************************/
				// приписывем слово "тысячи"
				if(_string == scalar[0]){
					_string += " ";
					_string += thausen[0];
				}else if(_string == scalar[1] || _string == scalar[2] || _string == scalar[3]){
					_string += " ";
					_string += thausen[1];
				}else if(_string == scalar[4] || _string == scalar[5] || _string == scalar[6] || _string == scalar[7] || _string == scalar[8]){
					_string += " ";
					_string += thausen[2];
				}
				/**************************************************************************/
				
				// СОТЫЕ
				var number_8:int = int(str.slice(1, 2));
				if(number_8 != 0){
					for(var c:int = 0; c < hundred.length; c++){
						if(number_8 == (c + 1)){
							_string += " ";
							_string += hundred[c];
						}
					}
				}
				
				// ДЕСЯТЫЕ от 10 - 19
				var number_9:int = int(str.slice(2, 3));
				if(number_9 == 1){
					if(str.slice(2) == "10"){
						_string += " ";
						_string += tens[0];
					}else{
						for(var td:int = 0; td < twoTen.length; td++){
							if(str.slice(3) == String(td + 1)){
								_string += " ";
								_string += twoTen[td];
							}
						}
					}
				}
				// ДЕСЯТЫЕ от 20 - 90
				if(number_9 >= 2){
					for(var ts:int = 2; ts <= tens.length; ts++){
						if(number_9 == ts){
							_string += " ";
							_string += tens[ts -1];
						}
					}
				}
				
				// НАТУРАЛЬНЫЕ от 1 - 9
				var number_10:int = int(str.slice(3));
				if(number_9 == 0 || number_9 > 1 && number_10 > 0){
					for(var tn:int = 1; tn <= scalar.length; tn++){
						if(number_10 == tn){
							_string += " ";
							_string += scalar[tn - 1];
						}
					}
				}
			}
			
			//*********************************************************
			//
			// Если длинна числа 5 (12345)
			//
			//*********************************************************			

			if(str.length == 5)
			{
				// ДЕСЯТЫЕ ТЫСЯЧИ от 10 - 19
				var number_11:int = int(str.slice(0, 1));
				if(number_11 == 1){
					var number_12:int = int(str.slice(0, 2));
					if(number_12 == 10){
						_string = tens[0];
					}else{
						for(var dt:int = 0; dt < twoTen.length; dt++){
							if(int(str.slice(1, 2)) == (dt + 1))_string = twoTen[dt];
						}
					}
				}else{ // ДЕСЯТЫЕ ТЫСЯЧИ от 20 - 90
					for(var dt2:int = 1; dt2 <= tens.length; dt2++){
						if(number_11 == (dt2 + 1))_string = tens[dt2];
					}
				}
				// НАТУРАЛЬНЫЕ ТЫСЯЧИ от 1 - 9
				var number_13:int = int(str.slice(1, 2));
				if(number_11 >= 2){
					for(var cx:int = 0; cx < scalar.length; cx++){
						if(number_13 == (cx + 1)){
							_string += " ";
							_string += scalar[cx];
						}
					}
				}
				
				/**************************************************************************/
				// приписывем слово "тысячи"
				if(number_11 > 1 && number_13 == 1){
					_string += " ";
					_string += thausen[0]; // "ча"
				}else if(number_11 > 1 && number_13 > 1 && number_13 < 5){
					_string += " ";
					_string += thausen[1]; // "чi"
				}else if(number_11 == 1 || number_13 == 0 || number_11 > 1 && number_13 > 4){
					_string += " ";
					_string += thausen[2]; // "ч"
				}
				/**************************************************************************/
				
				// СОТЫЕ
				var number_14:int = int(str.slice(2, 3));
				if(number_14 != 0){
					for(var st:int = 0; st < hundred.length; st++){
						if(number_14 == (st + 1)){
							_string += " ";
							_string += hundred[st];
						}
					}
				}
				
				// ДЕСЯТЫЕ от 10 - 19
				var number_15:int = int(str.slice(3, 4)); // ---x-
				var number_16:int = int(str.slice(4));    // ----x
				var number_17:int = int(str.slice(3));    // ---xx
				if(number_15 == 1){
					if(number_17 == 10){
						_string += " ";
						_string += tens[0];
					}else{
						for(var r:int = 0; r < twoTen.length; r++){
							if(number_16 == (r + 1)){
								_string += " ";
								_string += twoTen[r];
							}
						}
					}
				}else{ // ДЕСЯТЫЕ от 20 - 90
					for(var r2:int = 1; r2 <= tens.length; r2++){
						if(number_15 == (r2 + 1)){
							_string += " ";
							_string += tens[r2];
						}
					}
				}
				
				// НАТУРАЛЬНЫЕ от 1 - 9
				if(number_15 > 1 || number_15 == 0){
					for(var r3:int = 0; r3 < scalar.length; r3++){
						if(number_16 == (r3 + 1)){
							_string += " ";
							_string += scalar[r3];
						}
					}
				}
			}
			
			//*********************************************************
			//
			// Если длинна числа 6 (123 456)
			//
			//*********************************************************			

			if(str.length == 6)
			{	
				var number_18:int = int(str.slice(0, 1)); // x-----
				var number_19:int = int(str.slice(1, 2)); // -x----
				var number_20:int = int(str.slice(2, 3)); // --x---
				var number_21:int = int(str.slice(3, 4)); // ---x--
				var number_22:int = int(str.slice(4, 5)); // ----x-
				var number_23:int = int(str.slice(5));    // -----x
				
				// СОТЫЕ ТЫСЯЧИ
				for(var h:int = 0; h < hundred.length; h++){
					if(number_18 == (h + 1)){
						_string += hundred[h];
					}
				}
				
				// ДЕСЯТЫЕ ТЫСЯЧИ от 10 - 19
				if(number_19 == 1){
					if(number_20 == 0){
						_string += " ";
						_string += tens[0];
					}else{
						for(var h2:int = 0; h2 < twoTen.length; h2++){
							if(number_20 == (h2 + 1)){
								_string += " ";
								_string += twoTen[h2];
							}
						}
					}
				}else{ // ДЕСЯТЫЕ ТЫСЯЧИ от 20 - 90
					for(var h3:int = 1; h3 <= tens.length; h3++){
						if(number_19 == (h3 + 1)){
							_string += " ";
							_string += tens[h3];
						}
					}
				}
				
				// НАТУРАЛЬНЫЕ ТЫСЯЧИ от 1 - 9
				if(number_19 > 1 || number_19 == 0){
					for(var h4:int = 0; h4 < scalar.length; h4++){
						if(number_20 == (h4 + 1)){
							_string += " ";
							_string += scalar[h4];
						}
					}
				}
				
				/**************************************************************************/
				// приписывем слово "тысячи"
				if(number_19 > 1 && number_20 == 1 || number_19 == 0 && number_20 == 1){
					_string += " ";
					_string += thausen[0]; // "ча"
				}else if(number_19 > 1 && number_20 > 1 && number_20 < 5 || number_19 == 0 && number_20 > 1 && number_20 < 5){
					_string += " ";
					_string += thausen[1]; // "чi"
				}else if(number_18 > 0 && number_19 == 0 && number_20 == 0 || number_19 == 1 || number_20 == 0 || number_19 > 1 && number_20 > 4 || number_19 == 0 && number_20 > 4){
					_string += " ";
					_string += thausen[2]; // "ч"
				}
				/**************************************************************************/
				
				// СОТЫЕ
				if(number_21 != 0){
					for(var h5:int = 0; h5 < hundred.length; h5++){
						if(number_21 == (h5 + 1)){
							_string += " ";
							_string += hundred[h5];
						}
					}
				}
				
				// ДЕСЯТЫЕ
				if(number_22 == 1){
					if(number_23 == 0){
						_string += " ";
						_string += tens[0];
					}else{
						for(var h6:int = 0; h6 < twoTen.length; h6++){
							if(number_23 == (h6 + 1)){
								_string += " ";
								_string += twoTen[h6];
							}
						}
					}
				}else{ // ДЕСЯТЫЕ ТЫСЯЧИ от 20 - 90
					for(var h7:int = 1; h7 <= tens.length; h7++){
						if(number_22 == (h7 + 1)){
							_string += " ";
							_string += tens[h7];
						}
					}
				}
				
				// НАТУРАЛЬНЫЕ от 1 - 9
				if(number_22 > 1 || number_22 == 0){
					for(var h8:int = 0; h8 < scalar.length; h8++){
						if(number_23 == (h8 + 1)){
							_string += " ";
							_string += scalar[h8];
						}
					}
				}
			}
			
			//*********************************************************
			//
			// Если длинна числа 7 (1 234 567)
			//
			//*********************************************************
			
			if(str.length == 7)
			{
				var number_24:int = int(str.slice(0, 1)); // x --- ---
				var number_25:int = int(str.slice(1, 2)); // - x-- ---
				var number_26:int = int(str.slice(2, 3)); // - -x- ---
				var number_27:int = int(str.slice(3, 4)); // - --x ---
				var number_28:int = int(str.slice(4, 5)); // - --- x--
				var number_29:int = int(str.slice(5, 6)); // - --- -x-
				var number_30:int = int(str.slice(6));    // - --- --x
				
				// МИЛЛИОНЫ 1 - 9
				for(var m:int = 0; m < scalarMill.length; m++){
					if(number_24 == (m + 1)){
						_string += scalarMill[m];
					}
				}
				
				/**************************************************************************/
				// приписывем слово "милиона"
				if(number_24 == 1){
					_string += " ";
					_string += million[0];
				}else if(number_24 > 1 && number_24 < 5){
					_string += " ";
					_string += million[1];
				}else if(number_24 > 4){
					_string += " ";
					_string += million[2];
				}
				/**************************************************************************/
				
				// СОТНИ ТЫСЯЧ
				if(number_25 != 0){
					for(var m2:int = 0; m2 < hundred.length; m2++){
						if(number_25 == (m2 + 1)){
							_string += " ";
							_string += hundred[m2];
						}
					}
				}
				
				// ДЕСЯТЫЕ ТЫСЯЧИ от 10 - 19
				if(number_26 == 1){
					if(number_27 == 0){
						_string += " ";
						_string += tens[0];
					}else{
						for(var m3:int = 0; m3 < twoTen.length; m3++){
							if(number_27 == (m3 + 1)){
								_string += " ";
								_string += twoTen[m3];
							}
						}
					}
				}else{ // ДЕСЯТЫЕ ТЫСЯЧИ от 20 - 90
					for(var m4:int = 1; m4 <= tens.length; m4++){
						if(number_26 == (m4 + 1)){
							_string += " ";
							_string += tens[m4];
						}
					}
				}
				
				// НАТУРАЛЬНЫЕ ТЫСЯЧИ от 1 - 9
				if(number_26 > 1 || number_26 == 0){
					for(var m5:int = 0; m5 < scalar.length; m5++){
						if(number_27 == (m5 + 1)){
							_string += " ";
							_string += scalar[m5];
						}
					}
				}
				/**************************************************************************/
				// приписывем слово "тысячи"
				if(number_25 > 0 || number_26 > 0 || number_27 > 0){
					if(number_26 > 1 && number_27 == 1 || number_26 == 0 && number_27 == 1){
						_string += " ";
						_string += thausen[0]; // "ча"
					}else if(number_26 > 1 && number_27 > 1 && number_27 < 5 || number_26 == 0 && number_27 > 1 && number_27 < 5){
						_string += " ";
						_string += thausen[1]; // "чi"
					}else if(number_25 > 0 && number_26 == 0 && number_27 == 0 || number_26 == 1 || number_27 == 0 || number_26 > 1 && number_27 > 4 || number_26 == 0 && number_27 > 4){
						_string += " ";
						_string += thausen[2]; // "ч"
					}
				}
				/**************************************************************************/
				
				
				// СОТЫЕ
				if(number_28 != 0){
					for(var m6:int = 0; m6 < hundred.length; m6++){
						if(number_28 == (m6 + 1)){
							_string += " ";
							_string += hundred[m6];
						}
					}
				}
				
				// ДЕСЯТЫЕ
				if(number_29 == 1){
					if(number_30 == 0){
						_string += " ";
						_string += tens[0];
					}else{
						for(var m7:int = 0; m7 < twoTen.length; m7++){
							if(number_30 == (m7 + 1)){
								_string += " ";
								_string += twoTen[m7];
							}
						}
					}
				}else{ // ДЕСЯТЫЕ ТЫСЯЧИ от 20 - 90
					for(var m8:int = 1; m8 <= tens.length; m8++){
						if(number_29 == (m8 + 1)){
							_string += " ";
							_string += tens[m8];
						}
					}
				}
				
				// НАТУРАЛЬНЫЕ от 1 - 9
				if(number_29 > 1 || number_29 == 0){
					for(var m9:int = 0; m9 < scalar.length; m9++){
						if(number_30 == (m9 + 1)){
							_string += " ";
							_string += scalar[m9];
						}
					}
				}
			}
			
			//*********************************************************
			//
			// Если длина числа боьше 7 символов
			//
			//*********************************************************
			
			if(str.length > 7){
				convertNote(str.slice(0, 7));
			}
		
			
			return _string;
		}
	}
}