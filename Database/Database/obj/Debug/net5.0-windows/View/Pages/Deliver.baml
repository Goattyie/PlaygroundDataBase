   M S B A M L   `   `   `  ����C  ?Database, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Database.View.Pages.TablesDatabase.View.Pages.Tables  5      C&clr-namespace:Database.VeiwModel.PagesDatabase.VeiwModel.Pages  6>   (    "Database.View.Pages.Tables.Deliver   5      \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      :local(clr-namespace:Database.View.Pages.Tables     5      8pages&clr-namespace:Database.VeiwModel.Pages     6>     N� Title$  Deliver��5	       N� 
Background
 ����� � DataContext 5
      3  -Database.VeiwModel.Pages.PageDeliverViewModel  5   
    � 	Resources 5         Btn �� 
TargetType �� Property �� Value��%�   &	        �� 5   
   " ��6   .�5      ��  � ��$ 
10,0,10,10q�6'   6<   �� 5       � ��
 ���� 6A   �� 5       � ��$ 20(�6)   66   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $	��37* �6   �� 5      $
��362* �6   �� 5      $	��31* �6   .+�5   
   �� $��	10,10,0,0q�5      $��Center=�5        HeadTextBlock#��[ 5        Big#��[ 5      &$Таблица: Поставщики6B   &   System.Windows.Controls.DataGrid  5   
      AutoGenerateColumns$ False��6   	   CanUserAddRows$	 False��5       $��1��5!      $��3��5"      $��10,10,10,10q�5#      
������ ��5%      �� *DeliverList+
 �� SelectedItem
 5&      �� *SelectedDeliver+   Columns 5'      0  *System.Windows.Controls.DataGridTextColumn  5(        HeaderCenterDataGrid,  &System.Windows.Controls.DataGridColumn   HeaderStyle# [ 6%      Header$ Id��6Y      Width5  /System.Windows.Controls.DataGridLengthConverter$ 50 6e   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6p   ��  �� Path$ Id�6�     5)      # [ 6%   $ Название��6Y   $ * 6k    6u   �� $
 Name�6�   5+      � 5-   
   $��2��6    � ColumnDefinitions 5.      �� 5/      �� 50      .+�52      �� $��2��6   $��0��6"   $+��%Добавить поставщика��6g   $��
10,0,10,10q�6�   ��62   ��   
BlueButton �� Source# [ ��6�   �� *
AddCommand+�� 53      $��2��6   $��2��6"   $!��Удалить запись��6g   $��
10,0,10,10q�6�   ��62   �� # [ ��6�   �� *RemoveCommand+54      55      56      