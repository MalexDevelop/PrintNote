/**
 * @author Malex
 */
package node.sector_2.nodes
{
	import flash.text.TextFormatAlign;
	
	import form.Format;
	import form.FormatString;
	
	import leaf.Title;
	
	import node.Box;
	
	import value.TextValue;
	import value.Value;
	
	public class Node_2_3 extends Box
	{
		public function Node_2_3()
		{
			init();
		}
		
		override protected function init():void
		{
			// Размеры объекта
			this.width = 150;
			this.height = 155;
			
			// Сума 
			var headerString:String = TextValue.getInstance().getArray()[1][1];
			var headerFormat:Format = new FormatString();
			_titleField = new Title(headerString, 75, Value.heightSize, true);
			headerFormat.textFormat.align = TextFormatAlign.CENTER;
			_titleField.setTextFormat(headerFormat.textFormat);
			_titleField.x = 0;
			_titleField.y = 0;
			addChild(_titleField);
			
			// Код
			var headerString2:String = TextValue.getInstance().getArray()[1][4];
			var _titleField2:Title = new Title(headerString2, width / 2, Value.heightSize, true);
			_titleField2.setTextFormat(headerFormat.textFormat);
			_titleField2.x = _titleField.width;
			_titleField2.y = 0;
			addChild(_titleField2);
			
			for(var i:int = 0; i < 4; i++){
				for(var j:int = 0; j < 2; j++){
					var titleField3:Title = new Title("", width / 2, Value.heightSize, true);
					titleField3.x = titleField3.width * j;
					titleField3.y = _titleField2.height + (titleField3.height * i);
					addChild(titleField3);
				}
			}
			
			// Вид операції
			var headerString3:String = TextValue.getInstance().getArray()[1][5];
			var titleField4:Title = new Title(headerString3, width / 2, Value.heightSize, true);
			titleField4.setTextFormat(headerFormat.textFormat);
			titleField4.x = 0;
			titleField4.y = Value.heightSize * 5;
			addChild(titleField4);
			
			var titleField5:Title = new Title("", width / 2, Value.heightSize, true);
			titleField5.x = titleField4.width;
			titleField5.y = Value.heightSize * 5;
			addChild(titleField5);
			
			// Призначення платежу
			var headerString4:String = TextValue.getInstance().getArray()[1][6];
			var titleField6:Title = new Title(headerString4, width / 2, 35, true);
			titleField6.textField.wordWrap = true;
			titleField6.setTextFormat(headerFormat.textFormat);
			titleField6.x = 0;
			titleField6.y = Value.heightSize * 6;
			addChild(titleField6);
			
			var titleField7:Title = new Title("", width / 2, 35, true);
			titleField7.x = titleField6.width;
			titleField7.y = Value.heightSize * 6;
			addChild(titleField7);
		}
	}
}