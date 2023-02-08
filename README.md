# MTPing

**Идея реализации в сравнение разных методов мильтипотокового пинга хостов подсети.**

**[Скачать актуальную версию с GUI (MTPing.exe)](https://github.com/Lifailon/MTPing/releases)**

- [Консольное сравнение](#Console)
- [ThreadJob](#ThreadJob)
- [RSJobc](#RSJobc)

## Console

**На ping 254 адресов в цикле ушло 2 минуты**, с использованием **[ThreadJob](https://www.powershellgallery.com/packages/ThreadJob/2.0.3)** было затрачено **26 секунд**. Используя **[PoshRSJob](https://github.com/proxb/PoshRSJob)** результат был в 2 раза быстрее: **13 секунд**.

**[Ping-Jobs-Test.ps1](https://github.com/Lifailon/MTPing/blob/rsa/Scripts/Ping-Jobs-Test.ps1)**

![Image alt](https://github.com/Lifailon/MTPing/blob/rsa/Screen/Test-1.jpg)

## ThreadJob

**В статусе отображается время, затраченное на выполнение и кол-во активных и недоступных хостов.**

**[MTPing-1.1-ThreadJob.ps1](https://github.com/Lifailon/MTPing/blob/rsa/Scripts/MTPing-1.1-ThreadJob.ps1)**

![Image alt](https://github.com/Lifailon/MTPing/blob/rsa/Screen/Test-2-ThreadJob.jpg)

## RSJob

**В данном примере (Release) сравнивается время выполнения с и без преобразованием адреса в имя (nslookup).**

**[MTPing-1.2-RSJob.ps1](https://github.com/Lifailon/MTPing/blob/rsa/Scripts/MTPing-1.2-RSJob.ps1)**

![Image alt](https://github.com/Lifailon/MTPing/blob/rsa/Screen/Test-3-RSJob.jpg)

![Image alt](https://github.com/Lifailon/MTPing/blob/rsa/Screen/Test-4-RSJob-Resolve.jpg)
