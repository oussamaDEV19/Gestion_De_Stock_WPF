   M S B A M L   `   `   `  ����P  LNavigation Drawer App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:Navigation_Drawer_App.ViewsNavigation_Drawer_App.Views  5      2    ,Navigation_Drawer_App.Views.category_control   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:Navigation_Drawer_App.Views     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5        � 	Resources  5
         
font_style �� 
TargetType �� Property �� Value��%  &	        �� 5   
   " ��6#   .�5      ��  � ��$$ Fonts/Roboto-Light.ttf #Roboto)�5      �� 5       � ��$ Center=�5      �� 5       � ��$
 Left=�5      �� 5       � ��
 �����5      �� 5       � ��$ 20(�5      5      5       .��5"      �  � RowDefinitions 5#   
   �� 5$      ��5&   
   �� 5(      -   5        
img_bg�� �� ImageSource$ ../Assets/back.png��5)   !    j� Stretch$
 Fill=�5*   !   .+�5-   
   �� $��	Category ��6   $��675,26,0,526q�5.      $��40(�5/      #���   50      $	��166��69   �� 52   
   $��870,536,0.8,2q�53      $��0q�54      $
��Auto��55      ��57      �� 59      $: 4/Navigation Drawer App;component/Assets/category.png��6   5=      #  MaterialDesignThemes.Wpf.Card  5?   
   $
��Auto��6   $��19q�5@      $��54,63,535.8,298q�6   .��5A      �� .+�5B      �� $!��Ajouter une sours_categorie��5C      $��0,16,-0.4,8q�5F      $��16(�5G      �� 5H         MaterialDesignLightSeparator#��[ 5I      
�������6K   �� 5J      $��0 0 0 0q�6   .+�5K      �� -   5         ��Name$	 ids��5K      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ sous_categorie��5L       % !MaterialDesignFloatingHintTextBox#��[ 5M      ��6T   �� *
nomsouscat+�� 5O      -   5        	 ��Name$	 combocat��5O      $ 	Categorie��5P      
 �� 
IsEditable
 . $��0 0 0 0q�5Q   +    & "MaterialDesignFloatingHintComboBox#��[ 5R       �� DisplayMemberPath$ NomCategorie��6y    �� SelectedValuePath$ Id��6�   ��6U   �� *fillCombCat+5U      �� 5Y      #��[ 5Z      � 5[      .+�5\      �� -   5        $��Ajouter��5\   !   $��207,0,-0.4,0q�64   6J   5^      5`      5b      5c        5d   
   $
��Auto��6   $��19q�5e      $��54,322,535.8,39q�6   .��5f      �� .+�5g      �� $"��Supprimer une sous_categorie��5h      $��0,16,-0.4,8q�5k      $��16(�5l      �� 5m      #��[ 5n      
�������6K   �� 5o      $��0 0 0 0q�6   .+�5r      �� -   5        $	 combSC��5r      $ sous-categorie��5s      
 . $��0 0 0 0q�5t   +   #��[ 5u      $ NomSousCategorie��6z   $
 IdSC��6�   ��6U   �� *fillCombSCat+5x      �� 5z      #��[ 5{      � 5|      .+�5}      �� -   5        $��Delete��5}   !   
���  ��$��207,0,-0.4,0q�6C   6Y   5      5�      5�      5�        5�   
   $
��Auto��6   $��19q�5�      $��498,145,91.8,109q�6   .��5�      �� .+�5�      �� $!��Modifier une sous_categorie��5�      $��0,16,-0.4,8q�5�      $��16(�5�      �� 5�      #��[ 5�      
�������6K   �� 5�      $��0 0 0 0q�6   .+�5�      �� -   5        $	 comboboxSCat��5�      $ sous-categorie��5�      
 . $��0 0 0 0q�5�   +   #��[ 5�      $ NomSousCategorie��6z   $
 IdSC��6�   ��6U   �� *fillCombSCat+5�      �� 5�      #��[ 5�      � 5�      .+�5�      �� -   5        $��Update��5�   !   
��� � �$��205,100,1.8,-100q�6E   6_   5�      �� 5�      -	   5        $	 comboboxCat��5�      $ 	Categorie��5�      
 . $��
0,0,-0.2,0q�5�   +   #��[ 5�      $ NomCategorie��6y   $ Id��6�   ��6U   �� *fillCombCat+6�   5�      5�      5�      5�      5�      