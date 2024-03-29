/**
 * BigBlueButton open source conferencing system - http://www.bigbluebutton.org/
 * 
 * Copyright (c) 2012 BigBlueButton Inc. and by respective authors (see below).
 *
 * This program is free software; you can redistribute it and/or modify it under the
 * terms of the GNU Lesser General Public License as published by the Free Software
 * Foundation; either version 3.0 of the License, or (at your option) any later
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
package org.bigbluebutton.modules.chat.model
{
	import org.bigbluebutton.core.BBB;
	import org.bigbluebutton.common.LogUtil;

	public class ChatOptions
	{
		[Bindable]
		public var translationOn:Boolean = true;
		
		[Bindable]
		public var translationEnabled:Boolean = true;
		
		[Bindable]
		public var privateEnabled:Boolean = true;
		
		[Bindable]
		public var position:String = "top-right";
		
		[Bindable] public var baseTabIndex:int;
		
		public function ChatOptions() {
			var cxml:XML = 	BBB.getConfigForModule("ChatModule");
			if (cxml != null) {
				if (cxml.@privateEnabled != undefined) {
					privateEnabled = (cxml.@privateEnabled.toString().toUpperCase() == "TRUE") ? true : false;
				}
				if (cxml.@position != undefined) {
					position = cxml.@position.toString();
				}
				if (cxml.@baseTabIndex != undefined) {
					baseTabIndex = cxml.@baseTabIndex;
				}
				else{
					baseTabIndex = 701;
				}
			}
		}
		
		public function getBaseIndex():int{
			return baseTabIndex;
		}
	}
}