package com.monday8am.ane
{
	import flash.events.EventDispatcher;
	import flash.external.ExtensionContext;
	
	public class CanonEOSLib extends EventDispatcher
	{
		
		private var _ExtensionContext : ExtensionContext;
		private var _camera : CanonEOSCamera; 
		private var _extensionContextReady : Boolean = true;
		
		
		public function CanonEOSLib()
		{
			try 
			{
				_ExtensionContext = ExtensionContext.createExtensionContext(  "com.monday8am.ane.CanonEOSLib" , null );
			}
			catch( e : Error ) 
			{

			}	
		}
		
		
		public function get extensionContextReady():Boolean
		{
			if( _ExtensionContext == null )
			{
				_extensionContextReady = false;
			}
			else
			{
				_extensionContextReady = true;
			}
			
			return _extensionContextReady;
		}

		
		public function getCamera():CanonEOSCamera
		{
			if( _camera == null )
			{
				_camera = new CanonEOSCamera( _ExtensionContext );
			}
			
			return _camera;
		}
		
		
		public function dispose():void 
		{ 
			if( _camera != null ) _camera.release();
			
			return _ExtensionContext.dispose(); 	
		}	
		
		
		public function isSupported():Boolean 
		{ 
			return _ExtensionContext.call( "isSupported" ); 
		}
		
		
	}
}