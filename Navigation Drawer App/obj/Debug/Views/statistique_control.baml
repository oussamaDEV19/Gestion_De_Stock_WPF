   M S B A M L   `   `   `  ����P  LNavigation Drawer App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Navigation_Drawer_AppNavigation_Drawer_App  5      5    /Navigation_Drawer_App.Views.statistique_control   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:Navigation_Drawer_App     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      b ^Syncfusion.SfChart.WPF, Version=18.4460.0.47, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89.chart1!http://schemas.syncfusion.com/wpf  5        � DataContext  5      )   #Navigation_Drawer_App.Conn_materiel  5   
    � 	Resources 5         
font_style �� 
TargetType �� Property �� Value��%  &	        �� 5   
   " ��6#   .�5      ��  � ��$$ Fonts/Roboto-Light.ttf #Roboto)�5      �� 5       � ��$ Center=�5      �� 5       � ��$
 Left=�5      �� 5       � ��
 �����5      �� 5       � ��$ 20(�5       5"      5$      .��5&      � ��5'   
   �� 5)      -   5        
img_bg�� �� ImageSource$ ../Assets/back.png��5*   !    j� Stretch$
 Fill=�5+   !   .+�5.   
   �� $��
Statistics��6   $��679,22,0,530q�5/      $��40(�50      #���   51      $	��166��69   �� 52   
   $��861,522,-6.2,0q�53      $��0q�54      $
��Auto��55      ��57      �� 59      $< 6/Navigation Drawer App;component/Assets/statistics.png��6   5=      � 5>   
   -   5         �Name$ GridlabelConfirmed��5>      $��0��5?      $��0,74,-0.2,-74q�6   .+�5A      � -   5        $ 
RightPanel��5A      $��3,117,-15,414q�6'    J� RenderTransformOrigin$ 0.5,0.5&�6>   z�5B      V� 5C      .~�5D      �� �� 5E      �� 5F      	 �� Angle$	 0.173Q�6*   T� 5G      5H      .+�5J      �� $��-4,-110,3.8,0q�6   $ 0.5,0.5&�66   $	��162��6V   $	��Top=�6c   z�5K      V� 5L      .~�5M      �� �� 5N      
 �� AngleX$
 1.115Q�6,   �� 5O      $	 -0.001Q�6.   T� 5P       T� X$ 5.981Q�61   5Q      .��5S      �  � RowDefinitions 5T      �� 5U      $
��Auto �6,   �� 5V      $
��Auto �6,   �� 5W      $
��Auto �6,   �� 5X      $��* �6,    � ColumnDefinitions 5Z      �� 5[      $��5* �6/   �� 5\      $��5* �6/   �� 5]      $��5* �6/   .+�5_      � -   5        $ GridlabelConfirmed2��5_      $��0��5`      .+�5a      �� $	��120��6(   $��20q�65   
������� �� RadiusY$ 10��6N    �� RadiusX$ 10��6[    J� Effect 5b   "   3  -System.Windows.Media.Effects.DropShadowEffect  5c   &      
BlurRadius$ 20Q�67      Color$ 	#FFDEDEDE��6G      RenderingBias$ Quality=�6Y      ShadowDepth$ 1Q�6q   5e      � 5f      $��25q�6#   $	��120��6/   .+�5g   "   � $��35��6'   $��50��62   ���#ff6f00$
��Left=�6S   $	��Top=�6n   $
��20 0q�6�    5h   &     5i   *   $ 20Q�6;   $ 	#FFECECEC��6K   $ Quality=�6]   $ 1Q�6u   .+�5k   &   '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ ChartMultiple=�6>   $��Center=�6S   $��Bottom=�6p   $��5q�6�   
�������$��20��6�   $��20��6�   5l   #   �� 5m   "   -   5         ��Name$ TextBlockCONFIRMED��5m   ,   ���#ff6f00$��Number of Orders��5p   %   $
��Bold"�5q   %   $��20(�5r   %   $��60,10,14.6,77q�5s   %   �� 5t   "   -   5         ��Name$ StackPanelMessageTC��5t   -   $��Right=�5u   %   $��10 30q�5v   %    �� Orientation$ 
Horizontal=�5w   %   $	��Top=�5x   %   �� 5y   "   -   5        $ 	nb_orders��5y   ,   ���#ff6f00$��58��5|   %   $
��Bold"�5}   %   $��40(�5~   %   $��168,48,30.6,10q�5   %   5�      5�      � 5�      -   5        $ GridlabelRecorvered��5�      $��1��5�      .+�5�      �� $	��120��6(   $��15,24,24.6,25.6q�65   
�������$ 10��6[   $ 10��6h    5�   "     5�   &   $ 20Q�67   $ 	#FFDEDEDE��6G   $ Quality=�6Y   $ 1Q�6q   5�      � 5�      $��25q�6#   $	��120��6/   .+�5�   "   � $��35��6'   $��50��62   ���	#FF41A43C$
��Left=�6U   $	��Top=�6p   $��	20,-1,0,0q�6�    5�   &     5�   *   $ 20Q�6;   $ 	#FFECECEC��6K   $ Quality=�6]   $ 1Q�6u   .+�5�   &     $ BookEdit=�6>   $��Center=�6N   $��Bottom=�6k   $��5q�6�   
�������$��20��6�   $��20��6�   5�   #   �� 5�   "   -	   5        $ TextBlockRECORVERED��5�   ,   ���	#FF41A43C$��Number of Materials��5�   %   $��19(�5�   %   $
��Bold"�5�   %   $��60,16,-10.4,70q�5�   %   �� 5�   "   $ 
Horizontal=�6-   $��Bottom=�6F   $��20q�6a   .+�5�   &   �� $��Champagne Limousines)�5�   )   $��Center=�5�   )   
�������$��30(�5�   )   ��5�   )   �� *CovidDetails.recovered.value+ �� StringFormat$ {0:0,0}��5�   )   5�   #   �� 5�   "   -
   5        $ nb_materials��5�   ,   ���	#FF41A43C$��24��5�   %   $��40(�5�   %   $
