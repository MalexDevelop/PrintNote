/**
 * @author Malex
 */
package node.sector_5
{
	import node.Node;
	import node.sector_5.nodes.*;
	
	
	public class Sector_5 extends Node
	{
		private var node_5_1:Node;
		private var node_5_2:Node;
		private var node_5_3:Node;
		private var node_5_4:Node;
		private var node_5_5:Node;
		private var node_5_6:Node;
		private var node_5_7:Node;
		private var node_5_8:Node;
		private var node_5_9:Node;
		private var node_5_10:Node;
		private var node_5_11:Node;
		private var node_5_12:Node;
		private var node_5_13:Node;
		private var node_5_14:Node;
		
		public function Sector_5()
		{
			init();
			addNodes();
		}
		
		override protected function init():void
		{
			// Размеры объекты
			this.width = 595;
			this.height = 344;
			
			// границы объекта / ВРЕМЕННЫЙ ДЕКОР!!!!!!
			/*this.graphics.beginFill(0x912273, .07);
			this.graphics.drawRect(0, 0, width, height);
			this.graphics.endFill();*/
		}
		
		protected function addNodes():void
		{
			// Номінал банкноти/монети або їх вартість
			node_5_1 = new Node_5_1();
			addChild(node_5_1);
			
			// Кількість
			node_5_2 = new Node_5_2();
			node_5_2.x = node_5_1.width;
			node_5_2.y = 0;
			addChild(node_5_2);
			
			// Сума грн.
			node_5_3 = new Node_5_3();
			node_5_3.x = node_5_2.x + node_5_2.width;
			node_5_3.y = 0;
			addChild(node_5_3);
			
			// Номер чека та серія
			node_5_4 = new Node_5_4();
			node_5_4.x = node_5_3.x + node_5_3.width;
			node_5_4.y = 0;
			addChild(node_5_4);
			
			// Номер рахунку та найменування чекодавця
			node_5_5 = new Node_5_5();
			node_5_5.x = node_5_4.x + node_5_4.width;
			node_5_5.y = 0;
			addChild(node_5_5);
			
			// Сума грн.
			node_5_6 = new Node_5_6();
			node_5_6.x = node_5_5.x + node_5_5.width;
			node_5_6.y = 0;
			addChild(node_5_6);
			
			// Відмітка про дефектні чеки
			node_5_7 = new Node_5_7();
			node_5_7.x = node_5_6.x + node_5_6.width;
			node_5_7.y = 0;
			addChild(node_5_7);
			
			// 2 - колонна
			node_5_8 = new Node_5_8();
			node_5_8.x = node_5_1.width;
			node_5_8.y = node_5_2.height;
			addChild(node_5_8);
			
			// 3 - колонна
			node_5_9 = new Node_5_9();
			node_5_9.x = node_5_2.x + node_5_2.width;
			node_5_9.y = node_5_3.height;
			addChild(node_5_9);
			
			// 4 - колонна
			node_5_10 = new Node_5_10();
			node_5_10.x = node_5_3.x + node_5_3.width;
			node_5_10.y = node_5_4.height;
			addChild(node_5_10);
			
			// 5 - колонна
			node_5_11 = new Node_5_11();
			node_5_11.x = node_5_4.x + node_5_4.width;
			node_5_11.y = node_5_5.height;
			addChild(node_5_11);
			
			// 6 - колонна
			node_5_12 = new Node_5_12();
			node_5_12.x = node_5_5.x + node_5_5.width;
			node_5_12.y = node_5_6.height;
			addChild(node_5_12);
			
			// 7 - колонна
			node_5_13 = new Node_5_13();
			node_5_13.x = node_5_6.x + node_5_6.width;
			node_5_13.y = node_5_7.height;
			addChild(node_5_13);
			
			// 1 - колонна
			node_5_14 = new Node_5_14();
			node_5_14.x = 0;
			node_5_14.y = node_5_1.height;
			addChild(node_5_14);
		}
	}
}