   M S B A M L   `   `   `  ����C  ?Database, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Database.View.Pages.TablesDatabase.View.Pages.Tables  5      C&clr-namespace:Database.VeiwModel.PagesDatabase.VeiwModel.Pages  6>   %    Database.View.Pages.Tables.Sell   5      \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      :local(clr-namespace:Database.View.Pages.Tables     5      8pages&clr-namespace:Database.VeiwModel.Pages     6>     N� Title$
  Sell��5	       N� 
Background
 ����� � 	Resources 5         Btn �� 
TargetType �� Property �� Value��%�   &	        �� 5   
   " ��6   .�5      ��  � ��$ 
10,0,10,10q�6'   6<   �� 5       � ��
 ���� 6A   �� 5       � ��$ 20(�6)   66   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $	��37* �6   �� 5      $
��362* �6   �� 5      $	��31* �6   .+�5   
   � $��	10,10,0,0q�6    � ColumnDefinitions 5      �� 5      $
��100* �6#   �� 5      $
��200* �6#   .+�5      �� $��Center=�5        HeadTextBlock#��[ 5        Big#��[ 5        Таблица: Продажа6?   �� 5"      $��1��5#       �� Orientation$ 
Horizontal=�5$      .+�5&      �� $��Center=�5'      #��[ 5(       
 Medium#��[ 5)      &$Количество записей:6N   �� 5+      $��Center=�5,      #��[ 5-      #��[ 5.      ��5/      �� *	RowsCount+51      52      &   System.Windows.Controls.DataGrid  53   
   	   CanUserAddRows$	 False��6   
   AutoGenerateColumns$
 False��54      $��1��55      $��3��56      $��10,10,10,10q�57      
������ ��59      �� *
SellList+ �� SelectedItem 5:      �� *SelectedSell+   Columns 5;      0  *System.Windows.Controls.DataGridTextColumn  5<        HeaderCenterDataGrid,  &System.Windows.Controls.DataGridColumn   HeaderStyle# [ 6%      Header$ 
Товар��6Z      Width5  /System.Windows.Controls.DataGridLengthConverter$	 500 6i   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6u   ��  �� Path$ Product.Name�6�     5=      # [ 6%      
FontWeight$
 Bold"�6Y     DarkBlueBrush   
Foreground# [ 6k     CenterGridColumn   	CellStyle# [ 6�   $ Прибыль��6�   $	 100 6�    6�   �� $ Profit�6    5>      # [ 6%   # [ 6Y   $ Цена закупки��6�   $ 70 6�    6�   �� $ BuyCost�6�     5?      # [ 6%   # [ 6Y   $ Цена продажи��6�   $ 70 6�    6�   �� $ SellCost�6�     5@      # [ 6%   # [ 6Y   $ Количество��6�   $
 Bold"�6�   # [ 6�   $ 70 6�    6�   �� $ Count�6    5A      # [ 6%   # [ 6Y   $ Дата продажи��6�   $ 70 6�    6�   �� $ SellDate� �� StringFormat$ dd/MM/yy��6�     5B      # [ 6%   $ Телефон��6Y   $ 70 6j    6u   �� $ Client.Phone�6�     5C      # [ 6%   $ Описание��6Y   $	 500 6k    6w   �� $ Client.Description�6�     5D      # [ 6%   # [ 6Y   $ 
Карта��6�   $ 70 6�    6�   �� $ 	Card.Name�6�     5E      # [ 6%   $ Примечание��6Y   $
 100* 6m    6z   �� $ Comment�6�   5H      � 5J   
   $��2��6    5K      �� 5L      �� 5M      �� 5N      .+�5P      �� $��2��6   $��0��6"   $#��Добавить запись��6g   $��
10,0,10,10q�6�   ��62   ��   
BlueButton �� Source# [ ��6�   �� *
AddCommand+�� 5Q      $��2��6   $��1��6"   $-��'Редактировать запись��6g   $��
10,0,10,10q�6�   ��62   �� # [ ��6�   �� *EditCommand+�� 5R      $��2��6   $��2��6"   $!��Удалить запись��6g   $��
10,0,10,10q�6�   ��62   �� # [ ��6�   �� *RemoveCommand+5S      5U      5V      