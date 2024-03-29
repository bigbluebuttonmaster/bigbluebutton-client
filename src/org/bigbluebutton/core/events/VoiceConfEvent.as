/**
* BigBlueButton open source conferencing system - http://www.bigbluebutton.org/
*
* Copyright (c) 2010 BigBlueButton Inc. and by respective authors (see below).
*
* This program is free software; you can redistribute it and/or modify it under the
* terms of the GNU Lesser General Public License as published by the Free Software
* Foundation; either version 2.1 of the License, or (at your option) any later
* version.
*
* BigBlueButton is distributed in the hope that it will be useful, but WITHOUT ANY
* WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
* PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.
*
* You should have received a copy of the GNU Lesser General Public License along
* with BigBlueButton; if not, see <http://www.gnu.org/licenses/>.
* 
*/
package org.bigbluebutton.core.events
{
	import flash.events.Event;

	public class VoiceConfEvent extends Event
	{
		public static const MUTE_ALL:String = "VOICECONF_MUTE_ALL";
		public static const UNMUTE_ALL:String = "VOICECONF_UNMUTE_ALL";
    public static const LOCK_MUTE_USER:String = "LOCK_MUTE_USER";
		public static const MUTE_ALMOST_ALL:String = "VOICECONF_MUTE_ALMOST_ALL";
		
		public static const MUTE_USER:String = "VOICECONF_MUTE_USER";
		public static const UNMUTE_USER:String = "VOICECONF_UNMUTE_USER";
		
		public static const EJECT_USER:String = "VOICECONF_EJECT_USER";
		
		public var userid:int;
		public var mute:Boolean;
    public var lock:Boolean;
		
		public function VoiceConfEvent(type:String)
		{
			super(type, true, false);
		}
	}
}