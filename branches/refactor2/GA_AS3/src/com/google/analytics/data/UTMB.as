﻿/*
 * Copyright 2008 Adobe Systems Inc., 2008 Google Inc.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *   http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * 
 * Contributor(s):
 *   Zwetan Kjukov <zwetan@gmail.com>.
 *   Marc Alcaraz <ekameleon@gmail.com>.
 */

package com.google.analytics.data
{
    /**
     * Session timeout : persists for 30 min.
     */
    public class UTMB
    {
        
        /**
         * @private
         */
        private var _inURL:String = "__utmb";

        /**
         * @private
         */  
        private var _lastTime:int;        
        
        /**
         * @private
         */  
        private var _trackCount:int;

        /**
         * @private
         */  
        private var _token:String;
                
        /**
         * Field index for domain hash in session timeout cookie (__utmb) value.
         */
        public static const DOMAINHASH:int  = 0;
        
        /**
         * Field index for tracking count in session timeout cookie (__utmb) value.
         */
        public static const TRACK_COUNT:int = 1;
        
        /**
         * Number of token in bucket.
         */
        public static const TOKEN:int       = 2;
        
        /**
         * Time stamp for last time the token bucket was updated.
         */
        public static const LAST_TIME:int   = 3;
        
        /**
         * Creates a new UTMB instance.
         */        
        public function UTMB()
        {
        }
        
        /**
         * Indicates the track count value.
         */
        public function get trackCount():int
        {
            return _trackCount;
        }
        
        /**
         * @private
         */
        public function set trackCount( value:int ):void
        {
            _trackCount = value;
        }
        

    }
}