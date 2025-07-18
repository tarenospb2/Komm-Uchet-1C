﻿// Получает параметры соединения с брокером из ПараметрыСоединенияGo
//
// Возвращаемое значение:
//   Массив - значения IPХост, Порт, Логин, Токен; 
//
Функция ПолучитьПараметрыСоединенияСGo() Экспорт
	
	Структура = Новый Массив;
   Параметры = Справочники.ПараметрыRabbit; 
   Ссылка = Параметры.НайтиПоРеквизиту("Активный", Истина);
   Если Ссылка = Параметры.ПустаяСсылка() Тогда
	   Сообщить("Не выбрано текущее соединение!")
   Иначе
	Структура.Добавить(Ссылка.Хост);
	Структура.Добавить(Ссылка.Порт);
	Структура.Добавить(Ссылка.Логин); 
	Структура.Добавить(Ссылка.Токен);
	Возврат Структура;
	КонецЕсли;

КонецФункции

Функция ПередачаПоказанийRabbit(Данные,Обменник,RK) Экспорт
	
	Параметры = ПолучитьПараметрыСоединенияСGo();
	Возврат КлиентRabbit.ОтправитьСообщениеКRabbit(Параметры,Обменник, RK,Данные);
		
КонецФункции

Функция ПолучитьПоказанияRabbit(Очередь) Экспорт
	
	Параметры = ПолучитьПараметрыСоединенияСGo();
	Возврат КлиентRabbit.ПолучитьСообщениеRabbit(Параметры,Очередь);
		
КонецФункции