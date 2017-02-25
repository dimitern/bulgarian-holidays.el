bulgarian-holidays.el
=====================

*Инструкции на **БЪЛГАРСКИ** можете да намерите по-долу!*

This package defines the official public (non-working day) holidays
in Bulgaria.  Also includes the most popular Bulgarian Orthodox
Church observances (commonly called "[patron saint] name days", these
have † as prefix), and a few other common or international holidays
(with * as prefix).

When church or other holidays are also non-working days, they do not
start with a prefix (e.g. Easter or April Fool's Day).

In addition to the original Bulgarian holiday names there is matching
list of the same names translated to English.

Source is based on an adapted version of `ukranian-holidays':
https://www.emacswiki.org/emacs/ukrainian-holidays.el

Calendar sources:
  * http://xn--80aaldxhp0a.com/imeni-dni.html
  * http://bg-patriarshia.bg/calendar.php

Source for translating the holiday names to English (where available):
  * https://en.wikipedia.org/wiki/

Installation
------------

Download `bulgarian-holidays.el` from this repository:

https://github.com/dimitern/bulgarian-holidays.el/blob/master/bulgarian-holidays.el

Enable it by adding the a similar snippet to your Emacs init file:

```elisp
(add-to-list 'load-path "/path/to/bulgarian-holidays.el")
(require 'bulgarian-holidays)
(setq calendar-holidays bulgarian-holidays-list)
```

If you prefer to use the English translations of the holidays:

```elisp
(add-to-list 'load-path "/path/to/bulgarian-holidays.el")
(require 'bulgarian-holidays)
(setq calendar-holidays bulgarian-holidays-translated)
```

License
-------

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

Contact
-------

Comments, corrections (issues), and feedback are welcome!

Enjoy,

 --Dimiter

----------------------------------------------------------

Описание
--------

В този пакет са дефинирани популярни и официални празници (неработни
дни) в България.  Включени са също така най-популярните чествания, които
се съблюдават от Българската православна църква (известни и като "именни
дни") - тези празници за отбелязани с † пред името.  Малък брой други
общоприети и/или международни празници, които се отбелязват в България
също са включени (с * пред името).

Когато църковен или друг празник е същевременно и официален празник,
пред името няма знак (например Великден или Ден на лъжата).

Освен българските наименования на празниците, в пакета е включен
списък на същите наименования, но преведени на английски.

Изходният код е базиран на адаптирана версия на `ukranian-holidays`':
  * https://www.emacswiki.org/emacs/ukrainian-holidays.el

Използвани са следните източници:
  * http://xn--80aaldxhp0a.com/imeni-dni.html
  * http://bg-patriarshia.bg/calendar.php

Преводът на английски съгласно наличната информация в:
  * https://en.wikipedia.org/wiki/

Инсталиране
-----------

Изтеглете `bulgarian-holidays.el' от:

https://github.com/dimitern/bulgarian-holidays.el

Активирайте като добавите следното към Вашия Emacs init файл:

```elisp
(add-to-list 'load-path "/path/to/bulgarian-holidays.el")
(require 'bulgarian-holidays)
(setq calendar-holidays bulgarian-holidays-list)
```

Ако предпочитате имената на празниците преведени на английски:

```elisp
(add-to-list 'load-path "/path/to/bulgarian-holidays.el")
(require 'bulgarian-holidays)
(setq calendar-holidays bulgarian-holidays-translated)
```

Обратна връзка
--------------

Забележки, съобщения за проблеми/грешки и други са добре дошли!

Надявам се да намерите този пакет за полезен!

Поздрави,

-- Димитър