��Bold"�5�   %   $��173,50,19.6,15q�5�   %   5�      5�      � 5�      -   5        $ GridlabelDeaths��5�      $��2��5�      .+�5�      �� $	��120��6(   $��20q�65   
�������$ 10��6N   $ 10��6[    5�   "     5�   &   $ 20Q�67   $ 	#FFDEDEDE��6G   $ Quality=�6Y   $ 1Q�6q   5�      � 5�      $��25q�6#   $	��120��6/   .+�5�   "   � $��35��6'   $��50��62   ���	#FFCF1F1F$
��Left=�6U   $	��Top=�6p   $
��20 0q�6�    5�   &     5�   *   $ 20Q�6;   $ 	#FFECECEC��6K   $ Quality=�6]   $ 1Q�6u   .+�5�   &     $ Person=�6>   $��Center=�6L   $��Bottom=�6i   $��5q�6�   
�������$��20��6�   $��20��6�   5�   #   �� 5�   "   -   5        $ TextBlockDEATHS��5�   ,   $
��Bold"�5�   %   ���	#FFCF1F1F$��Number of Personals��5�   %   $��20(�5�   %   $��60,10,-16.4,70q�5�   %   �� 5�   "   $ 
Horizontal=�6-   $��Right=�6F   $	��Top=�6b   $��10 30q�6z   �� 5�   "   -   5        $ nb_personals��5�   ,   $
��Bold"�5�   %   ���	#FFCF1F1F$��12��5�   %   $��40(�5�   %   $��186,50,10.8,20q�5�   %   5�      5�      5�      5�      5�      '  !Syncfusion.UI.Xaml.Charts.SfChart  5�      $	��250��6   $	��800��6*   )  #Syncfusion.UI.Xaml.Charts.ChartBase   Header$ Materiel Statiqtiques��66      PrimaryAxis 5�      ,  &Syncfusion.UI.Xaml.Charts.CategoryAxis  5�         SecondaryAxis 5�      -  'Syncfusion.UI.Xaml.Charts.NumericalAxis  5�         Legend 5�      +  %Syncfusion.UI.Xaml.Charts.ChartLegend  5�      6+      Series. 5�      ,	  &Syncfusion.UI.Xaml.Charts.ColumnSeries	  /
  )Syncfusion.UI.Xaml.Charts.ChartSeriesBase 
  Label$ Stock��6&     
  XBindingPath$  nom_materiel��6U   ,  &Syncfusion.UI.Xaml.Charts.XyDataSeries!   YBindingPath$! stock��6q   " 
  ItemsSource" 64   �� *
materiel+6q   	  5�      $ Quantity��6&   $  nom_materiel��6X   $! quantite��6t   " 67   �� *
materiel+6t   5�      5�      5�      5�      