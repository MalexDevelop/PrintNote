/**
 * @author Malex
 */
package node.sector_5.nodes
{
	import flash.text.TextFormatAlign;
	import node.sector_5.nodes.nodes_5_14.*;
	import form.Format;
	import form.FormatString;
	
	import leaf.Title;
	
	import node.Box;
	
	public class Node_5_14 extends Box
	{
		private var node_5_14_1:Box; // 1
		private var node_5_14_2:Box; // 2
		private var node_5_14_3:Box; // 5
		private var node_5_14_4:Box; // 10
		private var node_5_14_5:Box; // 20
		private var node_5_14_6:Box; // 50
		private var node_5_14_7:Box; // 100
		private var node_5_14_8:Box; // 200
		private var node_5_14_9:Box; // 500
		
		private var node_5_14_10:Box; // 1 коп
		private var node_5_14_11:Box; // 2 коп
		private var node_5_14_12:Box; // 5 коп
		private var node_5_14_13:Box; // 10 коп
		private var node_5_14_14:Box; // 25 коп
		private var node_5_14_15:Box; // 50 коп
		
		private var node_5_14_16:Box; // Всего
		private var node_5_14_17:Box; // Всего 
		
		public function Node_5_14()
		{
			init();
		}
		
		override protected function init():void
		{
			
			// Размеры объекта
			this.width = 100;
			this.height = 272;
			
			// 1
			var format:Format = new FormatString();
			format.textFormat.align = TextFormatAlign.CENTER;
			_titleField = new Title("1", width, 17, true);
			_titleField.textField.wordWrap = true;
			_titleField.setTextFormat(format.textFormat);
			_titleField.x = 0;
			_titleField.y = 0;
			addChild(_titleField);
			
			// 1 грн.
			node_5_14_1 = new Node_5_14_1();
			node_5_14_1.x = 0;
			node_5_14_1.y = _titleField.height;
			addChild(node_5_14_1);
			
			// 2 грн.
			node_5_14_2 = new Node_5_14_2();
			node_5_14_2.x = 0;
			node_5_14_2.y = node_5_14_1.y + node_5_14_1.height;
			addChild(node_5_14_2);
			
			// 5 грн.
			node_5_14_3 = new Node_5_14_3();
			node_5_14_3.x = 0;
			node_5_14_3.y = node_5_14_2.y + node_5_14_2.height;
			addChild(node_5_14_3);
			
			// 10 грн.
			node_5_14_4 = new Node_5_14_4();
			node_5_14_4.x = 0;
			node_5_14_4.y = node_5_14_3.y + node_5_14_3.height;
			addChild(node_5_14_4);
			
			// 20 грн.
			node_5_14_5 = new Node_5_14_5();
			node_5_14_5.x = 0;
			node_5_14_5.y = node_5_14_4.y + node_5_14_4.height;
			addChild(node_5_14_5);
			
			// 50 грн.
			node_5_14_6 = new Node_5_14_6();
			node_5_14_6.x = 0;
			node_5_14_6.y = node_5_14_5.y + node_5_14_5.height;
			addChild(node_5_14_6);
			
			// 100 грн.
			node_5_14_7 = new Node_5_14_7();
			node_5_14_7.x = 0;
			node_5_14_7.y = node_5_14_6.y + node_5_14_6.height;
			addChild(node_5_14_7);
			
			// 200 грн.
			node_5_14_8 = new Node_5_14_8();
			node_5_14_8.x = 0;
			node_5_14_8.y = node_5_14_7.y + node_5_14_7.height;
			addChild(node_5_14_8);
			
			// 500 грн.
			node_5_14_9 = new Node_5_14_9();
			node_5_14_9.x = 0;
			node_5_14_9.y = node_5_14_8.y + node_5_14_8.height;
			addChild(node_5_14_9);
			
			// 1 коп.
			node_5_14_10 = new Node_5_14_10();
			node_5_14_10.x = 0;
			node_5_14_10.y = node_5_14_9.y + node_5_14_9.height;
			addChild(node_5_14_10);
			
			// 2 коп.
			node_5_14_11 = new Node_5_14_11();
			node_5_14_11.x = 0;
			node_5_14_11.y = node_5_14_10.y + node_5_14_10.height;
			addChild(node_5_14_11);
			
			// 5 коп.
			node_5_14_12 = new Node_5_14_12();
			node_5_14_12.x = 0;
			node_5_14_12.y = node_5_14_11.y + node_5_14_11.height;
			addChild(node_5_14_12);
			
			// 10 коп.
			node_5_14_13 = new Node_5_14_13();
			node_5_14_13.x = 0;
			node_5_14_13.y = node_5_14_12.y + node_5_14_12.height;
			addChild(node_5_14_13);
			
			// 25 коп.
			node_5_14_14 = new Node_5_14_14();
			node_5_14_14.x = 0;
			node_5_14_14.y = node_5_14_13.y + node_5_14_13.height;
			addChild(node_5_14_14);
			
			// 50 коп.
			node_5_14_15 = new Node_5_14_15();
			node_5_14_15.x  = 0;
			node_5_14_15.y = node_5_14_14.y + node_5_14_14.height;
			addChild(node_5_14_15);
			
			// Усего
			node_5_14_16 = new Node_5_14_16();
			node_5_14_16.x = 0;
			node_5_14_16.y = node_5_14_15.y + node_5_14_15.height;
			addChild(node_5_14_16);
			
			// Усего
			node_5_14_17 = new Node_5_14_17();
			node_5_14_17.x = node_5_14_16.x + node_5_14_16.width;
			node_5_14_17.y = node_5_14_16.y;
			addChild(node_5_14_17);
		}
	}
}