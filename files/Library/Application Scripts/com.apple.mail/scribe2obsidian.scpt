FasdUAS 1.101.10   ��   ��    k             l     ��  ��    Z T see: https://forum.keyboardmaestro.com/t/writing-applescript-for-mail-rules/29501/6     � 	 	 �   s e e :   h t t p s : / / f o r u m . k e y b o a r d m a e s t r o . c o m / t / w r i t i n g - a p p l e s c r i p t - f o r - m a i l - r u l e s / 2 9 5 0 1 / 6   
  
 w          i         I     �� ��
�� .emalcpmanull���     ****  o      ���� 0 themessages theMessages��    O     �    k    �       r        m       �   � $ { H O M E } / L i b r a r y / M o b i l e   D o c u m e n t s / i C l o u d ~ m d ~ o b s i d i a n / D o c u m e n t s / P e r s o n a l / 0 1   @ I n b o x  o      ���� 0 	vaultpath 	vaultPath      r        m    	   �    P r i v a t e   v a u l t  o      ���� 0 	vaultname 	vaultName     !   l   �� " #��   " Z T set theMessages to the selection -- Only used to trigger manually for test purposes    # � $ $ �   s e t   t h e M e s s a g e s   t o   t h e   s e l e c t i o n   - -   O n l y   u s e d   t o   t r i g g e r   m a n u a l l y   f o r   t e s t   p u r p o s e s !  %�� % Q    � & ' ( & X    � )�� * ) k    � + +  , - , r    $ . / . n    " 0 1 0 1     "��
�� 
raso 1 o     ���� 0 amessage aMessage / o      ���� 0 	msgsource 	msgSource -  2 3 2 l  % %�� 4 5��   4 v p For some unknown reason a message an be part of the message list multiple times. Skip processing of duplicates.    5 � 6 6 �   F o r   s o m e   u n k n o w n   r e a s o n   a   m e s s a g e   a n   b e   p a r t   o f   t h e   m e s s a g e   l i s t   m u l t i p l e   t i m e s .   S k i p   p r o c e s s i n g   o f   d u p l i c a t e s . 3  7�� 7 Z   % � 8 9�� : 8 n  % + ; < ; I   & +�� =���� (0 isalreadyprocessed isAlreadyProcessed =  >�� > o   & '���� 0 	msgsource 	msgSource��  ��   <  f   % & 9 l  . .�� ? @��   ? 3 - display dialog "Message already proccessed."    @ � A A Z   d i s p l a y   d i a l o g   " M e s s a g e   a l r e a d y   p r o c c e s s e d . "��   : k   2 � B B  C D C l  2 2�� E F��   E X R Create single line with complete contents of mail source, remove escape sequences    F � G G �   C r e a t e   s i n g l e   l i n e   w i t h   c o m p l e t e   c o n t e n t s   o f   m a i l   s o u r c e ,   r e m o v e   e s c a p e   s e q u e n c e s D  H I H r   2 ? J K J I  2 =�� L��
�� .sysoexecTEXT���     TEXT L b   2 9 M N M b   2 7 O P O m   2 3 Q Q � R R 
 e c h o   P n   3 6 S T S 1   4 6��
�� 
strq T o   3 4���� 0 	msgsource 	msgSource N m   7 8 U U � V V \   |   s e d   ' s / = $ / / '   |   t r   - d   ' \ n '   |   s e d   ' s / = 3 D / = / g '��   K o      ���� 0 	msgsource 	msgSource I  W X W l  @ @�� Y Z��   Y   Extract url for txt file    Z � [ [ 2   E x t r a c t   u r l   f o r   t x t   f i l e X  \ ] \ r   @ M ^ _ ^ I  @ K�� `��
�� .sysoexecTEXT���     TEXT ` b   @ G a b a b   @ E c d c m   @ A e e � f f 
 e c h o   d n   A D g h g 1   B D��
�� 
strq h o   A B���� 0 	msgsource 	msgSource b m   E F i i � j j z   |   g r e p   - E o   ' h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m l ? [ ^ " ] * \ . t x t [ ^ " ] * '��   _ o      ���� 0 txturl txtUrl ]  k l k l  N N�� m n��   m   Extract url for pdf file    n � o o 2   E x t r a c t   u r l   f o r   p d f   f i l e l  p q p r   N [ r s r I  N Y�� t��
�� .sysoexecTEXT���     TEXT t b   N U u v u b   N S w x w m   N O y y � z z 
 e c h o   x n   O R { | { 1   P R��
�� 
strq | o   O P���� 0 	msgsource 	msgSource v m   S T } } � ~ ~ z   |   g r e p   - E o   ' h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m l ? [ ^ " ] * \ . p d f [ ^ " ] * '��   s o      ���� 0 pdfurl pdfUrl q   �  l  \ \�� � ���   � H B Decode url-encoded characters, grep title from url, trim newlines    � � � � �   D e c o d e   u r l - e n c o d e d   c h a r a c t e r s ,   g r e p   t i t l e   f r o m   u r l ,   t r i m   n e w l i n e s �  � � � r   \ m � � � I  \ k�� ���
�� .sysoexecTEXT���     TEXT � b   \ g � � � b   \ c � � � m   \ _ � � � � � 
 e c h o   � n   _ b � � � 1   ` b��
�� 
strq � o   _ `���� 0 pdfurl pdfUrl � m   c f � � � � ��   |   p y t h o n 3   - c   ' i m p o r t   s y s ,   u r l l i b . p a r s e   a s   u l ;   p r i n t ( u l . u n q u o t e _ p l u s ( s y s . s t d i n . r e a d ( ) ) ) '   |   s e d   ' s / \ . p d f \ ? . * $ / / g '   |   s e d   ' s | ^ . * h t t p s : / / k i n d l e - c o n t e n t - r e q u e s t s . p r o d . s 3 . a m a z o n a w s . c o m / [ - 0 - 9 a - z ] * / | | g '   |   t r   - d   ' \ n '��   � o      ���� 	0 title   �  � � � l  n n�� � ���   �   Download txt file    � � � � $   D o w n l o a d   t x t   f i l e �  � � � I  n ��� ���
�� .sysoexecTEXT���     TEXT � b   n � � � � b   n  � � � b   n } � � � b   n y � � � b   n w � � � b   n s � � � m   n q � � � � �  c u r l   - s L f   ' � o   q r���� 0 txturl txtUrl � m   s v � � � � �  '   - o   " � o   w x���� 0 	vaultpath 	vaultPath � m   y | � � � � �  / � o   } ~���� 	0 title   � m    � � � � � �  . m d "��   �  � � � l  � ��� � ���   �   Download pdf file    � � � � $   D o w n l o a d   p d f   f i l e �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  c u r l   - s L f   ' � o   � ����� 0 pdfurl pdfUrl � m   � � � � � � �  '   - o   " � o   � ����� 0 	vaultpath 	vaultPath � m   � � � � � � �  / � o   � ����� 	0 title   � m   � � � � � � � 
 . p d f "��   �  � � � l  � ��� � ���   � H B see: https://macosxautomation.com/mavericks/notifications/01.html    � � � � �   s e e :   h t t p s : / / m a c o s x a u t o m a t i o n . c o m / m a v e r i c k s / n o t i f i c a t i o n s / 0 1 . h t m l �  � � � I  � ��� � �
�� .sysonotfnull��� ��� TEXT � b   � � � � � o   � ����� 	0 title   � m   � � � � � � �    i m p o r t e d . � �� � �
�� 
appr � m   � � � � � � � 6 P D F   f r o m   S c r i b e   t o   O b s i d i a n � �� ���
�� 
subt � o   � ����� 0 	vaultname 	vaultName��   �  ��� � l  � � � � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� ��   � 2 ,> allow time for the notification to trigger    � � � � X >   a l l o w   t i m e   f o r   t h e   n o t i f i c a t i o n   t o   t r i g g e r��  ��  �� 0 amessage aMessage * o    ���� 0 themessages theMessages ' R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 errormessage errorMessage � �� ���
�� 
errn � o      ���� 0 errornumber errorNumber��   ( I  � ��� � �
�� .sysodisAaleR        TEXT � o   � ����� 0 errornumber errorNumber � �� ���
�� 
mesS � o   � ����� 0 errormessage errorMessage��  ��    m      � ��                                                                                  emal  alis    (  Macintosh HD               �=%�BD ����Mail.app                                                       �����=%�        ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    M a c i n t o s h   H D  System/Applications/Mail.app  / ��   �                                                                                  emal  alis    (  Macintosh HD               �=%�BD ����Mail.app                                                       �����=%�        ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    M a c i n t o s h   H D  System/Applications/Mail.app  / ��     � � � l     ��������  ��  ��   �  � � � l     �� � ���   � \ V Loosely based on: https://www.macscripter.net/t/remove-duplicates-from-a-list/30098/2    � � � � �   L o o s e l y   b a s e d   o n :   h t t p s : / / w w w . m a c s c r i p t e r . n e t / t / r e m o v e - d u p l i c a t e s - f r o m - a - l i s t / 3 0 0 9 8 / 2 �  � � � h    �� ��� 0 	processed   � j     �� ��� 0 itemlist itemList � J     ����   �  � � � i     � � � I      �� ����� (0 isalreadyprocessed isAlreadyProcessed �  ��� � o      ���� 0 	inputitem 	inputItem��  ��   � k     I � �  � � � r      � � � m     ��
�� boovfals � o      ���� 0 isfound isFound �    X    0�� Z    +���� =   ! l   ���� c    	
	 o    ���� 0 	inputitem 	inputItem
 m    ��
�� 
TEXT��  ��   l    ���� c      o    ���� 0 processeditem processedItem m    ��
�� 
TEXT��  ��   r   $ ' m   $ %��
�� boovtrue o      ���� 0 isfound isFound��  ��  �� 0 processeditem processedItem n    o    ���� 0 itemlist itemList o    ���� 0 	processed    Z   1 E���� =   1 4 o   1 2���� 0 isfound isFound m   2 3��
�� boovfals r   7 A o   7 8���� 0 	inputitem 	inputItem n        ;   ? @ n  8 ? o   = ?���� 0 itemlist itemList o   8 =���� 0 	processed  ��  ��   �� r   F I  o   F G���� 0 isfound isFound  1      ��
�� 
rslt��   � !��! l     ��������  ��  ��  ��       ��"#$%��  " ������
�� .emalcpmanull���     ****�� 0 	processed  �� (0 isalreadyprocessed isAlreadyProcessed# �� ����&'�
�� .emalcpmanull���     ****�� 0 themessages theMessages��  & 
�~�}�|�{�z�y�x�w�v�u�~ 0 themessages theMessages�} 0 	vaultpath 	vaultPath�| 0 	vaultname 	vaultName�{ 0 amessage aMessage�z 0 	msgsource 	msgSource�y 0 txturl txtUrl�x 0 pdfurl pdfUrl�w 	0 title  �v 0 errormessage errorMessage�u 0 errornumber errorNumber' % �  �t�s�r�q�p Q�o U�n e i y } � � � � � � � � � � ��m ��l�k�j�i�h(�g�f
�t 
kocl
�s 
cobj
�r .corecnte****       ****
�q 
raso�p (0 isalreadyprocessed isAlreadyProcessed
�o 
strq
�n .sysoexecTEXT���     TEXT
�m 
appr
�l 
subt�k 
�j .sysonotfnull��� ��� TEXT
�i .sysodelanull��� ��� nmbr�h 0 errormessage errorMessage( �e�d�c
�e 
errn�d 0 errornumber errorNumber�c  
�g 
mesS
�f .sysodisAaleR        TEXT� �� ��E�O�E�O � ��[��l kh ��,E�O)�k+  hY ���,%�%j E�O��,%�%j E�O��,%�%j E�Oa ��,%a %j E�Oa �%a %�%a %�%a %j Oa �%a %�%a %�%a %j O�a %a a a �a  Okj  [OY�\W X ! "�a #�l $U$ �b �  )�b 0 	processed  )  *+* �a�a 0 itemlist itemList+ �`�_�`  �_  % �^ ��]�\,-�[�^ (0 isalreadyprocessed isAlreadyProcessed�] �Z.�Z .  �Y�Y 0 	inputitem 	inputItem�\  , �X�W�V�X 0 	inputitem 	inputItem�W 0 isfound isFound�V 0 processeditem processedItem- �U�T�S�R�Q�P�U 0 itemlist itemList
�T 
kocl
�S 
cobj
�R .corecnte****       ****
�Q 
TEXT
�P 
rslt�[ JfE�O +b  �,[��l kh ��&��&  eE�Y h[OY��O�f  �b  �,6FY hO�E�ascr  ��ޭ