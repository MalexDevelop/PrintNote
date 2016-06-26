/**
 * @author Malex
 */
package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.filters.DropShadowFilter;
	import flash.printing.PrintJob;
	
	import hint.HintField;
	
	import leaf.Input;
	
	import pages.*;
	
	import uil.container.Panel;
	import uil.container.TabPanel;
	import uil.container.components.SliderBox;
	import uil.controls.buttons.Button;
	import uil.controls.selection.CheckBox;
	
	import utils.TextManager;
	import utils.XMLLoader;
	
	[SWF(backgroundColor = "#666666", frameRate = "30", width = "860", height = "972")]
	
	public class PrintNote extends Sprite
	{
		/** Серая область отображающая поля */
	 	private var _bgSprite_1:Sprite;
		/** Серая область отображающая поля */
	 	private var _bgSprite_2:Sprite;
		/** Серая область отображающая поля */
	 	private var _bgSprite_3:Sprite;
		/** Спрайт который передается на печать */
		private var _printSprite_1:Sprite;
		/** Спрайт который передается на печать */
		private var _printSprite_2:Sprite;
		/** Спрайт который передается на печать */
		private var _printSprite_3:Sprite;
		/** Главная панель приложения */
		private var _panel:Panel;
		/** Панель с вкладками */
		private var _tabPanel:TabPanel;
		/** Слайдер */
		private var _slider:SliderBox;
		/** Бокс выбора */
		private var checkBox_1:CheckBox;
		/** Бокс выбора */
		private var checkBox_2:CheckBox;
		/** Бокс выбора */		
		private var checkBox_3:CheckBox;
		/** Кнопка "Печать" */
		private var _btnPrint:Button;
		/** Кнопка "Очистить" */
		private var _btnClear:Button;
		/** Объект класса XMLLoader */
		private var loadXML:XMLLoader;
		/** Страница для печати 1*/
		private var page_1:Page;
		/** Страница для печати 2*/
		private var page_2:Page;
		/** Страница для печати 3*/
		private var page_3:Page;
		/**Всплывающее текстовое поле */
		private var _hint:HintField = new HintField();
		
		
		/**/
		private var _printJob:PrintJob;
		
		//***********************************************
		//
		// CONSTRUCTOR
		//
		//***********************************************
		
		public function PrintNote()
		{
			if(stage != null){
				init();
			}else{
				addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
			}
		}
		
		//***********************************************
		//
		// INTERNAL / PROTECTED / PRIVATE FUNCTIONS
		//
		//***********************************************
		
		private function init():void
		{
			//stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			stage.addEventListener(Event.RESIZE, resizeListener);
			addEventListener(MouseEvent.CLICK, clickHandler);
			initSkin();
			
			loadXML = new XMLLoader("data/title.xml");
			loadXML.addEventListener(Event.COMPLETE, completeHeandler);
			
			_printJob = new PrintJob();
		}
		
		/**
		 * Инициализирует внешний вид приложения 
		 */		
		private function initSkin():void
		{
			/* panel */
			_panel = new Panel();
			_panel.width = stage.stageWidth;
			_panel.height = stage.stageHeight;
			_panel.title = "Супровідна відомість до сумки з готівкою";
			addChild(_panel);
			
			
			
			/* TabPanel */
			_tabPanel = new TabPanel();
			_tabPanel.removeGraphics();
			_tabPanel.x = 10
			_tabPanel.y = 50;
			_tabPanel.width = 639;
			_tabPanel.height = 910;
			_tabPanel.addTab("Первый образец");
			_tabPanel.addTab("Второй образец");
			_tabPanel.addTab("Третий образец");
			addChild(_tabPanel);
			
			
			
			/* bgSprite 1 */
			_bgSprite_1 = new Sprite();
			_bgSprite_1.graphics.beginFill(0xebebeb);
			_bgSprite_1.graphics.drawRect(0, 0, 635, 882);
			_bgSprite_1.graphics.endFill();
			_tabPanel.addChildToTab("Первый образец", _bgSprite_1);
			
			/* bgSprite 2 */
			_bgSprite_2 = new Sprite();
			_bgSprite_2.graphics.beginFill(0xebebeb);
			_bgSprite_2.graphics.drawRect(0, 0, 635, 882);
			_bgSprite_2.graphics.endFill();
			_tabPanel.addChildToTab("Второй образец", _bgSprite_2);
			
			/* bgSprite 3 */
			_bgSprite_3 = new Sprite();
			_bgSprite_3.graphics.beginFill(0xebebeb);
			_bgSprite_3.graphics.drawRect(0, 0, 635, 882);
			_bgSprite_3.graphics.endFill();
			_tabPanel.addChildToTab("Третий образец", _bgSprite_3);
			
			
			
			/* print sprite 1 */
			_printSprite_1 = new Sprite();
			_printSprite_1.graphics.beginFill(0xffffff);
			_printSprite_1.graphics.drawRect(0, 0, 595, 842);
			_printSprite_1.graphics.endFill();
			_printSprite_1.x = _printSprite_1.y = 20;
			_bgSprite_1.addChild(_printSprite_1);
			
			/* print sprite 2 */
			_printSprite_2 = new Sprite();
			_printSprite_2.graphics.beginFill(0xffffff);
			_printSprite_2.graphics.drawRect(0, 0, 595, 842);
			_printSprite_2.graphics.endFill();
			_printSprite_2.x = _printSprite_2.y = 20;
			_bgSprite_2.addChild(_printSprite_2);
			
			/* print sprite 3 */
			_printSprite_3 = new Sprite();
			_printSprite_3.graphics.beginFill(0xffffff);
			_printSprite_3.graphics.drawRect(0, 0, 595, 842);
			_printSprite_3.graphics.endFill();
			_printSprite_3.x = _printSprite_3.y = 20;
			_bgSprite_3.addChild(_printSprite_3);
			
			
			
			/* add shadow filter to bg tab panel */
			var shadow:DropShadowFilter = new DropShadowFilter(5, 90, 0x000000, .2, 8, 8);
			var filter:Array = [];
			filter.push(shadow);
			_tabPanel.filters = filter;
			
			
			
			//////////////
			// CONTROLLS
			//////////////
			
			/* slider */
			_slider = new SliderBox("Масштаб", 1, 75, 100);
			_slider.startValue = 100;
			_slider.x = stage.stageWidth - (_slider.width + 12);
			_slider.y = 74;
			_slider.addEventListener(Event.CHANGE, changeHandler);
			addChild(_slider);
			
			/* check boxes */
			checkBox_1 = new CheckBox("Первый образец", true);
			checkBox_1.x = _slider.x
			checkBox_1.y = 140;
			addChild(checkBox_1);
			
			checkBox_2 = new CheckBox("Второй образец", true);
			checkBox_2.x = _slider.x
			checkBox_2.y = 170;
			addChild(checkBox_2);
			
			checkBox_3 = new CheckBox("Третий образец", true);
			checkBox_3.x = _slider.x
			checkBox_3.y = 200;
			addChild(checkBox_3);
			
			/* buttons */
			_btnPrint = new Button("Печать");
			_btnPrint.hint = "Печать формы";
			_btnPrint.x = _slider.x
			_btnPrint.y = 240;
			addChild(_btnPrint);
			_btnPrint.addEventListener(MouseEvent.CLICK, btnPrintClickHandler);
			
			_btnClear = new Button("Очистить");
			_btnClear.hint = "Очистить форму";
			_btnClear.x = _btnPrint.x + _btnPrint.width + 15;
			_btnClear.y = 240;
			addChild(_btnClear);
			_btnClear.addEventListener(MouseEvent.CLICK, btnClearClickHandler);
		}
		
		
		private function initText():void
		{
			page_1 = new PageVariant_1("Перший примірник");
			_printSprite_1.addChild(page_1);
			
			page_2 = new PageVariant_1("Другий примірник");
			_printSprite_2.addChild(page_2);
			
			page_3 = new PageVariant_2("Третій примірник");
			_printSprite_3.addChild(page_3);
		}
		
		//***********************************************
		//
		// HANDLERS
		//
		//***********************************************
		
		protected function clickHandler(e:MouseEvent):void
		{
			if(e.target.parent is Input){
				if(e.target.parent.name != "sumField" && e.target.parent.name != "sumField2"){
					_hint.toShow(e.target.parent as Input);
				}
			}
			else
			{
				if(_hint.stage){
					_hint.toHide();
				}
			}
		}
		
		/**
		 * Запускает печать страниц.
		 */		
		private function btnPrintClickHandler(e:MouseEvent):void
		{
			if(checkBox_1.pressed || checkBox_2.pressed || checkBox_3.pressed)
			{
				if (_printJob.start())
				{
					// page 1
					page_1.scaleX = .86;
					page_1.scaleY = .86;
					var paddingLeft:Number = (_printSprite_1.width - page_1.width) / 2;
					var paddingTop:Number = (_printSprite_1.height - page_1.height) / 2;
					page_1.x = paddingLeft;
					page_1.y = paddingTop;
					
					// page 2
					page_2.scaleX = .86;
					page_2.scaleY = .86;
					page_2.x = paddingLeft;
					page_2.y = paddingTop;
					
					// page 3
					page_3.scaleX = .86;
					page_3.scaleY = .86;
					page_3.x = paddingLeft;
					page_3.y = paddingTop;
					
					try
					{
						if(checkBox_1.pressed){
							_printJob.addPage(_printSprite_1);
						}
						
						if(checkBox_2.pressed){
							_printJob.addPage(_printSprite_2);
						}
						
						if(checkBox_3.pressed){
							_printJob.addPage(_printSprite_3);
						}
					}
					catch (error:Error)
					{
						trace("Ошибка печати!");
					}
					finally
					{
						// page 1
						page_1.scaleX = 1;
						page_1.scaleY = 1;
						page_1.x = 0;
						page_1.y = 0;
						
						// page 2
						page_2.scaleX = 1;
						page_2.scaleY = 1;
						page_2.x = 0;
						page_2.y = 0;
						
						// page 3
						page_2.scaleX = 1;
						page_2.scaleY = 1;
						page_2.x = 0;
						page_2.y = 0;
					}
					_printJob.send();
				}
				else
				{
					trace("Печать файла была отменета пользователем!");
				}
			}
		}
		
		/**
		 * Очищает все поля от текстового содержимого. 
		 */		
		private function btnClearClickHandler(e:MouseEvent):void
		{
			page_1.clearText();
			page_3.clearText();
		}
		
		/**
		 * Обрабатывает событие изменение размеров печатного личта.
		 */		
		private function changeHandler(e:Event):void
		{
			var scale:Number = _slider.value / 100;
			_bgSprite_1.scaleX = scale;
			_bgSprite_1.scaleY = scale;
			
			_bgSprite_2.scaleX = scale;
			_bgSprite_2.scaleY = scale;
			
			_bgSprite_3.scaleX = scale;
			_bgSprite_3.scaleY = scale;
			
			var w:Number = 639;
			var h:Number = 910;
			
			_tabPanel.width = w * scale;
			_tabPanel.height = h * scale;
		}
		
		/**
		 * Обрабатывает событие изменения окна приложения.
		 */		
		private function resizeListener(event:Event):void
		{
			_panel.width = stage.stageWidth;
			_panel.height = stage.stageHeight;
		}
		
		
		/**
		 * Слушает добавление на сцену
		 */		
		private function addedToStageHandler(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
			init();
		}
		
		
		/**
		 * Слушает завершение загрузки XML документа
		 */		
		private function completeHeandler(e:Event):void
		{
			var manager:TextManager = new TextManager(loadXML.xml);
			initText();
		}
	}
}