/**
 * @author Malex
 */
package node.sector_4
{
	import form.Format;
	import form.FormatString;
	
	import leaf.Title;
	
	import node.Node;
	
	import value.TextValue;
	
	public class Sector_4 extends Node
	{
		public function Sector_4()
		{
			init();
			addNodes();
		}
		
		override protected function init():void
		{
			// Размеры объекты
			this.width = 595;
			this.height = 40;
			
			// границы объекта / ВРЕМЕННЫЙ ДЕКОР!!!!!!
			/*this.graphics.beginFill(0xff9900, .07);
			this.graphics.drawRect(0, 0, width, height);
			this.graphics.endFill();*/
		}
		
		protected function addNodes():void
		{
			var format:Format = new FormatString();
			
			// Пидписи працивникив банку
			var string:String = TextValue.getInstance().getArray()[3][0];
			var title:Title = new Title(string, 144, 20, Border.status);
			title.setTextFormat(format.textFormat);
			title.x = width - title.width;
			title.y = 0;
			addChild(title);
			
			
			// Касир
			string = TextValue.getInstance().getArray()[3][1];
			var title_2:Title = new Title(string, 36, 20, Border.status);
			title_2.setTextFormat(format.textFormat);
			title_2.x = 0;
			title_2.y = 20;
			addChild(title_2);
			
			// Контролер
			string = TextValue.getInstance().getArray()[3][2];
			var title_3:Title = new Title(string, 60, 20, Border.status);
			title_3.setTextFormat(format.textFormat);
			title_3.x = title_2.width + 80;
			title_3.y = 20;
			addChild(title_3);
			
			// Представник Клиента
			string = TextValue.getInstance().getArray()[3][3];
			var title_4:Title = new Title(string, 110, 20, Border.status);
			title_4.setTextFormat(format.textFormat);
			title_4.x = title_3.x + title_3.width + 80;
			title_4.y = 20;
			addChild(title_4);
			
			// Контролер
			string = TextValue.getInstance().getArray()[3][4];
			var title_5:Title = new Title(string, 60, 20, Border.status);
			title_5.setTextFormat(format.textFormat);
			title_5.x = title_4.x + title_4.width + 80;
			title_5.y = 20;
			addChild(title_5);
		}
	}
}