   M S B A M L   `   `   `  ����C  ?Database, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Database.ViewDatabase.View  5   	   "    Database.View.ChangeProducts   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Database.View     5   	     � Title$  Выбор товаров��5   	   $	��450��6   $	��450��6,   .��5	      � $��10q�6    � RowDefinitions 5
   
   �� 5      $	��31* �6   �� 5      $
��138* �6   �� 5      $	��38* �6   .+�5   
   �� $��Center=�67    �� DisplayMemberPath$
 Name��6{   ��6   �� *ProductList+ �� SelectedItem 6R   �� *SelectedProduct+6{   �� 5   
   -   5        $��ProductListBox��5   c   $��1��6   $
 Name��6J   ��6   �� *ChangedProductList+6c   �� 5   
   -   5        $��2��5      $��Принять��6      
BaseButton#��[  60   $��Center=�6T   $��Center=�6o   $��32��6�   $��80��6�   6�   5      5      