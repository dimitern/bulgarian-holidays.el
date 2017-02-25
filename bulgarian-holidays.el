;;; bulgarian-holidays.el --- Holidays in Bulgaria  -*- lexical-binding: t; -*-

;; Copyright (c) 2016 Dimiter Naydenov
;;
;; Author: Dimiter Naydenov <dimiter@naydenov.net>
;; URL: https://github.com/dimitern/bulgarian-holidays.el
;; Version: 1.1
;; Package-Requires: ((emacs "24"))
;;
;; !! Инструкции на български можете да намерите по-долу !!
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
;; This package defines the official public (non-working day) holidays
;; in Bulgaria.  Also includes the most popular Bulgarian Orthodox
;; Church observances (commonly called "[patron saint] name days", these
;; have † as prefix), and a few other common or international holidays
;; (with * as prefix).
;; When church or other holidays are also non-working days, they do not
;; start with a prefix (e.g. Easter or April Fool's Day).
;; In addition to the original Bulgarian holiday names there is matching
;; list of the same names translated to English.
;;
;; Source is based on an adapted version of `ukranian-holidays':
;; https://www.emacswiki.org/emacs/ukrainian-holidays.el
;;
;; Calendar sources:
;; http://xn--80aaldxhp0a.com/imeni-dni.html
;; http://bg-patriarshia.bg/calendar.php
;;
;; Source for translating the holiday names to English:
;; https://en.wikipedia.org/wiki/
;;
;; Installation:
;;
;; Download `bulgarian-holidays.el' from:
;;   https://github.com/dimitern/bulgarian-holidays.el
;;
;; Enable by adding the following to your init file:
;;
;; (require 'bulgarian-holidays)
;; (setq calendar-holidays bulgarian-holidays-list)
;;
;; If you prefer to use the English translations of the holidays:
;;
;; (require 'bulgarian-holidays)
;; (setq calendar-holidays bulgarian-holidays-translated)
;;
;; ----------------------------------------------------------------------
;;
;;     В този пакет са дефинирани популярни и официални празници (неработни
;; дни) в България.  Включени са също така най-популярните чествания, които
;; се съблюдават от Българската православна църква (известни и като "именни
;; дни") - тези празници за отбелязани с † пред името.  Малък брой други
;; общоприети и/или международни празници, които се отбелязват в България
;; също са включени (с * пред името).
;;     Когато църковен или друг празник е същевременно и официален празник,
;; пред името няма знак (например Великден или Ден на лъжата).
;;     Освен българските наименования на празниците, в пакета е включен
;; списък на същите наименования, но преведени на английски.
;;
;; Изходния код е базиран на адаптирана версия на `ukranian-holidays':
;; https://www.emacswiki.org/emacs/ukrainian-holidays.el
;;
;; Използвани са следните източници:
;; http://xn--80aaldxhp0a.com/imeni-dni.html
;; http://bg-patriarshia.bg/calendar.php
;;
;; Преводът на английски съгласно наличната информация в:
;; https://en.wikipedia.org/wiki/
;;
;; Инсталиране:
;;
;; Изтеглете `bulgarian-holidays.el' от:
;;   https://github.com/dimitern/bulgarian-holidays.el
;;
;; Активирайте като добавите следното към Вашия Emacs init файл:
;;
;; (require 'bulgarian-holidays)
;; (setq calendar-holidays bulgarian-holidays-list)
;;
;; Ако предпочитате имената на празниците преведени на английски:
;;
;; (require 'bulgarian-holidays)
;; (setq calendar-holidays bulgarian-holidays-translated)
;;
;;; Code:

(eval-when-compile
  (require 'calendar)
  (require 'holidays))

(defvar bulgarian-holidays-list nil
  "Bulgarian holidays, using their traditional or common Bulgarian names.")

(defvar bulgarian-holidays-translated nil
  "Bulgarian holidays, translated to English using the official terms, where available.")

(defalias 'holiday-orthodox-easter 'holiday-greek-orthodox-easter)

(setq
 bulgarian-holidays-list
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

(setq
 bulgarian-holidays-translated
 `(
   ;; Movable holidays according to Orthodox Easter date.
   (holiday-orthodox-easter -57 "† Saturday of the Dead (Zadushnica)")
   (holiday-orthodox-easter -56 "† Meatfare Sunday (Mesni Zagovezni)")
   (holiday-orthodox-easter -49 "† Cheesefare Sunday (Sirni Zagovezni)")
   (holiday-orthodox-easter -48 "† Great Lent begins")
   (holiday-orthodox-easter -43 "† St. Theodore Saturday (Todorovden)")
   (holiday-orthodox-easter -8  "† Lazarus Saturday (Lazarovden)")
   (holiday-orthodox-easter -7  "† Palm Sunday (Cvetnica, Vrabnica)")
   (holiday-orthodox-easter -6  "† Holy Monday")
   (holiday-orthodox-easter -5  "† Holy Tuesday")
   (holiday-orthodox-easter -4  "† Holy Wednesday")
   (holiday-orthodox-easter -3  "† Holy Thursday")
   (holiday-orthodox-easter -2  "† Holy Friday (Good Friday)")
   (holiday-orthodox-easter -1  "† Holy Saturday")
   (holiday-orthodox-easter 0   "Easter († Resurrection of Christ, 1st day)")
   (holiday-orthodox-easter 1   "† Resurrection of Christ (2nd day)")
   (holiday-orthodox-easter 2   "† Resurrection of Christ (3rd day)")
   (holiday-orthodox-easter 3   "† Bright Wednesday")
   (holiday-orthodox-easter 4   "† Bright Thursday")
   (holiday-orthodox-easter 5   "† Bright Friday (Life-giving Spring)")
   (holiday-orthodox-easter 6   "† Bright Saturday")
   (holiday-orthodox-easter 7   "† Thomas Sunday (Bright Sunday)")
   (holiday-orthodox-easter 39  "† Ascension of Jesus (Spasovden)")
   (holiday-orthodox-easter 48  "† All Souls' Day (Chereshova Zadushnica)")
   (holiday-orthodox-easter 49  "† Pentecost (Trinity Sunday)")
   (holiday-orthodox-easter 50  "† Spirit Monday (Duhovden)")
   (holiday-orthodox-easter 56  "† All Saints' Sunday (Petrovi Zagovezni)")
   (holiday-orthodox-easter 63  "† All Saints of Bulgaria Day")
   ;; Fixed holidays.
   (holiday-fixed   1  1 "New Year's Day († St. Basil, Vasilyovden)")
   (holiday-fixed   1  6 "† Epiphany (Yordanovden)")
   (holiday-fixed   1  7 "† St. John the Baptist (Ivanovden)")
   (holiday-fixed   1 17 "† St. Anthony the Great (Antonovden)")
   (holiday-fixed   1 18 "† St. Athanasius of Alexandria (Atanasovden)")
   (holiday-fixed   1 20 "† St. Euthymius, Patriarch of Tarnovo")
   (holiday-fixed   1 21 "† St. Maximus the Confessor")
   (holiday-fixed   1 25 "† St. Gregory of Nazianus (Gregory the Theologian)")
   (holiday-fixed   2  1 "† St. Tryphon (Trifononvden, Trifon Zarezan)")
   (holiday-fixed   2  2 "† Candlemas (Presentation of Our Lord in the Temple)")
   (holiday-fixed   2  3 "† St. Simeon the Godreceiver (Simeonovden - zimen)")
   (holiday-fixed   2 14 "* St. Valentine (cath.) (Trifon Zarezan - old st.)")
   (holiday-fixed   2 17 "† St. Theodore Tyron (Todorovden)")
   (holiday-fixed   3  1 "* Baba Marta (Granny March, beginning of spring)")
   (holiday-fixed   3  3 "Liberation of Bulgaria")
   (holiday-fixed   3  8 "* International Women's Day")
   (holiday-fixed   3  9 "† Forty Martyrs of Sebaste (Holy Forty)")
   (holiday-fixed   3 17 "* St. Patrick's Day (cath.)")
   (holiday-fixed   3 25 "† Annunciation of the Mother of God (Blagoveshtenie)")
   (holiday-fixed   4  1 "* April Fools' Day")
   (holiday-fixed   4 14 "† St. Martin I, pope of Rome")
   (holiday-fixed   4 18 "† St. Victor")
   (holiday-fixed   5  1 "International Labour Day")
   (holiday-fixed   5  2 "† St. Tsar Boris-Mikhail (Boris I the Great)")
   (holiday-fixed   5  5 "† St. Irene of Thessaloniki")
   (holiday-fixed   5  6 "St. George's Day (Gergyovden)")
   (holiday-fixed   5 11 "† St. Cyril and Methodius")
   (holiday-fixed   5 21 "† St. Constantine and Helena")
   (holiday-fixed   5 24 "Bulgarian Culture and Literacy Day")
   (holiday-fixed   6 20 "† St. Naum of Ohrid")
   (holiday-fixed   6 24 "† St. John the Baptist's Eve (Enyovden)")
   (holiday-fixed   6 29 "† St. Peter and Paul (Petrovden)")
   (holiday-fixed   6 30 "† St. Twelve Apostles")
   (holiday-fixed   7  1 "† St. Cosmas and Damian")
   (holiday-fixed   7  7 "† St. Nedelya")
   (holiday-fixed   7 20 "† St. Elijah the Prophet (Ilinden)")
   (holiday-fixed   7 27 "† St. Seven Saints (Sedmochislenici)")
   (holiday-fixed   8  6 "† Transfiguration of Jesus")
   (holiday-fixed   8 15 "† Dormition of the Mother of God (Golyama Bogorodica)")
   (holiday-fixed   9  1 "† Beginning of the Indiction-Ecclesiastical Year")
   (holiday-fixed   9  6 "Unification of Bulgaria")
   (holiday-fixed   9  8 "† Nativity of Mary, Mother of God (Malka Bogorodica)")
   (holiday-fixed   9 14 "† Exaltation of the Holy Cross (Krustovden)")
   (holiday-fixed   9 17 "† St. Sophia, Faith, Hope, and Charity")
   (holiday-fixed   9 22 "Independence of Bulgaria")
   (holiday-fixed  10 14 "† St. Parascheva Petka of Tarnovo (Petkovden)")
   (holiday-fixed  10 19 "† St. John of Rila the Wondermaker")
   (holiday-fixed  10 26 "† St. Demetrius of Thessaloniki (Dimitrovden)")
   (holiday-fixed  10 31 "* Halloween")
   (holiday-float 11 6 1 "† All Souls' Day (Arhangelovska Zadushnica)")
   (holiday-fixed  11  8 "† St. Michael the Archangel (Arhangelovden)")
   (holiday-fixed  11 21 "† Entrance of the Mother of God (Christian Family Day)")
   (holiday-fixed  11 30 "† St. Andrew the Apostle (Andreevden)")
   (holiday-fixed  12  6 "† St. Nicholas the Wondermaker (Nikulden)")
   (holiday-fixed  12 20 "† St. Ignatius the Godbearer (Ignajden)")
   (holiday-fixed  12 22 "† St. Anasthasia")
   (holiday-fixed  12 24 "Christmas Eve")
   (holiday-fixed  12 25 "Christmas († Nativity of Jesus)")
   (holiday-fixed  12 26 "Boxing Day († Synaxis of the Mother of God)")
   (holiday-fixed  12 27 "† St. Stephen's Day (Stefanovden)")))

(provide 'bulgarian-holidays)
;;; bulgarian-holidays.el ends here
