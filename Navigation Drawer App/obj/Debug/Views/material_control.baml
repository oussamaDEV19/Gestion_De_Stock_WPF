   M S B A M L   `   `   `  ����P  LNavigation Drawer App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Navigation_Drawer_AppNavigation_Drawer_App  5      2    ,Navigation_Drawer_App.Views.material_control   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:Navigation_Drawer_App     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5        � 	Resources  5         
font_style �� 
TargetType �� Property �� Value��%  &	        �� 5   
   " ��6#   .�5      ��  � ��$$ Fonts/Roboto-Light.ttf #Roboto)�5      �� 5       � ��$ Center=�5      �� 5       � ��$
 Left=�5      �� 5       � ��
 �����5      �� 5       � ��$ 20(�5      5       5"      .��5$      � ��5%   
   �� 5'      -   5        
img_bg�� �� ImageSource$ ../Assets/back.png��5(   !    j� Stretch$
 Fill=�5)   !   .+�5,   
   �� $��
Matériel ��6   $��682,20,0,532q�5-      $��40(�5.      #���   5/      $	��166��69   �� 50   
   $��870,536,0.8,2q�51      $��0q�52      $
��Auto��53      ��55      �� 57      $: 4/Navigation Drawer App;component/Assets/material.png��6   5;      #  MaterialDesignThemes.Wpf.Card  5>   
   $
��Auto��6   $��19q�5?      $��72,119,527.8,25q�6   .��5@      �� .+�5A      �� $0��*Ajouter / Supprimer / Editer un  matériel��5B      $��0,16,-0.4,8q�5E      $��16(�5F      5H      �� 5I         MaterialDesignLightSeparator#��[ 5J      
�������6=   �� 5K      $��0 20 0 0q�6   .+�5M      �� -   5         ��Name$ num_inv��5M      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ numéro d'inventaire��5N       % !MaterialDesignFloatingHintTextBox#��[ 5O      ��6>   �� *SelectedItem.num_inventaire+ �� ElementName$ 	grid_view��	 �� Mode$	 OneWay=��� 5P      -   5        $ nom_mat��5P      $ nom materiel��5Q      #��[ 5R      ��5S      �� *SelectedItem.nom_materiel+$ 	grid_view��$	 OneWay=��� 5U      -   5        $ forni��5U      $ fournisseur��5V      #��[ 5W      ��5X      �� *SelectedItem.fornisseur+$ 	grid_view��$	 OneWay=��� 5Z      -   5        $ quant��5Z      $ quantite d'entree��5[      #��[ 5\      ��6>   �� *SelectedItem.quantite+$ 	grid_view��$	 OneWay=��� 5]      -   5        $ bon_com��5]      $ bon de commandes��5^      #��[ 5_      ��6>   �� *SelectedItem.bon_commande+$ 	grid_view��$	 OneWay=��� 5`      -   5        $ bon_liv��5`      $ bon de livraison��5a      #��[ 5b      ��6>   �� *SelectedItem.bon_iveraison+$ 	grid_view��$	 OneWay=��� 5d      $��	categorie��6   �� 5e      -   5        $	��cat��5e      $��Stretch=�6*   
 �� DisplayMemberPath$
 NomSousCategorie��6�    �� SelectedValuePath$
 IdSC��6�   ��6F   �� )   #Navigation_Drawer_App.Conn_materiel   	categorie �� Source# Z  �� SelectedValue 6�   �� *SelectedItem.id_sous_cat+$ 	grid_view��$	 OneWay=��� 5g      #��[ 5h      � 5i       � RowDefinitions 5j      �� 5k      $	��13* �6,   �� 5l      $��3* �6,   .+�5n      �� -	   5        $��Delete��5n   !   
���  ��$��	207,0,0,0q�6C   $��2��6m   �� 5o      -
   5        $��Ajouter��5o   !   $��	0,0,207,0q�64   $��2��6\   �� 5p      -   5        $��Update��5p   !   
��� � �$��104,0,103,0q�6E   $	��Top=�6Z   $��2��6r    J� RenderTransformOrigin$ 	0.501,0.5&�6�   5r      5t      5v      5w      &   System.Windows.Controls.DataGrid  5x   
   -   5        $��	grid_view��5y   x   $
��Left=�5x      $	��417��6.   $��
447,83,0,0q�6;   $	��Top=�6O   $	��454��6g   $ 0.5,0.5&�6s      AutoGenerateColumns .  ��5y      ��    materiel# Z    Columns 5z      0  *System.Windows.Controls.DataGridTextColumn  5{      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ 50 6%      Header$ ID��5|      1  +System.Windows.Controls.DataGridBoundColumn   Binding 5{   0   �� *id_materiel+5|        5}      $	 120 6%   $ Nom Materiel��5~       5}   1   �� *nom_materiel+5~        5      $	 100 6&   $ date d'entree��5�       5   2   �� *date_entree+5�        5�      $	 100 6&   $ numero d'inventaire��5�       5�   2   �� *num_inventaire+5�        5�      $	 100 6&   $ Fournisseur��5�       5�   2   �� *
fornisseur+5�        5�      $	 100 6&   $ bon comande��5�       5�   2   �� *bon_commande+5�        5�      $	 100 6&   $ bon livraison��5�       5�   2   �� *bon_iveraison+5�        5�      $	 100 6&   $ stock��5�       5�   2   �� *stock+5�      5�      �� 5�   
   -   5        
����h{�$��Importer��5�   .   $
��Left=�6A   $��447,519,0,0q�6\   $	��Top=�6q   $	��454��6�   $��56��6�   6�   �� 5�   
   -   5        
����+��$��Exporter��5�   )   $
��Left=�6=   $��	72,58,0,0q�6X   $	��Top=�6k   $	��333��6�   $��42��6�   6�   5�      5�      