webpackJsonp([5],{209:function(e,n,t){"use strict";function r(e){return function(){var n=e.apply(this,arguments);return new Promise(function(e,t){function r(i,o){try{var a=n[i](o),u=a.value}catch(e){return void t(e)}if(!a.done)return Promise.resolve(u).then(function(e){r("next",e)},function(e){r("throw",e)});e(u)}return r("next")})}}function i(e){if(E)return void e();c.a.apps.length<1&&c.a.initializeApp(window.__firestore.config),window.firebase=c.a,c.a.auth().signInWithCustomToken(window.__firestore.token).then(function(){E=c.a.database(),C=E.ref(),e()}).catch(function(e){console.log(e)})}function o(e){return C.child(A.roomID+"/"+e)}function a(e,n){try{var t=n||"";"object"===(void 0===t?"undefined":d(t))?e.set(JSON.parse(JSON.stringify(t))):e.set(t)}catch(e){window._isOnLocalhost()&&console.error("Error setting firebase data!",e)}}t.d(n,"g",function(){return b}),t.d(n,"f",function(){return g}),t.d(n,"b",function(){return k}),t.d(n,"d",function(){return _}),t.d(n,"a",function(){return R}),t.d(n,"e",function(){return T}),t.d(n,"c",function(){return N});var u=t(196),c=t.n(u),s=(t(345),t(346)),f=(t.n(s),t(347)),p=(t.n(f),t(210)),d="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e},l=Object.assign||function(e){for(var n=1;n<arguments.length;n++){var t=arguments[n];for(var r in t)Object.prototype.hasOwnProperty.call(t,r)&&(e[r]=t[r])}return e},v=this,h=void 0,m=function(){var e=r(regeneratorRuntime.mark(function e(){return regeneratorRuntime.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:if(!h){e.next=2;break}return e.abrupt("return",h);case 2:return c.a.apps.length<1&&c.a.initializeApp(window.__firestore.config),e.abrupt("return",c.a.auth().signInWithCustomToken(window.__firestore.token).then(function(){var e=c.a.firestore(),n={timestampsInSnapshots:!0};return e.settings(n),h=c.a.firestore()}));case 4:case"end":return e.stop()}},e,v)}));return function(){return e.apply(this,arguments)}}(),w=function(){var e=r(regeneratorRuntime.mark(function e(n){var t;return regeneratorRuntime.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,m();case 2:return t=e.sent,e.abrupt("return",t.doc("users/"+n.hashid));case 4:case"end":return e.stop()}},e,v)}));return function(n){return e.apply(this,arguments)}}(),y=function(e,n){return l({id:e.hashid,featureNotifications:[]},n)},b=function(){var e=r(regeneratorRuntime.mark(function e(n,t){var r;return regeneratorRuntime.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,w(n);case 2:r=e.sent,r.onSnapshot(function(e){t(y(n,e.data()))});case 4:case"end":return e.stop()}},e,v)}));return function(n,t){return e.apply(this,arguments)}}(),g=function(){var e=r(regeneratorRuntime.mark(function e(n,t){var r;return regeneratorRuntime.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,m();case 2:return r=e.sent,e.abrupt("return",r.collection("users/"+n.hashid+"/pins").onSnapshot(function(e){var n={};e.forEach(function(e){var t=e.data();n[t.id]=t}),t(n)}));case 4:case"end":return e.stop()}},e,v)}));return function(n,t){return e.apply(this,arguments)}}(),x=function(){var e=r(regeneratorRuntime.mark(function e(n,t){var r;return regeneratorRuntime.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,m();case 2:return r=e.sent,e.abrupt("return",r.doc("users/"+n.hashid+"/pins/"+t));case 4:case"end":return e.stop()}},e,v)}));return function(n,t){return e.apply(this,arguments)}}(),k=function(){var e=r(regeneratorRuntime.mark(function e(n,t){var r;return regeneratorRuntime.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,x(n,t.id);case 2:r=e.sent,r.set(t);case 4:case"end":return e.stop()}},e,v)}));return function(n,t){return e.apply(this,arguments)}}(),_=function(){var e=r(regeneratorRuntime.mark(function e(n,t){var r;return regeneratorRuntime.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,x(n,t);case 2:r=e.sent,r.delete();case 4:case"end":return e.stop()}},e,v)}));return function(n,t){return e.apply(this,arguments)}}(),R=function(){var e=r(regeneratorRuntime.mark(function e(n,t){var r;return regeneratorRuntime.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,w(n);case 2:r=e.sent,r.set({id:n.hashid,featureNotifications:c.a.firestore.FieldValue.arrayUnion(t),updatedAt:Object(p.b)()},{merge:!0});case 4:case"end":return e.stop()}},e,v)}));return function(n,t){return e.apply(this,arguments)}}(),O=function(){var e=r(regeneratorRuntime.mark(function e(n){var t;return regeneratorRuntime.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,m();case 2:return t=e.sent,e.abrupt("return",t.doc("items/"+n));case 4:case"end":return e.stop()}},e,v)}));return function(n){return e.apply(this,arguments)}}(),j=function(e,n,t){if("string"!=typeof e)throw"Invalid ID "+e;if("string"!=typeof n)throw"Invalid ID "+n;if(""===e||""===n)throw"Invalid values: "+e+", "+n;if(0===Object.keys(t).length)throw"Invalid attributes"},S=function(e){return JSON.parse(JSON.stringify(e))},I=function(e,n,t){return S(l({},t,{id:e,ownerId:n,updatedAt:Object(p.b)()}))},T=function(){var e=r(regeneratorRuntime.mark(function e(n,t,r){var i;return regeneratorRuntime.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:if(n){e.next=2;break}return e.abrupt("return");case 2:return j(n,t,r),e.next=5,O(n);case 5:i=e.sent,i.set(I(n,t,r),{merge:!0});case 7:case"end":return e.stop()}},e,v)}));return function(n,t,r){return e.apply(this,arguments)}}(),P=function(){var e=r(regeneratorRuntime.mark(function e(n,t){var r;return regeneratorRuntime.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,O(n);case 2:r=e.sent,r.onSnapshot(function(e){t(e.data())});case 4:case"end":return e.stop()}},e,v)}));return function(n,t){return e.apply(this,arguments)}}(),N=function(){var e=r(regeneratorRuntime.mark(function e(n){var t,r,i;return regeneratorRuntime.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,m();case 2:return t=e.sent,e.next=5,t.doc("analytics/"+n).get();case 5:return r=e.sent,i=void 0,r.exists&&(i=r.data().events),e.abrupt("return",Array.isArray(i)?i:[]);case 9:case"end":return e.stop()}},e,v)}));return function(n){return e.apply(this,arguments)}}();window.firestoreConnect={onItemChanges:P,setItemAttributes:T};var A=window.__rtData,C=null,E=void 0;window.CPFirebase={auth:i,getRef:o,safelySetRef:a}},210:function(e,n,t){"use strict";t.d(n,"b",function(){return i}),t.d(n,"a",function(){return o});var r=function(e){return Math.floor(e.getTime()/1e3)},i=function(){return r(new Date)},o=function(e,n,t){if(!/\d\d\d\d/.test(e+"")||n>12||t>31)throw"Invalid date "+e+", "+n+", "+t;return r(new Date(e+"."+n+"."+t))}},468:function(e,n,t){"use strict";t.d(n,"a",function(){return r});var r=function(e){(document.attachEvent?"complete"===document.readyState:"loading"!==document.readyState)?e():document.addEventListener("DOMContentLoaded",e)}},821:function(e,n,t){t(186),t(822),t(825),t(826)},822:function(e,n,t){"use strict";Object.defineProperty(n,"__esModule",{value:!0});var r=t(823),i=t(209),o=t(210),a=t(468),u=document.querySelector("#pinned-items"),c=document.querySelector("#pin-button"),s={},f=window.__user,p=window.__item||{},d=function(e){e[p.hashid]?c.classList.add("is-pinned"):c.classList.remove("is-pinned")},l=function(e){var n=Object.values(e);if(0===n.length)return void w();u.innerHTML=v(n)},v=function(e){return"<ul>"+Object(r.a)(e,"updatedAt").map(function(e){return m(e)}).join("")+"</ul>"},h=function(e){return"pen"===e.itemType?"/you/pen/"+e.id:"post"===e.itemType?"/you/post/"+e.id:"project"===e.itemType?"/you/project/editor/"+e.id:"collection"===e.itemType?"/collection/"+e.id:"/you/pen/"+e.id},m=function(e){return'\n    <li class="pin-item-type-'+e.itemType+'" data-id="'+e.id+'">\n      <svg class="icon icon-new-'+e.itemType+'">\n        <use xlink:href="#icon-new-'+e.itemType+'"></use>\n      </svg>\n      <a href="'+h(e)+'">\n        '+e.title+'\n      </a>\n      <button class="remove-pinned-item invisible-button" data-pin-id="'+e.id+'">\n        âœ•\n      </button>\n    </li>\n  '},w=function(){u.innerHTML='<p>You don\'t have any <a href="https://blog.codepen.io/documentation/features/pinned-items/" target="_blank" rel="noopener">pinned items</a> yet. You can pin any Pen, Post, or Collection (from their respective pages) for easy access here.</p>'},y=function(e){e.preventDefault();var n=b();s[p.hashid]?i.d(f,n.id):i.b(f,n)},b=function(){return{id:p.hashid,itemType:p.itemType,title:g(),updatedAt:Object(o.b)()}},g=function(){return p.title||p.name||p.slug_hash},x=function(e){var n=e.target.getAttribute("data-pin-id");n&&(e.stopPropagation(),i.d(f,n))},k=function(e){s=e,c&&d(e),l(e)};Object(a.a)(function(){f&&!f.anon&&u&&(i.f(f,k),c&&c.addEventListener("click",y),u.addEventListener("click",x))})},823:function(e,n,t){"use strict";t.d(n,"a",function(){return r});var r=function(e,n){return e.sort(function(e,t){return e[n]<t[n]?1:e[n]>t[n]?-1:0})}},825:function(e,n,t){"use strict";Object.defineProperty(n,"__esModule",{value:!0});var r=t(209),i=t(468),o=t(210),a=Object(o.b)(),u=window.__user,c=function(e){e.preventDefault(),r.a(u,p.PINS.value)},s=function(){$("#pin-dropdown-button").append('<div class="feature-callout">New feature!</div>')},f=function(){$("#pin-dropdown-button").find(".feature-callout").remove()},p={PINS:{value:"PINS",showUntil:Object(o.a)(2018,12,1),hideCallback:f,showCallback:s}},d=function(e){var n=e.featureNotifications;Object.keys(p).forEach(function(e){var t=p[e];a>t.showUntil||n.includes(t.value)?t.hideCallback():t.showCallback()})};Object(i.a)(function(){if(u&&!u.anon){var e=document.querySelector("#pin-dropdown-button");e&&(r.g(u,d),e.addEventListener("click",c))}})},826:function(e,n,t){"use strict";function r(e){return function(){var n=e.apply(this,arguments);return new Promise(function(e,t){function r(i,o){try{var a=n[i](o),u=a.value}catch(e){return void t(e)}if(!a.done)return Promise.resolve(u).then(function(e){r("next",e)},function(e){r("throw",e)});e(u)}return r("next")})}}Object.defineProperty(n,"__esModule",{value:!0});var i=t(209),o=this,a=Object.assign||function(e){for(var n=1;n<arguments.length;n++){var t=arguments[n];for(var r in t)Object.prototype.hasOwnProperty.call(t,r)&&(e[r]=t[r])}return e},u=function(e,n){try{var t=e.action,r=e.name,i=e.properties,o=e.selector,u=a({},i||{},{elementClassName:n.className,elementId:n.id,elementText:n.innerText.trim(),environment:window.__env});"A"===n.tagName?(u.elementHref=n.href,mixpanel.track_links(o,r,u)):n.addEventListener(t,function(){mixpanel.track(r,u)})}catch(e){}},c=function(){var e=r(regeneratorRuntime.mark(function e(){var n;return regeneratorRuntime.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:return e.prev=0,e.next=3,Object(i.c)(window.__analytics.pageId);case 3:n=e.sent,n.forEach(function(e){var n=document.querySelectorAll(e.selector);Array.prototype.forEach.call(n,function(n){return u(e,n)})}),n.length>0&&mixpanel.identify(window.__user.hashid),e.next=10;break;case 8:e.prev=8,e.t0=e.catch(0);case 10:case"end":return e.stop()}},e,o,[[0,8]])}));return function(){return e.apply(this,arguments)}}(),s=window.__analytics;window.mixpanel&&(function(){return 1!==navigator.doNotTrack&&(!!s&&s.enabled)}()?c():function(){mixpanel.opt_out_tracking()}())}},[821]);
//# sourceMappingURL=everypage-e10c8936050a9f36d254.js.map