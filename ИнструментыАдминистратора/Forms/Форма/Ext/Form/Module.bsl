﻿
&НаСервере
Процедура ПриСозданииНаСервере(Отказ)
	
	НаборСеансыИнформационнойБазы = ПолучитьСеансыИнформационнойБазы();
	
	Для Каждого ДанныеСеансаИБ Из НаборСеансыИнформационнойБазы Цикл
		НоваяСтрокаСеанс = СеансыИнформационнойБазы.Добавить();
		ЗаполнитьЗначенияСвойств(НоваяСтрокаСеанс, ДанныеСеансаИБ);
		
		ПользовательСеанса = ДанныеСеансаИБ.Пользователь;
		НоваяСтрокаСеанс.ПолноеИмяПользователя = ПользовательСеанса.ПолноеИмя;
		НоваяСтрокаСеанс.EmailПользователя = ПользовательСеанса.АдресЭлектроннойПочты;   
		НоваяСтрокаСеанс.ПользовательРежимЗапуска = ПользовательСеанса.РежимЗапуска;   
		
	КонецЦикла;
	
КонецПроцедуры

&НаСервере
Процедура ОбновитьНумерациюОбъектовНаСервере()
	ОбновитьПовторноИспользуемыеЗначения();
КонецПроцедуры

&НаКлиенте
Процедура ОбновитьНумерациюОбъектов(Команда)
	ОбновитьНумерациюОбъектовНаСервере();
КонецПроцедуры

&НаКлиенте
Процедура ВыполнитьОбновлениеПовторноИспользуемыхЗначений(Команда)
	ОбновитьПовторноИспользуемыеЗначения();
КонецПроцедуры
