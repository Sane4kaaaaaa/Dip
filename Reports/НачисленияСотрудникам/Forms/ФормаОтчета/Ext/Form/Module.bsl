﻿
&НаСервере
Процедура КомандаПерерасчитатьНаСервере()
	ПерерасчитатьНачисления(ПланыВидовРасчета.ОсновныеНачисления.Оклад);
	ПерерасчитатьНачисления(ПланыВидовРасчета.ОсновныеНачисления.Премия);   
	ПерерасчитатьНачисления(ПланыВидовРасчета.ОсновныеНачисления.Больничный);

	// Вставить содержимое обработчика.
КонецПроцедуры

&НаКлиенте
Процедура КомандаПерерасчитать(Команда)
	КомандаПерерасчитатьНаСервере();
КонецПроцедуры
