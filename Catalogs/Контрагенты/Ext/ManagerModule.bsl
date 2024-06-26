﻿
Процедура Печать(ТабДок, Ссылка) Экспорт
	//{{_КОНСТРУКТОР_ПЕЧАТИ(Печать)
	Макет = Справочники.Контрагенты.ПолучитьМакет("Печать");
	Запрос = Новый Запрос;
	Запрос.Текст =
	"ВЫБРАТЬ
	|	Контрагенты.ВидКонтрагента,
	|	Контрагенты.ИНН,
	|	Контрагенты.Код,
	|	Контрагенты.Наименование,
	|	Контрагенты.ТипКонтрагента,
	|	Контрагенты.ТЧ_КонтактныеЛица.(
	|		НомерСтроки,
	|		ФИО,
	|		Телефон
	|	)
	|ИЗ
	|	Справочник.Контрагенты КАК Контрагенты
	|ГДЕ
	|	Контрагенты.Ссылка В (&Ссылка)";
	Запрос.Параметры.Вставить("Ссылка", Ссылка);
	Выборка = Запрос.Выполнить().Выбрать();

	ОбластьЗаголовок = Макет.ПолучитьОбласть("Заголовок");
	Шапка = Макет.ПолучитьОбласть("Шапка");
	ОбластьТЧ_КонтактныеЛицаШапка = Макет.ПолучитьОбласть("ТЧ_КонтактныеЛицаШапка");
	ОбластьТЧ_КонтактныеЛица = Макет.ПолучитьОбласть("ТЧ_КонтактныеЛица");
	ТабДок.Очистить();

	ВставлятьРазделительСтраниц = Ложь;
	Пока Выборка.Следующий() Цикл
		Если ВставлятьРазделительСтраниц Тогда
			ТабДок.ВывестиГоризонтальныйРазделительСтраниц();
		КонецЕсли;

		ТабДок.Вывести(ОбластьЗаголовок);

		Шапка.Параметры.Заполнить(Выборка);
		ТабДок.Вывести(Шапка, Выборка.Уровень());

		ТабДок.Вывести(ОбластьТЧ_КонтактныеЛицаШапка);
		ВыборкаТЧ_КонтактныеЛица = Выборка.ТЧ_КонтактныеЛица.Выбрать();
		Пока ВыборкаТЧ_КонтактныеЛица.Следующий() Цикл
			ОбластьТЧ_КонтактныеЛица.Параметры.Заполнить(ВыборкаТЧ_КонтактныеЛица);
			ТабДок.Вывести(ОбластьТЧ_КонтактныеЛица, ВыборкаТЧ_КонтактныеЛица.Уровень());
		КонецЦикла;

		ВставлятьРазделительСтраниц = Истина;
	КонецЦикла;
	//}}
КонецПроцедуры
