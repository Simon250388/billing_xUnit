﻿


&НаКлиенте
Процедура КаталогПлагиновНачалоВыбора(Элемент, ДанныеВыбора, СтандартнаяОбработка)
	
	Диалог  					= Новый ДиалогВыбораФайла(РежимДиалогаВыбораФайла.ВыборКаталога);
	Диалог.МножественныйВыбор 	= Ложь;
	Диалог.Показать(Новый ОписаниеОповещения("КаталогПлагиновНачалоВыбораЗавершение",ЭтаФорма));	
КонецПроцедуры

Процедура  КаталогПлагиновНачалоВыбораЗавершение(Результат,ДополнительныеПараметры) Экспорт 
	
	Если Результат = Неопределено Тогда
		Возврат;
	КонецЕсли;
	
	Если Результат.Количество() = 0 Тогда
		Возврат;
	КонецЕсли;
	
	Объект.КаталогПлагинов = Результат[0];
	
КонецПроцедуры  

&НаКлиенте
Процедура Могу_Провести_ПодключениеУслуги_Базовый(Команда)
	Могу_Провести_ПодключениеУслуги_БазовыйНаСервере();
КонецПроцедуры

&НаСервере
Процедура Могу_Провести_ПодключениеУслуги_БазовыйНаСервере()
	РеквизитФормыВЗначение("Объект").Могу_Провести_ПодключениеУслуги_Базовый();
КонецПроцедуры

&НаКлиенте
Процедура Могу_Провести_ОтключениеУслуги_Базовый(Команда)
	Могу_Провести_ОтключениеУслуги_БазовыйНаСервере();
КонецПроцедуры

&НаСервере
Процедура Могу_Провести_ОтключениеУслуги_БазовыйНаСервере()
	РеквизитФормыВЗначение("Объект").Могу_Провести_ОтключениеУслуги_Базовый();
КонецПроцедуры
