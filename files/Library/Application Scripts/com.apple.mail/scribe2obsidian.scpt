FasdUAS 1.101.10   ��   ��    l      ����  w          i         I     �� 	��
�� .emalcpmanull���     **** 	 o      ���� 0 themessages theMessages��    O     � 
  
 k    �       r        m       �   � $ { H O M E } / L i b r a r y / M o b i l e   D o c u m e n t s / i C l o u d ~ m d ~ o b s i d i a n / D o c u m e n t s / P e r s o n a l / 0 1   @ I n b o x  o      ���� 0 obsidianpath obsidianPath      l   ��  ��    ' ! set theMessages to the selection     �   B   s e t   t h e M e s s a g e s   t o   t h e   s e l e c t i o n   ��  X    � ��   k    �       r        n       !   1    ��
�� 
raso ! o    ���� 0 amessage aMessage  o      ���� 0 	msgsource 	msgSource   " # " l   �� $ %��   $ X R Create single line with complete contents of mail source, remove escape sequences    % � & & �   C r e a t e   s i n g l e   l i n e   w i t h   c o m p l e t e   c o n t e n t s   o f   m a i l   s o u r c e ,   r e m o v e   e s c a p e   s e q u e n c e s #  ' ( ' r    + ) * ) I   )�� +��
�� .sysoexecTEXT���     TEXT + b    % , - , b    # . / . m     0 0 � 1 1 
 e c h o   / n    " 2 3 2 1     "��
�� 
strq 3 o     ���� 0 	msgsource 	msgSource - m   # $ 4 4 � 5 5 \   |   s e d   ' s / = $ / / '   |   t r   - d   ' \ n '   |   s e d   ' s / = 3 D / = / g '��   * o      ���� 0 	msgsource 	msgSource (  6 7 6 l  , ,�� 8 9��   8   Extract url for txt file    9 � : : 2   E x t r a c t   u r l   f o r   t x t   f i l e 7  ; < ; r   , 9 = > = I  , 7�� ?��
�� .sysoexecTEXT���     TEXT ? b   , 3 @ A @ b   , 1 B C B m   , - D D � E E 
 e c h o   C n   - 0 F G F 1   . 0��
�� 
strq G o   - .���� 0 	msgsource 	msgSource A m   1 2 H H � I I z   |   g r e p   - E o   ' h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m l ? [ ^ " ] * \ . t x t [ ^ " ] * '��   > o      ���� 0 txturl txtUrl <  J K J l  : :�� L M��   L   Extract url for pdf file    M � N N 2   E x t r a c t   u r l   f o r   p d f   f i l e K  O P O r   : G Q R Q I  : E�� S��
�� .sysoexecTEXT���     TEXT S b   : A T U T b   : ? V W V m   : ; X X � Y Y 
 e c h o   W n   ; > Z [ Z 1   < >��
�� 
strq [ o   ; <���� 0 	msgsource 	msgSource U m   ? @ \ \ � ] ] z   |   g r e p   - E o   ' h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m l ? [ ^ " ] * \ . p d f [ ^ " ] * '��   R o      ���� 0 pdfurl pdfUrl P  ^ _ ^ l  H H�� ` a��   ` H B Decode url-encoded characters, grep title from url, trim newlines    a � b b �   D e c o d e   u r l - e n c o d e d   c h a r a c t e r s ,   g r e p   t i t l e   f r o m   u r l ,   t r i m   n e w l i n e s _  c d c r   H U e f e I  H S�� g��
�� .sysoexecTEXT���     TEXT g b   H O h i h b   H M j k j m   H I l l � m m 
 e c h o   k n   I L n o n 1   J L��
�� 
strq o o   I J���� 0 pdfurl pdfUrl i m   M N p p � q q�   |   p y t h o n 3   - c   ' i m p o r t   s y s ,   u r l l i b . p a r s e   a s   u l ;   p r i n t ( u l . u n q u o t e _ p l u s ( s y s . s t d i n . r e a d ( ) ) ) '   |   s e d   ' s / \ . p d f \ ? . * $ / / g '   |   s e d   ' s | ^ . * h t t p s : / / k i n d l e - c o n t e n t - r e q u e s t s . p r o d . s 3 . a m a z o n a w s . c o m / [ - 0 - 9 a - z ] * / | | g '   |   t r   - d   ' \ n '��   f o      ���� 	0 title   d  r s r I  V o�� t��
�� .sysoexecTEXT���     TEXT t b   V k u v u b   V g w x w b   V e y z y b   V a { | { b   V _ } ~ } b   V [  �  m   V Y � � � � �  c u r l   - s L f   ' � o   Y Z���� 0 txturl txtUrl ~ m   [ ^ � � � � �  '   - o   " | o   _ `���� 0 obsidianpath obsidianPath z m   a d � � � � �  / x o   e f���� 	0 title   v m   g j � � � � �  . m d "��   s  ��� � I  p ��� ���
�� .sysoexecTEXT���     TEXT � b   p � � � � b   p � � � � b   p  � � � b   p { � � � b   p y � � � b   p u � � � m   p s � � � � �  c u r l   - s L f   ' � o   s t���� 0 pdfurl pdfUrl � m   u x � � � � �  '   - o   " � o   y z���� 0 obsidianpath obsidianPath � m   { ~ � � � � �  / � o    ����� 	0 title   � m   � � � � � � � 
 . p d f "��  ��  �� 0 amessage aMessage  o    ���� 0 themessages theMessages��    m      � ��                                                                                  emal  alis    (  Macintosh HD               �=%�BD ����Mail.app                                                       �����=%�        ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    M a c i n t o s h   H D  System/Applications/Mail.app  / ��   �                                                                                  emal  alis    (  Macintosh HD               �=%�BD ����Mail.app                                                       �����=%�        ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    M a c i n t o s h   H D  System/Applications/Mail.app  / ��  ��  ��       �� � ���   � ��
�� .emalcpmanull���     **** � �� ���� � ���
�� .emalcpmanull���     ****�� 0 themessages theMessages��   � ���������������� 0 themessages theMessages�� 0 obsidianpath obsidianPath�� 0 amessage aMessage�� 0 	msgsource 	msgSource�� 0 txturl txtUrl�� 0 pdfurl pdfUrl�� 	0 title   �  � �������� 0�� 4�� D H X \ l p � � � � � � � �
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
raso
�� 
strq
�� .sysoexecTEXT���     TEXT�� �� ��E�O ��[��l kh ��,E�O��,%�%j 	E�O��,%�%j 	E�O��,%�%j 	E�O��,%�%j 	E�Oa �%a %�%a %�%a %j 	Oa �%a %�%a %�%a %j 	[OY��Uascr  ��ޭ