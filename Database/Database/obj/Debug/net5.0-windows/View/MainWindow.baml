   M S B A M L   `   `   `  ����C  ?Database, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:DatabaseDatabase  5   	       Database.MainWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Database     5   	     � Title$  База данных��5   	   $	��768��6   $
��1366��6*    � 	Resources 5	       �� 
TargetType �� Property �� Value��%T   'o�       �� 5   
   " o�6   .�5      ��  � ��
 ���� 6A   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $	��21* �6   �� 5      $
��731* �6   .+�5   
   o� $��0,0,0,0q�6   .@�5      m� $��Таблицы��6   .@�5      m� $"��Товар в наличии��6    m� CommandParameter$ AvailableTable��6S    m� Command 64   �� *
TableClick+6w   m� 5      $#��Проданный товар��6   $ 	SellTable��6S    64   �� *
TableClick+6r   m� 5      $��Заказы��6   .@�5      m� $!��Текущие заказы��6   $
 True��6\    67   �� *OpenOrderCommand+6v   m� 5      $��Архив заказов��6   $ False��6[    66   �� *OpenOrderCommand+6v   5      m� 5       $��
Товар��6   $ ProductTable��6I    6*   �� *
TableClick+6k   m� 5!      $��Клиенты��6   $ ClientTable��6K    6,   �� *
TableClick+6l   m� 5"      $��Профиль��6   $ ProfileTable��6K    6,   �� *
TableClick+6m   m� 5#      $��
Карты��6   $ 	CardTable��6I    6*   �� *
TableClick+6h   m� 5$      $��Поставщики��6   $ DeliverTable��6N    6/   �� *
TableClick+6p   m� 5%      $)��#Товары поставщиков��6   $ DeliverProductTable��6V    67   �� *
TableClick+6   5&      m� 5(      $��Excel��6   .@�5)      m� $-��'Импортировать данные��6    69   �� *ImportDatabase+6^   m� 5*      $/��)Экспортировать данные��6    6:   �� *ExportDatabase+6_   5+      m� 5-      $��Запросы��6   ��6(   �� *	QueryList+��5.      �� 5/      " m�6   .�50      ��  � �� 63   ��  �� Path$
 Name��� 51       �@m�Command 64   �� *ExecuteQueryCommand+52      54      56       � 57   
   $��1��6   	  � NavigationUIVisibility$	 Hidden=�6=   $��0,4,0,0q�6]   ��6   �� *CurrentPage+6]   58      59      