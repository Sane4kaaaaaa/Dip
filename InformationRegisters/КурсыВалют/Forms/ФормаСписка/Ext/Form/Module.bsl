﻿
&НаКлиенте
Процедура ОтборВалютаФлагПриИзменении(Элемент)
	Этаформа.ОтборДатаФлаг=Ложь;
	УстановитьОтборПоВалюте();
КонецПроцедуры

&НаКлиенте
Процедура ОтборВалютаЗначениеПриИзменении(Элемент)
	УстановитьОтборПоВалюте();
КонецПроцедуры  

&НаКлиенте
Процедура  УстановитьОтборПоВалюте()
	Список.Отбор.Элементы.Очистить();
	ЭлементОтбораВалюта=Список.Отбор.Элементы.Добавить(Тип("ЭлементОтбораКомпоновкиДанных"));
	ЭлементОтбораВалюта.ЛевоеЗначение=Новый ПолеКомпоновкиДанных("Валюта");
	ЭлементОтбораВалюта.ВидСравнения=ВидСравненияКомпоновкиДанных.Равно;
	ЭлементОтбораВалюта.ПравоеЗначение=Этаформа.ОтборВалютаЗначение;
	
	Если Этаформа.ОтборВалютаФлаг Тогда
		ЭлементОтбораВалюта.Использование=Истина;
	Иначе 
		ЭлементОтбораВалюта.Использование=Ложь;
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ОтборДатаФлагПриИзменении(Элемент)
	Этаформа.ОтборВалютаФлаг=Ложь;
	УстановитьОтборПоДате();
КонецПроцедуры

&НаКлиенте
Процедура ОтборДатаЗначениеПриИзменении(Элемент)
	УстановитьОтборПоДате();
КонецПроцедуры


&НаКлиенте
Процедура  УстановитьОтборПоДате()  
	
	Список.Отбор.Элементы.Очистить();    
	
	ЭлементОтбораДата=Список.Отбор.Элементы.Добавить(Тип("ЭлементОтбораКомпоновкиДанных"));
	ЭлементОтбораДата.ЛевоеЗначение=Новый ПолеКомпоновкиДанных("Период");
	ЭлементОтбораДата.ВидСравнения=ВидСравненияКомпоновкиДанных.Равно;
	ЭлементОтбораДата.ПравоеЗначение=Этаформа.ОтборДатаЗначение;
	
	Если Этаформа.ОтборДатаФлаг Тогда
		ЭлементОтбораДата.Использование=Истина;
	Иначе 
		ЭлементОтбораДата.Использование=Ложь;
	КонецЕсли;
	
КонецПроцедуры
