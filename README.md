## Лабораторные работы по ТРПО

7 семестр 2019

Куликов Андрей, 653502

### Условия лаб:

1. Определить основные процессы работы любого предприятия: определить бизнес-процессы и промоделировать их на языке IDEF0, дополнить IDEF3 & DFD. Это фактически фаза обследования будущего обьекта для автоматизации.  

    * IDEF0 -> [Расширеная](business/idef0-extedned.png) [Базовая](business/idef0-base.png)
    * IDEF3 -> [Installation](business/Installation(idef3).png)
    * DFD -> [System informating](business/System%20Informating%20(DFD).png)

2. Разработать требования к изделию = это не что иное как ТЗ.  
       [Tech Task](docs/Technical%20Task.pdf)

3. Описать в табличном и текстовом спец виде USE CASE (это не UML) для реализации требований. Начальная формализация.
       [Tech Task](docs/Technical%20Task.pdf)

4. 
   * На языке UML спроектировать  ПО:
      * UML Database Logical Diagram -> [Logical](uml/DB_Logical.png)  
      * UML Database Physical Diagram -> [Physical](uml/DB_Physical.png)  
      * UML Class Diagram -> [Class](uml/class_diagram.jpg)  

   * Спроектировать БД, сгенировать DDL и отчеты, построить БД, которая будет применяться в п. 4.1.   
      * Все DDL скрипты лежат в проете Sql Server - [scripts](scripts/EconomicNews/EconomicNews)

5. Выполнить тестирование по любому критерию.

   * Построенное приложение на C# - [app](EconomicNews)
   * Тесты для приложения -> [tests](EconomicNews/EconomicNews.Tests)
   * Тестовое консольное приложение -> [console](EconomicNews/EconomicNews.App)
