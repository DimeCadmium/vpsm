VPSM
====

VPS Management Panel, by John Runyon ("DimeCadmium").

Source code available at <https://github.com/DimeCadmium/vpsm/>


License
-------

Licensed under the MIT License <http://www.tldrlegal.com/license/mit-license>:

Copyright 2013 John Runyon and others, see <https://github.com/DimeCadmium/vpsm/AUTHORS>.
 
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


Features
--------

Subject to change.

* PHP Library (vpsm/)
 * Create/suspend/unsuspend/destroy VPS
 * Boot/reboot/shutdown VPSs
 * Add/remove IPs
 * Adjust resources
 * Manage templates/ISOs
 * Retrieve resource usage
 * Set up console access
 * Mount CD's/reimage VPS
 * Change VPS settings (hostname, root password, tuntap, etc)
 * Change KVM "drivers"
 * Enable TUN, PPP, GRE, and FUSE
 * Change IP's
 
* WHMCS integration (whmcs/)
 * Admin:
  * All library functions (over *all* VPS)
  * Mass-management (select by node, package, virtualization type, ...?)
  * Logs/history
  * Choose whether clients can enable TUN, PPP, GRE, FUSE, change KVM drivers, etc
 * Client:
  * Boot/reboot/shutdown
  * Re-image
  * Change mounted CD's (KVM etc)/reimage VPS
  * Resource usage
  * Console access
  * Logs/history
  * Change VPS settings
 * Auto provisioning
 * Auto terminate
 * Auto suspend/unsuspend

* Node executable
 * Run via SSH (with key-auth)?

Contributions
-------------

Code contributions welcome, submit a pull request. If you're not sure if a feature is in-progress ask DimeCadmium on freenode.