bulgarian-holidays.el
=====================

Defines the official public (non-working day) holidays in Bulgaria.
Also includes the most popular Bulgarian Orthodox Church observances
(commonly called "[patron saint] name days", these have † as prefix),
and a few other common or international holidays (with * as prefix).
When church or other holidays are also non-working days, they do not
start with a prefix (e.g. Easter or April Fool's Day).

Source is partially based on `ukranian-holidays`:
https://www.emacswiki.org/emacs/ukrainian-holidays.el

Calendar sources:
  * http://xn--80aaldxhp0a.com/imeni-dni.html
  * http://bg-patriarshia.bg/calendar.php

Installation
------------

Download `bulgarian-holidays.el` from this repository:

https://github.com/dimitern/bulgarian-holidays.el/blob/master/bulgarian-holidays.el

Enable it by adding the a similar snippet to your Emacs init file:

```elisp
(add-to-list 'load-path "/path/to/bulgarian-holidays.el")
(require 'bulgarian-holidays)
(setq calendar-holidays holiday-bulgarian-holidays)
```

Comments, corrections (issues), and feedback are welcome!

Enjoy,
 --Dimiter
