FasdUAS 1.101.10   ��   ��    k             l     ��  ��    Z T see: https://forum.keyboardmaestro.com/t/writing-applescript-for-mail-rules/29501/6     � 	 	 �   s e e :   h t t p s : / / f o r u m . k e y b o a r d m a e s t r o . c o m / t / w r i t i n g - a p p l e s c r i p t - f o r - m a i l - r u l e s / 2 9 5 0 1 / 6   
  
 w          i         I     �� ��
�� .emalcpmanull���     ****  o      ���� 0 themessages theMessages��    O     �    k    �       r        m       �   z / U s e r s / m i c h a e l / p r o j e c t s / d o t f i l e s / f i l e s / b i n / s c r i b e 2 o b s i d i a n . s h  o      ����  0 scriptfilename scriptFilename      r        m    	   �   � / U s e r s / m i c h a e l / L i b r a r y / M o b i l e   D o c u m e n t s / i C l o u d ~ m d ~ o b s i d i a n / D o c u m e n t s / P e r s o n a l / 0 1   @ I n b o x  o      ���� 0 	vaultpath 	vaultPath     !   r     " # " m     $ $ � % %  P r i v a t e   v a u l t # o      ���� 0 	vaultname 	vaultName !  & ' & l   ��������  ��  ��   '  ( ) ( l   �� * +��   * @ : set theMessages to the selection -- Only used for testing    + � , , t   s e t   t h e M e s s a g e s   t o   t h e   s e l e c t i o n   - -   O n l y   u s e d   f o r   t e s t i n g )  -�� - Q    � . / 0 . X    r 1�� 2 1 k   # m 3 3  4 5 4 r   # ( 6 7 6 n   # & 8 9 8 1   $ &��
�� 
raso 9 o   # $���� 0 amessage aMessage 7 o      ���� 0 	msgsource 	msgSource 5  : ; : l  ) )�� < =��   < v p For some unknown reason a message an be part of the message list multiple times. Skip processing of duplicates.    = � > > �   F o r   s o m e   u n k n o w n   r e a s o n   a   m e s s a g e   a n   b e   p a r t   o f   t h e   m e s s a g e   l i s t   m u l t i p l e   t i m e s .   S k i p   p r o c e s s i n g   o f   d u p l i c a t e s . ;  ?�� ? Z   ) m @ A�� B @ n  ) / C D C I   * /�� E���� (0 isalreadyprocessed isAlreadyProcessed E  F�� F o   * +���� 0 	msgsource 	msgSource��  ��   D  f   ) * A l  2 2�� G H��   G 3 - display dialog "Message already proccessed."    H � I I Z   d i s p l a y   d i a l o g   " M e s s a g e   a l r e a d y   p r o c c e s s e d . "��   B k   6 m J J  K L K l  6 6�� M N��   M - ' display dialog "Processing message..."    N � O O N   d i s p l a y   d i a l o g   " P r o c e s s i n g   m e s s a g e . . . " L  P Q P r   6 S R S R I  6 Q�� T��
�� .sysoexecTEXT���     TEXT T b   6 M U V U b   6 I W X W b   6 G Y Z Y b   6 C [ \ [ b   6 A ] ^ ] b   6 = _ ` _ b   6 ; a b a m   6 7 c c � d d 
 e c h o   b n   7 : e f e 1   8 :��
�� 
strq f o   7 8���� 0 	msgsource 	msgSource ` m   ; < g g � h h    |   ^ n   = @ i j i 1   > @��
�� 
strq j o   = >����  0 scriptfilename scriptFilename \ m   A B k k � l l    Z n   C F m n m 1   D F��
�� 
strq n o   C D���� 0 	vaultpath 	vaultPath X m   G H o o � p p    V n   I L q r q 1   J L��
�� 
strq r o   I J���� 0 	vaultname 	vaultName��   S o      ���� 0 	notetitle 	noteTitle Q  s t s l  T T��������  ��  ��   t  u v u l  T T�� w x��   w H B see: https://macosxautomation.com/mavericks/notifications/01.html    x � y y �   s e e :   h t t p s : / / m a c o s x a u t o m a t i o n . c o m / m a v e r i c k s / n o t i f i c a t i o n s / 0 1 . h t m l v  z { z I  T g�� | }
�� .sysonotfnull��� ��� TEXT | b   T W ~  ~ o   T U���� 0 	notetitle 	noteTitle  m   U V � � � � �    i m p o r t e d . } �� � �
�� 
appr � m   Z ] � � � � � 6 P D F   f r o m   S c r i b e   t o   O b s i d i a n � �� ���
�� 
subt � o   ` a���� 0 	vaultname 	vaultName��   {  ��� � l  h m � � � � I  h m�� ���
�� .sysodelanull��� ��� nmbr � m   h i���� ��   � 2 ,> allow time for the notification to trigger    � � � � X >   a l l o w   t i m e   f o r   t h e   n o t i f i c a t i o n   t o   t r i g g e r��  ��  �� 0 amessage aMessage 2 o    ���� 0 themessages theMessages / R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 errormessage errorMessage � �� ���
�� 
errn � o      ���� 0 errornumber errorNumber��   0 I  z ��� � �
�� .sysodisAaleR        TEXT � o   z {���� 0 errornumber errorNumber � �� ���
�� 
mesS � o   ~ ���� 0 errormessage errorMessage��  ��    m      � ��                                                                                  emal  alis    (  Macintosh HD               �\��BD ����Mail.app                                                       �����\��        ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    M a c i n t o s h   H D  System/Applications/Mail.app  / ��   �                                                                                  emal  alis    (  Macintosh HD               �\��BD ����Mail.app                                                       �����\��        ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    M a c i n t o s h   H D  System/Applications/Mail.app  / ��     � � � l     ��������  ��  ��   �  � � � l     �� � ���   � \ V Loosely based on: https://www.macscripter.net/t/remove-duplicates-from-a-list/30098/2    � � � � �   L o o s e l y   b a s e d   o n :   h t t p s : / / w w w . m a c s c r i p t e r . n e t / t / r e m o v e - d u p l i c a t e s - f r o m - a - l i s t / 3 0 0 9 8 / 2 �  � � � h    �� ��� 0 	processed   � j     �� ��� 0 itemlist itemList � J      � �  ��� � m      � � � � �  ��   �  � � � i     � � � I      �� ����� (0 isalreadyprocessed isAlreadyProcessed �  ��� � o      ���� 0 	inputitem 	inputItem��  ��   � k     I � �  � � � r      � � � m     ��
�� boovfals � o      ���� 0 isfound isFound �  � � � X    0 ��� � � Z    + � ����� � =   ! � � � l    ����� � c     � � � o    ���� 0 	inputitem 	inputItem � m    ��
�� 
TEXT��  ��   � l     ����� � c      � � � o    ���� 0 processeditem processedItem � m    ��
�� 
TEXT��  ��   � r   $ ' � � � m   $ %��
�� boovtrue � o      ���� 0 isfound isFound��  ��  �� 0 processeditem processedItem � n    � � � o    ���� 0 itemlist itemList � o    ���� 0 	processed   �  � � � Z   1 E � ����� � =   1 4 � � � o   1 2���� 0 isfound isFound � m   2 3��
�� boovfals � r   7 A � � � o   7 8���� 0 	inputitem 	inputItem � n       � � �  ;   ? @ � n  8 ? � � � o   = ?���� 0 itemlist itemList � o   8 =���� 0 	processed  ��  ��   �  ��� � r   F I � � � o   F G���� 0 isfound isFound � 1      ��
�� 
rslt��   �  ��� � l     ��������  ��  ��  ��       �� � � � ���   � ������
�� .emalcpmanull���     ****�� 0 	processed  �� (0 isalreadyprocessed isAlreadyProcessed � �� ���� � ���
�� .emalcpmanull���     ****�� 0 themessages theMessages��   � 	�������������������� 0 themessages theMessages��  0 scriptfilename scriptFilename�� 0 	vaultpath 	vaultPath�� 0 	vaultname 	vaultName�� 0 amessage aMessage�� 0 	msgsource 	msgSource�� 0 	notetitle 	noteTitle�� 0 errormessage errorMessage�� 0 errornumber errorNumber �  �   $���������� c�� g k o�� �� ��~�}�|�{�z ��y�x
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
raso�� (0 isalreadyprocessed isAlreadyProcessed
�� 
strq
�� .sysoexecTEXT���     TEXT
� 
appr
�~ 
subt�} 
�| .sysonotfnull��� ��� TEXT
�{ .sysodelanull��� ��� nmbr�z 0 errormessage errorMessage � �w�v�u
�w 
errn�v 0 errornumber errorNumber�u  
�y 
mesS
�x .sysodisAaleR        TEXT�� �� ��E�O�E�O�E�O d ^�[��l kh ��,E�O)�k+  hY 9��,%�%��,%�%��,%�%��,%j E�O��%a a a �a  Okj [OY��W X  �a �l U � �t �   ��t 0 	processed   �   � � � �s�s 0 itemlist itemList � �r ��r  �   � � �q ��p�o � ��n�q (0 isalreadyprocessed isAlreadyProcessed�p �m ��m  �  �l�l 0 	inputitem 	inputItem�o   � �k�j�i�k 0 	inputitem 	inputItem�j 0 isfound isFound�i 0 processeditem processedItem � �h�g�f�e�d�c�h 0 itemlist itemList
�g 
kocl
�f 
cobj
�e .corecnte****       ****
�d 
TEXT
�c 
rslt�n JfE�O +b  �,[��l kh ��&��&  eE�Y h[OY��O�f  �b  �,6FY hO�E� ascr  ��ޭ