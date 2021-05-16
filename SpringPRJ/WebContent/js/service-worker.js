/**
 * Copyright 2016 Google Inc. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// This generated service worker JavaScript will precache your site's resources.
// The code needs to be saved in a .js file at the top-level of your site, and registered
// from your pages in order to be used. See
// https://github.com/googlechrome/sw-precache/blob/master/demo/app/js/service-worker-registration.js
// for an example of how you can register this script and handle various service worker events.

/* eslint-env worker, serviceworker */
/* eslint-disable indent, no-unused-vars, no-multiple-empty-lines, max-nested-callbacks, space-before-function-paren */
'use strict';


const CACHE_NAME = 'static-cache-v1';

const FILES_TO_CACHE = [
	'/index.jsp'
];

self.addEventListener('install', evt => {
	
	evt.waitUtil(
		caches.open(CACHE_NAME).then((cache) => {
			console.log('[ServiceWorker] Pre-caching offline page');
			return cache.addAll(FILES_TO_CACHE);
		})
	);
});

self.addEventListener('activate', evt => {
	
	evt.waitUtil(
		caches.keys().then((keyList) => {
			return Promise.all(keyList.map((key) => {
				if(key !== CACHE_NAME) {
					console.log('[ServiceWorker] Removing old cache', key);
					return cache.delete(key);
				}
			}));
		})
	);
});

self.addEventListener('activate', evt => {
	if(evt.request.mode !== 'navigate') {
		return;
	}
	evt.respondWith(
		fetch(evt.request)
			.catch(() => {
				return caches.open(CACHE_NAME)
					.then((cache) => {
						return cache.match('index.jsp')
			});
		})
	);
	
});






