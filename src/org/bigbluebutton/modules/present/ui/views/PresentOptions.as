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
package org.bigbluebutton.modules.present.ui.views
{
	import org.bigbluebutton.core.BBB;
	import org.bigbluebutton.common.LogUtil;
	public class PresentOptions
	{
		[Bindable] public var showWindowControls:Boolean = true;
		[Bindable] public var baseTabIndex:int;
		[Bindable] public var maxFileSize:Number;
		
		public function PresentOptions()
		{
			var vxml:XML = BBB.getConfigForModule("PresentModule");
			if (vxml != null) {
				if (vxml.@showWindowControls != undefined) {
					showWindowControls = (vxml.@showWindowControls.toString().toUpperCase() == "TRUE") ? true : false;
				}
				if (vxml.@baseTabIndex != undefined) {
					baseTabIndex = vxml.@baseTabIndex;
				}
				else{
					baseTabIndex = 501;
				}
				if (vxml.@maxFileSize != undefined) {
					maxFileSize = vxml.@maxFileSize;
				}
				else{
					maxFileSize = 30;
				}
			}
		}
	}
}