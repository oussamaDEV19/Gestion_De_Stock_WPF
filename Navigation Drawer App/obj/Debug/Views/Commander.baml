   M S B A M L   `   `   `  ����P  LNavigation Drawer App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:Navigation_Drawer_App.ViewsNavigation_Drawer_App.Views  5   	   +    %Navigation_Drawer_App.Views.Commander   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   5local)clr-namespace:Navigation_Drawer_App.Views  5   	     � Title$  	Commander��5	   	   $	��450��6   $	��800��6(    � WindowStartupLocation$ CenterScreen=�5
   
    � 	Resources 5         
font_style �� 
TargetType �� Property �� Value��%  &	        �� 5   
   " ��6#   .�5      ��  � ��$$ Fonts/Roboto-Light.ttf #Roboto)�5      �� 5       � ��$ Center=�5      �� 5       � ��$
 Left=�5      �� 5       � ��
 �����5      �� 5       � ��$ 20(�5      5       5"      .��5#      � ��5$   
   �� 5&      -   5        
img_bg�� �� ImageSource$ ../Assets/back.png��5'   !    j� Stretch$
 Fill=�5(   !   .+�5+   
   #  MaterialDesignThemes.Wpf.Card  $
��Auto��6   $��19q�5,      $��205,10,160.6,10q�6   .��5-      �� .+�5.      �� $��Commander un matériel��5/      $��0,16,-0.4,8q�52      $��16(�53      55      �� 56         MaterialDesignLightSeparator#��[ 57      
�������6:   �� 58      $��0 20 0 0q�6   .+�59      �� -   5         ��Name$ idMat��59      )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 id_materiel��5:       % !MaterialDesignFloatingHintTextBox#��[ 5;      ��6>   �� *id_materiel+�� 5=      -   5        
 ��Name$
 comboPer��5=      $	 Personel��5>       �� 
IsEditable . $��0 0 0 0q�5?   +    & "MaterialDesignFloatingHintComboBox#��[ 5@       �� DisplayMemberPath$	 nom��6V    �� SelectedValuePath$	 idP��6n   5C      �� 5E      -   5        $ quantite��5E      $	 	quantité��5F      #��[ 5G      �� 5H      -   5        $
 comboboxSer��5H   !   $	 Services��5I       . $��0 20 0 0q�5J      #��[ 5K      $
 nomS��6?   $	 idS��6X   5N      �� 5P      #��[ 5Q      � 5R      .+�5S      �� -   5        $��Enregistrer��5S   !   
���  ��$��207,0,-0.4,0q�6H   6^   5U      5X      5Z      5[      5]      5^      