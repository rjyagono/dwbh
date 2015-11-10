/* ========================================================================
 * Bootstrap: dropdown.js v3.3.5
 * http://getbootstrap.com/javascript/#dropdowns
 * ========================================================================
 * Copyright 2011-2015 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */
+function(t){"use strict";function o(o){var e=o.attr("data-target");e||(e=o.attr("href"),e=e&&/#[A-Za-z]/.test(e)&&e.replace(/.*(?=#[^\s]*$)/,""));var n=e&&t(e);return n&&n.length?n:o.parent()}function e(e){e&&3===e.which||(t(r).remove(),t(a).each(function(){var n=t(this),r=o(n),a={relatedTarget:this};r.hasClass("open")&&(e&&"click"==e.type&&/input|textarea/i.test(e.target.tagName)&&t.contains(r[0],e.target)||(r.trigger(e=t.Event("hide.bs.dropdown",a)),e.isDefaultPrevented()||(n.attr("aria-expanded","false"),r.removeClass("open").trigger("hidden.bs.dropdown",a))))}))}function n(o){return this.each(function(){var e=t(this),n=e.data("bs.dropdown");n||e.data("bs.dropdown",n=new d(this)),"string"==typeof o&&n[o].call(e)})}var r=".dropdown-backdrop",a='[data-toggle="dropdown"]',d=function(o){t(o).on("click.bs.dropdown",this.toggle)};d.VERSION="3.3.5",d.prototype.toggle=function(n){var r=t(this);if(!r.is(".disabled, :disabled")){var a=o(r),d=a.hasClass("open");if(e(),!d){"ontouchstart"in document.documentElement&&!a.closest(".navbar-nav").length&&t(document.createElement("div")).addClass("dropdown-backdrop").insertAfter(t(this)).on("click",e);var i={relatedTarget:this};if(a.trigger(n=t.Event("show.bs.dropdown",i)),n.isDefaultPrevented())return;r.trigger("focus").attr("aria-expanded","true"),a.toggleClass("open").trigger("shown.bs.dropdown",i)}return!1}},d.prototype.keydown=function(e){if(/(38|40|27|32)/.test(e.which)&&!/input|textarea/i.test(e.target.tagName)){var n=t(this);if(e.preventDefault(),e.stopPropagation(),!n.is(".disabled, :disabled")){var r=o(n),d=r.hasClass("open");if(!d&&27!=e.which||d&&27==e.which)return 27==e.which&&r.find(a).trigger("focus"),n.trigger("click");var i=" li:not(.disabled):visible a",s=r.find(".dropdown-menu"+i);if(s.length){var p=s.index(e.target);38==e.which&&p>0&&p--,40==e.which&&p<s.length-1&&p++,~p||(p=0),s.eq(p).trigger("focus")}}}};var i=t.fn.dropdown;t.fn.dropdown=n,t.fn.dropdown.Constructor=d,t.fn.dropdown.noConflict=function(){return t.fn.dropdown=i,this},t(document).on("click.bs.dropdown.data-api",e).on("click.bs.dropdown.data-api",".dropdown form",function(t){t.stopPropagation()}).on("click.bs.dropdown.data-api",a,d.prototype.toggle).on("keydown.bs.dropdown.data-api",a,d.prototype.keydown).on("keydown.bs.dropdown.data-api",".dropdown-menu",d.prototype.keydown)}(jQuery);