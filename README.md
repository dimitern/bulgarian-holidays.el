bulgarian-holidays.el
=====================

Defines the official public (non-working day) holidays in Bulgaria.
Also includes the most popular Bulgarian Orthodox Church observances
(commonly called "[patron saint] name days", these have † as prefix),
and a few other common or international holidays (with * as prefix).
When church or other holidays are also non-working days, they do not
start with a prefix (e.g. Easter or April Fool's Day).

Source is based on an adapted version of `ukranian-holidays':
https://www.emacswiki.org/emacs/ukrainian-holidays.el

Calendar sources:
http://xn--80aaldxhp0a.com/imeni-dni.html
http://bg-patriarshia.bg/calendar.php

Installation
------------
Download `bulgarian-holidays.el' from this repository:

https://github.com/dimitern/bulgarian-holidays.el/blob/master/bulgarian-holidays.el

Enable by adding the following to your init file:

```elisp
(add-to-list 'load-path "/path/to/bulgarian-holidays.el")
(require 'bulgarian-holidays)
(setq calendar-holidays holiday-bulgarian-holidays)
```

Comments, corrections and feedback is welcome!

Enjoy,
Dimiter
