   M S B A M L   `   `   `  ����P  LNavigation Drawer App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:Navigation_Drawer_App.ViewsNavigation_Drawer_App.Views  5      =#clr-namespace:Navigation_Drawer_AppNavigation_Drawer_App  5   W   /    )Navigation_Drawer_App.Views.order_control   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:Navigation_Drawer_App.Views     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      ?Navigation_Drawer_App#clr-namespace:Navigation_Drawer_App  6W     � 	Resources  5
         
font_style �� 
TargetType �� Property �� Value��%  &	        �� 5   
   " ��6#   .�5      ��  � ��$$ Fonts/Roboto-Light.ttf #Roboto)�5      �� 5       � ��$ Center=�5      �� 5       � ��$
 Left=�5      �� 5       � ��
 �����5      �� 5       � ��$ 20(�5      5      5       .��5"      � ��5#   
   �� 5%      -   5        
img_bg�� �� ImageSource$ ../Assets/back.png��5&   !    j� Stretch$
 Fill=�5'   !   .+�5*   
   �� $��Orders ��6   $��693,26,0,526q�5+      $��40(�5,      #���   5-      $	��166��69   �� 50   
   $��870,536,0.8,2q�51      $��0q�52      $
��Auto��53      ��55      �� 57      $7 1/Navigation Drawer App;component/Assets/order.png��6   5;      #  MaterialDesignThemes.Wpf.Card  5<   
   $
��Auto��6   $��19q�5=      $��10,79,579.8,282q�6   .��5>      �� .+�5?      �� $��Order��5@      $��0,16,-0.4,8q�5C      $��16(�5D      �� 5E         MaterialDesignLightSeparator#��[ 5F      
�������6K   �� 5G      $��0 0 0 0q�6   .+�5H      �� -   5         ��Name$ comboboxCat��5H      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 	Categorie��5I       �� 
IsEditable . $��0 0 0 0q�5J   +    & "MaterialDesignFloatingHintComboBox#��[ 5K      	 �� DisplayMemberPath$	 NomCategorie��6y   
 �� SelectedValuePath$
 Id��6�   ��6U   �� *fillCombCat+5N      �� 5P      -   5        $ comboboxSCat��5P      $ sous-categorie��5Q       . $��0 0 0 0q�5R   +   #��[ 5S      $	 NomSousCategorie��6U   $

 IdSC��6z   5U      �� 5W      #��[ 5X      � 5Y      .+�5Z      �� -   5        $��Afficher��5Z   !   
���  ��$��207,0,-0.2,0q�6E   $	��Top=�6l   5\      5^      5`      5a      � 5b   
   -   5         �Name$ 	grcontent��5b      $
��Left=�6"   $	��472��6=   $��
373,79,0,0q�6J   $	��Top=�6^   $	��559��6v    J� RenderTransformOrigin$ 0.474,0.284&�6�    � RowDefinitions 5c      �� 5d      �� 5e      $��0* �6    5g      5j      5k      