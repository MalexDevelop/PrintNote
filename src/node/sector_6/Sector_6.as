/**
 * @author Malex
 */
package node.sector_6
{
	import node.Box;
	import node.Node;
	import node.sector_6.nodes.*;
	
	
	public class Sector_6 extends Node
	{
		private var _node_6_1:Box;
		private var _node_6_2:Box;
		private var _node_6_3:Box;
		private var _node_6_4:Box;
		private var _node_6_5:Box;
		private var _node_6_6:Box;
		private var _node_6_7:Box;
		private var _node_6_8:Box;
		private var _node_6_9:Box;
		private var _node_6_10:Box;
		
		public function Sector_6()
		{
			init();
			addNodes();
		}
		
		override protected function init():void
		{
			// Размеры объекты
			this.width = 350;
			this.height = 470;
			
			// границы объекта / ВРЕМЕННЫЙ ДЕКОР!!!!!!
			/*this.graphics.beginFill(0x0000FF, .07);
			this.graphics.drawRect(0, 0, width, height);
			this.graphics.endFill();*/
		}
		
		protected function addNodes():void
		{
			// Розписка
			_node_6_1 = new Node_6_1();
			_node_6_1.x = (width - _node_6_1.width) / 2;
			_node_6_1.y = 0;
			addChild(_node_6_1);
			
			// Опломбовану сумку №
			_node_6_2 = new Node_6_2();
			_node_6_2.x = (width - _node_6_2.width) / 2;
			_node_6_2.y = _node_6_1.height + 20;
			addChild(_node_6_2);
			
			// (найменування банківської установи)
			_node_6_3 = new Node_6_3();
			_node_6_3.x = (width - _node_6_3.width) / 2;
			_node_6_3.y = _node_6_2.y + _node_6_2.height + 30;
			addChild(_node_6_3);
			
			// (прізвище, ініціали)
			_node_6_4 = new Node_6_4();
			_node_6_4.x = 0;
			_node_6_4.y = _node_6_3.y + _node_6_3.height + 30;
			addChild(_node_6_4);
			
			// (підпис)
			_node_6_5 = new Node_6_5();
			_node_6_5.x = _node_6_4.width + 20;
			_node_6_5.y = _node_6_3.y + _node_6_3.height + 30;
			addChild(_node_6_5);
			
			// М.П.
			_node_6_6 = new Node_6_6();
			_node_6_6.x = 40;
			_node_6_6.y = _node_6_4.y + _node_6_4.height + 20;
			addChild(_node_6_6);
			
			// (дата)
			_node_6_7 = new Node_6_7();
			_node_6_7.x = _node_6_5.x;
			_node_6_7.y = _node_6_6.y + _node_6_6.height;
			addChild(_node_6_7);
			
			// До уваги
			_node_6_8 = new Node_6_8();
			_node_6_8.x = (width -_node_6_8.width ) / 2
			_node_6_8.y = _node_6_7.y + _node_6_7.height + 10;
			addChild(_node_6_8);
			
			
			// Готівка сортується за номіналами банкнот. Відбиток пломбіра має бути чітким. Слід обережно поводитися  із сумкою.
			_node_6_9 = new Node_6_9();
			_node_6_9.x = 0;
			_node_6_9.y = _node_6_8.y + _node_6_8.height + 5;
			addChild(_node_6_9);
			
			// Цей примірник залишається в здавача готівки як квитанція  про приймання інкасатором сумки з готівкою.
			_node_6_10 = new Node_6_10();
			_node_6_10.x = _node_6_9.width + 35;
			_node_6_10.y = _node_6_9.y;
			addChild(_node_6_10 );
			
			// Line
			graphics.lineStyle(1, 0x000000);
			graphics.moveTo(width / 2, _node_6_10.y);
			graphics.lineTo(width / 2, height);
		}
	}
}