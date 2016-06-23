/**
 * @author Malex
 */
package node.sector_3
{
	import node.Box;
	import node.Node;
	import node.sector_3.nodes.*;
	
	public class Sector_3 extends Node
	{
		private var _node_3_1:Box;
		private var _node_3_2:Box;
		private var _node_3_3:Box;
		private var _node_3_4:Box;
		private var _node_3_5:Box;
		private var _node_3_6:Box;
		private var _node_3_7:Box;
		private var _node_3_8:Box;
		private var _node_3_9:Box;
		private var _node_3_10:Box;
		
		
		public function Sector_3()
		{
			init();
			addNodes();
		}
		
		override protected function init():void
		{
			// Размеры объекты
			this.width = 350;
			this.height = 183;
			
			// границы объекта / ВРЕМЕННЫЙ ДЕКОР!!!!!!
			this.graphics.beginFill(0x0000FF, .07);
			this.graphics.drawRect(0, 0, width, height);
			this.graphics.endFill();
		}
		
		protected function addNodes():void
		{
			// Акт/(дата складання акта)
			_node_3_1 = new Node_3_1();
			_node_3_1.x = (width - _node_3_1.width) / 2;
			_node_3_1.y = 0;
			addChild(_node_3_1);
			
			// Під час розкриття сумки і перерахування вкладень виявилося:
			_node_3_2 = new Node_3_2();
			_node_3_2.x = (width - _node_3_2.width) / 2;
			_node_3_2.y = _node_3_1.height;
			addChild(_node_3_2);
			
			// готівкою, грн.
			_node_3_3 = new Node_3_3();
			_node_3_3.x = 0;
			_node_3_3.y = _node_3_2.y + _node_3_2.height;
			addChild(_node_3_3);
			
			// надлишок, грн.
			_node_3_4 = new Node_3_4();
			_node_3_4.x = 0;
			_node_3_4.y = _node_3_3.y + _node_3_3.height;
			addChild(_node_3_4);
			
			// чеками, грн.
			_node_3_5 = new Node_3_5();
			_node_3_5.x = 0;
			_node_3_5.y = _node_3_4.y + _node_3_4.height;
			addChild(_node_3_5);
			
			// надлишок, грн.
			_node_3_6 = new Node_3_6();
			_node_3_6.x = 0;
			_node_3_6.y = _node_3_5.y + _node_3_5.height;
			addChild(_node_3_6);
			
			// недостача, грн.
			_node_3_7 = new Node_3_7();
			_node_3_7.x = width - _node_3_7.width;
			_node_3_7.y = _node_3_3.y;
			addChild(_node_3_7);
			
			// недостача, грн.
			_node_3_8 = new Node_3_8();
			_node_3_8.x = width - _node_3_8.width;
			_node_3_8.y = _node_3_5.y;
			addChild(_node_3_8);
			
			// Неплатіжних і сумнівних банкнот (чеів), грн
			_node_3_9 = new Node_3_9();
			_node_3_9.x = 0;
			_node_3_9.y = _node_3_6.y + _node_3_6.height;
			addChild(_node_3_9);
			
			// Неплатіжних і сумнівних банкнот (чеів), грн
			_node_3_10 = new Node_3_10();
			_node_3_10.x = width - _node_3_10.width;
			_node_3_10.y = _node_3_9.y;
			addChild(_node_3_10);
		}
	}
}