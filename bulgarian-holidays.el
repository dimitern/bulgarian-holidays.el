;;; bulgarian-holidays.el --- Holidays in Bulgaria  -*- lexical-binding: t; -*-

;; Copyright (c) 2016 Dimiter Naydenov <dimiter _AT_ naydenov _DOT_ net>
;;
;; Author: Dimiter Naydenov <dimiter _AT_ naydenov _DOT_ net>
;; URL: https://github.com/dimitern/bulgarian-holidays.el
;;
;; This file is not part of GNU Emacs.
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;
;;; Commentary:
;;
;; Defines the official public (non-working day) holidays in Bulgaria.
;; Also includes the most popular Bulgarian Orthodox Church observances
;; (commonly called "[patron saint] name days", these have † as prefix),
;; and a few other common or international holidays (with * as prefix).
;; When church or other holidays are also non-working days, they do not
;; start with a prefix (e.g. Easter or April Fool's Day).
;;
;; Source is based on an adapted version of `ukranian-holidays':
;; https://www.emacswiki.org/emacs/ukrainian-holidays.el
;;
;; Calendar sources:
;; http://xn--80aaldxhp0a.com/imeni-dni.html
;; http://bg-patriarshia.bg/calendar.php
;;
;; Installation:
;;
;; Download `bulgarian-holidays.el' from:
;;   https://github.com/dimitern/bulgarian-holidays.el
;;
;; Enable by adding the following to your init file:
;;
;; (require 'bulgarian-holidays)
;; (setq calendar-holidays holiday-bulgarian-holidays)
;;
;;; Code:

(eval-when-compile
  (require 'calendar)
  (require 'holidays))

(defvar holiday-bulgarian-holidays nil
  "Bulgarian holidays, using their traditional or common Bulgarian names.")

(defalias 'holiday-orthodox-easter 'holiday-greek-orthodox-easter)

(setq
 holiday-bulgarian-holidays
 `(
   ;; Movable holidays according to Orthodox Easter date.
   (holiday-orthodox-easter -57 "† Задушница (Голяма)")
   (holiday-orthodox-easter -56 "† Неделя Месопустна (Месни заговезни)")
   (holiday-orthodox-easter -49 "† Неделя Сиропустна (Сирни заговезни, Прошка)")
   (holiday-orthodox-easter -48 "† Начало на Велики пости")
   (holiday-orthodox-easter -43 "† Тодорова събота (Тодоровден)")
   (holiday-orthodox-easter -8  "† Лазарова събота (Лазаровден)")
   (holiday-orthodox-easter -7  "† Цветница (Връбница)")
   (holiday-orthodox-easter -6  "† Велики понеделник")
   (holiday-orthodox-easter -5  "† Велики вторник")
   (holiday-orthodox-easter -4  "† Велика сряда")
   (holiday-orthodox-easter -3  "† Велики четвъртък")
   (holiday-orthodox-easter -2  "† Велики петък")
   (holiday-orthodox-easter -1  "† Велика събота")
   (holiday-orthodox-easter 0   "Великден († Възкресение Христово, 1-ви ден)")
   (holiday-orthodox-easter 1   "† Възкресение Христово (2-ри ден)")
   (holiday-orthodox-easter 2   "† Възкресение Христово (3-ти ден)")
   (holiday-orthodox-easter 3   "† Светла сряда")
   (holiday-orthodox-easter 4   "† Светли четвъртък")
   (holiday-orthodox-easter 5   "† Светли петък (Живоприемни източник)")
   (holiday-orthodox-easter 6   "† Светла събота")
   (holiday-orthodox-easter 7   "† Томина неделя (Светла неделя)")
   (holiday-orthodox-easter 39  "† Възнесение Господне (Спасовден)")
   (holiday-orthodox-easter 48  "† Черешова Задушница")
   (holiday-orthodox-easter 49  "† Петдесетница (Св. Троица)")
   (holiday-orthodox-easter 50  "† Св. Дух (Духовден)")
   (holiday-orthodox-easter 56  "† Всички светии (Петрови заговезни)")
   (holiday-orthodox-easter 63  "† Всички български светии")
   ;; Fixed holidays.
   (holiday-fixed   1  1 "Нова година († Васильовден)")
   (holiday-fixed   1  6 "† Св. Богоявление (Йордановден)")
   (holiday-fixed   1  7 "† Св. Йоан Кръстител (Ивановден)")
   (holiday-fixed   1 17 "† Пр. Антоний Велики (Антоновден)")
   (holiday-fixed   1 18 "† Св. Атанасий Александрийски (Атанасовден)")
   (holiday-fixed   1 20 "† Св. Евтимий, патриарх Търновски")
   (holiday-fixed   1 21 "† Св. Максим Изповедник")
   (holiday-fixed   1 25 "† Св. Григорий Богослов")
   (holiday-fixed   2  1 "† Св. Трифон (Трифоновден, Трифон Зарезан)")
   (holiday-fixed   2  2 "† Сретение Господне")
   (holiday-fixed   2  3 "† Св. Симеон Богоприимец (Симеоновден - зимен)")
   (holiday-fixed   2 14 "* Св. Валентин (кат.) (Трифон Зарезан - ст.ст)")
   (holiday-fixed   2 17 "† Св. Теодор Тирон (Тодоровден)")
   (holiday-fixed   3  1 "* Баба Марта")
   (holiday-fixed   3  3 "Освобождение на България")
   (holiday-fixed   3  8 "* Ден на жената")
   (holiday-fixed   3  9 "† Св. 40 мъченици")
   (holiday-fixed   3 17 "* Св. Патрик (кат.)")
   (holiday-fixed   3 25 "† Благовещение")
   (holiday-fixed   4  1 "* Ден на лъжата")
   (holiday-fixed   4 14 "† Св. Мартин, папа Римски")
   (holiday-fixed   4 18 "† Св. Виктор")
   (holiday-fixed   5  1 "Ден на труда")
   (holiday-fixed   5  2 "† Св. цар Борис-Михаил")
   (holiday-fixed   5  5 "† Св. Ирина")
   (holiday-fixed   5  6 "Св. Георги Победоносец (Гергьовден)")
   (holiday-fixed   5 11 "† Св. равноапостоли Кирил и Методий")
   (holiday-fixed   5 21 "† Св. Константин и Елена")
   (holiday-fixed   5 24 "Ден на Българската просвета и култура")
   (holiday-fixed   6 20 "† Пр. Наум Охридски")
   (holiday-fixed   6 24 "† Рождение на Св. Йоан Кръстител (Еньовден)")
   (holiday-fixed   6 29 "† Св. ап. Петър и Павел (Петровден)")
   (holiday-fixed   6 30 "† Св. 12 апостоли")
   (holiday-fixed   7  1 "† Св. Козма и Дамян")
   (holiday-fixed   7  7 "† Св. Неделя")
   (holiday-fixed   7 20 "† Св. прор. Илия (Илинден)")
   (holiday-fixed   7 27 "† Св. Седмочисленици")
   (holiday-fixed   8  6 "† Преображение Господне")
   (holiday-fixed   8 15 "† Успение Богородично (Голяма Богородица)")
   (holiday-fixed   9  1 "† Начало на Църковната нова година")
   (holiday-fixed   9  6 "Съединение на България")
   (holiday-fixed   9  8 "† Рождество Богородично (Малка Богородица)")
   (holiday-fixed   9 14 "† Въздвижение на Св. Кръст Господен (Кръстовден)")
   (holiday-fixed   9 17 "† Св. София, Вяра, Надежда и Любов")
   (holiday-fixed   9 22 "Независимост на България")
   (holiday-fixed  10 14 "† Св. Параскева Петка Търновска (Петковден)")
   (holiday-fixed  10 19 "† Пр. Йоан Рилски Чудотворец")
   (holiday-fixed  10 26 "† Св. Димитрий Мироточиви (Димитровден)")
   (holiday-fixed  10 31 "* Halloween")
   (holiday-float 11 6 1 "† Архангеловска Задушница")
   (holiday-fixed  11  8 "† Св. архангел Михаил (Архангеловден)")
   (holiday-fixed  11 21 "† Въведение Богородично (ден на хр. семейство)")
   (holiday-fixed  11 30 "† Св. ап. Андрей Първозвани (Андреевден)")
   (holiday-fixed  12  6 "† Св. Николай Чудотворец (Никулден)")
   (holiday-fixed  12 20 "† Св. Игнатий Богоносец (Игнажден)")
   (holiday-fixed  12 22 "† Св. Анастасия")
   (holiday-fixed  12 24 "Бъдни вечер")
   (holiday-fixed  12 25 "Коледа († Рождество Христово)")
   (holiday-fixed  12 26 "Понеделник след Коледа († Събор Богородичен)")
   (holiday-fixed  12 27 "† Св. Стефан (Стефановден)")))

(provide 'bulgarian-holidays)
;;; bulgarian-holidays.el ends here
