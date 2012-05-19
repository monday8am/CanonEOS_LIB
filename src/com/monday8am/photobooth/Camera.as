package com.monday8am.photobooth
{

	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.events.StatusEvent;
	import flash.events.TimerEvent;
	import flash.external.ExtensionContext;
	import flash.utils.Timer;
	
	
	
	public class Camera extends EventDispatcher
	{
		
		
		private var _extension : ExtensionContext;
		
		// camera properties
		private var _modelName : String;
		
		// utils
		
		
		public function Camera( extension : ExtensionContext )
		{
			_extension = extension;
			_extension.addEventListener(  StatusEvent.STATUS, onStatus );
			initCamera();
			
			// get properties and get camera data
		}
		

		/**
		 * 
		 *  Getter and setters
		 * 
		 */  

		public function get modelName() : String { return _modelName; }
	
		
		
		/**
		 * 
		 * Extension methods
		 * 
		 **/  
		
		private function initCamera() : Boolean { return _extension.call( "initCamera" ); }
		
		private function executeCommand( command : String, ...rest ) : Boolean  
		{
			return _extension.call( "executeCommand", command, rest );
		}

		
		/**
		 *
		 *  General methods
		 * 
		 */ 
		
		public function release(): Boolean { return _extension.call( "releaseCamera" ); }
		
		
		/**
		 * 
		 *  Shoot methods
		 * 
		 **/
		
		public function takePicture( path : String ): Boolean 
		{ 
			return _extension.call( "executeCommand", "TakePicture", path )
		}

		public function pressingHalfway(): Boolean { return executeCommand( "pressingHalfway" ); }
		
		public function pressingCompletely(): Boolean { return executeCommand( "pressingCompletely" ); }
		
		public function pressingOff(): Boolean { return executeCommand( "pressingOff" ); }


		/**
		 * 
		 *  EVF methods
		 * 
		 **/
		
		public function startEVF():Boolean 
		{  
			var timer : Timer = new Timer( 4000, 1 );
			timer.addEventListener( TimerEvent.TIMER_COMPLETE, onTimerComplete );
			timer.start();
			function onTimerComplete( e : Event ) : void { executeCommand( "downloadEVF" );  }
			
			return executeCommand( "startEVF" );  
		}
		
		public function getEVF( _bitmapData : BitmapData ):Boolean  { return _extension.call( "getEVF", _bitmapData ); }	
		
		public function endEVF(): Boolean { return executeCommand( "endEVF" );  }
		
		public function evfAFOn(): Boolean { return executeCommand( "evfAFOn" );  }
		
		public function evfAFOff(): Boolean { return executeCommand( "evfAFOff" );  }
		
		
		/**
		 * 
		 *  Event handlers
		 * 
		 */ 
		
		private function onStatus( event : StatusEvent ):void
		{
			var e : StatusEvent = new StatusEvent( StatusEvent.STATUS );
			e.level = event.level;
			e.code  = event.code;
			dispatchEvent( e );
		}	
		
		
		/**
		 * 
		 *  Utils
		 * 
		 */ 
		
		private function getNumberAsHexString( number_str:String, minimumLength:uint = 1, showHexDenotation:Boolean = true ) : String 
		{
			
			// The string that will be output at the end of the function.
			var string:String = number_str.toUpperCase();
			
			// While the minimumLength argument is higher than the length of the string, add a leading zero.
			while (minimumLength > string.length) {
				string = "0" + string;
			}
			
			// Return the result with a "0x" in front of the result.
			if (showHexDenotation) { string = "0x" + string; }
			
			return string;
		}	
			

		
	}
}