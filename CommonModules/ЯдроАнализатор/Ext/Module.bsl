﻿
// Основная процедура
Процедура Анализатор(Адрес = Неопределено, // Рабочий адрес по которому нужно собрать все данные 
					 Объект = Истина, // Истина: собирать объекты - картинки, видео и прочее. Ложь: Собирать ссылки, например .onion
					 МассивРасширенийОбъестов = Неопределено, 
					 МассивРасширенийСсылок = Неопределено,
					 СобиратьВнешниеАдреса = Ложь) Экспорт // Собирать внешние адреса, отличные от рабочего адреса 

	ВремяНачалаОперации = ТекущаяДата();
	КолИтерацийПоАдресу = 0;

	ЛогАнализатор = Новый Структура();	
	
	ВнешниеАдреса    = Новый Массив(); // Инициализация массива внешних ссылок
	ВнутренниеАдреса = Новый Массив(); // Инициализация массива внутренних адресов для продолжения сканирования
    ВнутренниеАдреса.Добавить(Адрес);
	АдресаОбъектов   = Новый Массив(); // Инициализация массива адресов объектов
	ХешОбработанныхОбъектов = Новый	 Массив();
	
	РезультатРаботы = РекурсивныйАнализатор(ВнутренниеАдреса, 
										    Объект,
										    МассивРасширенийОбъестов,
										    МассивРасширенийСсылок,
										    СобиратьВнешниеАдреса,
										    ВнешниеАдреса,
										    АдресаОбъектов,
										    КолИтерацийПоАдресу,
										    ХешОбработанныхОбъектов);

	ВремяОкончанияОперации = ТекущаяДата();
	
	// Дополнить логирование
	ЛогАнализатор.Вставить("ВремяНачалаОперации", ВремяНачалаОперации);
	ЛогАнализатор.Вставить("КолИтерацийПоАдресу", КолИтерацийПоАдресу);
	ЛогАнализатор.Вставить("ВремяОкончанияОперации", ВремяОкончанияОперации);
	
	Если СобиратьВнешниеАдреса Тогда
		СброситьВнешниеАдреса(ВнешниеАдреса);						 
	КонецЕсли;
	СброситьАдресаОбъектов(АдресаОбъектов);
	
	ЗаписатьЛог(ЛогАнализатор);
			
КонецПроцедуры

Функция РекурсивныйАнализатор(ВнутренниеАдреса, 
						      Объект,
						      МассивРасширенийОбъестов,
						      МассивРасширенийСсылок,
						      СобиратьВнешниеАдреса,
						      ВнешниеАдреса,
						      АдресаОбъектов,
						      КолИтерацийПоАдресу,
						      ХешОбработанныхОбъектов)
						  
	// Тест 
	
	
	

	
КонецФункции
						  

// Сбрасывает внешние адреса в БуферАдресов 
Процедура СброситьВнешниеАдреса (ВнешниеАдреса)
	
КонецПроцедуры	

// Сбрасывает адреса объектов в БуферСсылок для закачки
Процедура СброситьАдресаОбъектов (АдресаОбъектов)
	
КонецПроцедуры

// Система логирования
Процедура ЗаписатьЛог(ЛогАнализатор)
	
КонецПроцедуры	



//// Основная процедура
//Процедура Анализатор(Адрес = Неопределено, // Адрес по которому нужно собрать все данные 
//					 Объект = Истина, // Истина: собирать объекты- картинки, видео и прочее. Ложь: Собирать ссылки, например .onion
//					 МассивРасширенийОбъестов = Неопределено, 
//					 МассивРасширенийСсылок = Неопределено,
//					 СобиратьВнешниеАдреса = Ложь) Экспорт // Собирать адреса внешних ресурсов
//	
//	// Тест
//	Выборка = РегистрыСведений.БуферАдресов.Выбрать();
//	Пока Выборка.Следующий() Цикл
//		Сообщить("Пум");	
//	КонецЦикла; 
//		
//КонецПроцедуры 

	
	