   M S B A M L   `   `   `  ����P  LNavigation Drawer App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Navigation_Drawer_AppNavigation_Drawer_App  5      2    ,Navigation_Drawer_App.Views.Personal_control   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      ?Navigation_Drawer_App#clr-namespace:Navigation_Drawer_App  5        � 	Resources  5
         
font_style �� 
TargetType �� Property �� Value��%  &	        �� 5   
   " ��6#   .�5      ��  � ��$$ Fonts/Roboto-Light.ttf #Roboto)�5      �� 5       � ��$ Center=�5      �� 5       � ��$
 Left=�5      �� 5       � ��
 �����5      �� 5       � ��$ 20(�5      5      5       .��5"      � ��5#   
   �� 5%      -   5        
img_bg�� �� ImageSource$ ../Assets/back.png��5&   !    j� Stretch$
 Fill=�5'   !   .+�5*   
   �� $��Personal��6   $��682,19,0,533q�5+      $��40(�5,      #���   5-      $	��166��69   �� 5.   
   $��869,534,2.8,5q�5/      $��0q�50      $
��Auto��51      ��53      �� 55      $= 7/Navigation Drawer App;component/Assets/img_contact.png��6   59      &   System.Windows.Controls.DataGrid  5=   
   -   5          Name$ 	grid_view��5>   {   $
��Left=�5=      $	��417��6.   $��
464,83,0,0q�6;   $	��Top=�6O   $	��424��6g    J� RenderTransformOrigin$ 0.5,0.5&�6s      AutoGenerateColumns .  ��5>      �� #   Navigation_Drawer_App.Persons	   	personnel
 �� Source#
 Z	    Columns 5?      0  *System.Windows.Controls.DataGridTextColumn  5@      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ 50 6%      Header$ ID��5A      1  +System.Windows.Controls.DataGridBoundColumn   Binding 5@   0   �� *idP+5A        5B      $	 100 6&   $ Login��5C       5B   2   �� *login+5C        5D      $	 100 6&   $ Email��5E       5D   2   �� *email+5E        5F      $	 300 6&   $ Mot de passe��5G       5F   2   �� *
password+5G        5H      $	 300 6&   $	 Nom��5I       5H   2   �� *nom+5I        5J      $	 300 6&   $ Prenom��5K       5J   2   �� *prenom+5K      5O      #  MaterialDesignThemes.Wpf.Card  5P   
   $
��Auto��6   $��19q�5Q      $��43,94,527,100q�6   .��5R      �� .+�5S      �� $0��*Ajouter / Supprimer / Editer un  personnel��5T      $��0,16,-0.4,8q�5W      $��16(�5X      �� 5Y         MaterialDesignLightSeparator#��[ 5Z      
�������6K   �� 5[      $��0 20 0 0q�6   .+�5\      �� -   5         ��Name$ txtlogin��5\      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ login��5]       % !MaterialDesignFloatingHintTextBox#��[ 5^      ��6T   �� *SelectedItem.login+ �� ElementName$ 	grid_view�� �� Mode$ OneWay=�6�   �� 5_      -   5        $ txtemail��5_      $ email��5`      #��[ 5a      ��6T   �� *SelectedItem.email+$ 	grid_view��$ OneWay=�6�   �� 5b      -   5        $ txtpass��5b      $ password��5c      #��[ 5d      ��6T   �� *SelectedItem.password+$ 	grid_view��$ OneWay=�6�   �� 5e      -   5        $ txtNom��5e      $	 Nom��5f      #��[ 5g      $��
0,0,-0.2,0q�6�   ��6T   �� *SelectedItem.nom+$ 	grid_view��$ OneWay=�6�   �� 5h      -   5        $ 	txtPrenom��5h      $ Prenom��5i      #��[ 5j      $��
0,0,-0.2,0q�6�   ��6T   �� *SelectedItem.prenom+$ 	grid_view��$ OneWay=�6�   �� 5l      #��[ 5m      $��61��6O   $ 0.5,0.5&�6[   $��
0,2,-0.2,2q�6{   z�5n      V� 5o      .~�5p   "   ��  �� ScaleY$ -1Q�61   �� 5q   "   �� 5r   "   T� 5s   "   5t      5v      � 5w       � RowDefinitions 5x      �� 5y      $	��13* �6,   �� 5z      $��3* �6,   .+�5|      �� -   5        $��Delete��5|   !   
���  ��$��219,0,-0.2,0q�6C   $��2��6p   $��Bottom=�6�   �� 5}      -	   5        $��Ajouter��5}   !   $��0,0,225.8,0q�64   $��2��6^   �� 5~      -
   5        $��Update��5~   !   
��� � �$��104,0,110.8,0q�6E   $��2��6\   $
��Auto��6�   5�      5�      5�      5�      �� 5�   
   -   5        
����h{�$��Importer��5�   .   $
��Left=�6A   $��464,519,0,0q�6\   $	��Top=�6q   $	��424��6�   $��56��6�   6�   5�      5�      