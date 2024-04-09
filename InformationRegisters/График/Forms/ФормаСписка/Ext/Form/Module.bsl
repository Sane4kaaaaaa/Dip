﻿ //ОТБОР ПО СОТРУДНИКАМ
&НаКлиенте
Процедура ОтборСотрудникиФлагПриИзменении(Элемент) 
	Этаформа.ОтборДатаФлаг  = Ложь;
	УстановитьОтборПоСотруднику();
КонецПроцедуры

&НаКлиенте
Процедура ОтборСотрудникиЗначениеПриИзменении(Элемент)    
	 УстановитьОтборПоСотруднику();     
 КонецПроцедуры     
 
 &НаКлиенте
Процедура  УстановитьОтборПоСотруднику()
	Список.Отбор.Элементы.Очистить();
	ЭлементОтбораСотрудники=Список.Отбор.Элементы.Добавить(Тип("ЭлементОтбораКомпоновкиДанных"));
	ЭлементОтбораСотрудники.ЛевоеЗначение=Новый ПолеКомпоновкиДанных("Сотрудник");
	ЭлементОтбораСотрудники.ВидСравнения=ВидСравненияКомпоновкиДанных.Равно;
	ЭлементОтбораСотрудники.ПравоеЗначение=Этаформа.ОтборСотрудникиЗначение;
	
	Если Этаформа.ОтборСотрудникиФлаг Тогда
		ЭлементОтбораСотрудники.Использование=Истина;
	Иначе 
		ЭлементОтбораСотрудники.Использование=Ложь;
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ОтборДатаФлагПриИзменении(Элемент)
	Этаформа.ОтборСотрудникиФлаг=Ложь;
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
	ЭлементОтбораДата.ЛевоеЗначение=Новый ПолеКомпоновкиДанных("Дата");
	ЭлементОтбораДата.ВидСравнения=ВидСравненияКомпоновкиДанных.Равно;
	ЭлементОтбораДата.ПравоеЗначение=Этаформа.ОтборДатаЗначение;
	
	Если Этаформа.ОтборДатаФлаг Тогда
		ЭлементОтбораДата.Использование=Истина;
	Иначе 
		ЭлементОтбораДата.Использование=Ложь;
	КонецЕсли;
	
КонецПроцедуры


