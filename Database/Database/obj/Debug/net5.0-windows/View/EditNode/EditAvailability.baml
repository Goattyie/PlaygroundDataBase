   M S B A M L   `   `   `  ����C  ?Database, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:Database.View.EditNodeDatabase.View.EditNode  5   	   -    'Database.View.EditNode.EditAvailability   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:Database.View.EditNode     5   	     � Title$  Наличие��5   	   $	��487��6   $	��433��6&   .��5
      � $��10q�6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   �  5      �� 5      �� 5      .+�5      ��    HeadTextBlock#��[  5      $��
Товар��5      $��Center=�5      $��Center=�5       �� 5"        BaseComboBox#��[ 5#      $��1��5$       �� DisplayMemberPath$
 Name��5'      ��5%      �� *ProductList+ �� SelectedItem 5&      �� *SelectedProduct+ �� ValidatesOnDataErrors$
 True�� �� ValidatesOnExceptions$
 True�� �� UpdateSourceTrigger$ PropertyChanged=�5'      5(      � 5*   
   $��1��6    5+      �� 5,      �� 5-      .+�50      �� #��[  51      $��Профиль��52      $��Center=�53      $��Center=�54      �� 56      #��[ 57      $��1��58      $
 Name��5;      ��59      �� *ProfileList+ 5:      �� *SelectedProfile+5;      5<      � 5>   
   $��2��6    5?      �� 5@      �� 5A      .+�5D      �� #��[  5E      $��Цена закупки��5F      $��Center=�5G      $��Center=�5H      �� 5J      $��1��5K        TextBoxWithWatermark#��[ 5L      
 � Tag$ Цена закупки��5N      ��5M      �� *	BuyCost+$ PropertyChanged=�5N      5P      � 5R   
   $��3��6    5S      �� 5T      �� 5U      .+�5X      �� #��[  5Y      $$��Цена с доставкой��5Z      $��Center=�5[      $��Center=�5\      �� 5^      $��1��5_      #��[ 5`      $$ Цена с доставкой��5b      ��5a      �� *DeliverCost+$ PropertyChanged=�5b      5d      � 5f   
   $��4��6    5g      �� 5h      �� 5i      .+�5l      �� #��[  5m      $��Цена продажи��5n      $��Center=�5o      $��Center=�5p      �� 5r      $��1��5s      #��[ 5t      $ Цена продажи��5v      ��5u      �� *
SellCost+$ PropertyChanged=�5v      5x      � 5z   
   $��5��6    5{      �� 5|      �� 5}      .+�5�      �� #��[  5�      $��Количество��5�      $��Center=�5�      $��Center=�5�      �� 5�      $��1��5�      #��[ 5�      $ Количество��5�      ��5�      �� *Count+$
 True��$
 True��$ PropertyChanged=�5�      5�      �� 5�   
   $��0,10,0,0q�5�      $��6��5�      #��[ 5�      $ Примечание��5�       �� TextWrapping$
 Wrap=�5�      ��5�      �� *	Comment+$
 True��$
 True��$ PropertyChanged=�5�      �� 5�   
   -   5          
BaseButton#��[ 5�      $��Center=�5�      $��Center=�5�      $��7��5�      $��Сохранить��5�      ��5�      �� *ExecuteCommand+{�5�      �� *	IsValid+6+   5�      5�      