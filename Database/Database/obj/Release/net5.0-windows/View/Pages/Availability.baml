   M S B A M L   `   `   `  ���� C  ?Database, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Database.View.Pages.TablesDatabase.View.Pages.Tables  C&clr-namespace:Database.VeiwModel.PagesDatabase.VeiwModel.Pages  -    'Database.View.Pages.Tables.Availability   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     :local(clr-namespace:Database.View.Pages.Tables     8pages&clr-namespace:Database.VeiwModel.Pages       N� Title$  Availability�� N� 
Background
 ����� � 	Resources    Btn �� 
TargetType �� Property �� Value��%c   &	        �� " ��.���  � ��$ 
10,0,10,10q���  � ��
 ���� ��  � ��$ 20(�.���  � RowDefinitions �� $	��37* ��� $
��377* ��� $	��31* �.+�� $��	10,10,0,0q� � ColumnDefinitions �� �� �� .+���   HeadTextBlock#��[   Big#��[ $��Center=� Таблица: Наличие�� $��1�� �� Orientation$ 
Horizontal=�.+��� #��[  
 Medium#��[ $��Center=�$1��+Общая цена с доставкой: ���� #��[ #��[ $��Center=����� *
DeliverSum+�� $��2��$ 
Horizontal=�.+��� #��[ #��[ $��Center=�$(��"Товаров в наличии: ���� #��[ #��[ $��Center=����� *AvailabilityCount+&   System.Windows.Controls.DataGrid  	   AutoGenerateColumns$	 False��
   CanUserAddRows$
 False��$��1��$��10,10,10,10q�
������ ���� *AvailabilityList+ �� SelectedItem �� *SelectedAvailability+   Columns 0  *System.Windows.Controls.DataGridTextColumn    HeaderCenterDataGrid,  &System.Windows.Controls.DataGridColumn   HeaderStyle# [    Header$ 
Товар��   Width5  /System.Windows.Controls.DataGridLengthConverter$	 500 1  +System.Windows.Controls.DataGridBoundColumn   Binding ��  �� Path$ Product.Name�  # [   CenterGridColumn   	CellStyle# [    
FontWeight$
 Bold"�  DarkBlueBrush   
Foreground# [ $ Количество��$	 120  �� $ Count�  # [ # [ $
 Bold"�# [ $ Цена продажи��$	 120  �� $ SellCost�  # [ # [ $ Прибыль��$	 120  �� $ Profit�  # [ # [ $ Цена закупки��$	 120  �� $ BuyCost�  # [ # [ $$ Цена с доставкой��$	 120  �� $ DeliverCost�  # [ # [ $ Профиль��$	 120  �� $ Profile.Name�  # [ $ Примечание��$ *  �� $ Comment�   RowStyle �� )  #System.Windows.Controls.DataGridRow"   �� Triggers ��  �� Binding �� $ Count� �� Value 0.a���  � ��
 ������ $��2�� �� �� �� .+��� $��2��$��0��$!��Добавить товар��$��
10,0,10,10q�����   
BlueButton �� Source# [ ���� *
AddCommand+�� $��2��$��1��$-��'Редактировать запись��$��
10,0,10,10q����� # [ ���� *EditCommand+�� $��2��$��2��$!��Удалить запись��$��
10,0,10,10q����� # [ ���� *RemoveCommand+