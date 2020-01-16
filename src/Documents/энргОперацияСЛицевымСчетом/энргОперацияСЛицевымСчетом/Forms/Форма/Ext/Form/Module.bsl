﻿
&НаКлиенте
Процедура Могу_Провести_ОткрытиеЛицевогоСчета_Базовый(Команда)
	Могу_Провести_ОткрытиеЛицевогоСчета_БазовыйНаСервере();
КонецПроцедуры

&НаКлиенте
Процедура Могу_Провести_ЗакрытиеЛицевогоСчета_Базовый(Команда)
	Могу_Провести_ЗакрытиеЛицевогоСчета_БазовыйНаСервере();
КонецПроцедуры

&НаКлиенте
Процедура Могу_Провести_СменаСобственника_Базовый(Команда)
	Могу_Провести_СменаСобственника_БазовыйНаСервере();
КонецПроцедуры

&НаСервере
Процедура Могу_Провести_ОткрытиеЛицевогоСчета_БазовыйНаСервере()
	РеквизитФормыВЗначение("Объект").Могу_Провести_ОткрытиеЛицевогоСчета_Базовый();
КонецПроцедуры

&НаСервере
Процедура Могу_Провести_ЗакрытиеЛицевогоСчета_БазовыйНаСервере()
	РеквизитФормыВЗначение("Объект").Могу_Провести_ЗакрытиеЛицевогоСчета_Базовый();
КонецПроцедуры

&НаСервере
Процедура Могу_Провести_СменаСобственника_БазовыйНаСервере()
	РеквизитФормыВЗначение("Объект").Могу_Провести_СменаСобственника_Базовый();
КонецПроцедуры


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
