   M S B A M L   `   `   `  ����  WpfApplication1     WpfApplication1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5          �Name$  window1��5   	    � Title$ 
MainWindow��5   	   $��451.678��6   $��591.784��6-    � WindowStartupLocation$ CenterScreen=�6=    � AllowsTransparency .  � WindowStyle$
 None=�6|   #��� ��6�    � 
ResizeMode$ NoResize=�6�   ��5      �� 5   
    �� EndPoint$ 0.5,1&�6    � MappingMode$ RelativeToBoundingBox=�6/    �� 
StartPoint$ 0.5,0&�6S   .��5      � 	 � Color$	 	#FF05050F��6   
 � Offset$
 1Q�6-   � 5      $	 Black��6   $
 1Q�6)   � 5	      $	 	#FFD1D1D4��6   5
      .��5      � $��-3,0,0,0q�6    � RowDefinitions 5   
   �� 5       � ColumnDefinitions 5   
   �� 5      $��0* �6   �� 5      �� 5      ��5   
   �� 5       �� ImageSource$0 *D:\Project UI images\healthcare-global.jpg��6    j� Stretch$ UniformToFill=�6R   .+�5   
   �� -   5         ��Name$
 Name��5      $
��Name��6   $
��Left=�6-   $��	54,64,0,0q�6H   $	��Top=�6[   $��38��6s   $��86��6   $��22(�6�   $��Arial Narrow)�6�   $��2��6�   �� 5   
   -   5        $�� ��5      $
��Left=�6   $��248,-2,-1,0q�67   $	��Top=�6L   $��49��6d   $��42��6�   $��2��6�   ��5      �� 5      ��5      �� 5      $7 1D:\Project UI images\1406071446_button_cancel.png��6   5       �� 5!   
   $	��Age��6   $
��Left=�6   $��
54,178,0,0q�69   $	��Top=�6M   $��38��6e   $��86��6q   $��Arial Narrow)�6|   $��22(�6�   $��2��6�   �� 5"   
   $��Disease��6   $
��Left=�6"   $��
54,239,0,0q�6=   $	��Top=�6Q   $��38��6i   $��88��6u   $��Arial Narrow)�6�   $��22(�6�   $��2��6�   �� 5#   
   $��Location��6   $
��Left=�6#   $��
53,348,0,0q�6>   $	��Top=�6R   $��36��6j   $��86��6v   $��Arial Narrow)�6�   $��22(�6�   $��2��6�   �� 5$   
   -   5         ��Name$ 	name_text��5$      $
��Left=�6%   $��33��6@   $��
157,68,0,0q�6L    �� TextWrapping$
 Wrap=�6`   $	��Top=�6t   $	��258��6�    � ToolTip$ 
Enter Name��6�   $��18(�6�   $��3��6�   6�   �� 5%   
   -   5         ��Name$ diseaseCombo��5%      $
��Left=�6)   $��157,245,0,0q�6D   $	��Top=�6Y   $	��120��6q   $��22��6}   $��2��6�   $ Select Disease��6�   �� 5&   
   -   5        $ 	areaCombo��5&      $
��Left=�6&   $��157,353,0,0q�6A   $	��Top=�6V   $	��120��6n   $��22��6z   $��2��6�    � Cursor$  ��6�   $ Select Area��6�   �� 5'   
   -   5         ��Name$ searchButton��5'      $��Search��6'   $
��Left=�68   $��250,405,0,0q�6S   $	��Top=�6h   $��97��6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   $��29��6�   $��1��6�   $��Arial Narrow)�6�   $��20(�6�   ���	#FF4DADF0$��2��6  z�5(      V� 5)      .~�5*      �� �� 5+      �� 5,       �� Angle$
 0.06Q�6&   T� 5-      5.      50      �� 51   
   -   5        $ Header��51      $��HOSPITAL 24X7��6    $
��Left=�68   $��	109,2,0,0q�6S   $	��Top=�6f   $��57��6~   $	��350��6�   $��36(�6�   $
��Bold"�6�   $��Gill Sans MT)�6�   $��3��6�   �� 52   
   -	   5        $ age_text��52      $
��Left=�6$   $��23��6?   $��158,186,0,0q�6K   $
 Wrap=�6`   $	��Top=�6t   $	��120��6�   $��2��6�   6�   �� 53   
   $��
Contact No��6   $
��Left=�6%   $��
50,128,0,0q�6@   $	��Top=�6T   $��40��6l   $	��105��6x   $��Arial Narrow)�6�   $��22(�6�   $��2��6�   �� 54   
   -
   5        $ contact_text��54      $
��Left=�6(   $��24��6C   $��157,133,0,0q�6O   $
 Wrap=�6d   $	��Top=�6x   $	��121��6�   $��2��6�   �� 55   
   -   5        $ 
error_name��55      $��Name cannot be left blank��6$   $
��Left=�6H   $��
114,67,0,0q�6c   $	��Top=�6w   $	��175��6�   $��Hidden=�6�   ���	#FFFF0303$y�Hidden=�6�   $��2��6  $��42��6  $��14(�6*  ��6�   Z� 6*  �� 56   
   -   5        $ 	error_age��56      $��Age is not valid.��6#   $
��Left=�6?   $��	2,187,0,0q�6Z   $	��Top=�6m   $ 0.421,-0.154&�6�   $��30��6�   $	��175��6�   ���	#FFE40A0A$y�Hidden=�6�   $��2��6�   $��14(�6�   �� 57   
   -   5        $ error_contact��57      $!��Contact Number is not valid��6'   $
��Left=�6M   $��	0,133,0,0q�6h   $	��Top=�6{   $��2��6�   $ 0.211,0.577&�6�   $	��202��6�   ���	#FFEE0A0A$y�Hidden=�6�   $��14(�6�   ��58      �� 59      5;      �� 5<   
   $��2��6   $
��City��6$   $
��Left=�63   $��
53,297,0,0q�6N   $	��Top=�6b   $��36��6z   $��75��6�   $��Arial Narrow)�6�   $��22(�6�   �� 5=   
   -   5        $ 	cityCombo��5=      $��2��6&   $
��Left=�6:   $��158,299,0,0q�6U   $	��Top=�6j   $	��120��6�   $ Select City��6�   �� 5>   
   -   5        $ error_disease��5>      $��Select Disease��6'   $��2��6@   $
��Left=�6P   $��	0,244,0,0q�6k   $	��Top=�6~   $	��167��6�   
���  ��$��14(�6�   $y�Hidden=�6�   �� 5?   
   -   5        $ 
error_City��5?      $��Select City��6$   $��2��6:   $
��Left=�6J   $��	0,297,0,0q�6e   $	��Top=�6x   $	��196��6�   
���  ��$��14(�6�   $y�Hidden=�6�   �� 5@   
   -   5        $ 
error_area��5@      $��Select Area��6$   $��2��6:   $
��Left=�6J   $��	0,351,0,0q�6e   $	��Top=�6x   $	��182��6�   
���  ��$��14(�6�   $y�Hidden=�6�   5B      5C      