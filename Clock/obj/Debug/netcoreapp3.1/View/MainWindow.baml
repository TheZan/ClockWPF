   M S B A M L   `   `   `  ����@  <Clock, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:ClockClock  5   	   1clr-namespace:Clock.ViewModelClock.ViewModel  5   	       Clock.View.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Clock     5   	   3	viewModelclr-namespace:Clock.ViewModel     5   	   ���#2D2D30  � Title$  Clock��5
   	    � SizeToContent$ WidthAndHeight=�6    � WindowStartupLocation$ CenterScreen=�66    � 
ResizeMode$ NoResize=�6[    � DataContext 5      )  #Clock.ViewModel.MainWindowViewModel  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   .+�5   
   A� $��15q�6   $��0��6   $	��209��6+   $	��209��67   ���#007ACC$��4��6U   � 5   
   $��0��6   $	��200��6   $	��200��6(   .+�5      �� $��Center=�6   ��68   ��  �� Path$ 	HourParts���5      �� 5      .R�5      � 5      ��5      �� 5      .R�5       �  J� RenderTransformOrigin$ 0.5, 0.5&�6   $��0q�6A   z�5!      V� 5"   "   .~�5#   &   ��  �� Angle 66   �� *Angle+5$   #   .+�5&      �� $��Center=�6#   $��Stretch=�6@   
�������$��5��6k   		 �� X1$	 0��6   	
 �� Y1$
 0��6�   	 �� X2$ 0��6�   	 �� Y2$ 10��6�   $ 0.5,0&�6�   5'      5(      5*      �� 5,      $��Center=�6   ��68   �� $ SecondParts���5-      �� 5.      .R�5/      � 50      ��53      �� 54      .R�55      � $ 0.5, 0.5&�6   $��0q�6A   z�56      V� 57   "   .~�58   &   ��  66   �� *Angle+59   #   .+�5;      �� $��Center=�6#   $��Stretch=�6@   
�������$��3��6k   $	 0��6   $
 0��6�   $ 0��6�   $ 5��6�   $ 0.5,0&�6�   5<      5=      5?      �� 5A      $��Center=�6   $��Center=�60   
�������$��3��6Z   $	 0��6n   $
 0��6u   $ 0��6|   $	 -70��6�   $ 0.5,0&�6�   z�5B      V� 5C      .~�5D      ��  6*   �� *	AngleHour+ �� UpdateSourceTrigger$ PropertyChanged=�5E      5G      �� 5I      $��Center=�6   $��Center=�60   
�������$��3��6Z   $	 0��6n   $
 0��6u   $ 0��6|   $	 -85��6�   $ 0.5,0&�6�   z�5J      V� 5K      .~�5L      ��  6*   �� *
AngleMin+$ PropertyChanged=�5M      5O      �� 5Q      $��Center=�6   $��Center=�60   
���  ��$��3��6X   $	 0��6l   $
 0��6s   $ 0��6z   $	 -85��6�   $ 0.5,0&�6�   z�5R      V� 5S      .~�5T      ��  6*   �� *
AngleSec+$ PropertyChanged=�5U      5W      5X      A� 5Y   
   $��0��6   $��10��6   $��10��6*   
����������#007ACC6E   �� 5Z   
   $��15q�6   $��1��6    $	��150��6-   $��50��69   ���#007ACC$��4��6V   �� 5[   
   $��15q�6   
�������$��Center=�63   $��Arial)�6N   $��30(�6a   $��SemiBold"�6o   $��Center=�6�   $��1��6�   ��6�   �� *CurrentTime+$ PropertyChanged=�6�   5\      5]      