FasdUAS 1.101.10   ��   ��    k             l     ��  ��    Z T see: https://forum.keyboardmaestro.com/t/writing-applescript-for-mail-rules/29501/6     � 	 	 �   s e e :   h t t p s : / / f o r u m . k e y b o a r d m a e s t r o . c o m / t / w r i t i n g - a p p l e s c r i p t - f o r - m a i l - r u l e s / 2 9 5 0 1 / 6   
  
 w          i         I     �� ��
�� .emalcpmanull���     ****  o      ���� 0 themessages theMessages��    O     �    k    �       r        m       �   z / U s e r s / m i c h a e l / p r o j e c t s / d o t f i l e s / f i l e s / b i n / s c r i b e 2 o b s i d i a n . s h  o      ����  0 scriptfilename scriptFilename      r        m    	   �   � / U s e r s / m i c h a e l / L i b r a r y / M o b i l e   D o c u m e n t s / i C l o u d ~ m d ~ o b s i d i a n / D o c u m e n t s / P e r s o n a l / 0 1   @ I n b o x  o      ���� 0 	vaultpath 	vaultPath     !   r     " # " m     $ $ � % %  P e r s o n a l   v a u l t # o      ���� 0 	vaultname 	vaultName !  & ' & l   ��������  ��  ��   '  ( ) ( l   �� * +��   * @ : set theMessages to the selection -- Only used for testing    + � , , t   s e t   t h e M e s s a g e s   t o   t h e   s e l e c t i o n   - -   O n l y   u s e d   f o r   t e s t i n g )  -�� - Q    � . / 0 . X    ~ 1�� 2 1 k   # y 3 3  4 5 4 r   # ( 6 7 6 n   # & 8 9 8 1   $ &��
�� 
raso 9 o   # $���� 0 amessage aMessage 7 o      ���� 0 	msgsource 	msgSource 5  : ; : l  ) )�� < =��   < v p For some unknown reason a message an be part of the message list multiple times. Skip processing of duplicates.    = � > > �   F o r   s o m e   u n k n o w n   r e a s o n   a   m e s s a g e   a n   b e   p a r t   o f   t h e   m e s s a g e   l i s t   m u l t i p l e   t i m e s .   S k i p   p r o c e s s i n g   o f   d u p l i c a t e s . ;  ?�� ? Z   ) y @ A�� B @ n  ) / C D C I   * /�� E���� (0 isalreadyprocessed isAlreadyProcessed E  F�� F o   * +���� 0 	msgsource 	msgSource��  ��   D  f   ) * A l  2 2�� G H��   G 3 - display dialog "Message already proccessed."    H � I I Z   d i s p l a y   d i a l o g   " M e s s a g e   a l r e a d y   p r o c c e s s e d . "��   B k   6 y J J  K L K l  6 6�� M N��   M - ' display dialog "Processing message..."    N � O O N   d i s p l a y   d i a l o g   " P r o c e s s i n g   m e s s a g e . . . " L  P Q P r   6 S R S R I  6 Q�� T��
�� .sysoexecTEXT���     TEXT T b   6 M U V U b   6 I W X W b   6 G Y Z Y b   6 C [ \ [ b   6 A ] ^ ] b   6 = _ ` _ b   6 ; a b a m   6 7 c c � d d 
 e c h o   b n   7 : e f e 1   8 :��
�� 
strq f o   7 8���� 0 	msgsource 	msgSource ` m   ; < g g � h h    |   ^ n   = @ i j i 1   > @��
�� 
strq j o   = >����  0 scriptfilename scriptFilename \ m   A B k k � l l    Z n   C F m n m 1   D F��
�� 
strq n o   C D���� 0 	vaultpath 	vaultPath X m   G H o o � p p    V n   I L q r q 1   J L��
�� 
strq r o   I J���� 0 	vaultname 	vaultName��   S o      ���� 0 	notetitle 	noteTitle Q  s t s l  T T��������  ��  ��   t  u v u l  T T�� w x��   w E ? Title is only returned by the script if it created a new file.    x � y y ~   T i t l e   i s   o n l y   r e t u r n e d   b y   t h e   s c r i p t   i f   i t   c r e a t e d   a   n e w   f i l e . v  z { z l  T T�� | }��   | @ : If the PDF was already imported, the result is empty. 			    } � ~ ~ t   I f   t h e   P D F   w a s   a l r e a d y   i m p o r t e d ,   t h e   r e s u l t   i s   e m p t y .   	 	 	 {  ��  Z   T y � ����� � >  T W � � � o   T U���� 0 	notetitle 	noteTitle � m   U V � � � � �   � k   Z u � �  � � � l  Z Z�� � ���   � H B see: https://macosxautomation.com/mavericks/notifications/01.html    � � � � �   s e e :   h t t p s : / / m a c o s x a u t o m a t i o n . c o m / m a v e r i c k s / n o t i f i c a t i o n s / 0 1 . h t m l �  � � � I  Z o�� � �
�� .sysonotfnull��� ��� TEXT � b   Z _ � � � o   Z [���� 0 	notetitle 	noteTitle � m   [ ^ � � � � �    i m p o r t e d . � �� � �
�� 
appr � m   b e � � � � � 6 P D F   f r o m   S c r i b e   t o   O b s i d i a n � �� ���
�� 
subt � o   h i���� 0 	vaultname 	vaultName��   �  ��� � l  p u � � � � I  p u�� ���
�� .sysodelanull��� ��� nmbr � m   p q���� ��   � 2 ,> allow time for the notification to trigger    � � � � X >   a l l o w   t i m e   f o r   t h e   n o t i f i c a t i o n   t o   t r i g g e r��  ��  ��  ��  ��  �� 0 amessage aMessage 2 o    ���� 0 themessages theMessages / R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 errormessage errorMessage � �� ���
�� 
errn � o      ���� 0 errornumber errorNumber��   0 I  � ��� � �
�� .sysodisAaleR        TEXT � o   � ����� 0 errornumber errorNumber � �� ���
�� 
mesS � o   � ����� 0 errormessage errorMessage��  ��    m      � ��                                                                                  emal  alis    (  Macintosh HD               �\��BD ����Mail.app                                                       �����\��        ����  
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
�� .emalcpmanull���     ****�� 0 themessages theMessages��   � 	�������������������� 0 themessages theMessages��  0 scriptfilename scriptFilename�� 0 	vaultpath 	vaultPath�� 0 	vaultname 	vaultName�� 0 amessage aMessage�� 0 	msgsource 	msgSource�� 0 	notetitle 	noteTitle�� 0 errormessage errorMessage�� 0 errornumber errorNumber �  �   $����~�}�| c�{ g k o�z � ��y ��x�w�v�u�t ��s�r
�� 
kocl
� 
cobj
�~ .corecnte****       ****
�} 
raso�| (0 isalreadyprocessed isAlreadyProcessed
�{ 
strq
�z .sysoexecTEXT���     TEXT
�y 
appr
�x 
subt�w 
�v .sysonotfnull��� ��� TEXT
�u .sysodelanull��� ��� nmbr�t 0 errormessage errorMessage � �q�p�o
�q 
errn�p 0 errornumber errorNumber�o  
�s 
mesS
�r .sysodisAaleR        TEXT�� �� ��E�O�E�O�E�O p j�[��l kh ��,E�O)�k+  hY E��,%�%��,%�%��,%�%��,%j E�O��  �a %a a a �a  Okj Y h[OY��W X  �a �l U � �n �   ��n 0 	processed   �   � � � �m�m 0 itemlist itemList � �l ��l  �   � � � � � ��k�j�i�h�g�f�e�d�c�b�a � � � �|4 |4 R e t u r n - p a t h :   < 2 0 2 4 1 2 0 2 0 7 2 7 0 3 7 7 d 4 2 7 7 e 3 9 f b 4 a f e a 6 8 a 3 2 0 1 6 a f 0 p 0 e u - C 4 1 3 S V X 6 Q E Y 5 5 @ b o u n c e s . a m a z o n . c o m > 
 R e c e i v e d :   f r o m   e x i m   b y   d e l i v e r y 0 6 . r u n b o x   w i t h   s a - s c a n n e d     ( E x i m   4 . 9 5 ) 
 	 i d   1 t I 0 q 9 - 0 0 A G V T - F O 
 	 f o r   m i c h a e l . s c h e r e r @ r u n b o x . c o m ; 
 	 M o n ,   0 2   D e c   2 0 2 4   0 8 : 2 7 : 2 9   + 0 1 0 0 
 X - S p a m - C h e c k e r - V e r s i o n :   S p a m A s s a s s i n   4 . 0 . 0   ( 2 0 2 2 - 1 2 - 1 3 )   o n   a n t i s p a m c 0 6 . r u n b o x 
 X - S p a m - L e v e l :   
 X - S p a m - S t a t u s :   N o ,   s c o r e = 0 . 0   r e q u i r e d = 5 . 0   t e s t s = D K I M _ S I G N E D , D K I M _ V A L I D , 
 	 D K I M _ V A L I D _ A U , H T M L _ M E S S A G E , M I M E _ H T M L _ M O S T L Y , R C V D _ I N _ M S P I K E _ H 5 , 
 	 R C V D _ I N _ M S P I K E _ W L , S P F _ P A S S   a u t o l e a r n = n o   a u t o l e a r n _ f o r c e = n o 
 	 v e r s i o n = 4 . 0 . 0 
 X - S p a m - R e p o r t :   
 	 *     0 . 0   R C V D _ I N _ M S P I K E _ H 5   R B L :   E x c e l l e n t   r e p u t a t i o n   ( + 5 ) 
 	 *             [ 5 4 . 2 4 0 . 1 . 1 2 4   l i s t e d   i n   w l . m a i l s p i k e . n e t ] 
 	 *   - 0 . 0   S P F _ P A S S   S P F :   s e n d e r   m a t c h e s   S P F   r e c o r d 
 	 *   - 0 . 1   D K I M _ V A L I D   M e s s a g e   h a s   a t   l e a s t   o n e   v a l i d   D K I M   o r   D K   s i g n a t u r e 
 	 *     0 . 1   D K I M _ S I G N E D   M e s s a g e   h a s   a   D K I M   o r   D K   s i g n a t u r e ,   n o t   n e c e s s a r i l y 
 	 *             v a l i d 
 	 *   - 0 . 1   D K I M _ V A L I D _ A U   M e s s a g e   h a s   a   v a l i d   D K I M   o r   D K   s i g n a t u r e   f r o m   a u t h o r ' s 
 	 *               d o m a i n 
 	 *     0 . 0   R C V D _ I N _ M S P I K E _ W L   M a i l s p i k e   g o o d   s e n d e r s 
 	 *     0 . 0   H T M L _ M E S S A G E   B O D Y :   H T M L   i n c l u d e d   i n   m e s s a g e 
 	 *     0 . 1   M I M E _ H T M L _ M O S T L Y   B O D Y :   M u l t i p a r t   m e s s a g e   m o s t l y   t e x t / h t m l   M I M E 
 R e c e i v e d :   f r o m   [ 1 0 . 9 . 9 . 1 6 8 ]   ( h e l o = m a i l f r o n t 2 4 . r u n b o x ) 
 	 b y   d e l i v e r y 0 6 . r u n b o x   w i t h   e s m t p     ( E x i m   4 . 9 5 ) 
 	 i d   1 t I 0 q 9 - 0 0 A G V I - E I 
 	 f o r   m i c h a e l . s c h e r e r @ r u n b o x . c o m ; 
 	 M o n ,   0 2   D e c   2 0 2 4   0 8 : 2 7 : 2 9   + 0 1 0 0 
 R e c e i v e d :   f r o m   e x i m   b y   m a i l f r o n t 2 4 . r u n b o x   w i t h   s a - s c a n n e d     ( E x i m   4 . 9 3 ) 
 	 i d   1 t I 0 q 8 - 0 0 G 1 C 2 - T o 
 	 f o r   m i c h a e l . s c h e r e r @ r u n b o x . c o m ;   M o n ,   0 2   D e c   2 0 2 4   0 8 : 2 7 : 2 9   + 0 1 0 0 
 R e c e i v e d - S P F :   p a s s   c l i e n t - i p = 5 4 . 2 4 0 . 1 . 1 2 4 ;   e n v e l o p e - f r o m = 2 0 2 4 1 2 0 2 0 7 2 7 0 3 7 7 d 4 2 7 7 e 3 9 f b 4 a f e a 6 8 a 3 2 0 1 6 a f 0 p 0 e u - C 4 1 3 S V X 6 Q E Y 5 5 @ b o u n c e s . a m a z o n . c o m ;   h e l o = a 1 - 1 2 4 . s m t p - o u t . e u - w e s t - 1 . a m a z o n s e s . c o m 
 R e c e i v e d :   f r o m   a 1 - 1 2 4 . s m t p - o u t . e u - w e s t - 1 . a m a z o n s e s . c o m   ( [ 5 4 . 2 4 0 . 1 . 1 2 4 ] ) 
 	 b y   m a i l f r o n t 2 4 . r u n b o x   w i t h   e s m t p s     ( T L S 1 . 3 : E C D H E _ X 2 5 5 1 9 _ _ R S A _ P S S _ R S A E _ S H A 2 5 6 _ _ A E S _ 1 2 8 _ G C M : 1 2 8 ) 
 	 ( E x i m   4 . 9 3 ) 
 	 i d   1 t I 0 p l - 0 0 G 1 4 Z - I N 
 	 f o r   s p a m @ s c h e r e r o n l i n e . n e t ;   M o n ,   0 2   D e c   2 0 2 4   0 8 : 2 7 : 0 6   + 0 1 0 0 
 D K I M - S i g n a t u r e :   v = 1 ;   a = r s a - s h a 2 5 6 ;   q = d n s / t x t ;   c = r e l a x e d / s i m p l e ; 
 	 s = e z c n b l p 2 x c a g j h u m w v h r j z s a 2 s g w a w g 7 ;   d = a m a z o n . c o m ;   t = 1 7 3 3 1 2 4 4 2 4 ; 
 	 h = D a t e : F r o m : T o : M e s s a g e - I D : S u b j e c t : M I M E - V e r s i o n : C o n t e n t - T y p e ; 
 	 b h = s D W S P 7 w 9 m d B N 5 f l 2 A Z 5 o Z 5 F m a 6 z I X K Z B I f p w 5 m Q / 3 8 Q = ; 
 	 b = p M m J q e T W K t x f Y 8 Y 3 l Y l 4 q o X V p e b o + O n 5 T H Z p 8 V d i j W g 9 M 1 S 0 c c C X R / B z 3 I s o 3 H W W 
 	 U I d Q h W O g / v d W h F u 6 F W 6 4 L b 8 f c 6 L o C S I i C S F E c L G U A r E Y j Y i B + l b x H b g y o W 1 O A U o N M M d 
 	 e n e s k S 9 f C T w j K 8 K c 4 V k J O 0 + 1 R / d X U e / B 8 4 5 0 C m Y E = 
 D K I M - S i g n a t u r e :   v = 1 ;   a = r s a - s h a 2 5 6 ;   q = d n s / t x t ;   c = r e l a x e d / s i m p l e ; 
 	 s = u k u 4 t a i a 5 b 5 t s b g l x y j 6 z y m 3 2 e f j 7 x q v ;   d = a m a z o n s e s . c o m ;   t = 1 7 3 3 1 2 4 4 2 4 ; 
 	 h = D a t e : F r o m : T o : M e s s a g e - I D : S u b j e c t : M I M E - V e r s i o n : C o n t e n t - T y p e : F e e d b a c k - I D ; 
 	 b h = s D W S P 7 w 9 m d B N 5 f l 2 A Z 5 o Z 5 F m a 6 z I X K Z B I f p w 5 m Q / 3 8 Q = ; 
 	 b = Q i Y S q H 8 9 x o 5 r 1 U 7 d 0 s U V V i U K g n M z 4 W O / 4 z f S J B E O 2 s 0 l v m Z J 4 m k j m t d I g h i 6 s i Q B 
 	 q V p s x M p 3 M u U b G w H h Y l N 3 g o Z S Y k 9 O 1 T 2 9 W 0 8 B m A T L 4 G U E R k M q m Q f W h F D E G 5 v + f u n c 5 U 1 
 	 t b M o b 8 q 1 1 / K c K q D K i f D d 3 g u U D N o y K 0 G t 5 m Q c l P j Y = 
 D a t e :   M o n ,   2   D e c   2 0 2 4   0 7 : 2 7 : 0 4   + 0 0 0 0 
 F r o m :   A m a z o n   K i n d l e   S u p p o r t   < d o - n o t - r e p l y @ a m a z o n . c o m > 
 T o :   s p a m @ s c h e r e r o n l i n e . n e t 
 M e s s a g e - I D :   < 0 1 0 2 0 1 9 3 8 6 4 4 0 4 0 0 - e d 9 6 d 5 0 5 - 1 2 5 2 - 4 b f e - a b a c - b 2 7 8 4 a 4 3 f 5 7 4 - 0 0 0 0 0 0 @ e u - w e s t - 1 . a m a z o n s e s . c o m > 
 S u b j e c t :   = ? U T F - 8 ? B ? R H U g a G F z d C B l a W 5 l I O K A n k l u Y m 9 4 4 o C c L U R h d G V p ? = 
   = ? U T F - 8 ? B ? I H Z v b i B k Z W l u Z W 0 g S 2 l u Z G x l I G d l c 2 V u Z G V 0 ? = 
 M I M E - V e r s i o n :   1 . 0 
 C o n t e n t - T y p e :   m u l t i p a r t / a l t e r n a t i v e ;   
 	 b o u n d a r y = " - - - - = _ P a r t _ 3 4 8 4 0 3 7 _ 1 2 0 0 8 9 5 0 7 4 . 1 7 3 3 1 2 4 4 2 4 6 9 7 " 
 X - A M A Z O N - M A I L - R E L A Y - T Y P E :   n o t i f i c a t i o n 
 B o u n c e s - t o :   2 0 2 4 1 2 0 2 0 7 2 7 0 3 7 7 d 4 2 7 7 e 3 9 f b 4 a f e a 6 8 a 3 2 0 1 6 a f 0 p 0 e u - C 4 1 3 S V X 6 Q E Y 5 5 @ b o u n c e s . a m a z o n . c o m 
 X - A M A Z O N - M E T A D A T A :   C A = C 4 1 3 S V X 6 Q E Y 5 5 
 X - O r i g i n a l - M e s s a g e I D :   < u r n . r t n . m s g . 2 0 2 4 1 2 0 2 0 7 2 7 0 3 7 7 d 4 2 7 7 e 3 9 f b 4 a f e a 6 8 a 3 2 0 1 6 a f 0 p 0 e u @ 1 7 3 3 1 2 4 4 2 4 6 9 8 . > 
 F e e d b a c k - I D :   1 1 2 0 5 1 3 0 5 1 : : 1 . e u - w e s t - 1 . U I A U r M f b p G r x a v q n R E 0 y o Z r A U B I 9 C 7 G R N U x / k U D o 6 B 4 = : A m a z o n S E S 
 X - S E S - O u t g o i n g :   2 0 2 4 . 1 2 . 0 2 - 5 4 . 2 4 0 . 1 . 1 2 4 
 
 - - - - - - = _ P a r t _ 3 4 8 4 0 3 7 _ 1 2 0 0 8 9 5 0 7 4 . 1 7 3 3 1 2 4 4 2 4 6 9 7 
 C o n t e n t - T y p e :   t e x t / p l a i n ;   c h a r s e t = u t f - 8 
 C o n t e n t - T r a n s f e r - E n c o d i n g :   q u o t e d - p r i n t a b l e 
 
 
   = 2 0 
 
 D u   h a s t   e i n e   = E 2 = 8 0 = 9 E I n b o x = E 2 = 8 0 = 9 C - D a t e i   v o n   d e i n e m   K i n d l e   g e s e n d e t .   D u   k = 
 a n n s t   d i e s e   D a t e i   = C 3 = B C b e r   d i e   f o l g e n d e n   D o w n l o a d l i n k s   h e r u n t e r l a d e n : 
 = 2 0 
 = 2 0 
 
 
 
 D u r c h s u c h b a r e s   P D F   h e r u n t e r l a d e n 
 = 2 0 
 = 2 0 
 
 
 
 T e x t d a t e i   h e r u n t e r l a d e n 
 = 2 0 
 = 2 0 
 
 
 
 B i t t e   b e a c h t e ,   d a s s   d e r   D o w n l o a d - L i n k ( s )   i n   7 = C 2 = A 0 T a g e n   a b l = C 3 = A 4 u f t . 
 = 2 0 
 = 2 0 
 
 
 
 
 H a s t   d u   F r a g e n   o d e r   B e d e n k e n   z u m   E r h a l t   d i e s e r   E - M a i l ?   H o l   d i r   H i l f e   v o m   A m = 
 a z o n - K u n d e n d i e n s t . 
 = 2 0 
 = 2 0 
 
 
 
 - - - - - - = _ P a r t _ 3 4 8 4 0 3 7 _ 1 2 0 0 8 9 5 0 7 4 . 1 7 3 3 1 2 4 4 2 4 6 9 7 
 C o n t e n t - T y p e :   t e x t / h t m l ;   c h a r s e t = u t f - 8 
 C o n t e n t - T r a n s f e r - E n c o d i n g :   q u o t e d - p r i n t a b l e 
 
 < ! d o c t y p e   h t m l > < h t m l   l a n g = 3 D " d e "   d i r = 3 D " a u t o "   x m l n s = 3 D " h t t p : / / w w w . w 3 . o r g / 1 9 = 
 9 9 / x h t m l "   x m l n s : v = 3 D " u r n : s c h e m a s - m i c r o s o f t - c o m : v m l "   x m l n s : o = 3 D " u r n : s c h e m a s - = 
 m i c r o s o f t - c o m : o f f i c e : o f f i c e " > < h e a d > < t i t l e > < / t i t l e > < ! - - [ i f   ! m s o ] > < ! - - > < m e t a   = 
 h t t p - e q u i v = 3 D " X - U A - C o m p a t i b l e "   c o n t e n t = 3 D " I E = 3 D e d g e " > < ! - - < ! [ e n d i f ] - - > < m e t a   = 
 h t t p - e q u i v = 3 D " C o n t e n t - T y p e "   c o n t e n t = 3 D " t e x t / h t m l ;   c h a r s e t = 3 D U T F - 8 " > < m e t a   n a = 
 m e = 3 D " v i e w p o r t "   c o n t e n t = 3 D " w i d t h = 3 D d e v i c e - w i d t h , i n i t i a l - s c a l e = 3 D 1 " > < s t y l e   t = 
 y p e = 3 D " t e x t / c s s " > # o u t l o o k   a { p a d d i n g : 0 } b o d y { m a r g i n : 0 ; p a d d i n g : 0 ; - w e b k i t - t e x t - = 
 s i z e - a d j u s t : 1 0 0 % ; - m s - t e x t - s i z e - a d j u s t : 1 0 0 % } t a b l e , t d { b o r d e r - c o l l a p s e : c o l l a p s = 
 e ; m s o - t a b l e - l s p a c e : 0 p t ; m s o - t a b l e - r s p a c e : 0 p t } i m g { b o r d e r : 0 ; h e i g h t : a u t o ; l i n e - h = 
 e i g h t : 1 0 0 % ; o u t l i n e : 0 ; t e x t - d e c o r a t i o n : n o n e ; - m s - i n t e r p o l a t i o n - m o d e : b i c u b i c } p { = 
 d i s p l a y : b l o c k ; m a r g i n : 1 3 p x   0 } < / s t y l e > < ! - - [ i f   m s o ] > 
         < n o s c r i p t > 
         < x m l > 
         < o : O f f i c e D o c u m e n t S e t t i n g s > 
             < o : A l l o w P N G / > 
             < o : P i x e l s P e r I n c h > 9 6 < / o : P i x e l s P e r I n c h > 
         < / o : O f f i c e D o c u m e n t S e t t i n g s > 
         < / x m l > 
         < / n o s c r i p t > 
         < ! [ e n d i f ] - - > < ! - - [ i f   l t e   m s o   1 1 ] > 
         < s t y l e   t y p e = 3 D " t e x t / c s s " > . m j - o u t l o o k - g r o u p - f i x { w i d t h : 1 0 0 % ! i m p o r t a n t } < / s = 
 t y l e > 
         < ! [ e n d i f ] - - > < s t y l e   t y p e = 3 D " t e x t / c s s " > @ m e d i a   o n l y   s c r e e n   a n d   ( m i n - w i d t h : = 
 6 0 0 p x ) { . m j - c o l u m n - p e r - 1 0 0 { w i d t h : 1 0 0 % ! i m p o r t a n t ; m a x - w i d t h : 1 0 0 % } } < / s t y l e > < s t y = 
 l e   m e d i a = 3 D " s c r e e n   a n d   ( m i n - w i d t h : 6 0 0 p x ) " > . m o z - t e x t - h t m l   . m j - c o l u m n - p e r - 1 0 0 = 
   {   w i d t h : 1 0 0 %   ! i m p o r t a n t ;   m a x - w i d t h :   1 0 0 % ;   } < / s t y l e > < s t y l e   t y p e = 3 D " t e x t / c s s = 
 " > @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 2 8 , . r i o - h e a d e r - 2 8   * { c o l o r : = 
 # f f f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 0 { c o l o r : # f f f } = 
 } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 2 9 , . r i o - h e a d e r - 2 9   * { c o l o r : # = 
 f f f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 1 { c o l o r : # f f f } } = 
 @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 0 , . r i o - h e a d e r - 3 0   * { c o l o r : # f = 
 f f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 2 { c o l o r : # f f f } } @ = 
 m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 1 , . r i o - h e a d e r - 3 1   * { c o l o r : # f f = 
 f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 3 { c o l o r : # f f f } } @ m = 
 e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 2 , . r i o - h e a d e r - 3 2   * { c o l o r : # f f f = 
 ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 4 { c o l o r : # f f f } } @ m e = 
 d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 3 , . r i o - h e a d e r - 3 3   * { c o l o r : # f f f ! = 
 i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 5 { c o l o r : # f f f } } @ m e d = 
 i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 4 , . r i o - h e a d e r - 3 4   * { c o l o r : # f f f ! i = 
 m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 6 { c o l o r : # f f f } } @ m e d i = 
 a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 5 , . r i o - h e a d e r - 3 5   * { c o l o r : # f f f ! i m = 
 p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 7 { c o l o r : # f f f } } . a m a z o = 
 n - n a v b a r - c o n t e n t { f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z = 
 e : 1 4 p x ! i m p o r t a n t ; f o n t - w e i g h t : 7 0 0 ! i m p o r t a n t ; c o l o r : " # 0 F 1 1 1 1 " ! i m p o r t a n t } . a m a z o = 
 n - l o g o . f u l l { p a d d i n g - l e f t : 0 ! i m p o r t a n t ; p a d d i n g - r i g h t : 0 ! i m p o r t a n t } . a m a z o n - l o g o = 
 . z e r o B o r d e r { b o r d e r : 0 ; b o r d e r - c o l l a p s e : c o l l a p s e ; b o r d e r - s p a c i n g : 0 } . a m a z o n - l o g o = 
   . f u l l { p a d d i n g - l e f t : 0 ! i m p o r t a n t ; p a d d i n g - r i g h t : 0 ! i m p o r t a n t } . a m a z o n - l o g o   . z e r = 
 o B o r d e r { b o r d e r : 0 ; b o r d e r - c o l l a p s e : c o l l a p s e ; b o r d e r - s p a c i n g : 0 } . a m a z o n - l o g o   . l i = 
 g h t - i m g { b a c k g r o u n d - c o l o r : # f f f ; b a c k g r o u n d - i m a g e : l i n e a r - g r a d i e n t ( # f f f , # f f f ) } @ = 
 m e d i a   ( p r e f e r s - c o l o r - s c h e m e : l i g h t ) { . a m a z o n - l o g o   . l i g h t - i m g { d i s p l a y : b l o c k ! i m = 
 p o r t a n t } . a m a z o n - l o g o   . d a r k - i m g { d i s p l a y : n o n e ! i m p o r t a n t } . a m a z o n - n a v b a r - c o n t e n = 
 t { f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; b a c k g r o u n d - c o l o r : # f f f F F = 
 ! i m p o r t a n t ; c o l o r : # 0 0 0 ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . a m a z o n = 
 - l o g o { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r t a n t } . a m a z o n - n a v b a r - c o n t e n t { b a c k g r o u n d - = 
 c o l o r : # 1 6 1 d 2 6 ! i m p o r t a n t ; c o l o r : # f f f ! i m p o r t a n t } . a m a z o n - l o g o   . l i g h t - i m g { d i s p l a = 
 y : n o n e ! i m p o r t a n t } . a m a z o n - l o g o   . d a r k - i m g { d i s p l a y : b l o c k ! i m p o r t a n t } } [ d a t a - o g s c = 
 ]   . a m a z o n - l o g o   . c o n t e n t { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r t a n t } [ d a t a - o g s c ]   . a m a = 
 z o n - l o g o   . l i g h t - i m g { d i s p l a y : n o n e ! i m p o r t a n t } [ d a t a - o g s c ]   . a m a z o n - l o g o   . d a r k - i = 
 m g { d i s p l a y : b l o c k ! i m p o r t a n t } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - c a r d , . r i = 
 o - c a r d - t e x t , . r i o - c a r d - t e x t > t a b l e , . r i o - c a r d > t a b l e { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i = 
 m p o r t a n t } } [ d a t a - o g s c ]   . r i o - c a r d , [ d a t a - o g s c ]   . r i o - c a r d - t e x t , [ d a t a - o g s c ]   . r i o = 
 - c a r d - t e x t > t a b l e , [ d a t a - o g s c ]   . r i o - c a r d > t a b l e { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r = 
 t a n t } . r i o - c a r d - t e x t   p + p { m a r g i n - t o p : 1 . 2 e m } . r i o - h e a d e r   s t r o n g { c o l o r : # 0 6 7 d 6 2 } @ = 
 m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r   a { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } . r i = 
 o - h e a d e r   s t r o n g { c o l o r : # 1 3 b d 9 6 ! i m p o r t a n t } } [ d a t a - o g s c ]   . r i o - h e a d e r , [ d a t a - o g s c = 
 ]   . r i o - h e a d e r   * { c o l o r : # f f f ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - h e a d e r   a { c o l o r : # 6 e d 6 e = 
 6 ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - h e a d e r   s t r o n g { c o l o r : # 1 3 b d 9 6 ! i m p o r t a n t } . r i o - t e x = 
 t   s t r o n g { c o l o r : # 0 6 7 d 6 2 } . r i o - t e x t   i m g { w i d t h : 1 0 0 % ; h e i g h t : a u t o } @ m e d i a   ( p r e f e r s = 
 - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t   * { c o l o r : # f f f ! i m p o r t a n t } . r i o - t e x t   a , . r i o - t e x t   = 
 a > * { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } . r i o - t e x t   s t r o n g { c o l o r : # 1 3 b d 9 6 ! i m p o r t a n t } } [ d a t a = 
 - o g s c ]   . r i o - t e x t   * { c o l o r : # f f f ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - t e x t   a , [ d a t a - o g s c ] = 
   . r i o - t e x t   a > * { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - t e x t   s t r o n g { c o l o r : # = 
 1 3 b d 9 6 ! i m p o r t a n t } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - b u t t o n - s e c o n d a r y   * = 
 { c o l o r : # 0 f 1 1 1 1 ! i m p o r t a n t ; b a c k g r o u n d : # f e f e f e ! i m p o r t a n t ; b a c k g r o u n d - c o l o r : l i n e = 
 a r - g r a d i e n t ( # f e f e f e , # f e f e f e ) ! i m p o r t a n t } } [ d a t a - o g s c ]   . r i o - b u t t o n - s e c o n d a r y   * = 
 { c o l o r : # 0 f 1 1 1 1 ! i m p o r t a n t ; b a c k g r o u n d : # f e f e f e ! i m p o r t a n t ; b a c k g r o u n d - c o l o r : l i n e = 
 a r - g r a d i e n t ( # f e f e f e , # f e f e f e ) ! i m p o r t a n t } . f o o t e r C a r d   l i , . f o o t e r C a r d   p { c o l o r : i = 
 n h e r i t } . f o o t e r C a r d   p + p { m a r g i n - t o p : 1 . 2 e m } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { = 
 . f o o t e r C a r d   d i v { b a c k g r o u n d - c o l o r : # 3 0 3 3 3 3 ! i m p o r t a n t } . f o o t e r L i n k   d i v { c o l o r : # 6 = 
 e d 6 e 6 ! i m p o r t a n t } . f o o t e r T e x t   d i v { c o l o r : # c 8 c c c c ! i m p o r t a n t } . l i g h t F o o t e r I m g { d i s = 
 p l a y : n o n e ! i m p o r t a n t } . d a r k F o o t e r I m g { d i s p l a y : b l o c k ! i m p o r t a n t } } [ d a t a - o g s b ]   . f o = 
 o t e r C a r d   d i v { b a c k g r o u n d - c o l o r : # 3 0 3 3 3 3 ! i m p o r t a n t } [ d a t a - o g s c ]   . f o o t e r L i n k   d i v = 
 { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } [ d a t a - o g s c ]   . f o o t e r T e x t   d i v { c o l o r : # c 8 c c c c ! i m p o r t a n = 
 t } [ d a t a - o g s c ]   . l i g h t F o o t e r I m g { d i s p l a y : n o n e ! i m p o r t a n t } [ d a t a - o g s c ]   . d a r k F o o t e = 
 r I m g { d i s p l a y : b l o c k ! i m p o r t a n t } < / s t y l e > < s t y l e   t y p e = 3 D " t e x t / c s s " > @ f o n t - f a c e { f o = 
 n t - f a m i l y : E m b e r ; f o n t - w e i g h t : 7 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z = 
 o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f = 
 f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i = 
 l y : E m b e r ; f o n t - w e i g h t : 6 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / = 
 i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o = 
 - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : E m b e = 
 r ; f o n t - w e i g h t : 5 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / = 
 G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ M d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i = 
 c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : E m b e r ; f o n t - = 
 w e i g h t : 4 0 0 ; f o n t - s t y l e : n o r m a l ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . = 
 c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ R g . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) = 
 ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : = 
 E m b e r ; f o n t - w e i g h t : 2 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a = 
 g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ L t . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e = 
 n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : " A m a z o n = 
   E m b e r " ; f o n t - w e i g h t : 7 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o = 
 n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f = 
 " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l = 
 y : " A m a z o n   E m b e r " ; f o n t - w e i g h t : 6 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e = 
 d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r = 
 m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f = 
 o n t - f a m i l y : " A m a z o n   E m b e r " ; f o n t - w e i g h t : 5 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t = 
 p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ M d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . = 
 W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o = 
 n t - f a c e { f o n t - f a m i l y : " A m a z o n   E m b e r " ; f o n t - s t y l e : n o r m a l ; f o n t - w e i g h t : 4 0 0 ; s r c : l o = 
 c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a = 
 z o n E m b e r _ R g . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i = 
 s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : " A m a z o n   E m b e r " ; f o n t - w e i g h t : 2 = 
 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t = 
 b o u n d / A m a z o n E m b e r _ L t . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f = 
 a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } * { f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s = 
 a n s - s e r i f ; b o r d e r - s p a c i n g : 0 ; m a r g i n : 0 ; p a d d i n g : 0 } [ d a t a - o g s c ]   : r o o t { - - b o d y - b g : # = 
 1 8 1 A 1 A ; - - b o d y - c o l o r : # f f f f f f } . r o o t C o n t e n t { b a c k g r o u n d : # f f f ! i m p o r t a n t } . f o n t s , . = 
 s a n s , h 1 , h 2 , h 3 , h 4 , h 5 , l i , p , t a b l e , t d , t h { c o l o r : # 0 f 1 1 1 1 } a { c o l o r : # 0 0 7 1 8 5 ; t e x t - d e c = 
 o r a t i o n : n o n e } @ m e d i a   s c r e e n   a n d   ( m a x - w i d t h : 5 9 9 p x ) { . m o b i l e - o n l y { d i s p l a y : i n i t i = 
 a l ! i m p o r t a n t } . d e s k t o p - o n l y { d i s p l a y : n o n e ! i m p o r t a n t ; m s o - h i d e : a l l ! i m p o r t a n t } } @ = 
 m e d i a   s c r e e n   a n d   ( m i n - w i d t h : 6 0 0 p x ) { . m o b i l e - o n l y { d i s p l a y : n o n e ! i m p o r t a n t ; m s o - = 
 h i d e : a l l ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : l i g h t ) { : r o o t { - - b o d y - b g : # f f = 
 f f f f ; - - b o d y - c o l o r : # 0 0 0 0 0 0 } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { : r o o t { - - b o d y - = 
 b g : # 1 8 1 A 1 A ; - - b o d y - c o l o r : # f f f f f f } b o d y { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r t a n t } . f o = 
 n t s , . s a n s , h 1 , h 2 , h 3 , h 4 , h 5 , l i , p , t a b l e , t d , t h { c o l o r : # f f f } a { c o l o r : # 6 e d 6 e 6 } . r o o t C = 
 o n t e n t , . r o o t C o n t e n t > t a b l e { b a c k g r o u n d : # 1 8 1 a 1 a ! i m p o r t a n t } } [ d a t a - o g s c ]   . f o n t s , = 
 [ d a t a - o g s c ]   . s a n s , [ d a t a - o g s c ]   h 1 , [ d a t a - o g s c ]   h 2 , [ d a t a - o g s c ]   h 3 , [ d a t a - o g s c ]   = 
 h 4 , [ d a t a - o g s c ]   h 5 , [ d a t a - o g s c ]   l i , [ d a t a - o g s c ]   p { c o l o r : # f f f } [ d a t a - o g s c ]   a { c o l = 
 o r : # 6 e d 6 e 6 } [ d a t a - o g s c ]   . r o o t C o n t e n t , [ d a t a - o g s c ]   . r o o t C o n t e n t > t a b l e { b a c k g r o u = 
 n d : # 1 8 1 a 1 a ! i m p o r t a n t } b o d y { b a c k g r o u n d - c o l o r : v a r ( - - b o d y - b g ) ! i m p o r t a n t ; c o l o r : v = 
 a r ( - - b o d y - c o l o r ) ! i m p o r t a n t ; m a r g i n : 0 ! i m p o r t a n t ; p a d d i n g : 0 } b o d y > i m g { p o s i t i o n : a = 
 b s o l u t e } t a b l e { b o r d e r - s p a c i n g : 0 } h 3 , h 4 , h 5 , p , t a b l e   t h { f o n t - w e i g h t : 4 0 0 ; m a r g i n : 0 = 
 ; p a d d i n g : 0 } t d { p a d d i n g : 0 } i m g { b o r d e r : 0 } a , s p a n , t d { w o r d - b r e a k : b r e a k - w o r d ! i m p o r t = 
 a n t } o l , u l { m a r g i n - l e f t : 3 2 p x ! i m p o r t a n t } . b u t t o n { b a c k g r o u n d - c o l o r : # f f d 8 1 4 ; c o l o r = 
 : # 0 f 1 1 1 1 ! i m p o r t a n t ; b o r d e r - r a d i u s : 2 4 p x ; p a d d i n g : 1 p x   1 6 p x ; d i s p l a y : i n l i n e - b l o c k = 
 ; b o x - s h a d o w : 1 p x   2 p x   4 p x   r g b a ( 1 5 3 , 1 5 3 , 1 5 3 , . 2 ) ; f o n t - s i z e : 1 3 p x ; l i n e - h e i g h t : 2 9 p = 
 x ; w h i t e - s p a c e : n o w r a p ; t e x t - d e c o r a t i o n : n o n e ; m a r g i n - t o p : 4 p x } . b o x - s h a d o w   a { b o x - = 
 s h a d o w : 1 p x   2 p x   4 p x   r g b a ( 1 5 3 , 1 5 3 , 1 5 3 , . 2 ) } a , b o d y , t a b l e , t d { - m s - t e x t - s i z e - a d j u s = 
 t : 1 0 0 % ; - w e b k i t - t e x t - s i z e - a d j u s t : 1 0 0 % } . a p p l e B o d y   a , . a p p l e F o o t e r   a { c o l o r : # 0 0 7 = 
 1 8 5 ! i m p o r t a n t ; t e x t - d e c o r a t i o n : n o n e } a [ x - a p p l e - d a t a - d e t e c t o r s ] { c o l o r : # 0 0 7 1 8 5 ! = 
 i m p o r t a n t ; f o n t - f a m i l y : i n h e r i t ! i m p o r t a n t ; f o n t - s i z e : i n h e r i t ! i m p o r t a n t ; f o n t - w e = 
 i g h t : i n h e r i t ! i m p o r t a n t ; l i n e - h e i g h t : i n h e r i t ! i m p o r t a n t } u + # b o d y   a { c o l o r : # 0 0 7 1 8 = 
 5 ! i m p o r t a n t ; f o n t - f a m i l y : i n h e r i t ! i m p o r t a n t ; f o n t - s i z e : i n h e r i t ! i m p o r t a n t ; f o n t - = 
 w e i g h t : i n h e r i t ! i m p o r t a n t ; l i n e - h e i g h t : i n h e r i t ! i m p o r t a n t } # M e s s a g e V i e w B o d y   a { c = 
 o l o r : # 0 0 7 1 8 5 ! i m p o r t a n t ; f o n t - f a m i l y : i n h e r i t ! i m p o r t a n t ; f o n t - s i z e : i n h e r i t ! i m p o = 
 r t a n t ; f o n t - w e i g h t : i n h e r i t ! i m p o r t a n t ; l i n e - h e i g h t : i n h e r i t ! i m p o r t a n t } < / s t y l e > < = 
 m e t a   c o n t e n t = 3 D " t e x t / h t m l ;   c h a r s e t = 3 D U T F - 8 "   h t t p - e q u i v = 3 D " C o n t e n t - T y p e " > < m e = 
 t a   c o n t e n t = 3 D " t e l e p h o n e = 3 D n o "   n a m e = 3 D " f o r m a t - d e t e c t i o n " > < m e t a   c o n t e n t = 3 D " w i = 
 d t h = 3 D d e v i c e - w i d t h , i n i t i a l - s c a l e = 3 D 1 ; u s e r - s c a l a b l e = 3 D n o ; "   n a m e = 3 D " v i e w p o r t " = 
 > < m e t a   c o n t e n t = 3 D " I E = 3 D 9 ;   I E = 3 D 8 ;   I E = 3 D 7 ;   I E = 3 D E D G E "   h t t p - e q u i v = 3 D " X - U A - C o m = 
 p a t i b l e " > < m e t a   n a m e = 3 D " x - a p p l e - d i s a b l e - m e s s a g e - r e f o r m a t t i n g " > < m e t a   c o n t e n t = 
 = 3 D " l i g h t   d a r k "   n a m e = 3 D " c o l o r - s c h e m e " > < m e t a   c o n t e n t = 3 D " l i g h t   d a r k "   n a m e = 3 D " = 
 s u p p o r t e d - c o l o r - s c h e m e s " > < ! - - 
                           = 2 0 
                           = 2 0 
                           = 2 0 
                             - - > < s t y l e   t y p e = 3 D " t e x t / c s s " > . p r o d u c t L i s t P r i c e { c o l o r : # 5 6 5 9 5 9 } . = 
 p r o d u c t D i s c o u n t { c o l o r : # c c 0 c 3 9 } . p r o d u c t P r i c e { c o l o r : # 0 f 1 1 1 1 } @ m e d i a   ( p r e f e r s - c = 
 o l o r - s c h e m e : d a r k ) { . p r o d u c t L i s t P r i c e { c o l o r : # f f f ! i m p o r t a n t } . p r o d u c t D i s c o u n t { c = 
 o l o r : # f f 8 c 8 c ! i m p o r t a n t } . p r o d u c t P r i c e { c o l o r : # f f f ! i m p o r t a n t } } [ d a t a - o g s c ]   . p r o = 
 d u c t L i s t P r i c e { c o l o r : # f f f ! i m p o r t a n t } [ d a t a - o g s c ]   . p r o d u c t D i s c o u n t { c o l o r : # f f 8 c = 
 8 c ! i m p o r t a n t } [ d a t a - o g s c ]   . p r o d u c t P r i c e { c o l o r : # f f f ! i m p o r t a n t } < / s t y l e > < s t y l e   = 
 t y p e = 3 D " t e x t / c s s " > . d e a l B a d g e { b a c k g r o u n d - c o l o r : # c c 0 c 3 9 ; c o l o r : # f f f } . d e a l T e x t { = 
 c o l o r : # c c 0 c 3 9 } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . d e a l B a d g e { b a c k g r o u n d - c o l o = 
 r : # f f 8 c 8 c ! i m p o r t a n t ; c o l o r : # 0 0 0 ! i m p o r t a n t } . d e a l T e x t { c o l o r : # f f 8 c 8 c ! i m p o r t a n t } = 
 } [ d a t a - o g s c ]   . d e a l B a d g e { b a c k g r o u n d - c o l o r : # f f 8 c 8 c ! i m p o r t a n t ; c o l o r : # 0 0 0 ! i m p o r = 
 t a n t } [ d a t a - o g s c ]   . d e a l T e x t { c o l o r : # f f 8 c 8 c ! i m p o r t a n t } < / s t y l e > < ! - - [ i f   g t e   m s o   = 
 9 ] > 
         < x m l > 
                 < o : O f f i c e D o c u m e n t S e t t i n g s > 
                         < o : A l l o w P N G   / > 
                         < o : P i x e l s P e r I n c h > 9 6 < / o : P i x e l s P e r I n c h > 
                 < / o : O f f i c e D o c u m e n t S e t t i n g s > 
         < / x m l > 
         < s t y l e > 
                 b o d y ,   h 1 ,   h 2 ,   h 3 ,   h 4 ,   t a b l e ,   t h ,   t d ,   p ,   l i ,   a ,   . s a n s ,   . f o n t s   { 
                         f o n t - f a m i l y :   H e l v e t i c a ,   A r i a l ,   s a n s - s e r i f   ! i m p o r t a n t ; 
                 } 
                 [ d a t a - o g s c ]   . r o o t C o n t e n t ,   [ d a t a - o g s c ]   . r o o t C o n t e n t   >   t a b l e { 
                     b a c k g r o u n d :   # 1 8 1 A 1 A   ! i m p o r t a n t ; 
                 } 
         < / s t y l e > 
         < ! [ e n d i f ] - - > < / h e a d > < b o d y   c l a s s = 3 D " b o d y "   s t y l e = 3 D " w o r d - s p a c i n g : n o r m a l ; " > = 
 < i m g   w i d t h = 3 D " 1 "   h e i g h t = 3 D " 1 "   s r c = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / r . h t m l ? C = 3 D 1 V = 
 D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 2 7 0 3 7 7 d 4 2 7 7 e 3 9 f b 4 a f e a 6 8 a 3 2 0 1 6 a f 0 p 0 e u & = 
 R = 3 D 6 G 2 2 O W H T E L I 8 & T = 3 D O & U = 3 D h t t p s % 3 A % 2 F % 2 F i m a g e s - e u . s s l - i m a g e s - a m a z o n . c o m % 2 F = 
 i m a g e s % 2 F G % 2 F 0 1 % 2 F n a v % 2 F t r a n s p . g i f & H = 3 D H W E T E A L 0 R X E X X F 0 H U T U Z R J D 9 K R Y A & r e f _ = 3 D = 
 p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 _ o p e n s "   / > < d i v   c l a s s = 3 D " b o d y "   l a n g = 3 D " d e "   d i r = 3 D " a u t = 
 o " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 " = 
   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l = 
 e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e = 
 - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c = 
 l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m = 
 a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p = 
 a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f = 
 f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i = 
 o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   = 
 |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i = 
 n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " s o n = 
 a r - t r a n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 3 D = 
 " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e x t   = 
 p { m a r g i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i = 
 o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 
 = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - = 
 - > < d i v   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r = 
 : # f f f f f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e   a l i g n = 
 = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n = 
 t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; b o r = 
 d e r - r a d i u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n = 
 g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s = 
 e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D = 
 " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l = 
 l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " = 
 w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x = 
 ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m = 
 a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l = 
 l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s = 
 t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o = 
   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c = 
 i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i = 
 f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i = 
 z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o = 
 n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o = 
 p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o = 
 u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e = 
 - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 = 
 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y = 
 l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   = 
 c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   a l i g n = 
 = 3 D " l e f t "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d ; " > < d i v   s t y = 
 l e = 3 D " f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z e : 1 5 p x ; f o n t = 
 - w e i g h t : 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p a n   c l a s s = 3 D = 
 " r i o - t e x t   r i o - t e x t - 3 0 " > D u   h a s t   e i n e   = E 2 = 8 0 = 9 E I n b o x = E 2 = 8 0 = 9 C - D a t e i   v o n   d e i n e = 
 m   K i n d l e   g e s e n d e t .   D u   k a n n s t   d i e s e   D a t e i   = C 3 = B C b e r   d i e   f o l g e n d e n   D o w n l o a d l i = 
 n k s   h e r u n t e r l a d e n : < / s p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > = 
 < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f = 
   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! = 
 - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D = 
 " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   = 
 c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w = 
 i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h = 
 t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; = 
 " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   = 
 r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i = 
 o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r = 
 o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < = 
 t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 
 = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h = 
 t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f = 
   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " = 
 p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; " = 
   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 
 = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c = 
 a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a = 
 l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b o d y > < / t a b l e > < / t d > < = 
 / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < = 
 / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a = 
 b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - = 
 > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < = 
 / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / = 
 t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   = 
 I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 = 
 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 6 0 0 p x ; = 
 "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - = 
 s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r o o t C o n t e = 
 n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; m a = 
 x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l = 
 s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - = 
 c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : = 
 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 
 = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < ! [ e n d i f = 
 ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " s o n a r - t r a n s a c t i o n a l - = 
 c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 3 D " 6 0 0 p x "   > < ! [ e n d i f = 
 ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e x t   p { m a r g i n - t o p : 1 . 2 e = 
 m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n = 
 g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t = 
 h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 = 
 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r = 
 i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 = 
 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b = 
 a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; b o r d e r - r a d i u s : 4 p x ; " > < = 
 t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 1 2 p x   8 p x   1 6 p x   8 p = 
 x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " = 
 "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c = 
 e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i = 
 d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t = 
 - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " = 
 > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r = 
 o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o = 
 n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o = 
 l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t = 
 d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 
 = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h = 
 t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f = 
   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " = 
 p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; " = 
   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 
 = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c = 
 a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a = 
 l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   a l i g n = 3 D " l e f t "   s = 
 t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d ; " > < d i v   s t y l e = 3 D " f o n t - = 
 f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z e : 1 5 p x ; f o n t - w e i g h t : 4 0 0 = 
 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p a n   c l a s s = 3 D " r i o - t e x t   r = 
 i o - t e x t - 3 2 " > < a   h r e f = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 
 = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 2 7 0 3 7 7 d 4 2 7 7 e 3 9 f b 4 a f e a 6 8 a 3 2 0 1 6 a f 0 p 0 e u & R = 3 D 3 2 D F 4 C H K D = 
 Y Y 1 O & T = 3 D C & U = 3 D h t t p s % 3 A % 2 F % 2 F k i n d l e - c o n t e n t - r e q u e s t s - p r o d . s 3 . a m a z o n a w s . c o m % = 
 2 F 4 0 1 a c 1 8 1 - 0 5 3 6 - 4 0 f 4 - 9 0 9 c - 1 4 e 4 0 0 5 e 9 f 3 1 % 2 F I n b o x - 2 0 2 4 - 1 2 - 0 2 - 0 8 - 2 6 . p d f % 3 F r e s p o = 
 n s e - c a c h e - c o n t r o l % 3 D n o - s t o r e % 2 6 X - A m z - A l g o r i t h m % 3 D A W S 4 - H M A C - S H A 2 5 6 % 2 6 X - A m z - D = 
 a t e % 3 D 2 0 2 4 1 2 0 2 T 0 7 2 6 5 4 Z % 2 6 X - A m z - S i g n e d H e a d e r s % 3 D h o s t % 2 6 X - A m z - C r e d e n t i a l % 3 D A K = 
 I A Q N G C F 4 J 7 G 2 V 4 Y N X N % 2 5 2 F 2 0 2 4 1 2 0 2 % 2 5 2 F u s - e a s t - 1 % 2 5 2 F s 3 % 2 5 2 F a w s 4 _ r e q u e s t % 2 6 X - A = 
 m z - E x p i r e s % 3 D 6 0 4 8 0 0 % 2 6 X - A m z - S i g n a t u r e % 3 D b 7 d 8 d 7 e 8 8 e 2 4 c e 2 8 7 8 1 4 3 9 4 a 7 c 5 d 3 a f a 6 f 3 = 
 4 0 a b 3 5 6 7 8 6 4 c a f 0 4 d e 9 0 7 7 a 0 3 1 d e e & H = 3 D Q C S D Y Z 3 I Z B Y 8 S 9 K X P A C U 0 P J S B A K A "   r e l = 3 D " n o f o = 
 l l o w " > D u r c h s u c h b a r e s   P D F   h e r u n t e r l a d e n < / a > < / s p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / = 
 t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < = 
 ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > = 
 < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d = 
   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n " = 
   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n = 
 t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : = 
 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y = 
 > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < = 
 ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 = 
 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; = 
 "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 
 = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 = 
 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   = 
 c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c = 
 a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - = 
 o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s = 
 p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p = 
 a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > = 
 < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d = 
 d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     = 
 < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r = 
 > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > = 
 < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / = 
 t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / = 
 t d > < / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - = 
 - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n = 
 d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n = 
 "   s t y l e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 
 = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - = 
 - > < d i v   c l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # = 
 f f f f f f ; m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " = 
 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g = 
 r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D = 
 " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - = 
 [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c = 
 e l l s p a c i n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s = 
 s = 3 D " s o n a r - t r a n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   = 
 w i d t h = 3 D " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a = 
 r d - t e x t   p { m a r g i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l = 
 l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r = 
 e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < = 
 t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! = 
 [ e n d i f ] - - > < d i v   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u = 
 n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e = 
   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " = 
 p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 = 
 0 % ; b o r d e r - r a d i u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; = 
 p a d d i n g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 
 = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   = 
 a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n " = 
   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n = 
 t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : = 
 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y = 
 > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < = 
 ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 = 
 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; = 
 "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 
 = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 = 
 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   = 
 c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c = 
 a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - = 
 o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s = 
 p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p = 
 a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > = 
 < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d = 
 d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t = 
 r > < t d   a l i g n = 3 D " l e f t "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d = 
 ; " > < d i v   s t y l e = 3 D " f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z = 
 e : 1 5 p x ; f o n t - w e i g h t : 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p = 
 a n   c l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 3 " > < a   h r e f = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m = 
 l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 2 7 0 3 7 7 d 4 2 7 7 e 3 9 f b 4 a f e a 6 8 a 3 2 0 1 6 = 
 a f 0 p 0 e u & R = 3 D 1 W G 4 L C A X J 8 R 4 Z & T = 3 D C & U = 3 D h t t p s % 3 A % 2 F % 2 F k i n d l e - c o n t e n t - r e q u e s t s - p = 
 r o d . s 3 . a m a z o n a w s . c o m % 2 F 4 0 1 a c 1 8 1 - 0 5 3 6 - 4 0 f 4 - 9 0 9 c - 1 4 e 4 0 0 5 e 9 f 3 1 % 2 F I n b o x - 2 0 2 4 - 1 2 = 
 - 0 2 - 0 8 - 2 6 . t x t % 3 F r e s p o n s e - c a c h e - c o n t r o l % 3 D n o - s t o r e % 2 6 X - A m z - A l g o r i t h m % 3 D A W S 4 - = 
 H M A C - S H A 2 5 6 % 2 6 X - A m z - D a t e % 3 D 2 0 2 4 1 2 0 2 T 0 7 2 6 5 4 Z % 2 6 X - A m z - S i g n e d H e a d e r s % 3 D h o s t % 2 6 = 
 X - A m z - C r e d e n t i a l % 3 D A K I A Q N G C F 4 J 7 G 2 V 4 Y N X N % 2 5 2 F 2 0 2 4 1 2 0 2 % 2 5 2 F u s - e a s t - 1 % 2 5 2 F s 3 % 2 = 
 5 2 F a w s 4 _ r e q u e s t % 2 6 X - A m z - E x p i r e s % 3 D 6 0 4 8 0 0 % 2 6 X - A m z - S i g n a t u r e % 3 D 5 9 9 2 2 1 e 8 1 9 6 a e 4 = 
 b 6 1 0 6 f e 6 1 f 4 4 3 f b 6 f a 4 6 4 f 5 f 8 1 9 9 c 4 6 c d c b 1 4 e a b 8 3 a a e 6 8 4 f 7 & H = 3 D V Q J Q L H D L M B R O 0 J W S W F 9 A = 
 T 0 H A 3 L M A "   r e l = 3 D " n o f o l l o w " > T e x t d a t e i   h e r u n t e r l a d e n < / a > < / s p a n > < / d i v > < / t d > < / t = 
 r > < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / = 
 t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - = 
 - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > = 
 < / t r > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n = 
 t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r = 
 e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i = 
 g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 
 = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   = 
 c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 = 
 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i = 
 g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p = 
 a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w = 
 i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - = 
 f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c = 
 k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d = 
 i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l = 
 e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p = 
 e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i = 
 o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 = 
 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 = 
 0 0 % " > < t b o d y >     < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   | = 
   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l = 
 e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < = 
 / t a b l e > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i = 
 f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a = 
 b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r = 
 > < / t a b l e > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 = 
 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D = 
 " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t = 
 r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " = 
 > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o = 
 u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r " = 
   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y = 
 l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < = 
 t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : = 
 l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d = 
 i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D = 
 " l e f t "   c l a s s = 3 D " s o n a r - t r a n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v = 
 1 - o u t l o o k "   w i d t h = 3 D " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c = 
 s s " > . r i o - c a r d - t e x t   p { m a r g i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e = 
 r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k " = 
   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f = 
 f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e = 
 x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f = 
 f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 = 
 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " = 
 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f = 
 f f ; w i d t h : 1 0 0 % ; b o r d e r - r a d i u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n = 
 t - s i z e : 0 p x ; p a d d i n g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t = 
 a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " = 
 > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r " = 
   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n = 
 t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : = 
 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " = 
 m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l = 
 p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " = 
 > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l = 
 e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i = 
 n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h = 
 : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x " = 
   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i = 
 d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t = 
 ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - = 
 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : = 
 l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 = 
 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > = 
 < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   = 
 c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t = 
 b o d y > < t r > < t d   a l i g n = 3 D " l e f t "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e = 
 a k - w o r d ; " > < d i v   s t y l e = 3 D " f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f = 
 o n t - s i z e : 1 5 p x ; f o n t - w e i g h t : 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 = 
 1 ; " > < s p a n   c l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 4 " > B i t t e   b e a c h t e ,   d a s s   d e r   D o w n l o a d - L = 
 i n k ( s )   i n   7 & n b s p ; T a g e n   a b l = C 3 = A 4 u f t . < / s p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / t a b l e > = 
 < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i = 
 f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d = 
 y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d   a l i g n = 
 = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   = 
 c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 
 = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e = 
 : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u = 
 t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 " = 
   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < = 
 t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f = 
   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l = 
 s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ = 
 e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n = 
 t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e = 
 c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a = 
 c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g = 
 n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k = 
 - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n = 
 l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t = 
 d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b = 
 o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t = 
 a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d = 
 > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < = 
 / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < = 
 / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / = 
 t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] = 
 - - >   < ! - - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 = 
 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y = 
 l e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n = 
 e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   = 
 c l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; = 
 m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l = 
 p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # = 
 f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t = 
 i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o = 
   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c = 
 i n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " s o = 
 n a r - t r a n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 
 = 3 D " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e = 
 x t   p { m a r g i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d = 
 i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r e s e n t = 
 a t i o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t = 
 y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i = 
 f ] - - > < d i v   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o = 
 l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e   a l i g = 
 n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e = 
 n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; b o = 
 r d e r - r a d i u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i = 
 n g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e = 
 s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 
 = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   = 
 c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 
 = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e = 
 : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u = 
 t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 " = 
   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < = 
 t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f = 
   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l = 
 s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ = 
 e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n = 
 t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e = 
 c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a = 
 c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g = 
 n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k = 
 - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n = 
 l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t = 
 d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t = 
 d   a l i g n = 3 D " l e f t "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d ; " > < = 
 d i v   s t y l e = 3 D " f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z e : 1 5 = 
 p x ; f o n t - w e i g h t : 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p a n   c = 
 l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 7 " > H a s t   d u   F r a g e n   o d e r   B e d e n k e n   z u m   E r h a l t   d i e s e = 
 r   E - M a i l ?   H o l   d i r   H i l f e   v o m   < a   h r e f = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m l ? C = 3 D = 
 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 2 7 0 3 7 7 d 4 2 7 7 e 3 9 f b 4 a f e a 6 8 a 3 2 0 1 6 a f 0 p 0 e = 
 u & R = 3 D 1 3 U S 2 3 E I 1 Z J 8 4 & T = 3 D C & U = 3 D h t t p s % 3 A % 2 F % 2 F w w w . a m a z o n . c o m % 2 F d e v i c e s u p p o r t % = 
 3 F r e f _ % 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 & H = 3 D Z X G W F G M 9 2 6 R A 2 4 Z 8 U C 5 X T G S V N L I A & r e f _ = 3 D p e = 
 _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 "   r e l = 3 D " n o f o l l o w " > A m a z o n - K u n d e n d i e n s t < / a > . < / s p a n > < / d i = 
 v > < / t d > < / t r > < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I = 
 E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > = 
 < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t = 
 a b l e > < / t d > < / t r > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l = 
 i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   = 
 r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 
 = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - = 
 - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b = 
 o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 
 = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n = 
 g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " = 
 "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u = 
 t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y = 
 : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D = 
 " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l = 
 e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D = 
 " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : = 
 l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a = 
 b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   = 
 w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l = 
 e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i = 
 d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ = 
 i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t = 
 r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t = 
 d > < / t r > < / t a b l e > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i = 
 v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   = 
 I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < = 
 / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - >   < / d i v > < i m g   w i d t h = 3 D " 1 "   h e i g h t = 3 D " 1 "   s r c = 3 D " h t = 
 t p s : / / w w w . a m a z o n . d e / g p / r . h t m l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 2 = 
 7 0 3 7 7 d 4 2 7 7 e 3 9 f b 4 a f e a 6 8 a 3 2 0 1 6 a f 0 p 0 e u & R = 3 D 3 C Q 5 Z 8 X C R 8 0 D 0 & T = 3 D E & U = 3 D h t t p s % 3 A % 2 F = 
 % 2 F i m a g e s - e u . s s l - i m a g e s - a m a z o n . c o m % 2 F i m a g e s % 2 F G % 2 F 0 1 % 2 F n a v % 2 F t r a n s p . g i f & H = 
 = 3 D K P I A C V X A W A G F G D C X A G A 6 B A A F 9 T E A & r e f _ = 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 _ o p e n "   / > < / b o = 
 d y > < / h t m l > 
 - - - - - - = _ P a r t _ 3 4 8 4 0 3 7 _ 1 2 0 0 8 9 5 0 7 4 . 1 7 3 3 1 2 4 4 2 4 6 9 7 - - 
 � � � �}& }& R e t u r n - p a t h :   < 2 0 2 4 1 2 0 2 0 7 3 3 2 9 2 d f 7 2 6 4 d 5 1 5 2 4 a 1 8 9 e d 4 2 5 c c 3 c 9 0 p 0 e u - C 4 1 3 S V X 6 Q E Y 5 5 @ b o u n c e s . a m a z o n . c o m > 
 R e c e i v e d :   f r o m   [ 1 0 . 9 . 9 . 2 0 5 ]   ( h e l o = m a i l f r o n t 2 3 . r u n b o x ) 
 	 b y   d e l i v e r y 0 7 . r u n b o x   w i t h   e s m t p     ( E x i m   4 . 9 5 ) 
 	 i d   1 t I 0 w 2 - 0 0 G 7 q 6 - U z 
 	 f o r   m i c h a e l . s c h e r e r @ r u n b o x . c o m ; 
 	 M o n ,   0 2   D e c   2 0 2 4   0 8 : 3 3 : 3 4   + 0 1 0 0 
 R e c e i v e d :   f r o m   e x i m   b y   m a i l f r o n t 2 3 . r u n b o x   w i t h   s a - s c a n n e d     ( E x i m   4 . 9 3 ) 
 	 i d   1 t I 0 w 1 - 0 0 1 y 5 A - T v 
 	 f o r   m i c h a e l . s c h e r e r @ r u n b o x . c o m ;   M o n ,   0 2   D e c   2 0 2 4   0 8 : 3 3 : 3 4   + 0 1 0 0 
 X - S p a m - C h e c k e r - V e r s i o n :   S p a m A s s a s s i n   4 . 0 . 0   ( 2 0 2 2 - 1 2 - 1 3 )   o n   a n t i s p a m c 0 5 . r u n b o x 
 X - S p a m - L e v e l :   
 X - S p a m - S t a t u s :   N o ,   s c o r e = - 0 . 1   r e q u i r e d = 5 . 0   t e s t s = D K I M _ S I G N E D , D K I M _ V A L I D , 
 	 D K I M _ V A L I D _ A U , H T M L _ M E S S A G E , R C V D _ I N _ M S P I K E _ H 5 , R C V D _ I N _ M S P I K E _ W L , 
 	 S P F _ P A S S   a u t o l e a r n = n o   a u t o l e a r n _ f o r c e = n o   v e r s i o n = 4 . 0 . 0 
 X - S p a m - R e p o r t :   
 	 *     0 . 0   R C V D _ I N _ M S P I K E _ H 5   R B L :   E x c e l l e n t   r e p u t a t i o n   ( + 5 ) 
 	 *             [ 5 4 . 2 4 0 . 1 . 1 6   l i s t e d   i n   w l . m a i l s p i k e . n e t ] 
 	 *   - 0 . 0   S P F _ P A S S   S P F :   s e n d e r   m a t c h e s   S P F   r e c o r d 
 	 *   - 0 . 1   D K I M _ V A L I D _ A U   M e s s a g e   h a s   a   v a l i d   D K I M   o r   D K   s i g n a t u r e   f r o m   a u t h o r ' s 
 	 *               d o m a i n 
 	 *   - 0 . 1   D K I M _ V A L I D   M e s s a g e   h a s   a t   l e a s t   o n e   v a l i d   D K I M   o r   D K   s i g n a t u r e 
 	 *     0 . 1   D K I M _ S I G N E D   M e s s a g e   h a s   a   D K I M   o r   D K   s i g n a t u r e ,   n o t   n e c e s s a r i l y 
 	 *             v a l i d 
 	 *     0 . 0   R C V D _ I N _ M S P I K E _ W L   M a i l s p i k e   g o o d   s e n d e r s 
 	 *     0 . 0   H T M L _ M E S S A G E   B O D Y :   H T M L   i n c l u d e d   i n   m e s s a g e 
 R e c e i v e d - S P F :   p a s s   c l i e n t - i p = 5 4 . 2 4 0 . 1 . 1 6 ;   e n v e l o p e - f r o m = 2 0 2 4 1 2 0 2 0 7 3 3 2 9 2 d f 7 2 6 4 d 5 1 5 2 4 a 1 8 9 e d 4 2 5 c c 3 c 9 0 p 0 e u - C 4 1 3 S V X 6 Q E Y 5 5 @ b o u n c e s . a m a z o n . c o m ;   h e l o = a 1 - 1 6 . s m t p - o u t . e u - w e s t - 1 . a m a z o n s e s . c o m 
 R e c e i v e d :   f r o m   a 1 - 1 6 . s m t p - o u t . e u - w e s t - 1 . a m a z o n s e s . c o m   ( [ 5 4 . 2 4 0 . 1 . 1 6 ] ) 
 	 b y   m a i l f r o n t 2 3 . r u n b o x   w i t h   e s m t p s     ( T L S 1 . 3 : E C D H E _ X 2 5 5 1 9 _ _ R S A _ P S S _ R S A E _ S H A 2 5 6 _ _ A E S _ 1 2 8 _ G C M : 1 2 8 ) 
 	 ( E x i m   4 . 9 3 ) 
 	 i d   1 t I 0 v z - 0 0 1 y 4 7 - J R 
 	 f o r   s p a m @ s c h e r e r o n l i n e . n e t ;   M o n ,   0 2   D e c   2 0 2 4   0 8 : 3 3 : 3 2   + 0 1 0 0 
 D K I M - S i g n a t u r e :   v = 1 ;   a = r s a - s h a 2 5 6 ;   q = d n s / t x t ;   c = r e l a x e d / s i m p l e ; 
 	 s = e z c n b l p 2 x c a g j h u m w v h r j z s a 2 s g w a w g 7 ;   d = a m a z o n . c o m ;   t = 1 7 3 3 1 2 4 8 1 0 ; 
 	 h = D a t e : F r o m : T o : M e s s a g e - I D : S u b j e c t : M I M E - V e r s i o n : C o n t e n t - T y p e ; 
 	 b h = X Z 7 n p 2 4 H V i K i j V V h d t 6 Y T r f M I R 0 b C I I j M g d g T K X H 6 r s = ; 
 	 b = e z 8 0 z U h s p V I v b x r Q A I z 9 o l B W j F 6 x b H T x p A S y c d V w 6 7 L 1 X 0 Q l l O O b x s W t r y w q b o V 7 
 	 9 V H 1 5 n t h M l K A Z 7 M B c B n 5 D O u D 4 x h + R c 1 E O H 0 O f t c o j d N H b 1 E 9 B + 2 7 R W j K / Y C I 9 w G 4 e W K 
 	 5 v v s f b i U t a t r Z Q a l r g j 2 F K N w p / c R z C y h H x M j g o z w = 
 D K I M - S i g n a t u r e :   v = 1 ;   a = r s a - s h a 2 5 6 ;   q = d n s / t x t ;   c = r e l a x e d / s i m p l e ; 
 	 s = u k u 4 t a i a 5 b 5 t s b g l x y j 6 z y m 3 2 e f j 7 x q v ;   d = a m a z o n s e s . c o m ;   t = 1 7 3 3 1 2 4 8 1 0 ; 
 	 h = D a t e : F r o m : T o : M e s s a g e - I D : S u b j e c t : M I M E - V e r s i o n : C o n t e n t - T y p e : F e e d b a c k - I D ; 
 	 b h = X Z 7 n p 2 4 H V i K i j V V h d t 6 Y T r f M I R 0 b C I I j M g d g T K X H 6 r s = ; 
 	 b = a T S D x n x S H X L a y j C g q Q z 8 6 8 Z c S R 3 t S z 3 / n u t 6 t I 5 M h D Y C H i 3 l / i Z n u C 3 r X L p 1 D H K m 
 	 A k E r S M c z x M q Q 8 F 3 V 5 L T 8 6 Q f q k F X B b q Y 4 C C g k h V t B O r e 9 S V t D e u + 1 + K Y t f P f F K a T b / v + 
 	 G r k t S g e 5 4 z v e t K e B K w u d G D S g p H r R B v X h N H a B 4 D i w = 
 D a t e :   M o n ,   2   D e c   2 0 2 4   0 7 : 3 3 : 3 0   + 0 0 0 0 
 F r o m :   A m a z o n   K i n d l e   S u p p o r t   < d o - n o t - r e p l y @ a m a z o n . c o m > 
 T o :   s p a m @ s c h e r e r o n l i n e . n e t 
 M e s s a g e - I D :   < 0 1 0 2 0 1 9 3 8 6 4 9 e 7 4 b - d 9 e 7 d 2 f c - 0 0 2 7 - 4 b 9 f - 9 f 8 0 - 6 4 5 f 3 9 3 1 1 7 d f - 0 0 0 0 0 0 @ e u - w e s t - 1 . a m a z o n s e s . c o m > 
 S u b j e c t :   = ? U T F - 8 ? B ? R H U g a G F z d C B l a W 5 l I O K A n m 5 l d W V z I E 5 v d G l 6 Y n V j a C D D p M O 2 w 7 w g Q H 7 i g q w = ? = 
   = ? U T F - 8 ? B ? w 5 / i g K Z 9 4 o C c L U R h d G V p I H Z v b i B k Z W l u Z W 0 g S 2 l u Z G x l I G d l c 2 V u Z G V 0 ? = 
 M I M E - V e r s i o n :   1 . 0 
 C o n t e n t - T y p e :   m u l t i p a r t / a l t e r n a t i v e ;   
 	 b o u n d a r y = " - - - - = _ P a r t _ 3 9 1 8 3 8 8 _ 3 3 7 2 0 5 6 5 9 . 1 7 3 3 1 2 4 8 1 0 5 6 4 " 
 X - A M A Z O N - M A I L - R E L A Y - T Y P E :   n o t i f i c a t i o n 
 B o u n c e s - t o :   2 0 2 4 1 2 0 2 0 7 3 3 2 9 2 d f 7 2 6 4 d 5 1 5 2 4 a 1 8 9 e d 4 2 5 c c 3 c 9 0 p 0 e u - C 4 1 3 S V X 6 Q E Y 5 5 @ b o u n c e s . a m a z o n . c o m 
 X - A M A Z O N - M E T A D A T A :   C A = C 4 1 3 S V X 6 Q E Y 5 5 
 X - O r i g i n a l - M e s s a g e I D :   < u r n . r t n . m s g . 2 0 2 4 1 2 0 2 0 7 3 3 2 9 2 d f 7 2 6 4 d 5 1 5 2 4 a 1 8 9 e d 4 2 5 c c 3 c 9 0 p 0 e u @ 1 7 3 3 1 2 4 8 1 0 5 6 5 . > 
 F e e d b a c k - I D :   1 1 2 0 5 1 3 0 5 1 : : 1 . e u - w e s t - 1 . U I A U r M f b p G r x a v q n R E 0 y o Z r A U B I 9 C 7 G R N U x / k U D o 6 B 4 = : A m a z o n S E S 
 X - S E S - O u t g o i n g :   2 0 2 4 . 1 2 . 0 2 - 5 4 . 2 4 0 . 1 . 1 6 
 
 - - - - - - = _ P a r t _ 3 9 1 8 3 8 8 _ 3 3 7 2 0 5 6 5 9 . 1 7 3 3 1 2 4 8 1 0 5 6 4 
 C o n t e n t - T y p e :   t e x t / p l a i n ;   c h a r s e t = u t f - 8 
 C o n t e n t - T r a n s f e r - E n c o d i n g :   q u o t e d - p r i n t a b l e 
 
 
   = 2 0 
 
 D u   h a s t   e i n e   = E 2 = 8 0 = 9 E n e u e s   N o t i z b u c h   = C 3 = A 4 = C 3 = B 6 = C 3 = B C   @ ~ = E 2 = 8 2 = A C = C 3 = 9 F = 
 = E 2 = 8 0 = A 6 } = E 2 = 8 0 = 9 C - D a t e i   v o n   d e i n e m   K i n d l e   g e s e n d e t .   D u   k a n n s t   d i e s e   D a t e i = 
   = C 3 = B C b e r   d i e   f o l g e n d e n   D o w n l o a d l i n k s   h e r u n t e r l a d e n : 
 = 2 0 
 = 2 0 
 
 
 
 D u r c h s u c h b a r e s   P D F   h e r u n t e r l a d e n 
 = 2 0 
 = 2 0 
 
 
 
 T e x t d a t e i   h e r u n t e r l a d e n 
 = 2 0 
 = 2 0 
 
 
 
 B i t t e   b e a c h t e ,   d a s s   d e r   D o w n l o a d - L i n k ( s )   i n   7 = C 2 = A 0 T a g e n   a b l = C 3 = A 4 u f t . 
 = 2 0 
 = 2 0 
 
 
 
 
 H a s t   d u   F r a g e n   o d e r   B e d e n k e n   z u m   E r h a l t   d i e s e r   E - M a i l ?   H o l   d i r   H i l f e   v o m   A m = 
 a z o n - K u n d e n d i e n s t . 
 = 2 0 
 = 2 0 
 
 
 
 - - - - - - = _ P a r t _ 3 9 1 8 3 8 8 _ 3 3 7 2 0 5 6 5 9 . 1 7 3 3 1 2 4 8 1 0 5 6 4 
 C o n t e n t - T y p e :   t e x t / h t m l ;   c h a r s e t = u t f - 8 
 C o n t e n t - T r a n s f e r - E n c o d i n g :   q u o t e d - p r i n t a b l e 
 
 < ! d o c t y p e   h t m l > < h t m l   l a n g = 3 D " d e "   d i r = 3 D " a u t o "   x m l n s = 3 D " h t t p : / / w w w . w 3 . o r g / 1 9 = 
 9 9 / x h t m l "   x m l n s : v = 3 D " u r n : s c h e m a s - m i c r o s o f t - c o m : v m l "   x m l n s : o = 3 D " u r n : s c h e m a s - = 
 m i c r o s o f t - c o m : o f f i c e : o f f i c e " > < h e a d > < t i t l e > < / t i t l e > < ! - - [ i f   ! m s o ] > < ! - - > < m e t a   = 
 h t t p - e q u i v = 3 D " X - U A - C o m p a t i b l e "   c o n t e n t = 3 D " I E = 3 D e d g e " > < ! - - < ! [ e n d i f ] - - > < m e t a   = 
 h t t p - e q u i v = 3 D " C o n t e n t - T y p e "   c o n t e n t = 3 D " t e x t / h t m l ;   c h a r s e t = 3 D U T F - 8 " > < m e t a   n a = 
 m e = 3 D " v i e w p o r t "   c o n t e n t = 3 D " w i d t h = 3 D d e v i c e - w i d t h , i n i t i a l - s c a l e = 3 D 1 " > < s t y l e   t = 
 y p e = 3 D " t e x t / c s s " > # o u t l o o k   a { p a d d i n g : 0 } b o d y { m a r g i n : 0 ; p a d d i n g : 0 ; - w e b k i t - t e x t - = 
 s i z e - a d j u s t : 1 0 0 % ; - m s - t e x t - s i z e - a d j u s t : 1 0 0 % } t a b l e , t d { b o r d e r - c o l l a p s e : c o l l a p s = 
 e ; m s o - t a b l e - l s p a c e : 0 p t ; m s o - t a b l e - r s p a c e : 0 p t } i m g { b o r d e r : 0 ; h e i g h t : a u t o ; l i n e - h = 
 e i g h t : 1 0 0 % ; o u t l i n e : 0 ; t e x t - d e c o r a t i o n : n o n e ; - m s - i n t e r p o l a t i o n - m o d e : b i c u b i c } p { = 
 d i s p l a y : b l o c k ; m a r g i n : 1 3 p x   0 } < / s t y l e > < ! - - [ i f   m s o ] > 
         < n o s c r i p t > 
         < x m l > 
         < o : O f f i c e D o c u m e n t S e t t i n g s > 
             < o : A l l o w P N G / > 
             < o : P i x e l s P e r I n c h > 9 6 < / o : P i x e l s P e r I n c h > 
         < / o : O f f i c e D o c u m e n t S e t t i n g s > 
         < / x m l > 
         < / n o s c r i p t > 
         < ! [ e n d i f ] - - > < ! - - [ i f   l t e   m s o   1 1 ] > 
         < s t y l e   t y p e = 3 D " t e x t / c s s " > . m j - o u t l o o k - g r o u p - f i x { w i d t h : 1 0 0 % ! i m p o r t a n t } < / s = 
 t y l e > 
         < ! [ e n d i f ] - - > < s t y l e   t y p e = 3 D " t e x t / c s s " > @ m e d i a   o n l y   s c r e e n   a n d   ( m i n - w i d t h : = 
 6 0 0 p x ) { . m j - c o l u m n - p e r - 1 0 0 { w i d t h : 1 0 0 % ! i m p o r t a n t ; m a x - w i d t h : 1 0 0 % } } < / s t y l e > < s t y = 
 l e   m e d i a = 3 D " s c r e e n   a n d   ( m i n - w i d t h : 6 0 0 p x ) " > . m o z - t e x t - h t m l   . m j - c o l u m n - p e r - 1 0 0 = 
   {   w i d t h : 1 0 0 %   ! i m p o r t a n t ;   m a x - w i d t h :   1 0 0 % ;   } < / s t y l e > < s t y l e   t y p e = 3 D " t e x t / c s s = 
 " > @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 2 8 , . r i o - h e a d e r - 2 8   * { c o l o r : = 
 # f f f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 0 { c o l o r : # f f f } = 
 } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 2 9 , . r i o - h e a d e r - 2 9   * { c o l o r : # = 
 f f f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 1 { c o l o r : # f f f } } = 
 @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 0 , . r i o - h e a d e r - 3 0   * { c o l o r : # f = 
 f f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 2 { c o l o r : # f f f } } @ = 
 m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 1 , . r i o - h e a d e r - 3 1   * { c o l o r : # f f = 
 f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 3 { c o l o r : # f f f } } @ m = 
 e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 2 , . r i o - h e a d e r - 3 2   * { c o l o r : # f f f = 
 ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 4 { c o l o r : # f f f } } @ m e = 
 d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 3 , . r i o - h e a d e r - 3 3   * { c o l o r : # f f f ! = 
 i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 5 { c o l o r : # f f f } } @ m e d = 
 i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 4 , . r i o - h e a d e r - 3 4   * { c o l o r : # f f f ! i = 
 m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 6 { c o l o r : # f f f } } @ m e d i = 
 a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 5 , . r i o - h e a d e r - 3 5   * { c o l o r : # f f f ! i m = 
 p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 7 { c o l o r : # f f f } } . a m a z o = 
 n - n a v b a r - c o n t e n t { f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z = 
 e : 1 4 p x ! i m p o r t a n t ; f o n t - w e i g h t : 7 0 0 ! i m p o r t a n t ; c o l o r : " # 0 F 1 1 1 1 " ! i m p o r t a n t } . a m a z o = 
 n - l o g o . f u l l { p a d d i n g - l e f t : 0 ! i m p o r t a n t ; p a d d i n g - r i g h t : 0 ! i m p o r t a n t } . a m a z o n - l o g o = 
 . z e r o B o r d e r { b o r d e r : 0 ; b o r d e r - c o l l a p s e : c o l l a p s e ; b o r d e r - s p a c i n g : 0 } . a m a z o n - l o g o = 
   . f u l l { p a d d i n g - l e f t : 0 ! i m p o r t a n t ; p a d d i n g - r i g h t : 0 ! i m p o r t a n t } . a m a z o n - l o g o   . z e r = 
 o B o r d e r { b o r d e r : 0 ; b o r d e r - c o l l a p s e : c o l l a p s e ; b o r d e r - s p a c i n g : 0 } . a m a z o n - l o g o   . l i = 
 g h t - i m g { b a c k g r o u n d - c o l o r : # f f f ; b a c k g r o u n d - i m a g e : l i n e a r - g r a d i e n t ( # f f f , # f f f ) } @ = 
 m e d i a   ( p r e f e r s - c o l o r - s c h e m e : l i g h t ) { . a m a z o n - l o g o   . l i g h t - i m g { d i s p l a y : b l o c k ! i m = 
 p o r t a n t } . a m a z o n - l o g o   . d a r k - i m g { d i s p l a y : n o n e ! i m p o r t a n t } . a m a z o n - n a v b a r - c o n t e n = 
 t { f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; b a c k g r o u n d - c o l o r : # f f f F F = 
 ! i m p o r t a n t ; c o l o r : # 0 0 0 ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . a m a z o n = 
 - l o g o { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r t a n t } . a m a z o n - n a v b a r - c o n t e n t { b a c k g r o u n d - = 
 c o l o r : # 1 6 1 d 2 6 ! i m p o r t a n t ; c o l o r : # f f f ! i m p o r t a n t } . a m a z o n - l o g o   . l i g h t - i m g { d i s p l a = 
 y : n o n e ! i m p o r t a n t } . a m a z o n - l o g o   . d a r k - i m g { d i s p l a y : b l o c k ! i m p o r t a n t } } [ d a t a - o g s c = 
 ]   . a m a z o n - l o g o   . c o n t e n t { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r t a n t } [ d a t a - o g s c ]   . a m a = 
 z o n - l o g o   . l i g h t - i m g { d i s p l a y : n o n e ! i m p o r t a n t } [ d a t a - o g s c ]   . a m a z o n - l o g o   . d a r k - i = 
 m g { d i s p l a y : b l o c k ! i m p o r t a n t } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - c a r d , . r i = 
 o - c a r d - t e x t , . r i o - c a r d - t e x t > t a b l e , . r i o - c a r d > t a b l e { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i = 
 m p o r t a n t } } [ d a t a - o g s c ]   . r i o - c a r d , [ d a t a - o g s c ]   . r i o - c a r d - t e x t , [ d a t a - o g s c ]   . r i o = 
 - c a r d - t e x t > t a b l e , [ d a t a - o g s c ]   . r i o - c a r d > t a b l e { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r = 
 t a n t } . r i o - c a r d - t e x t   p + p { m a r g i n - t o p : 1 . 2 e m } . r i o - h e a d e r   s t r o n g { c o l o r : # 0 6 7 d 6 2 } @ = 
 m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r   a { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } . r i = 
 o - h e a d e r   s t r o n g { c o l o r : # 1 3 b d 9 6 ! i m p o r t a n t } } [ d a t a - o g s c ]   . r i o - h e a d e r , [ d a t a - o g s c = 
 ]   . r i o - h e a d e r   * { c o l o r : # f f f ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - h e a d e r   a { c o l o r : # 6 e d 6 e = 
 6 ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - h e a d e r   s t r o n g { c o l o r : # 1 3 b d 9 6 ! i m p o r t a n t } . r i o - t e x = 
 t   s t r o n g { c o l o r : # 0 6 7 d 6 2 } . r i o - t e x t   i m g { w i d t h : 1 0 0 % ; h e i g h t : a u t o } @ m e d i a   ( p r e f e r s = 
 - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t   * { c o l o r : # f f f ! i m p o r t a n t } . r i o - t e x t   a , . r i o - t e x t   = 
 a > * { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } . r i o - t e x t   s t r o n g { c o l o r : # 1 3 b d 9 6 ! i m p o r t a n t } } [ d a t a = 
 - o g s c ]   . r i o - t e x t   * { c o l o r : # f f f ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - t e x t   a , [ d a t a - o g s c ] = 
   . r i o - t e x t   a > * { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - t e x t   s t r o n g { c o l o r : # = 
 1 3 b d 9 6 ! i m p o r t a n t } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - b u t t o n - s e c o n d a r y   * = 
 { c o l o r : # 0 f 1 1 1 1 ! i m p o r t a n t ; b a c k g r o u n d : # f e f e f e ! i m p o r t a n t ; b a c k g r o u n d - c o l o r : l i n e = 
 a r - g r a d i e n t ( # f e f e f e , # f e f e f e ) ! i m p o r t a n t } } [ d a t a - o g s c ]   . r i o - b u t t o n - s e c o n d a r y   * = 
 { c o l o r : # 0 f 1 1 1 1 ! i m p o r t a n t ; b a c k g r o u n d : # f e f e f e ! i m p o r t a n t ; b a c k g r o u n d - c o l o r : l i n e = 
 a r - g r a d i e n t ( # f e f e f e , # f e f e f e ) ! i m p o r t a n t } . f o o t e r C a r d   l i , . f o o t e r C a r d   p { c o l o r : i = 
 n h e r i t } . f o o t e r C a r d   p + p { m a r g i n - t o p : 1 . 2 e m } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { = 
 . f o o t e r C a r d   d i v { b a c k g r o u n d - c o l o r : # 3 0 3 3 3 3 ! i m p o r t a n t } . f o o t e r L i n k   d i v { c o l o r : # 6 = 
 e d 6 e 6 ! i m p o r t a n t } . f o o t e r T e x t   d i v { c o l o r : # c 8 c c c c ! i m p o r t a n t } . l i g h t F o o t e r I m g { d i s = 
 p l a y : n o n e ! i m p o r t a n t } . d a r k F o o t e r I m g { d i s p l a y : b l o c k ! i m p o r t a n t } } [ d a t a - o g s b ]   . f o = 
 o t e r C a r d   d i v { b a c k g r o u n d - c o l o r : # 3 0 3 3 3 3 ! i m p o r t a n t } [ d a t a - o g s c ]   . f o o t e r L i n k   d i v = 
 { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } [ d a t a - o g s c ]   . f o o t e r T e x t   d i v { c o l o r : # c 8 c c c c ! i m p o r t a n = 
 t } [ d a t a - o g s c ]   . l i g h t F o o t e r I m g { d i s p l a y : n o n e ! i m p o r t a n t } [ d a t a - o g s c ]   . d a r k F o o t e = 
 r I m g { d i s p l a y : b l o c k ! i m p o r t a n t } < / s t y l e > < s t y l e   t y p e = 3 D " t e x t / c s s " > @ f o n t - f a c e { f o = 
 n t - f a m i l y : E m b e r ; f o n t - w e i g h t : 7 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z = 
 o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f = 
 f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i = 
 l y : E m b e r ; f o n t - w e i g h t : 6 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / = 
 i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o = 
 - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : E m b e = 
 r ; f o n t - w e i g h t : 5 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / = 
 G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ M d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i = 
 c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : E m b e r ; f o n t - = 
 w e i g h t : 4 0 0 ; f o n t - s t y l e : n o r m a l ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . = 
 c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ R g . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) = 
 ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : = 
 E m b e r ; f o n t - w e i g h t : 2 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a = 
 g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ L t . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e = 
 n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : " A m a z o n = 
   E m b e r " ; f o n t - w e i g h t : 7 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o = 
 n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f = 
 " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l = 
 y : " A m a z o n   E m b e r " ; f o n t - w e i g h t : 6 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e = 
 d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r = 
 m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f = 
 o n t - f a m i l y : " A m a z o n   E m b e r " ; f o n t - w e i g h t : 5 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t = 
 p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ M d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . = 
 W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o = 
 n t - f a c e { f o n t - f a m i l y : " A m a z o n   E m b e r " ; f o n t - s t y l e : n o r m a l ; f o n t - w e i g h t : 4 0 0 ; s r c : l o = 
 c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a = 
 z o n E m b e r _ R g . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i = 
 s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : " A m a z o n   E m b e r " ; f o n t - w e i g h t : 2 = 
 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t = 
 b o u n d / A m a z o n E m b e r _ L t . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f = 
 a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } * { f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s = 
 a n s - s e r i f ; b o r d e r - s p a c i n g : 0 ; m a r g i n : 0 ; p a d d i n g : 0 } [ d a t a - o g s c ]   : r o o t { - - b o d y - b g : # = 
 1 8 1 A 1 A ; - - b o d y - c o l o r : # f f f f f f } . r o o t C o n t e n t { b a c k g r o u n d : # f f f ! i m p o r t a n t } . f o n t s , . = 
 s a n s , h 1 , h 2 , h 3 , h 4 , h 5 , l i , p , t a b l e , t d , t h { c o l o r : # 0 f 1 1 1 1 } a { c o l o r : # 0 0 7 1 8 5 ; t e x t - d e c = 
 o r a t i o n : n o n e } @ m e d i a   s c r e e n   a n d   ( m a x - w i d t h : 5 9 9 p x ) { . m o b i l e - o n l y { d i s p l a y : i n i t i = 
 a l ! i m p o r t a n t } . d e s k t o p - o n l y { d i s p l a y : n o n e ! i m p o r t a n t ; m s o - h i d e : a l l ! i m p o r t a n t } } @ = 
 m e d i a   s c r e e n   a n d   ( m i n - w i d t h : 6 0 0 p x ) { . m o b i l e - o n l y { d i s p l a y : n o n e ! i m p o r t a n t ; m s o - = 
 h i d e : a l l ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : l i g h t ) { : r o o t { - - b o d y - b g : # f f = 
 f f f f ; - - b o d y - c o l o r : # 0 0 0 0 0 0 } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { : r o o t { - - b o d y - = 
 b g : # 1 8 1 A 1 A ; - - b o d y - c o l o r : # f f f f f f } b o d y { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r t a n t } . f o = 
 n t s , . s a n s , h 1 , h 2 , h 3 , h 4 , h 5 , l i , p , t a b l e , t d , t h { c o l o r : # f f f } a { c o l o r : # 6 e d 6 e 6 } . r o o t C = 
 o n t e n t , . r o o t C o n t e n t > t a b l e { b a c k g r o u n d : # 1 8 1 a 1 a ! i m p o r t a n t } } [ d a t a - o g s c ]   . f o n t s , = 
 [ d a t a - o g s c ]   . s a n s , [ d a t a - o g s c ]   h 1 , [ d a t a - o g s c ]   h 2 , [ d a t a - o g s c ]   h 3 , [ d a t a - o g s c ]   = 
 h 4 , [ d a t a - o g s c ]   h 5 , [ d a t a - o g s c ]   l i , [ d a t a - o g s c ]   p { c o l o r : # f f f } [ d a t a - o g s c ]   a { c o l = 
 o r : # 6 e d 6 e 6 } [ d a t a - o g s c ]   . r o o t C o n t e n t , [ d a t a - o g s c ]   . r o o t C o n t e n t > t a b l e { b a c k g r o u = 
 n d : # 1 8 1 a 1 a ! i m p o r t a n t } b o d y { b a c k g r o u n d - c o l o r : v a r ( - - b o d y - b g ) ! i m p o r t a n t ; c o l o r : v = 
 a r ( - - b o d y - c o l o r ) ! i m p o r t a n t ; m a r g i n : 0 ! i m p o r t a n t ; p a d d i n g : 0 } b o d y > i m g { p o s i t i o n : a = 
 b s o l u t e } t a b l e { b o r d e r - s p a c i n g : 0 } h 3 , h 4 , h 5 , p , t a b l e   t h { f o n t - w e i g h t : 4 0 0 ; m a r g i n : 0 = 
 ; p a d d i n g : 0 } t d { p a d d i n g : 0 } i m g { b o r d e r : 0 } a , s p a n , t d { w o r d - b r e a k : b r e a k - w o r d ! i m p o r t = 
 a n t } o l , u l { m a r g i n - l e f t : 3 2 p x ! i m p o r t a n t } . b u t t o n { b a c k g r o u n d - c o l o r : # f f d 8 1 4 ; c o l o r = 
 : # 0 f 1 1 1 1 ! i m p o r t a n t ; b o r d e r - r a d i u s : 2 4 p x ; p a d d i n g : 1 p x   1 6 p x ; d i s p l a y : i n l i n e - b l o c k = 
 ; b o x - s h a d o w : 1 p x   2 p x   4 p x   r g b a ( 1 5 3 , 1 5 3 , 1 5 3 , . 2 ) ; f o n t - s i z e : 1 3 p x ; l i n e - h e i g h t : 2 9 p = 
 x ; w h i t e - s p a c e : n o w r a p ; t e x t - d e c o r a t i o n : n o n e ; m a r g i n - t o p : 4 p x } . b o x - s h a d o w   a { b o x - = 
 s h a d o w : 1 p x   2 p x   4 p x   r g b a ( 1 5 3 , 1 5 3 , 1 5 3 , . 2 ) } a , b o d y , t a b l e , t d { - m s - t e x t - s i z e - a d j u s = 
 t : 1 0 0 % ; - w e b k i t - t e x t - s i z e - a d j u s t : 1 0 0 % } . a p p l e B o d y   a , . a p p l e F o o t e r   a { c o l o r : # 0 0 7 = 
 1 8 5 ! i m p o r t a n t ; t e x t - d e c o r a t i o n : n o n e } a [ x - a p p l e - d a t a - d e t e c t o r s ] { c o l o r : # 0 0 7 1 8 5 ! = 
 i m p o r t a n t ; f o n t - f a m i l y : i n h e r i t ! i m p o r t a n t ; f o n t - s i z e : i n h e r i t ! i m p o r t a n t ; f o n t - w e = 
 i g h t : i n h e r i t ! i m p o r t a n t ; l i n e - h e i g h t : i n h e r i t ! i m p o r t a n t } u + # b o d y   a { c o l o r : # 0 0 7 1 8 = 
 5 ! i m p o r t a n t ; f o n t - f a m i l y : i n h e r i t ! i m p o r t a n t ; f o n t - s i z e : i n h e r i t ! i m p o r t a n t ; f o n t - = 
 w e i g h t : i n h e r i t ! i m p o r t a n t ; l i n e - h e i g h t : i n h e r i t ! i m p o r t a n t } # M e s s a g e V i e w B o d y   a { c = 
 o l o r : # 0 0 7 1 8 5 ! i m p o r t a n t ; f o n t - f a m i l y : i n h e r i t ! i m p o r t a n t ; f o n t - s i z e : i n h e r i t ! i m p o = 
 r t a n t ; f o n t - w e i g h t : i n h e r i t ! i m p o r t a n t ; l i n e - h e i g h t : i n h e r i t ! i m p o r t a n t } < / s t y l e > < = 
 m e t a   c o n t e n t = 3 D " t e x t / h t m l ;   c h a r s e t = 3 D U T F - 8 "   h t t p - e q u i v = 3 D " C o n t e n t - T y p e " > < m e = 
 t a   c o n t e n t = 3 D " t e l e p h o n e = 3 D n o "   n a m e = 3 D " f o r m a t - d e t e c t i o n " > < m e t a   c o n t e n t = 3 D " w i = 
 d t h = 3 D d e v i c e - w i d t h , i n i t i a l - s c a l e = 3 D 1 ; u s e r - s c a l a b l e = 3 D n o ; "   n a m e = 3 D " v i e w p o r t " = 
 > < m e t a   c o n t e n t = 3 D " I E = 3 D 9 ;   I E = 3 D 8 ;   I E = 3 D 7 ;   I E = 3 D E D G E "   h t t p - e q u i v = 3 D " X - U A - C o m = 
 p a t i b l e " > < m e t a   n a m e = 3 D " x - a p p l e - d i s a b l e - m e s s a g e - r e f o r m a t t i n g " > < m e t a   c o n t e n t = 
 = 3 D " l i g h t   d a r k "   n a m e = 3 D " c o l o r - s c h e m e " > < m e t a   c o n t e n t = 3 D " l i g h t   d a r k "   n a m e = 3 D " = 
 s u p p o r t e d - c o l o r - s c h e m e s " > < ! - - 
                           = 2 0 
                           = 2 0 
                           = 2 0 
                             - - > < s t y l e   t y p e = 3 D " t e x t / c s s " > . p r o d u c t L i s t P r i c e { c o l o r : # 5 6 5 9 5 9 } . = 
 p r o d u c t D i s c o u n t { c o l o r : # c c 0 c 3 9 } . p r o d u c t P r i c e { c o l o r : # 0 f 1 1 1 1 } @ m e d i a   ( p r e f e r s - c = 
 o l o r - s c h e m e : d a r k ) { . p r o d u c t L i s t P r i c e { c o l o r : # f f f ! i m p o r t a n t } . p r o d u c t D i s c o u n t { c = 
 o l o r : # f f 8 c 8 c ! i m p o r t a n t } . p r o d u c t P r i c e { c o l o r : # f f f ! i m p o r t a n t } } [ d a t a - o g s c ]   . p r o = 
 d u c t L i s t P r i c e { c o l o r : # f f f ! i m p o r t a n t } [ d a t a - o g s c ]   . p r o d u c t D i s c o u n t { c o l o r : # f f 8 c = 
 8 c ! i m p o r t a n t } [ d a t a - o g s c ]   . p r o d u c t P r i c e { c o l o r : # f f f ! i m p o r t a n t } < / s t y l e > < s t y l e   = 
 t y p e = 3 D " t e x t / c s s " > . d e a l B a d g e { b a c k g r o u n d - c o l o r : # c c 0 c 3 9 ; c o l o r : # f f f } . d e a l T e x t { = 
 c o l o r : # c c 0 c 3 9 } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . d e a l B a d g e { b a c k g r o u n d - c o l o = 
 r : # f f 8 c 8 c ! i m p o r t a n t ; c o l o r : # 0 0 0 ! i m p o r t a n t } . d e a l T e x t { c o l o r : # f f 8 c 8 c ! i m p o r t a n t } = 
 } [ d a t a - o g s c ]   . d e a l B a d g e { b a c k g r o u n d - c o l o r : # f f 8 c 8 c ! i m p o r t a n t ; c o l o r : # 0 0 0 ! i m p o r = 
 t a n t } [ d a t a - o g s c ]   . d e a l T e x t { c o l o r : # f f 8 c 8 c ! i m p o r t a n t } < / s t y l e > < ! - - [ i f   g t e   m s o   = 
 9 ] > 
         < x m l > 
                 < o : O f f i c e D o c u m e n t S e t t i n g s > 
                         < o : A l l o w P N G   / > 
                         < o : P i x e l s P e r I n c h > 9 6 < / o : P i x e l s P e r I n c h > 
                 < / o : O f f i c e D o c u m e n t S e t t i n g s > 
         < / x m l > 
         < s t y l e > 
                 b o d y ,   h 1 ,   h 2 ,   h 3 ,   h 4 ,   t a b l e ,   t h ,   t d ,   p ,   l i ,   a ,   . s a n s ,   . f o n t s   { 
                         f o n t - f a m i l y :   H e l v e t i c a ,   A r i a l ,   s a n s - s e r i f   ! i m p o r t a n t ; 
                 } 
                 [ d a t a - o g s c ]   . r o o t C o n t e n t ,   [ d a t a - o g s c ]   . r o o t C o n t e n t   >   t a b l e { 
                     b a c k g r o u n d :   # 1 8 1 A 1 A   ! i m p o r t a n t ; 
                 } 
         < / s t y l e > 
         < ! [ e n d i f ] - - > < / h e a d > < b o d y   c l a s s = 3 D " b o d y "   s t y l e = 3 D " w o r d - s p a c i n g : n o r m a l ; " > = 
 < i m g   w i d t h = 3 D " 1 "   h e i g h t = 3 D " 1 "   s r c = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / r . h t m l ? C = 3 D 1 V = 
 D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 3 3 2 9 2 d f 7 2 6 4 d 5 1 5 2 4 a 1 8 9 e d 4 2 5 c c 3 c 9 0 p 0 e u & = 
 R = 3 D 2 Y B O B 6 D V V 2 Z L Y & T = 3 D O & U = 3 D h t t p s % 3 A % 2 F % 2 F i m a g e s - e u . s s l - i m a g e s - a m a z o n . c o m % 2 = 
 F i m a g e s % 2 F G % 2 F 0 1 % 2 F n a v % 2 F t r a n s p . g i f & H = 3 D 6 H P D C O W A U L 8 V Y W V S X W D B J I S T S A O A & r e f _ = 
 = 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 _ o p e n s "   / > < d i v   c l a s s = 3 D " b o d y "   l a n g = 3 D " d e "   d i r = 3 D " = 
 a u t o " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D = 
 " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s = 
 t y l e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l = 
 i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i = 
 v   c l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f = 
 f ; m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e = 
 l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d = 
 : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e = 
 c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m = 
 s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p = 
 a c i n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " = 
 s o n a r - t r a n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 
 = 3 D " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e = 
 x t   p { m a r g i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d = 
 i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r e s e n t = 
 a t i o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t = 
 y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i = 
 f ] - - > < d i v   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o = 
 l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e   a l i g = 
 n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e = 
 n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; b o = 
 r d e r - r a d i u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i = 
 n g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e = 
 s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 
 = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   = 
 c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 
 = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e = 
 : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u = 
 t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 " = 
   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < = 
 t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f = 
   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l = 
 s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ = 
 e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n = 
 t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e = 
 c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a = 
 c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g = 
 n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k = 
 - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n = 
 l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t = 
 d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t = 
 d   a l i g n = 3 D " l e f t "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d ; " > < = 
 d i v   s t y l e = 3 D " f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z e : 1 5 = 
 p x ; f o n t - w e i g h t : 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p a n   c = 
 l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 0 " > D u   h a s t   e i n e   = E 2 = 8 0 = 9 E n e u e s   N o t i z b u c h   = C 3 = A 4 = 
 = C 3 = B 6 = C 3 = B C   @ ~ = E 2 = 8 2 = A C = C 3 = 9 F = E 2 = 8 0 = A 6 } = E 2 = 8 0 = 9 C - D a t e i   v o n   d e i n e m   K i n d l e   g = 
 e s e n d e t .   D u   k a n n s t   d i e s e   D a t e i   = C 3 = B C b e r   d i e   f o l g e n d e n   D o w n l o a d l i n k s   h e r u n t = 
 e r l a d e n : < / s p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / = 
 d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] = 
 > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   = 
 |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 
 = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c = 
 i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " = 
 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e = 
 x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e = 
   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " = 
 p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f = 
 o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p = 
 r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 
 = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c = 
 o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t = 
 - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I = 
 E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a = 
 t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d = 
 i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s = 
 i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t = 
 o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l = 
 e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o = 
 p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 
 = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y = 
 > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i = 
 f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < = 
 ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > = 
 < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i = 
 f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v = 
 > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t a b l e   = 
 a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " = 
 r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " = 
 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s = 
 o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 
 = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 = 
 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # = 
 f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d = 
 d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e = 
 s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! = 
 - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " s o n a r - t r a n s a c t i o n a l - c o p y - o u = 
 t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 3 D " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! = 
 - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e x t   p { m a r g i n - t o p : 1 . 2 e m } < / s t y = 
 l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " = 
   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x = 
 ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t = 
 - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r i o - c a r d = 
 - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o = 
 ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c = 
 e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n = 
 d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; b o r d e r - r a d i u s : 4 p x ; " > < t b o d y > < t = 
 r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a = 
 l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l = 
 l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D = 
 " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 = 
 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c = 
 t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l = 
 i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e = 
 s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t = 
 - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s = 
 e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D = 
 " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u = 
 m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l = 
 i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > = 
 < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o = 
 n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] = 
 - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e = 
 : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; = 
 w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 
 = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p = 
 ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 
 = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   a l i g n = 3 D " l e f t "   s t y l e = 3 D " f o n = 
 t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d ; " > < d i v   s t y l e = 3 D " f o n t - f a m i l y : E m b e = 
 r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z e : 1 5 p x ; f o n t - w e i g h t : 4 0 0 ; l i n e - h e i g h = 
 t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p a n   c l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 2 " = 
 > < a   h r e f = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m = 
 s g : 2 0 2 4 1 2 0 2 0 7 3 3 2 9 2 d f 7 2 6 4 d 5 1 5 2 4 a 1 8 9 e d 4 2 5 c c 3 c 9 0 p 0 e u & R = 3 D 1 S H Z N 3 C 4 Y U K F 3 & T = 3 D C & U = 
 = 3 D h t t p s % 3 A % 2 F % 2 F k i n d l e - c o n t e n t - r e q u e s t s - p r o d . s 3 . a m a z o n a w s . c o m % 2 F 6 8 d 8 f d b 9 - 0 = 
 6 5 7 - 4 b 2 c - b 3 b 5 - 9 6 e 8 7 e 8 b c 7 0 a % 2 F n e u e s % 2 5 2 0 N o t i z b u c h % 2 5 2 0 % 2 5 C 3 % 2 5 A 4 % 2 5 C 3 % 2 5 B 6 % 2 = 
 5 C 3 % 2 5 B C % 2 5 2 0 % 2 5 4 0 % 7 E % 2 5 E 2 % 2 5 8 2 % 2 5 A C % 2 5 C 3 % 2 5 9 F % 2 5 E 2 % 2 5 8 0 % 2 5 A 6 % 2 5 7 D - 2 0 2 4 - 1 2 - = 
 0 2 - 0 8 - 3 3 . p d f % 3 F r e s p o n s e - c a c h e - c o n t r o l % 3 D n o - s t o r e % 2 6 X - A m z - A l g o r i t h m % 3 D A W S 4 - H = 
 M A C - S H A 2 5 6 % 2 6 X - A m z - D a t e % 3 D 2 0 2 4 1 2 0 2 T 0 7 3 3 2 5 Z % 2 6 X - A m z - S i g n e d H e a d e r s % 3 D h o s t % 2 6 X = 
 - A m z - C r e d e n t i a l % 3 D A K I A Q N G C F 4 J 7 G 2 V 4 Y N X N % 2 5 2 F 2 0 2 4 1 2 0 2 % 2 5 2 F u s - e a s t - 1 % 2 5 2 F s 3 % 2 5 = 
 2 F a w s 4 _ r e q u e s t % 2 6 X - A m z - E x p i r e s % 3 D 6 0 4 8 0 0 % 2 6 X - A m z - S i g n a t u r e % 3 D 3 a 0 2 b d 9 d c 6 3 a a 4 4 = 
 a c d 3 2 1 0 6 a 2 e 4 3 8 4 b 8 c 6 f 6 b 9 0 7 b 8 b 2 f f 2 f a b c 8 c a 8 9 4 b d f 9 b e c & H = 3 D L W K P U M 4 6 F L Q A I C I S B F 7 5 W = 
 A A E G I O A "   r e l = 3 D " n o f o l l o w " > D u r c h s u c h b a r e s   P D F   h e r u n t e r l a d e n < / a > < / s p a n > < / d i v > = 
 < / t d > < / t r > < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] = 
 > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! = 
 [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b = 
 l e > < / t d > < / t r > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g = 
 n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o = 
 l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " = 
 l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d = 
 i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e = 
 r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " = 
 w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; = 
 t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " = 
 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t = 
 y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o = 
 k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l = 
 i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   = 
 c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D = 
 " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - = 
 c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t = 
 ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   = 
 b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t = 
 h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o = 
 r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 
 = 3 D " 1 0 0 % " > < t b o d y >     < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   = 
 m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < = 
 / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < = 
 / t r > < / t a b l e > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < = 
 ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] = 
 > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d = 
 > < / t r > < / t a b l e > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o = 
 l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f = 
 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c = 
 t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a = 
 c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e = 
 n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n = 
 "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > = 
 < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a = 
 l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l = 
 l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i = 
 g n = 3 D " l e f t "   c l a s s = 3 D " s o n a r - t r a n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c = 
 o p y - v 1 - o u t l o o k "   w i d t h = 3 D " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t = 
 e x t / c s s " > . r i o - c a r d - t e x t   p { m a r g i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   = 
 b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t = 
 l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D = 
 " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r = 
 u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : = 
 # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t = 
 h : 5 8 4 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n = 
 g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : = 
 # f f f f f f ; w i d t h : 1 0 0 % ; b o r d e r - r a d i u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t = 
 r ; f o n t - s i z e : 0 p x ; p a d d i n g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I = 
 E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c = 
 e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " = 
 p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h = 
 e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y = 
 l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 = 
 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : = 
 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a = 
 l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l = 
 l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D = 
 " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u = 
 p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l = 
 o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a = 
 d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n = 
 : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n = 
 - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c = 
 t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 = 
 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 = 
 0 0 % " > < t b o d y > < t r > < t d   a l i g n = 3 D " l e f t "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r = 
 e a k : b r e a k - w o r d ; " > < d i v   s t y l e = 3 D " f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - = 
 s e r i f ; f o n t - s i z e : 1 5 p x ; f o n t - w e i g h t : 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r = 
 : # 0 F 1 1 1 1 ; " > < s p a n   c l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 3 " > < a   h r e f = 3 D " h t t p s : / / w w w . a m a z = 
 o n . d e / g p / f . h t m l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 3 3 2 9 2 d f 7 2 6 4 d 5 1 5 = 
 2 4 a 1 8 9 e d 4 2 5 c c 3 c 9 0 p 0 e u & R = 3 D 1 Q 8 C S 9 7 2 R 0 J F 0 & T = 3 D C & U = 3 D h t t p s % 3 A % 2 F % 2 F k i n d l e - c o n t = 
 e n t - r e q u e s t s - p r o d . s 3 . a m a z o n a w s . c o m % 2 F 6 8 d 8 f d b 9 - 0 6 5 7 - 4 b 2 c - b 3 b 5 - 9 6 e 8 7 e 8 b c 7 0 a % 2 = 
 F n e u e s % 2 5 2 0 N o t i z b u c h % 2 5 2 0 % 2 5 C 3 % 2 5 A 4 % 2 5 C 3 % 2 5 B 6 % 2 5 C 3 % 2 5 B C % 2 5 2 0 % 2 5 4 0 % 7 E % 2 5 E 2 % 2 = 
 5 8 2 % 2 5 A C % 2 5 C 3 % 2 5 9 F % 2 5 E 2 % 2 5 8 0 % 2 5 A 6 % 2 5 7 D - 2 0 2 4 - 1 2 - 0 2 - 0 8 - 3 3 . t x t % 3 F r e s p o n s e - c a c h = 
 e - c o n t r o l % 3 D n o - s t o r e % 2 6 X - A m z - A l g o r i t h m % 3 D A W S 4 - H M A C - S H A 2 5 6 % 2 6 X - A m z - D a t e % 3 D 2 0 = 
 2 4 1 2 0 2 T 0 7 3 3 2 5 Z % 2 6 X - A m z - S i g n e d H e a d e r s % 3 D h o s t % 2 6 X - A m z - C r e d e n t i a l % 3 D A K I A Q N G C F 4 = 
 J 7 G 2 V 4 Y N X N % 2 5 2 F 2 0 2 4 1 2 0 2 % 2 5 2 F u s - e a s t - 1 % 2 5 2 F s 3 % 2 5 2 F a w s 4 _ r e q u e s t % 2 6 X - A m z - E x p i r = 
 e s % 3 D 6 0 4 8 0 0 % 2 6 X - A m z - S i g n a t u r e % 3 D 7 b 2 0 3 a 3 f a e 9 6 4 d 4 7 f d 9 1 c e f 4 b 7 8 2 e 1 2 2 b f 6 7 f b a b 7 1 4 = 
 a 9 0 c 9 c 3 c 4 7 f 0 2 b 5 1 7 8 1 4 f & H = 3 D L 2 Y I J R Y S A I B I I N P 5 E K X I O G I I L 3 I A "   r e l = 3 D " n o f o l l o w " > T e = 
 x t d a t e i   h e r u n t e r l a d e n < / a > < / s p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / t a b l e > < / t d > < / t r > < = 
 / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > = 
 < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < = 
 / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d   a l i g n = 3 D " l e f t "   c = 
 l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 = 
 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n = 
 e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h = 
 : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " = 
 d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < = 
 t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 = 
 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i = 
 v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n = 
 e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > = 
 < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r = 
 o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : = 
 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   = 
 s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v = 
 e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p = 
 a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e = 
 r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c = 
 i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b o d y > < / t a b l e > < / t = 
 d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - = 
 - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < = 
 / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < / t a b l e > < ! [ e n d i f = 
 ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t = 
 d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y = 
 > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o = 
   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 6 = 
 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; = 
 f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r o o t = 
 C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u = 
 t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 " = 
   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r = 
 o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - = 
 s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e = 
   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < ! [ = 
 e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " s o n a r - t r a n s a c t i = 
 o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 3 D " 6 0 0 p x "   > < ! [ = 
 e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e x t   p { m a r g i n - t o p = 
 : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s = 
 p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D = 
 " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i = 
 g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 
 = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r = 
 g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o = 
 r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 
 = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; b o r d e r - r a d i u s : 4 p = 
 x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 1 2 p x   8 p x   1 6 = 
 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r = 
 d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 
 = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " = 
 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; = 
 "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e = 
 i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 = 
 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " = 
 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e = 
 c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l = 
 e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t = 
 r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l = 
 a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e = 
 i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - = 
 [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 
 = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 = 
 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y = 
 l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t = 
 i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i = 
 n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i = 
 c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   a l i g n = 3 D " l e f t "   s = 
 t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d ; " > < d i v   s t y l e = 3 D " f o n t - = 
 f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z e : 1 5 p x ; f o n t - w e i g h t : 4 0 0 = 
 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p a n   c l a s s = 3 D " r i o - t e x t   r = 
 i o - t e x t - 3 4 " > B i t t e   b e a c h t e ,   d a s s   d e r   D o w n l o a d - L i n k ( s )   i n   7 & n b s p ; T a g e n   a b l = C 3 = 
 = A 4 u f t . < / s p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d = 
 i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > = 
 < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   | = 
   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D = 
 " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 = 
 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c = 
 t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l = 
 i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e = 
 s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t = 
 - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s = 
 e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D = 
 " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u = 
 m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l = 
 i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > = 
 < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o = 
 n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] = 
 - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e = 
 : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; = 
 w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 
 = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p = 
 ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 
 = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y = 
 > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i = 
 f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < = 
 ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > = 
 < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i = 
 f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v = 
 > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t a b l e   = 
 a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " = 
 r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " = 
 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s = 
 o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 
 = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 = 
 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # = 
 f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d = 
 d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e = 
 s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! = 
 - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " s o n a r - t r a n s a c t i o n a l - c o p y - o u = 
 t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 3 D " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! = 
 - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e x t   p { m a r g i n - t o p : 1 . 2 e m } < / s t y = 
 l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " = 
   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x = 
 ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t = 
 - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r i o - c a r d = 
 - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o = 
 ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c = 
 e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n = 
 d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; b o r d e r - r a d i u s : 4 p x ; " > < t b o d y > < t = 
 r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a = 
 l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l = 
 l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D = 
 " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 = 
 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c = 
 t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l = 
 i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e = 
 s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t = 
 - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s = 
 e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D = 
 " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u = 
 m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l = 
 i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > = 
 < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o = 
 n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] = 
 - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e = 
 : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; = 
 w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 
 = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p = 
 ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 
 = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   a l i g n = 3 D " l e f t "   s t y l e = 3 D " f o n = 
 t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d ; " > < d i v   s t y l e = 3 D " f o n t - f a m i l y : E m b e = 
 r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z e : 1 5 p x ; f o n t - w e i g h t : 4 0 0 ; l i n e - h e i g h = 
 t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p a n   c l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 7 " = 
 > H a s t   d u   F r a g e n   o d e r   B e d e n k e n   z u m   E r h a l t   d i e s e r   E - M a i l ?   H o l   d i r   H i l f e   v o m   < = 
 a   h r e f = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g = 
 : 2 0 2 4 1 2 0 2 0 7 3 3 2 9 2 d f 7 2 6 4 d 5 1 5 2 4 a 1 8 9 e d 4 2 5 c c 3 c 9 0 p 0 e u & R = 3 D 2 5 9 4 K T A E Q V P F B & T = 3 D C & U = 
 = 3 D h t t p s % 3 A % 2 F % 2 F w w w . a m a z o n . c o m % 2 F d e v i c e s u p p o r t % 3 F r e f _ % 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 = 
 1 3 0 5 1 & H = 3 D V Q 7 4 E 8 C A L Y A Q Q A I C D T E M G V I U R Z U A & r e f _ = 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 "   r e l = 
 = 3 D " n o f o l l o w " > A m a z o n - K u n d e n d i e n s t < / a > . < / s p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / t a b l = 
 e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n = 
 d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b = 
 o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d   a l i = 
 g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 = 
 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l = 
 e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z = 
 e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a = 
 u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 = 
 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > = 
 < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i = 
 f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l = 
 l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! = 
 [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o = 
 n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r = 
 e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p = 
 a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i = 
 g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o = 
 k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i = 
 n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t = 
 d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b = 
 o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t = 
 a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d = 
 > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < = 
 / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < = 
 / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / = 
 t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] = 
 - - >   < / d i v > < i m g   w i d t h = 3 D " 1 "   h e i g h t = 3 D " 1 "   s r c = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / r . h = 
 t m l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 3 3 2 9 2 d f 7 2 6 4 d 5 1 5 2 4 a 1 8 9 e d 4 2 5 c = 
 c 3 c 9 0 p 0 e u & R = 3 D 7 Q M O 2 Z 8 N A D 5 9 & T = 3 D E & U = 3 D h t t p s % 3 A % 2 F % 2 F i m a g e s - e u . s s l - i m a g e s - a m a = 
 z o n . c o m % 2 F i m a g e s % 2 F G % 2 F 0 1 % 2 F n a v % 2 F t r a n s p . g i f & H = 3 D F A D J B H E B G C R K M N J L H S B T G 3 2 B A O = 
 4 A & r e f _ = 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 _ o p e n "   / > < / b o d y > < / h t m l > 
 - - - - - - = _ P a r t _ 3 9 1 8 3 8 8 _ 3 3 7 2 0 5 6 5 9 . 1 7 3 3 1 2 4 8 1 0 5 6 4 - - 
 � � � �� �� R e t u r n - p a t h :   < 2 0 2 4 1 2 0 2 0 7 3 3 2 8 c 0 6 5 4 c b a 2 e 8 5 4 6 5 8 b f 5 3 6 0 8 3 f 3 a 0 p 0 e u - C 4 1 3 S V X 6 Q E Y 5 5 @ b o u n c e s . a m a z o n . c o m > 
 R e c e i v e d :   f r o m   e x i m   b y   d e l i v e r y 0 7 . r u n b o x   w i t h   s a - s c a n n e d     ( E x i m   4 . 9 5 ) 
 	 i d   1 t I 0 w 3 - 0 0 G 7 q L - 4 B 
 	 f o r   m i c h a e l . s c h e r e r @ r u n b o x . c o m ; 
 	 M o n ,   0 2   D e c   2 0 2 4   0 8 : 3 3 : 3 5   + 0 1 0 0 
 X - S p a m - C h e c k e r - V e r s i o n :   S p a m A s s a s s i n   4 . 0 . 0   ( 2 0 2 2 - 1 2 - 1 3 )   o n   a n t i s p a m c 0 5 . r u n b o x 
 X - S p a m - L e v e l :   
 X - S p a m - S t a t u s :   N o ,   s c o r e = 0 . 0   r e q u i r e d = 5 . 0   t e s t s = D K I M _ S I G N E D , D K I M _ V A L I D , 
 	 D K I M _ V A L I D _ A U , H T M L _ M E S S A G E , M I M E _ H T M L _ M O S T L Y , R C V D _ I N _ M S P I K E _ H 5 , 
 	 R C V D _ I N _ M S P I K E _ W L , R C V D _ I N _ V A L I D I T Y _ C E R T I F I E D _ B L O C K E D , 
 	 R C V D _ I N _ V A L I D I T Y _ S A F E _ B L O C K E D , S P F _ P A S S   a u t o l e a r n = n o   a u t o l e a r n _ f o r c e = n o 
 	 v e r s i o n = 4 . 0 . 0 
 X - S p a m - R e p o r t :   
 	 *     0 . 0   R C V D _ I N _ M S P I K E _ H 5   R B L :   E x c e l l e n t   r e p u t a t i o n   ( + 5 ) 
 	 *             [ 5 4 . 2 4 0 . 1 . 4   l i s t e d   i n   w l . m a i l s p i k e . n e t ] 
 	 *   - 0 . 0   S P F _ P A S S   S P F :   s e n d e r   m a t c h e s   S P F   r e c o r d 
 	 *   - 0 . 1   D K I M _ V A L I D _ A U   M e s s a g e   h a s   a   v a l i d   D K I M   o r   D K   s i g n a t u r e   f r o m   a u t h o r ' s 
 	 *               d o m a i n 
 	 *   - 0 . 1   D K I M _ V A L I D   M e s s a g e   h a s   a t   l e a s t   o n e   v a l i d   D K I M   o r   D K   s i g n a t u r e 
 	 *     0 . 1   D K I M _ S I G N E D   M e s s a g e   h a s   a   D K I M   o r   D K   s i g n a t u r e ,   n o t   n e c e s s a r i l y 
 	 *             v a l i d 
 	 *     0 . 0   R C V D _ I N _ M S P I K E _ W L   M a i l s p i k e   g o o d   s e n d e r s 
 	 *     0 . 0   R C V D _ I N _ V A L I D I T Y _ C E R T I F I E D _ B L O C K E D   R B L :   A D M I N I S T R A T O R   N O T I C E :   T h e 
 	 *             q u e r y   t o   V a l i d i t y   w a s   b l o c k e d .     S e e 
 	 *             h t t p s : / / k n o w l e d g e . v a l i d i t y . c o m / h c / e n - u s / a r t i c l e s / 2 0 9 6 1 7 3 0 6 8 1 2 4 3   f o r 
 	 *             m o r e   i n f o r m a t i o n . 
 	 *             [ 5 4 . 2 4 0 . 1 . 4   l i s t e d   i n   s a - t r u s t e d . b o n d e d s e n d e r . o r g ] 
 	 *     0 . 0   R C V D _ I N _ V A L I D I T Y _ S A F E _ B L O C K E D   R B L :   A D M I N I S T R A T O R   N O T I C E :   T h e   q u e r y 
 	 *             t o   V a l i d i t y   w a s   b l o c k e d .     S e e 
 	 *             h t t p s : / / k n o w l e d g e . v a l i d i t y . c o m / h c / e n - u s / a r t i c l e s / 2 0 9 6 1 7 3 0 6 8 1 2 4 3   f o r 
 	 *             m o r e   i n f o r m a t i o n . 
 	 *             [ 5 4 . 2 4 0 . 1 . 4   l i s t e d   i n   s a - a c c r e d i t . h a b e a s . c o m ] 
 	 *     0 . 1   M I M E _ H T M L _ M O S T L Y   B O D Y :   M u l t i p a r t   m e s s a g e   m o s t l y   t e x t / h t m l   M I M E 
 	 *     0 . 0   H T M L _ M E S S A G E   B O D Y :   H T M L   i n c l u d e d   i n   m e s s a g e 
 R e c e i v e d :   f r o m   [ 1 0 . 9 . 9 . 1 6 8 ]   ( h e l o = m a i l f r o n t 2 4 . r u n b o x ) 
 	 b y   d e l i v e r y 0 7 . r u n b o x   w i t h   e s m t p     ( E x i m   4 . 9 5 ) 
 	 i d   1 t I 0 w 3 - 0 0 G 7 q I - 6 G 
 	 f o r   m i c h a e l . s c h e r e r @ r u n b o x . c o m ; 
 	 M o n ,   0 2   D e c   2 0 2 4   0 8 : 3 3 : 3 5   + 0 1 0 0 
 R e c e i v e d :   f r o m   e x i m   b y   m a i l f r o n t 2 4 . r u n b o x   w i t h   s a - s c a n n e d     ( E x i m   4 . 9 3 ) 
 	 i d   1 t I 0 w 2 - 0 0 G 2 y Z - G 3 
 	 f o r   m i c h a e l . s c h e r e r @ r u n b o x . c o m ;   M o n ,   0 2   D e c   2 0 2 4   0 8 : 3 3 : 3 4   + 0 1 0 0 
 R e c e i v e d - S P F :   p a s s   c l i e n t - i p = 5 4 . 2 4 0 . 1 . 4 ;   e n v e l o p e - f r o m = 2 0 2 4 1 2 0 2 0 7 3 3 2 8 c 0 6 5 4 c b a 2 e 8 5 4 6 5 8 b f 5 3 6 0 8 3 f 3 a 0 p 0 e u - C 4 1 3 S V X 6 Q E Y 5 5 @ b o u n c e s . a m a z o n . c o m ;   h e l o = a 1 - 4 . s m t p - o u t . e u - w e s t - 1 . a m a z o n s e s . c o m 
 R e c e i v e d :   f r o m   a 1 - 4 . s m t p - o u t . e u - w e s t - 1 . a m a z o n s e s . c o m   ( [ 5 4 . 2 4 0 . 1 . 4 ] ) 
 	 b y   m a i l f r o n t 2 4 . r u n b o x   w i t h   e s m t p s     ( T L S 1 . 3 : E C D H E _ X 2 5 5 1 9 _ _ R S A _ P S S _ R S A E _ S H A 2 5 6 _ _ A E S _ 1 2 8 _ G C M : 1 2 8 ) 
 	 ( E x i m   4 . 9 3 ) 
 	 i d   1 t I 0 v y - 0 0 G 2 x s - J I 
 	 f o r   s p a m @ s c h e r e r o n l i n e . n e t ;   M o n ,   0 2   D e c   2 0 2 4   0 8 : 3 3 : 3 1   + 0 1 0 0 
 D K I M - S i g n a t u r e :   v = 1 ;   a = r s a - s h a 2 5 6 ;   q = d n s / t x t ;   c = r e l a x e d / s i m p l e ; 
 	 s = e z c n b l p 2 x c a g j h u m w v h r j z s a 2 s g w a w g 7 ;   d = a m a z o n . c o m ;   t = 1 7 3 3 1 2 4 8 0 9 ; 
 	 h = D a t e : F r o m : T o : M e s s a g e - I D : S u b j e c t : M I M E - V e r s i o n : C o n t e n t - T y p e ; 
 	 b h = Y l U T h m 3 T u + 3 L 1 t o N l 2 3 3 z X y 5 a 0 r 9 Q 4 c D S G 4 s R 9 A m T d A = ; 
 	 b = c Z i f V I q w I 8 z C F o N T 0 S 9 g O M e M f X B p e W z u R + / o v p L + F q U y 1 Z C R Q k h R Z P E 8 e c U D Q T h a 
 	 r 0 7 D s L u 8 L R C v 2 I h 0 t 6 W N U r o L E M B a i h u o U 3 n E M a m + T X v 9 F G 4 N 2 j x o q o v i 7 K / t w n T W G m q 
 	 D g o 9 O z 8 N S z y j p o L X B l Q I / c H m a G F 2 O 6 h 6 V D d N f t y 4 = 
 D K I M - S i g n a t u r e :   v = 1 ;   a = r s a - s h a 2 5 6 ;   q = d n s / t x t ;   c = r e l a x e d / s i m p l e ; 
 	 s = u k u 4 t a i a 5 b 5 t s b g l x y j 6 z y m 3 2 e f j 7 x q v ;   d = a m a z o n s e s . c o m ;   t = 1 7 3 3 1 2 4 8 0 9 ; 
 	 h = D a t e : F r o m : T o : M e s s a g e - I D : S u b j e c t : M I M E - V e r s i o n : C o n t e n t - T y p e : F e e d b a c k - I D ; 
 	 b h = Y l U T h m 3 T u + 3 L 1 t o N l 2 3 3 z X y 5 a 0 r 9 Q 4 c D S G 4 s R 9 A m T d A = ; 
 	 b = e k N z K i 5 t o J h T 6 N F 1 a E 2 e q Q 6 + b Y 8 L x 6 k B W R D u 3 x H B 9 4 2 q Z g H P 3 P 2 / 9 r Y l t d 6 r o H G 2 
 	 M c F v q A Z h T 1 z o J O z 0 y 6 1 U C 1 l R A K U z M D H b q C H J 5 z o 7 8 / C X p h 9 O F n W c M C L K r h s l W 9 A M A n 1 
 	 I F i Q L g 1 8 O V d u R Z v 1 n K 4 o G T N S 5 T l z 3 Y M v e 1 6 L 5 O r g = 
 D a t e :   M o n ,   2   D e c   2 0 2 4   0 7 : 3 3 : 2 9   + 0 0 0 0 
 F r o m :   A m a z o n   K i n d l e   S u p p o r t   < d o - n o t - r e p l y @ a m a z o n . c o m > 
 T o :   s p a m @ s c h e r e r o n l i n e . n e t 
 M e s s a g e - I D :   < 0 1 0 2 0 1 9 3 8 6 4 9 e 3 7 5 - 7 c d c e 1 b e - f 0 6 e - 4 b b 4 - a f 8 2 - 4 5 5 6 c 8 3 6 c 8 4 5 - 0 0 0 0 0 0 @ e u - w e s t - 1 . a m a z o n s e s . c o m > 
 S u b j e c t :   = ? U T F - 8 ? B ? R H U g a G F z d C B l a W 5 l I O K A n k l u Y m 9 4 4 o C c L U R h d G V p ? = 
   = ? U T F - 8 ? B ? I H Z v b i B k Z W l u Z W 0 g S 2 l u Z G x l I G d l c 2 V u Z G V 0 ? = 
 M I M E - V e r s i o n :   1 . 0 
 C o n t e n t - T y p e :   m u l t i p a r t / a l t e r n a t i v e ;   
 	 b o u n d a r y = " - - - - = _ P a r t _ 8 1 0 7 4 0 _ 2 0 6 4 6 0 2 6 2 . 1 7 3 3 1 2 4 8 0 9 5 8 2 " 
 X - A M A Z O N - M A I L - R E L A Y - T Y P E :   n o t i f i c a t i o n 
 B o u n c e s - t o :   2 0 2 4 1 2 0 2 0 7 3 3 2 8 c 0 6 5 4 c b a 2 e 8 5 4 6 5 8 b f 5 3 6 0 8 3 f 3 a 0 p 0 e u - C 4 1 3 S V X 6 Q E Y 5 5 @ b o u n c e s . a m a z o n . c o m 
 X - A M A Z O N - M E T A D A T A :   C A = C 4 1 3 S V X 6 Q E Y 5 5 
 X - O r i g i n a l - M e s s a g e I D :   < u r n . r t n . m s g . 2 0 2 4 1 2 0 2 0 7 3 3 2 8 c 0 6 5 4 c b a 2 e 8 5 4 6 5 8 b f 5 3 6 0 8 3 f 3 a 0 p 0 e u @ 1 7 3 3 1 2 4 8 0 9 5 8 3 . > 
 F e e d b a c k - I D :   1 1 2 0 5 1 3 0 5 1 : : 1 . e u - w e s t - 1 . U I A U r M f b p G r x a v q n R E 0 y o Z r A U B I 9 C 7 G R N U x / k U D o 6 B 4 = : A m a z o n S E S 
 X - S E S - O u t g o i n g :   2 0 2 4 . 1 2 . 0 2 - 5 4 . 2 4 0 . 1 . 4 
 
 - - - - - - = _ P a r t _ 8 1 0 7 4 0 _ 2 0 6 4 6 0 2 6 2 . 1 7 3 3 1 2 4 8 0 9 5 8 2 
 C o n t e n t - T y p e :   t e x t / p l a i n ;   c h a r s e t = u t f - 8 
 C o n t e n t - T r a n s f e r - E n c o d i n g :   q u o t e d - p r i n t a b l e 
 
 
   = 2 0 
 
 D u   h a s t   e i n e   = E 2 = 8 0 = 9 E I n b o x = E 2 = 8 0 = 9 C - D a t e i   v o n   d e i n e m   K i n d l e   g e s e n d e t .   D u   k = 
 a n n s t   d i e s e   D a t e i   = C 3 = B C b e r   d i e   f o l g e n d e n   D o w n l o a d l i n k s   h e r u n t e r l a d e n : 
 = 2 0 
 = 2 0 
 
 
 
 D u r c h s u c h b a r e s   P D F   h e r u n t e r l a d e n 
 = 2 0 
 = 2 0 
 
 
 
 T e x t d a t e i   h e r u n t e r l a d e n 
 = 2 0 
 = 2 0 
 
 
 
 B i t t e   b e a c h t e ,   d a s s   d e r   D o w n l o a d - L i n k ( s )   i n   7 = C 2 = A 0 T a g e n   a b l = C 3 = A 4 u f t . 
 = 2 0 
 = 2 0 
 
 
 
 
 H a s t   d u   F r a g e n   o d e r   B e d e n k e n   z u m   E r h a l t   d i e s e r   E - M a i l ?   H o l   d i r   H i l f e   v o m   A m = 
 a z o n - K u n d e n d i e n s t . 
 = 2 0 
 = 2 0 
 
 
 
 - - - - - - = _ P a r t _ 8 1 0 7 4 0 _ 2 0 6 4 6 0 2 6 2 . 1 7 3 3 1 2 4 8 0 9 5 8 2 
 C o n t e n t - T y p e :   t e x t / h t m l ;   c h a r s e t = u t f - 8 
 C o n t e n t - T r a n s f e r - E n c o d i n g :   q u o t e d - p r i n t a b l e 
 
 < ! d o c t y p e   h t m l > < h t m l   l a n g = 3 D " d e "   d i r = 3 D " a u t o "   x m l n s = 3 D " h t t p : / / w w w . w 3 . o r g / 1 9 = 
 9 9 / x h t m l "   x m l n s : v = 3 D " u r n : s c h e m a s - m i c r o s o f t - c o m : v m l "   x m l n s : o = 3 D " u r n : s c h e m a s - = 
 m i c r o s o f t - c o m : o f f i c e : o f f i c e " > < h e a d > < t i t l e > < / t i t l e > < ! - - [ i f   ! m s o ] > < ! - - > < m e t a   = 
 h t t p - e q u i v = 3 D " X - U A - C o m p a t i b l e "   c o n t e n t = 3 D " I E = 3 D e d g e " > < ! - - < ! [ e n d i f ] - - > < m e t a   = 
 h t t p - e q u i v = 3 D " C o n t e n t - T y p e "   c o n t e n t = 3 D " t e x t / h t m l ;   c h a r s e t = 3 D U T F - 8 " > < m e t a   n a = 
 m e = 3 D " v i e w p o r t "   c o n t e n t = 3 D " w i d t h = 3 D d e v i c e - w i d t h , i n i t i a l - s c a l e = 3 D 1 " > < s t y l e   t = 
 y p e = 3 D " t e x t / c s s " > # o u t l o o k   a { p a d d i n g : 0 } b o d y { m a r g i n : 0 ; p a d d i n g : 0 ; - w e b k i t - t e x t - = 
 s i z e - a d j u s t : 1 0 0 % ; - m s - t e x t - s i z e - a d j u s t : 1 0 0 % } t a b l e , t d { b o r d e r - c o l l a p s e : c o l l a p s = 
 e ; m s o - t a b l e - l s p a c e : 0 p t ; m s o - t a b l e - r s p a c e : 0 p t } i m g { b o r d e r : 0 ; h e i g h t : a u t o ; l i n e - h = 
 e i g h t : 1 0 0 % ; o u t l i n e : 0 ; t e x t - d e c o r a t i o n : n o n e ; - m s - i n t e r p o l a t i o n - m o d e : b i c u b i c } p { = 
 d i s p l a y : b l o c k ; m a r g i n : 1 3 p x   0 } < / s t y l e > < ! - - [ i f   m s o ] > 
         < n o s c r i p t > 
         < x m l > 
         < o : O f f i c e D o c u m e n t S e t t i n g s > 
             < o : A l l o w P N G / > 
             < o : P i x e l s P e r I n c h > 9 6 < / o : P i x e l s P e r I n c h > 
         < / o : O f f i c e D o c u m e n t S e t t i n g s > 
         < / x m l > 
         < / n o s c r i p t > 
         < ! [ e n d i f ] - - > < ! - - [ i f   l t e   m s o   1 1 ] > 
         < s t y l e   t y p e = 3 D " t e x t / c s s " > . m j - o u t l o o k - g r o u p - f i x { w i d t h : 1 0 0 % ! i m p o r t a n t } < / s = 
 t y l e > 
         < ! [ e n d i f ] - - > < s t y l e   t y p e = 3 D " t e x t / c s s " > @ m e d i a   o n l y   s c r e e n   a n d   ( m i n - w i d t h : = 
 6 0 0 p x ) { . m j - c o l u m n - p e r - 1 0 0 { w i d t h : 1 0 0 % ! i m p o r t a n t ; m a x - w i d t h : 1 0 0 % } } < / s t y l e > < s t y = 
 l e   m e d i a = 3 D " s c r e e n   a n d   ( m i n - w i d t h : 6 0 0 p x ) " > . m o z - t e x t - h t m l   . m j - c o l u m n - p e r - 1 0 0 = 
   {   w i d t h : 1 0 0 %   ! i m p o r t a n t ;   m a x - w i d t h :   1 0 0 % ;   } < / s t y l e > < s t y l e   t y p e = 3 D " t e x t / c s s = 
 " > @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 2 8 , . r i o - h e a d e r - 2 8   * { c o l o r : = 
 # f f f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 0 { c o l o r : # f f f } = 
 } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 2 9 , . r i o - h e a d e r - 2 9   * { c o l o r : # = 
 f f f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 1 { c o l o r : # f f f } } = 
 @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 0 , . r i o - h e a d e r - 3 0   * { c o l o r : # f = 
 f f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 2 { c o l o r : # f f f } } @ = 
 m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 1 , . r i o - h e a d e r - 3 1   * { c o l o r : # f f = 
 f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 3 { c o l o r : # f f f } } @ m = 
 e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 2 , . r i o - h e a d e r - 3 2   * { c o l o r : # f f f = 
 ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 4 { c o l o r : # f f f } } @ m e = 
 d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 3 , . r i o - h e a d e r - 3 3   * { c o l o r : # f f f ! = 
 i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 5 { c o l o r : # f f f } } @ m e d = 
 i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 4 , . r i o - h e a d e r - 3 4   * { c o l o r : # f f f ! i = 
 m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 6 { c o l o r : # f f f } } @ m e d i = 
 a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 5 , . r i o - h e a d e r - 3 5   * { c o l o r : # f f f ! i m = 
 p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 7 { c o l o r : # f f f } } . a m a z o = 
 n - n a v b a r - c o n t e n t { f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z = 
 e : 1 4 p x ! i m p o r t a n t ; f o n t - w e i g h t : 7 0 0 ! i m p o r t a n t ; c o l o r : " # 0 F 1 1 1 1 " ! i m p o r t a n t } . a m a z o = 
 n - l o g o . f u l l { p a d d i n g - l e f t : 0 ! i m p o r t a n t ; p a d d i n g - r i g h t : 0 ! i m p o r t a n t } . a m a z o n - l o g o = 
 . z e r o B o r d e r { b o r d e r : 0 ; b o r d e r - c o l l a p s e : c o l l a p s e ; b o r d e r - s p a c i n g : 0 } . a m a z o n - l o g o = 
   . f u l l { p a d d i n g - l e f t : 0 ! i m p o r t a n t ; p a d d i n g - r i g h t : 0 ! i m p o r t a n t } . a m a z o n - l o g o   . z e r = 
 o B o r d e r { b o r d e r : 0 ; b o r d e r - c o l l a p s e : c o l l a p s e ; b o r d e r - s p a c i n g : 0 } . a m a z o n - l o g o   . l i = 
 g h t - i m g { b a c k g r o u n d - c o l o r : # f f f ; b a c k g r o u n d - i m a g e : l i n e a r - g r a d i e n t ( # f f f , # f f f ) } @ = 
 m e d i a   ( p r e f e r s - c o l o r - s c h e m e : l i g h t ) { . a m a z o n - l o g o   . l i g h t - i m g { d i s p l a y : b l o c k ! i m = 
 p o r t a n t } . a m a z o n - l o g o   . d a r k - i m g { d i s p l a y : n o n e ! i m p o r t a n t } . a m a z o n - n a v b a r - c o n t e n = 
 t { f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; b a c k g r o u n d - c o l o r : # f f f F F = 
 ! i m p o r t a n t ; c o l o r : # 0 0 0 ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . a m a z o n = 
 - l o g o { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r t a n t } . a m a z o n - n a v b a r - c o n t e n t { b a c k g r o u n d - = 
 c o l o r : # 1 6 1 d 2 6 ! i m p o r t a n t ; c o l o r : # f f f ! i m p o r t a n t } . a m a z o n - l o g o   . l i g h t - i m g { d i s p l a = 
 y : n o n e ! i m p o r t a n t } . a m a z o n - l o g o   . d a r k - i m g { d i s p l a y : b l o c k ! i m p o r t a n t } } [ d a t a - o g s c = 
 ]   . a m a z o n - l o g o   . c o n t e n t { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r t a n t } [ d a t a - o g s c ]   . a m a = 
 z o n - l o g o   . l i g h t - i m g { d i s p l a y : n o n e ! i m p o r t a n t } [ d a t a - o g s c ]   . a m a z o n - l o g o   . d a r k - i = 
 m g { d i s p l a y : b l o c k ! i m p o r t a n t } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - c a r d , . r i = 
 o - c a r d - t e x t , . r i o - c a r d - t e x t > t a b l e , . r i o - c a r d > t a b l e { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i = 
 m p o r t a n t } } [ d a t a - o g s c ]   . r i o - c a r d , [ d a t a - o g s c ]   . r i o - c a r d - t e x t , [ d a t a - o g s c ]   . r i o = 
 - c a r d - t e x t > t a b l e , [ d a t a - o g s c ]   . r i o - c a r d > t a b l e { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r = 
 t a n t } . r i o - c a r d - t e x t   p + p { m a r g i n - t o p : 1 . 2 e m } . r i o - h e a d e r   s t r o n g { c o l o r : # 0 6 7 d 6 2 } @ = 
 m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r   a { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } . r i = 
 o - h e a d e r   s t r o n g { c o l o r : # 1 3 b d 9 6 ! i m p o r t a n t } } [ d a t a - o g s c ]   . r i o - h e a d e r , [ d a t a - o g s c = 
 ]   . r i o - h e a d e r   * { c o l o r : # f f f ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - h e a d e r   a { c o l o r : # 6 e d 6 e = 
 6 ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - h e a d e r   s t r o n g { c o l o r : # 1 3 b d 9 6 ! i m p o r t a n t } . r i o - t e x = 
 t   s t r o n g { c o l o r : # 0 6 7 d 6 2 } . r i o - t e x t   i m g { w i d t h : 1 0 0 % ; h e i g h t : a u t o } @ m e d i a   ( p r e f e r s = 
 - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t   * { c o l o r : # f f f ! i m p o r t a n t } . r i o - t e x t   a , . r i o - t e x t   = 
 a > * { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } . r i o - t e x t   s t r o n g { c o l o r : # 1 3 b d 9 6 ! i m p o r t a n t } } [ d a t a = 
 - o g s c ]   . r i o - t e x t   * { c o l o r : # f f f ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - t e x t   a , [ d a t a - o g s c ] = 
   . r i o - t e x t   a > * { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - t e x t   s t r o n g { c o l o r : # = 
 1 3 b d 9 6 ! i m p o r t a n t } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - b u t t o n - s e c o n d a r y   * = 
 { c o l o r : # 0 f 1 1 1 1 ! i m p o r t a n t ; b a c k g r o u n d : # f e f e f e ! i m p o r t a n t ; b a c k g r o u n d - c o l o r : l i n e = 
 a r - g r a d i e n t ( # f e f e f e , # f e f e f e ) ! i m p o r t a n t } } [ d a t a - o g s c ]   . r i o - b u t t o n - s e c o n d a r y   * = 
 { c o l o r : # 0 f 1 1 1 1 ! i m p o r t a n t ; b a c k g r o u n d : # f e f e f e ! i m p o r t a n t ; b a c k g r o u n d - c o l o r : l i n e = 
 a r - g r a d i e n t ( # f e f e f e , # f e f e f e ) ! i m p o r t a n t } . f o o t e r C a r d   l i , . f o o t e r C a r d   p { c o l o r : i = 
 n h e r i t } . f o o t e r C a r d   p + p { m a r g i n - t o p : 1 . 2 e m } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { = 
 . f o o t e r C a r d   d i v { b a c k g r o u n d - c o l o r : # 3 0 3 3 3 3 ! i m p o r t a n t } . f o o t e r L i n k   d i v { c o l o r : # 6 = 
 e d 6 e 6 ! i m p o r t a n t } . f o o t e r T e x t   d i v { c o l o r : # c 8 c c c c ! i m p o r t a n t } . l i g h t F o o t e r I m g { d i s = 
 p l a y : n o n e ! i m p o r t a n t } . d a r k F o o t e r I m g { d i s p l a y : b l o c k ! i m p o r t a n t } } [ d a t a - o g s b ]   . f o = 
 o t e r C a r d   d i v { b a c k g r o u n d - c o l o r : # 3 0 3 3 3 3 ! i m p o r t a n t } [ d a t a - o g s c ]   . f o o t e r L i n k   d i v = 
 { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } [ d a t a - o g s c ]   . f o o t e r T e x t   d i v { c o l o r : # c 8 c c c c ! i m p o r t a n = 
 t } [ d a t a - o g s c ]   . l i g h t F o o t e r I m g { d i s p l a y : n o n e ! i m p o r t a n t } [ d a t a - o g s c ]   . d a r k F o o t e = 
 r I m g { d i s p l a y : b l o c k ! i m p o r t a n t } < / s t y l e > < s t y l e   t y p e = 3 D " t e x t / c s s " > @ f o n t - f a c e { f o = 
 n t - f a m i l y : E m b e r ; f o n t - w e i g h t : 7 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z = 
 o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f = 
 f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i = 
 l y : E m b e r ; f o n t - w e i g h t : 6 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / = 
 i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o = 
 - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : E m b e = 
 r ; f o n t - w e i g h t : 5 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / = 
 G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ M d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i = 
 c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : E m b e r ; f o n t - = 
 w e i g h t : 4 0 0 ; f o n t - s t y l e : n o r m a l ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . = 
 c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ R g . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) = 
 ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : = 
 E m b e r ; f o n t - w e i g h t : 2 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a = 
 g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ L t . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e = 
 n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : " A m a z o n = 
   E m b e r " ; f o n t - w e i g h t : 7 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o = 
 n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f = 
 " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l = 
 y : " A m a z o n   E m b e r " ; f o n t - w e i g h t : 6 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e = 
 d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r = 
 m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f = 
 o n t - f a m i l y : " A m a z o n   E m b e r " ; f o n t - w e i g h t : 5 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t = 
 p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ M d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . = 
 W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o = 
 n t - f a c e { f o n t - f a m i l y : " A m a z o n   E m b e r " ; f o n t - s t y l e : n o r m a l ; f o n t - w e i g h t : 4 0 0 ; s r c : l o = 
 c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a = 
 z o n E m b e r _ R g . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i = 
 s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : " A m a z o n   E m b e r " ; f o n t - w e i g h t : 2 = 
 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t = 
 b o u n d / A m a z o n E m b e r _ L t . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f = 
 a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } * { f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s = 
 a n s - s e r i f ; b o r d e r - s p a c i n g : 0 ; m a r g i n : 0 ; p a d d i n g : 0 } [ d a t a - o g s c ]   : r o o t { - - b o d y - b g : # = 
 1 8 1 A 1 A ; - - b o d y - c o l o r : # f f f f f f } . r o o t C o n t e n t { b a c k g r o u n d : # f f f ! i m p o r t a n t } . f o n t s , . = 
 s a n s , h 1 , h 2 , h 3 , h 4 , h 5 , l i , p , t a b l e , t d , t h { c o l o r : # 0 f 1 1 1 1 } a { c o l o r : # 0 0 7 1 8 5 ; t e x t - d e c = 
 o r a t i o n : n o n e } @ m e d i a   s c r e e n   a n d   ( m a x - w i d t h : 5 9 9 p x ) { . m o b i l e - o n l y { d i s p l a y : i n i t i = 
 a l ! i m p o r t a n t } . d e s k t o p - o n l y { d i s p l a y : n o n e ! i m p o r t a n t ; m s o - h i d e : a l l ! i m p o r t a n t } } @ = 
 m e d i a   s c r e e n   a n d   ( m i n - w i d t h : 6 0 0 p x ) { . m o b i l e - o n l y { d i s p l a y : n o n e ! i m p o r t a n t ; m s o - = 
 h i d e : a l l ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : l i g h t ) { : r o o t { - - b o d y - b g : # f f = 
 f f f f ; - - b o d y - c o l o r : # 0 0 0 0 0 0 } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { : r o o t { - - b o d y - = 
 b g : # 1 8 1 A 1 A ; - - b o d y - c o l o r : # f f f f f f } b o d y { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r t a n t } . f o = 
 n t s , . s a n s , h 1 , h 2 , h 3 , h 4 , h 5 , l i , p , t a b l e , t d , t h { c o l o r : # f f f } a { c o l o r : # 6 e d 6 e 6 } . r o o t C = 
 o n t e n t , . r o o t C o n t e n t > t a b l e { b a c k g r o u n d : # 1 8 1 a 1 a ! i m p o r t a n t } } [ d a t a - o g s c ]   . f o n t s , = 
 [ d a t a - o g s c ]   . s a n s , [ d a t a - o g s c ]   h 1 , [ d a t a - o g s c ]   h 2 , [ d a t a - o g s c ]   h 3 , [ d a t a - o g s c ]   = 
 h 4 , [ d a t a - o g s c ]   h 5 , [ d a t a - o g s c ]   l i , [ d a t a - o g s c ]   p { c o l o r : # f f f } [ d a t a - o g s c ]   a { c o l = 
 o r : # 6 e d 6 e 6 } [ d a t a - o g s c ]   . r o o t C o n t e n t , [ d a t a - o g s c ]   . r o o t C o n t e n t > t a b l e { b a c k g r o u = 
 n d : # 1 8 1 a 1 a ! i m p o r t a n t } b o d y { b a c k g r o u n d - c o l o r : v a r ( - - b o d y - b g ) ! i m p o r t a n t ; c o l o r : v = 
 a r ( - - b o d y - c o l o r ) ! i m p o r t a n t ; m a r g i n : 0 ! i m p o r t a n t ; p a d d i n g : 0 } b o d y > i m g { p o s i t i o n : a = 
 b s o l u t e } t a b l e { b o r d e r - s p a c i n g : 0 } h 3 , h 4 , h 5 , p , t a b l e   t h { f o n t - w e i g h t : 4 0 0 ; m a r g i n : 0 = 
 ; p a d d i n g : 0 } t d { p a d d i n g : 0 } i m g { b o r d e r : 0 } a , s p a n , t d { w o r d - b r e a k : b r e a k - w o r d ! i m p o r t = 
 a n t } o l , u l { m a r g i n - l e f t : 3 2 p x ! i m p o r t a n t } . b u t t o n { b a c k g r o u n d - c o l o r : # f f d 8 1 4 ; c o l o r = 
 : # 0 f 1 1 1 1 ! i m p o r t a n t ; b o r d e r - r a d i u s : 2 4 p x ; p a d d i n g : 1 p x   1 6 p x ; d i s p l a y : i n l i n e - b l o c k = 
 ; b o x - s h a d o w : 1 p x   2 p x   4 p x   r g b a ( 1 5 3 , 1 5 3 , 1 5 3 , . 2 ) ; f o n t - s i z e : 1 3 p x ; l i n e - h e i g h t : 2 9 p = 
 x ; w h i t e - s p a c e : n o w r a p ; t e x t - d e c o r a t i o n : n o n e ; m a r g i n - t o p : 4 p x } . b o x - s h a d o w   a { b o x - = 
 s h a d o w : 1 p x   2 p x   4 p x   r g b a ( 1 5 3 , 1 5 3 , 1 5 3 , . 2 ) } a , b o d y , t a b l e , t d { - m s - t e x t - s i z e - a d j u s = 
 t : 1 0 0 % ; - w e b k i t - t e x t - s i z e - a d j u s t : 1 0 0 % } . a p p l e B o d y   a , . a p p l e F o o t e r   a { c o l o r : # 0 0 7 = 
 1 8 5 ! i m p o r t a n t ; t e x t - d e c o r a t i o n : n o n e } a [ x - a p p l e - d a t a - d e t e c t o r s ] { c o l o r : # 0 0 7 1 8 5 ! = 
 i m p o r t a n t ; f o n t - f a m i l y : i n h e r i t ! i m p o r t a n t ; f o n t - s i z e : i n h e r i t ! i m p o r t a n t ; f o n t - w e = 
 i g h t : i n h e r i t ! i m p o r t a n t ; l i n e - h e i g h t : i n h e r i t ! i m p o r t a n t } u + # b o d y   a { c o l o r : # 0 0 7 1 8 = 
 5 ! i m p o r t a n t ; f o n t - f a m i l y : i n h e r i t ! i m p o r t a n t ; f o n t - s i z e : i n h e r i t ! i m p o r t a n t ; f o n t - = 
 w e i g h t : i n h e r i t ! i m p o r t a n t ; l i n e - h e i g h t : i n h e r i t ! i m p o r t a n t } # M e s s a g e V i e w B o d y   a { c = 
 o l o r : # 0 0 7 1 8 5 ! i m p o r t a n t ; f o n t - f a m i l y : i n h e r i t ! i m p o r t a n t ; f o n t - s i z e : i n h e r i t ! i m p o = 
 r t a n t ; f o n t - w e i g h t : i n h e r i t ! i m p o r t a n t ; l i n e - h e i g h t : i n h e r i t ! i m p o r t a n t } < / s t y l e > < = 
 m e t a   c o n t e n t = 3 D " t e x t / h t m l ;   c h a r s e t = 3 D U T F - 8 "   h t t p - e q u i v = 3 D " C o n t e n t - T y p e " > < m e = 
 t a   c o n t e n t = 3 D " t e l e p h o n e = 3 D n o "   n a m e = 3 D " f o r m a t - d e t e c t i o n " > < m e t a   c o n t e n t = 3 D " w i = 
 d t h = 3 D d e v i c e - w i d t h , i n i t i a l - s c a l e = 3 D 1 ; u s e r - s c a l a b l e = 3 D n o ; "   n a m e = 3 D " v i e w p o r t " = 
 > < m e t a   c o n t e n t = 3 D " I E = 3 D 9 ;   I E = 3 D 8 ;   I E = 3 D 7 ;   I E = 3 D E D G E "   h t t p - e q u i v = 3 D " X - U A - C o m = 
 p a t i b l e " > < m e t a   n a m e = 3 D " x - a p p l e - d i s a b l e - m e s s a g e - r e f o r m a t t i n g " > < m e t a   c o n t e n t = 
 = 3 D " l i g h t   d a r k "   n a m e = 3 D " c o l o r - s c h e m e " > < m e t a   c o n t e n t = 3 D " l i g h t   d a r k "   n a m e = 3 D " = 
 s u p p o r t e d - c o l o r - s c h e m e s " > < ! - - 
                           = 2 0 
                           = 2 0 
                           = 2 0 
                             - - > < s t y l e   t y p e = 3 D " t e x t / c s s " > . p r o d u c t L i s t P r i c e { c o l o r : # 5 6 5 9 5 9 } . = 
 p r o d u c t D i s c o u n t { c o l o r : # c c 0 c 3 9 } . p r o d u c t P r i c e { c o l o r : # 0 f 1 1 1 1 } @ m e d i a   ( p r e f e r s - c = 
 o l o r - s c h e m e : d a r k ) { . p r o d u c t L i s t P r i c e { c o l o r : # f f f ! i m p o r t a n t } . p r o d u c t D i s c o u n t { c = 
 o l o r : # f f 8 c 8 c ! i m p o r t a n t } . p r o d u c t P r i c e { c o l o r : # f f f ! i m p o r t a n t } } [ d a t a - o g s c ]   . p r o = 
 d u c t L i s t P r i c e { c o l o r : # f f f ! i m p o r t a n t } [ d a t a - o g s c ]   . p r o d u c t D i s c o u n t { c o l o r : # f f 8 c = 
 8 c ! i m p o r t a n t } [ d a t a - o g s c ]   . p r o d u c t P r i c e { c o l o r : # f f f ! i m p o r t a n t } < / s t y l e > < s t y l e   = 
 t y p e = 3 D " t e x t / c s s " > . d e a l B a d g e { b a c k g r o u n d - c o l o r : # c c 0 c 3 9 ; c o l o r : # f f f } . d e a l T e x t { = 
 c o l o r : # c c 0 c 3 9 } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . d e a l B a d g e { b a c k g r o u n d - c o l o = 
 r : # f f 8 c 8 c ! i m p o r t a n t ; c o l o r : # 0 0 0 ! i m p o r t a n t } . d e a l T e x t { c o l o r : # f f 8 c 8 c ! i m p o r t a n t } = 
 } [ d a t a - o g s c ]   . d e a l B a d g e { b a c k g r o u n d - c o l o r : # f f 8 c 8 c ! i m p o r t a n t ; c o l o r : # 0 0 0 ! i m p o r = 
 t a n t } [ d a t a - o g s c ]   . d e a l T e x t { c o l o r : # f f 8 c 8 c ! i m p o r t a n t } < / s t y l e > < ! - - [ i f   g t e   m s o   = 
 9 ] > 
         < x m l > 
                 < o : O f f i c e D o c u m e n t S e t t i n g s > 
                         < o : A l l o w P N G   / > 
                         < o : P i x e l s P e r I n c h > 9 6 < / o : P i x e l s P e r I n c h > 
                 < / o : O f f i c e D o c u m e n t S e t t i n g s > 
         < / x m l > 
         < s t y l e > 
                 b o d y ,   h 1 ,   h 2 ,   h 3 ,   h 4 ,   t a b l e ,   t h ,   t d ,   p ,   l i ,   a ,   . s a n s ,   . f o n t s   { 
                         f o n t - f a m i l y :   H e l v e t i c a ,   A r i a l ,   s a n s - s e r i f   ! i m p o r t a n t ; 
                 } 
                 [ d a t a - o g s c ]   . r o o t C o n t e n t ,   [ d a t a - o g s c ]   . r o o t C o n t e n t   >   t a b l e { 
                     b a c k g r o u n d :   # 1 8 1 A 1 A   ! i m p o r t a n t ; 
                 } 
         < / s t y l e > 
         < ! [ e n d i f ] - - > < / h e a d > < b o d y   c l a s s = 3 D " b o d y "   s t y l e = 3 D " w o r d - s p a c i n g : n o r m a l ; " > = 
 < i m g   w i d t h = 3 D " 1 "   h e i g h t = 3 D " 1 "   s r c = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / r . h t m l ? C = 3 D 1 V = 
 D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 3 3 2 8 c 0 6 5 4 c b a 2 e 8 5 4 6 5 8 b f 5 3 6 0 8 3 f 3 a 0 p 0 e u & = 
 R = 3 D 1 O 4 7 F J I 8 C 0 A G W & T = 3 D O & U = 3 D h t t p s % 3 A % 2 F % 2 F i m a g e s - e u . s s l - i m a g e s - a m a z o n . c o m % 2 = 
 F i m a g e s % 2 F G % 2 F 0 1 % 2 F n a v % 2 F t r a n s p . g i f & H = 3 D K J 8 3 N C M C W J E H 8 J M R X W V L T H O N B 6 4 A & r e f _ = 
 = 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 _ o p e n s "   / > < d i v   c l a s s = 3 D " b o d y "   l a n g = 3 D " d e "   d i r = 3 D " = 
 a u t o " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D = 
 " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s = 
 t y l e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l = 
 i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i = 
 v   c l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f = 
 f ; m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e = 
 l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d = 
 : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e = 
 c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m = 
 s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p = 
 a c i n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " = 
 s o n a r - t r a n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 
 = 3 D " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e = 
 x t   p { m a r g i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d = 
 i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r e s e n t = 
 a t i o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t = 
 y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i = 
 f ] - - > < d i v   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o = 
 l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e   a l i g = 
 n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e = 
 n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; b o = 
 r d e r - r a d i u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i = 
 n g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e = 
 s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 
 = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   = 
 c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 
 = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e = 
 : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u = 
 t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 " = 
   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < = 
 t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f = 
   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l = 
 s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ = 
 e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n = 
 t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e = 
 c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a = 
 c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g = 
 n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k = 
 - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n = 
 l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t = 
 d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t = 
 d   a l i g n = 3 D " l e f t "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d ; " > < = 
 d i v   s t y l e = 3 D " f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z e : 1 5 = 
 p x ; f o n t - w e i g h t : 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p a n   c = 
 l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 0 " > D u   h a s t   e i n e   = E 2 = 8 0 = 9 E I n b o x = E 2 = 8 0 = 9 C - D a t e i   v o = 
 n   d e i n e m   K i n d l e   g e s e n d e t .   D u   k a n n s t   d i e s e   D a t e i   = C 3 = B C b e r   d i e   f o l g e n d e n   D o w = 
 n l o a d l i n k s   h e r u n t e r l a d e n : < / s p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / t a b l e > < / t d > < / t r > < = 
 / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > = 
 < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < = 
 / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d   a l i g n = 3 D " l e f t "   c = 
 l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 = 
 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n = 
 e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h = 
 : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " = 
 d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < = 
 t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 = 
 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i = 
 v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n = 
 e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > = 
 < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r = 
 o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : = 
 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   = 
 s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v = 
 e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p = 
 a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e = 
 r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c = 
 i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b o d y > < / t a b l e > < / t = 
 d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - = 
 - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < = 
 / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < / t a b l e > < ! [ e n d i f = 
 ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t = 
 d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y = 
 > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o = 
   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 6 = 
 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; = 
 f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r o o t = 
 C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u = 
 t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 " = 
   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r = 
 o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - = 
 s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e = 
   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < ! [ = 
 e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " s o n a r - t r a n s a c t i = 
 o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 3 D " 6 0 0 p x "   > < ! [ = 
 e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e x t   p { m a r g i n - t o p = 
 : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s = 
 p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D = 
 " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i = 
 g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 
 = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r = 
 g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o = 
 r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 
 = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; b o r d e r - r a d i u s : 4 p = 
 x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 1 2 p x   8 p x   1 6 = 
 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r = 
 d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 
 = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " = 
 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; = 
 "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e = 
 i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 = 
 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " = 
 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e = 
 c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l = 
 e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t = 
 r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l = 
 a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e = 
 i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - = 
 [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 
 = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 = 
 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y = 
 l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t = 
 i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i = 
 n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i = 
 c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   a l i g n = 3 D " l e f t "   s = 
 t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d ; " > < d i v   s t y l e = 3 D " f o n t - = 
 f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z e : 1 5 p x ; f o n t - w e i g h t : 4 0 0 = 
 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p a n   c l a s s = 3 D " r i o - t e x t   r = 
 i o - t e x t - 3 2 " > < a   h r e f = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 
 = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 3 3 2 8 c 0 6 5 4 c b a 2 e 8 5 4 6 5 8 b f 5 3 6 0 8 3 f 3 a 0 p 0 e u & R = 3 D 2 T I A U 4 X X Z = 
 0 Z S Q & T = 3 D C & U = 3 D h t t p s % 3 A % 2 F % 2 F k i n d l e - c o n t e n t - r e q u e s t s - p r o d . s 3 . a m a z o n a w s . c o m % = 
 2 F 4 2 b 4 1 4 c 7 - f a d 2 - 4 f b d - b b 1 1 - 0 3 6 3 6 5 c 7 2 c a d % 2 F I n b o x - 2 0 2 4 - 1 2 - 0 2 - 0 8 - 3 3 . p d f % 3 F r e s p o = 
 n s e - c a c h e - c o n t r o l % 3 D n o - s t o r e % 2 6 X - A m z - A l g o r i t h m % 3 D A W S 4 - H M A C - S H A 2 5 6 % 2 6 X - A m z - D = 
 a t e % 3 D 2 0 2 4 1 2 0 2 T 0 7 3 3 2 0 Z % 2 6 X - A m z - S i g n e d H e a d e r s % 3 D h o s t % 2 6 X - A m z - C r e d e n t i a l % 3 D A K = 
 I A Q N G C F 4 J 7 G 2 V 4 Y N X N % 2 5 2 F 2 0 2 4 1 2 0 2 % 2 5 2 F u s - e a s t - 1 % 2 5 2 F s 3 % 2 5 2 F a w s 4 _ r e q u e s t % 2 6 X - A = 
 m z - E x p i r e s % 3 D 6 0 4 8 0 0 % 2 6 X - A m z - S i g n a t u r e % 3 D 7 d d e a 3 d 9 1 c 5 2 0 6 3 4 b 5 5 4 8 9 5 5 8 9 3 8 6 b 9 5 7 4 5 = 
 a e 5 2 c 5 1 8 4 5 e 7 9 4 8 5 e f 9 2 6 a d 1 3 a 9 3 7 & H = 3 D I I G 0 6 W X T S J A C X 9 8 V 0 7 U Z X J 6 C B 6 O A "   r e l = 3 D " n o f o = 
 l l o w " > D u r c h s u c h b a r e s   P D F   h e r u n t e r l a d e n < / a > < / s p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / = 
 t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < = 
 ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > = 
 < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d = 
   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n " = 
   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n = 
 t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : = 
 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y = 
 > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < = 
 ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 = 
 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; = 
 "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 
 = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 = 
 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   = 
 c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c = 
 a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - = 
 o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s = 
 p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p = 
 a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > = 
 < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d = 
 d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     = 
 < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r = 
 > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > = 
 < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / = 
 t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / = 
 t d > < / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - = 
 - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n = 
 d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n = 
 "   s t y l e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 
 = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - = 
 - > < d i v   c l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # = 
 f f f f f f ; m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " = 
 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g = 
 r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D = 
 " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - = 
 [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c = 
 e l l s p a c i n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s = 
 s = 3 D " s o n a r - t r a n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   = 
 w i d t h = 3 D " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a = 
 r d - t e x t   p { m a r g i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l = 
 l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r = 
 e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < = 
 t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! = 
 [ e n d i f ] - - > < d i v   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u = 
 n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e = 
   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " = 
 p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 = 
 0 % ; b o r d e r - r a d i u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; = 
 p a d d i n g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 
 = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   = 
 a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n " = 
   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n = 
 t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : = 
 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y = 
 > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < = 
 ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 = 
 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; = 
 "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 
 = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 = 
 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   = 
 c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c = 
 a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - = 
 o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s = 
 p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p = 
 a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > = 
 < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d = 
 d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t = 
 r > < t d   a l i g n = 3 D " l e f t "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d = 
 ; " > < d i v   s t y l e = 3 D " f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z = 
 e : 1 5 p x ; f o n t - w e i g h t : 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p = 
 a n   c l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 3 " > < a   h r e f = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m = 
 l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 3 3 2 8 c 0 6 5 4 c b a 2 e 8 5 4 6 5 8 b f 5 3 6 0 8 3 f = 
 3 a 0 p 0 e u & R = 3 D 1 V P Z B X Q K W Q D 3 L & T = 3 D C & U = 3 D h t t p s % 3 A % 2 F % 2 F k i n d l e - c o n t e n t - r e q u e s t s - p = 
 r o d . s 3 . a m a z o n a w s . c o m % 2 F 4 2 b 4 1 4 c 7 - f a d 2 - 4 f b d - b b 1 1 - 0 3 6 3 6 5 c 7 2 c a d % 2 F I n b o x - 2 0 2 4 - 1 2 = 
 - 0 2 - 0 8 - 3 3 . t x t % 3 F r e s p o n s e - c a c h e - c o n t r o l % 3 D n o - s t o r e % 2 6 X - A m z - A l g o r i t h m % 3 D A W S 4 - = 
 H M A C - S H A 2 5 6 % 2 6 X - A m z - D a t e % 3 D 2 0 2 4 1 2 0 2 T 0 7 3 3 2 0 Z % 2 6 X - A m z - S i g n e d H e a d e r s % 3 D h o s t % 2 6 = 
 X - A m z - C r e d e n t i a l % 3 D A K I A Q N G C F 4 J 7 G 2 V 4 Y N X N % 2 5 2 F 2 0 2 4 1 2 0 2 % 2 5 2 F u s - e a s t - 1 % 2 5 2 F s 3 % 2 = 
 5 2 F a w s 4 _ r e q u e s t % 2 6 X - A m z - E x p i r e s % 3 D 6 0 4 8 0 0 % 2 6 X - A m z - S i g n a t u r e % 3 D 0 1 2 c d a 6 9 f 2 4 f 1 1 = 
 d 7 e 3 5 5 6 4 6 3 3 0 0 2 d 4 a 7 8 6 e 1 e 5 0 f 3 6 5 e e c c 5 f 4 4 2 1 7 9 4 8 9 0 1 8 8 4 9 & H = 3 D H U A W T D Z N 3 G Q A U B H E C E A O = 
 D O M I 1 B M A "   r e l = 3 D " n o f o l l o w " > T e x t d a t e i   h e r u n t e r l a d e n < / a > < / s p a n > < / d i v > < / t d > < / t = 
 r > < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / = 
 t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - = 
 - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > = 
 < / t r > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n = 
 t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r = 
 e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i = 
 g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 
 = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   = 
 c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 = 
 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i = 
 g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p = 
 a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w = 
 i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - = 
 f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c = 
 k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d = 
 i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l = 
 e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p = 
 e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i = 
 o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 = 
 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 = 
 0 0 % " > < t b o d y >     < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   | = 
   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l = 
 e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < = 
 / t a b l e > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i = 
 f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a = 
 b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r = 
 > < / t a b l e > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 = 
 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D = 
 " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t = 
 r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " = 
 > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o = 
 u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r " = 
   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y = 
 l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < = 
 t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : = 
 l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d = 
 i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D = 
 " l e f t "   c l a s s = 3 D " s o n a r - t r a n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v = 
 1 - o u t l o o k "   w i d t h = 3 D " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c = 
 s s " > . r i o - c a r d - t e x t   p { m a r g i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e = 
 r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k " = 
   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f = 
 f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e = 
 x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f = 
 f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 = 
 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " = 
 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f = 
 f f ; w i d t h : 1 0 0 % ; b o r d e r - r a d i u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n = 
 t - s i z e : 0 p x ; p a d d i n g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t = 
 a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " = 
 > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r " = 
   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n = 
 t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : = 
 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " = 
 m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l = 
 p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " = 
 > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l = 
 e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i = 
 n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h = 
 : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x " = 
   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i = 
 d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t = 
 ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - = 
 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : = 
 l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 = 
 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > = 
 < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   = 
 c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t = 
 b o d y > < t r > < t d   a l i g n = 3 D " l e f t "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e = 
 a k - w o r d ; " > < d i v   s t y l e = 3 D " f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f = 
 o n t - s i z e : 1 5 p x ; f o n t - w e i g h t : 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 = 
 1 ; " > < s p a n   c l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 4 " > B i t t e   b e a c h t e ,   d a s s   d e r   D o w n l o a d - L = 
 i n k ( s )   i n   7 & n b s p ; T a g e n   a b l = C 3 = A 4 u f t . < / s p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / t a b l e > = 
 < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i = 
 f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d = 
 y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d   a l i g n = 
 = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   = 
 c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 
 = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e = 
 : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u = 
 t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 " = 
   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < = 
 t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f = 
   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l = 
 s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ = 
 e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n = 
 t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e = 
 c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a = 
 c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g = 
 n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k = 
 - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n = 
 l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t = 
 d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b = 
 o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t = 
 a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d = 
 > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < = 
 / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < = 
 / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / = 
 t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] = 
 - - >   < ! - - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 = 
 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y = 
 l e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n = 
 e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   = 
 c l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; = 
 m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l = 
 p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # = 
 f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t = 
 i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o = 
   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c = 
 i n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " s o = 
 n a r - t r a n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 
 = 3 D " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e = 
 x t   p { m a r g i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d = 
 i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r e s e n t = 
 a t i o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t = 
 y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i = 
 f ] - - > < d i v   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o = 
 l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e   a l i g = 
 n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e = 
 n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; b o = 
 r d e r - r a d i u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i = 
 n g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e = 
 s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 
 = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   = 
 c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 
 = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e = 
 : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u = 
 t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 " = 
   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < = 
 t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f = 
   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l = 
 s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ = 
 e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n = 
 t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e = 
 c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a = 
 c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g = 
 n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k = 
 - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n = 
 l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t = 
 d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t = 
 d   a l i g n = 3 D " l e f t "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d ; " > < = 
 d i v   s t y l e = 3 D " f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z e : 1 5 = 
 p x ; f o n t - w e i g h t : 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p a n   c = 
 l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 7 " > H a s t   d u   F r a g e n   o d e r   B e d e n k e n   z u m   E r h a l t   d i e s e = 
 r   E - M a i l ?   H o l   d i r   H i l f e   v o m   < a   h r e f = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m l ? C = 3 D = 
 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 3 3 2 8 c 0 6 5 4 c b a 2 e 8 5 4 6 5 8 b f 5 3 6 0 8 3 f 3 a 0 p 0 e = 
 u & R = 3 D 3 M 7 X R W O S U G Q L 8 & T = 3 D C & U = 3 D h t t p s % 3 A % 2 F % 2 F w w w . a m a z o n . c o m % 2 F d e v i c e s u p p o r t % = 
 3 F r e f _ % 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 & H = 3 D 9 H I S A C F D I D Y P U E Z Q S P X K C K U 4 N A 8 A & r e f _ = 3 D p e = 
 _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 "   r e l = 3 D " n o f o l l o w " > A m a z o n - K u n d e n d i e n s t < / a > . < / s p a n > < / d i = 
 v > < / t d > < / t r > < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I = 
 E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > = 
 < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t = 
 a b l e > < / t d > < / t r > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l = 
 i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   = 
 r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 
 = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - = 
 - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b = 
 o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 
 = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n = 
 g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " = 
 "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u = 
 t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y = 
 : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D = 
 " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l = 
 e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D = 
 " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : = 
 l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a = 
 b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   = 
 w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l = 
 e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i = 
 d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ = 
 i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t = 
 r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t = 
 d > < / t r > < / t a b l e > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i = 
 v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   = 
 I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < = 
 / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - >   < / d i v > < i m g   w i d t h = 3 D " 1 "   h e i g h t = 3 D " 1 "   s r c = 3 D " h t = 
 t p s : / / w w w . a m a z o n . d e / g p / r . h t m l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 3 = 
 3 2 8 c 0 6 5 4 c b a 2 e 8 5 4 6 5 8 b f 5 3 6 0 8 3 f 3 a 0 p 0 e u & R = 3 D P H 9 E J T W N C W A B & T = 3 D E & U = 3 D h t t p s % 3 A % 2 F % = 
 2 F i m a g e s - e u . s s l - i m a g e s - a m a z o n . c o m % 2 F i m a g e s % 2 F G % 2 F 0 1 % 2 F n a v % 2 F t r a n s p . g i f & H = 3 D = 
 A B N X Z G A J D O 2 S L I G G T C R C R 4 4 K Q M O A & r e f _ = 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 _ o p e n "   / > < / b o d y > = 
 < / h t m l > 
 - - - - - - = _ P a r t _ 8 1 0 7 4 0 _ 2 0 6 4 6 0 2 6 2 . 1 7 3 3 1 2 4 8 0 9 5 8 2 - - 
 � � � �yP yP R e t u r n - p a t h :   < 2 0 2 4 1 2 0 2 0 7 3 3 4 4 7 4 7 f a 4 7 8 a 4 3 6 4 a 8 9 9 8 9 4 4 a f 5 c c a 0 p 0 e u - C 4 1 3 S V X 6 Q E Y 5 5 @ b o u n c e s . a m a z o n . c o m > 
 R e c e i v e d :   f r o m   [ 1 0 . 9 . 9 . 2 0 5 ]   ( h e l o = m a i l f r o n t 2 3 . r u n b o x ) 
 	 b y   d e l i v e r y 0 6 . r u n b o x   w i t h   e s m t p     ( E x i m   4 . 9 5 ) 
 	 i d   1 t I 0 w L - 0 0 A P c Z - 5 k 
 	 f o r   m i c h a e l . s c h e r e r @ r u n b o x . c o m ; 
 	 M o n ,   0 2   D e c   2 0 2 4   0 8 : 3 3 : 5 3   + 0 1 0 0 
 R e c e i v e d :   f r o m   e x i m   b y   m a i l f r o n t 2 3 . r u n b o x   w i t h   s a - s c a n n e d     ( E x i m   4 . 9 3 ) 
 	 i d   1 t I 0 w K - 0 0 1 y B A - 8 Y 
 	 f o r   m i c h a e l . s c h e r e r @ r u n b o x . c o m ;   M o n ,   0 2   D e c   2 0 2 4   0 8 : 3 3 : 5 2   + 0 1 0 0 
 X - S p a m - C h e c k e r - V e r s i o n :   S p a m A s s a s s i n   4 . 0 . 0   ( 2 0 2 2 - 1 2 - 1 3 )   o n   a n t i s p a m c 0 5 . r u n b o x 
 X - S p a m - L e v e l :   
 X - S p a m - S t a t u s :   N o ,   s c o r e = 0 . 0   r e q u i r e d = 5 . 0   t e s t s = D K I M _ S I G N E D , D K I M _ V A L I D , 
 	 D K I M _ V A L I D _ A U , H T M L _ M E S S A G E , M I M E _ H T M L _ M O S T L Y , S P F _ P A S S   a u t o l e a r n = n o 
 	 a u t o l e a r n _ f o r c e = n o   v e r s i o n = 4 . 0 . 0 
 X - S p a m - R e p o r t :   
 	 *   - 0 . 0   S P F _ P A S S   S P F :   s e n d e r   m a t c h e s   S P F   r e c o r d 
 	 *   - 0 . 1   D K I M _ V A L I D _ A U   M e s s a g e   h a s   a   v a l i d   D K I M   o r   D K   s i g n a t u r e   f r o m   a u t h o r ' s 
 	 *               d o m a i n 
 	 *   - 0 . 1   D K I M _ V A L I D   M e s s a g e   h a s   a t   l e a s t   o n e   v a l i d   D K I M   o r   D K   s i g n a t u r e 
 	 *     0 . 1   D K I M _ S I G N E D   M e s s a g e   h a s   a   D K I M   o r   D K   s i g n a t u r e ,   n o t   n e c e s s a r i l y 
 	 *             v a l i d 
 	 *     0 . 1   M I M E _ H T M L _ M O S T L Y   B O D Y :   M u l t i p a r t   m e s s a g e   m o s t l y   t e x t / h t m l   M I M E 
 	 *     0 . 0   H T M L _ M E S S A G E   B O D Y :   H T M L   i n c l u d e d   i n   m e s s a g e 
 R e c e i v e d - S P F :   p a s s   c l i e n t - i p = 5 4 . 2 4 0 . 1 . 1 2 1 ;   e n v e l o p e - f r o m = 2 0 2 4 1 2 0 2 0 7 3 3 4 4 7 4 7 f a 4 7 8 a 4 3 6 4 a 8 9 9 8 9 4 4 a f 5 c c a 0 p 0 e u - C 4 1 3 S V X 6 Q E Y 5 5 @ b o u n c e s . a m a z o n . c o m ;   h e l o = a 1 - 1 2 1 . s m t p - o u t . e u - w e s t - 1 . a m a z o n s e s . c o m 
 R e c e i v e d :   f r o m   a 1 - 1 2 1 . s m t p - o u t . e u - w e s t - 1 . a m a z o n s e s . c o m   ( [ 5 4 . 2 4 0 . 1 . 1 2 1 ] ) 
 	 b y   m a i l f r o n t 2 3 . r u n b o x   w i t h   e s m t p s     ( T L S 1 . 3 : E C D H E _ X 2 5 5 1 9 _ _ R S A _ P S S _ R S A E _ S H A 2 5 6 _ _ A E S _ 1 2 8 _ G C M : 1 2 8 ) 
 	 ( E x i m   4 . 9 3 ) 
 	 i d   1 t I 0 w E - 0 0 1 y 8 7 - 7 4 
 	 f o r   s p a m @ s c h e r e r o n l i n e . n e t ;   M o n ,   0 2   D e c   2 0 2 4   0 8 : 3 3 : 4 7   + 0 1 0 0 
 D K I M - S i g n a t u r e :   v = 1 ;   a = r s a - s h a 2 5 6 ;   q = d n s / t x t ;   c = r e l a x e d / s i m p l e ; 
 	 s = e z c n b l p 2 x c a g j h u m w v h r j z s a 2 s g w a w g 7 ;   d = a m a z o n . c o m ;   t = 1 7 3 3 1 2 4 8 2 5 ; 
 	 h = D a t e : F r o m : T o : M e s s a g e - I D : S u b j e c t : M I M E - V e r s i o n : C o n t e n t - T y p e ; 
 	 b h = a y A / R C D L T g i / 2 Y V M I x I j w b z g 5 Y 5 N u s b X + g m 1 t c t / I D 0 = ; 
 	 b = L 7 U n s D x M P R 3 R j G 7 H e y 4 G W y W 4 q a J Z K K z o T A 1 q x D n W T P y T u y j L M Z 3 K X l d S h J 4 1 i f u E 
 	 W 9 k 2 j h L k S b B d 0 W C O P u 2 9 U N Z i l 4 a N / 4 j N / z g + Z Z U z J 7 v N M z K Q i s u X R 9 Q v n y l Z v m g Y + 9 + 
 	 H C y 5 T U q T j F y K H 3 D O I z v d E V m N 3 W S q 4 N g l Z b K B k V t E = 
 D K I M - S i g n a t u r e :   v = 1 ;   a = r s a - s h a 2 5 6 ;   q = d n s / t x t ;   c = r e l a x e d / s i m p l e ; 
 	 s = u k u 4 t a i a 5 b 5 t s b g l x y j 6 z y m 3 2 e f j 7 x q v ;   d = a m a z o n s e s . c o m ;   t = 1 7 3 3 1 2 4 8 2 5 ; 
 	 h = D a t e : F r o m : T o : M e s s a g e - I D : S u b j e c t : M I M E - V e r s i o n : C o n t e n t - T y p e : F e e d b a c k - I D ; 
 	 b h = a y A / R C D L T g i / 2 Y V M I x I j w b z g 5 Y 5 N u s b X + g m 1 t c t / I D 0 = ; 
 	 b = f 2 N a m P W c S Y R y 6 t F K z O 3 Y I a t k D C e 5 0 x 4 h G P O q l m R S H j x 5 1 R 4 g X z s j o P 2 M V f U O P g Z O 
 	 S I j u X H j N j Q K F C h k 3 U 9 a s v z U J j G J I F g b E H k Q r i V P 0 v U o q u 7 F R W C Z Z s A I O O B a n z b B + w c 6 
 	 O c O s n 2 i y h 8 w Q Q p A v j o 0 t C p A 4 G 3 C J V 6 6 M i C B X o c c A = 
 D a t e :   M o n ,   2   D e c   2 0 2 4   0 7 : 3 3 : 4 5   + 0 0 0 0 
 F r o m :   A m a z o n   K i n d l e   S u p p o r t   < d o - n o t - r e p l y @ a m a z o n . c o m > 
 T o :   s p a m @ s c h e r e r o n l i n e . n e t 
 M e s s a g e - I D :   < 0 1 0 2 0 1 9 3 8 6 4 a 1 f e a - 6 c 3 6 8 c c 8 - 4 2 7 f - 4 7 d 1 - 8 b 5 9 - 2 e 2 8 2 a 9 9 7 d 9 1 - 0 0 0 0 0 0 @ e u - w e s t - 1 . a m a z o n s e s . c o m > 
 S u b j e c t :   = ? U T F - 8 ? B ? R H U g a G F z d C B l a W 5 l I O K A n l Z E T O K A n C 1 E Y X R l a S A = ? = 
   = ? U T F - 8 ? B ? d m 9 u I G R l a W 5 l b S B L a W 5 k b G U g Z 2 V z Z W 5 k Z X Q = ? = 
 M I M E - V e r s i o n :   1 . 0 
 C o n t e n t - T y p e :   m u l t i p a r t / a l t e r n a t i v e ;   
 	 b o u n d a r y = " - - - - = _ P a r t _ 8 2 5 8 9 7 _ 5 7 5 7 9 2 6 8 5 . 1 7 3 3 1 2 4 8 2 5 0 6 0 " 
 X - A M A Z O N - M A I L - R E L A Y - T Y P E :   n o t i f i c a t i o n 
 B o u n c e s - t o :   2 0 2 4 1 2 0 2 0 7 3 3 4 4 7 4 7 f a 4 7 8 a 4 3 6 4 a 8 9 9 8 9 4 4 a f 5 c c a 0 p 0 e u - C 4 1 3 S V X 6 Q E Y 5 5 @ b o u n c e s . a m a z o n . c o m 
 X - A M A Z O N - M E T A D A T A :   C A = C 4 1 3 S V X 6 Q E Y 5 5 
 X - O r i g i n a l - M e s s a g e I D :   < u r n . r t n . m s g . 2 0 2 4 1 2 0 2 0 7 3 3 4 4 7 4 7 f a 4 7 8 a 4 3 6 4 a 8 9 9 8 9 4 4 a f 5 c c a 0 p 0 e u @ 1 7 3 3 1 2 4 8 2 5 0 6 1 . > 
 F e e d b a c k - I D :   1 1 2 0 5 1 3 0 5 1 : : 1 . e u - w e s t - 1 . U I A U r M f b p G r x a v q n R E 0 y o Z r A U B I 9 C 7 G R N U x / k U D o 6 B 4 = : A m a z o n S E S 
 X - S E S - O u t g o i n g :   2 0 2 4 . 1 2 . 0 2 - 5 4 . 2 4 0 . 1 . 1 2 1 
 
 - - - - - - = _ P a r t _ 8 2 5 8 9 7 _ 5 7 5 7 9 2 6 8 5 . 1 7 3 3 1 2 4 8 2 5 0 6 0 
 C o n t e n t - T y p e :   t e x t / p l a i n ;   c h a r s e t = u t f - 8 
 C o n t e n t - T r a n s f e r - E n c o d i n g :   q u o t e d - p r i n t a b l e 
 
 
   = 2 0 
 
 D u   h a s t   e i n e   = E 2 = 8 0 = 9 E V D L = E 2 = 8 0 = 9 C - D a t e i   v o n   d e i n e m   K i n d l e   g e s e n d e t .   D u   k a n = 
 n s t   d i e s e   D a t e i   = C 3 = B C b e r   d i e   f o l g e n d e n   D o w n l o a d l i n k s   h e r u n t e r l a d e n : 
 = 2 0 
 = 2 0 
 
 
 
 D u r c h s u c h b a r e s   P D F   h e r u n t e r l a d e n 
 = 2 0 
 = 2 0 
 
 
 
 T e x t d a t e i   h e r u n t e r l a d e n 
 = 2 0 
 = 2 0 
 
 
 
 B i t t e   b e a c h t e ,   d a s s   d e r   D o w n l o a d - L i n k ( s )   i n   7 = C 2 = A 0 T a g e n   a b l = C 3 = A 4 u f t . 
 = 2 0 
 = 2 0 
 
 
 
 
 H a s t   d u   F r a g e n   o d e r   B e d e n k e n   z u m   E r h a l t   d i e s e r   E - M a i l ?   H o l   d i r   H i l f e   v o m   A m = 
 a z o n - K u n d e n d i e n s t . 
 = 2 0 
 = 2 0 
 
 
 
 - - - - - - = _ P a r t _ 8 2 5 8 9 7 _ 5 7 5 7 9 2 6 8 5 . 1 7 3 3 1 2 4 8 2 5 0 6 0 
 C o n t e n t - T y p e :   t e x t / h t m l ;   c h a r s e t = u t f - 8 
 C o n t e n t - T r a n s f e r - E n c o d i n g :   q u o t e d - p r i n t a b l e 
 
 < ! d o c t y p e   h t m l > < h t m l   l a n g = 3 D " d e "   d i r = 3 D " a u t o "   x m l n s = 3 D " h t t p : / / w w w . w 3 . o r g / 1 9 = 
 9 9 / x h t m l "   x m l n s : v = 3 D " u r n : s c h e m a s - m i c r o s o f t - c o m : v m l "   x m l n s : o = 3 D " u r n : s c h e m a s - = 
 m i c r o s o f t - c o m : o f f i c e : o f f i c e " > < h e a d > < t i t l e > < / t i t l e > < ! - - [ i f   ! m s o ] > < ! - - > < m e t a   = 
 h t t p - e q u i v = 3 D " X - U A - C o m p a t i b l e "   c o n t e n t = 3 D " I E = 3 D e d g e " > < ! - - < ! [ e n d i f ] - - > < m e t a   = 
 h t t p - e q u i v = 3 D " C o n t e n t - T y p e "   c o n t e n t = 3 D " t e x t / h t m l ;   c h a r s e t = 3 D U T F - 8 " > < m e t a   n a = 
 m e = 3 D " v i e w p o r t "   c o n t e n t = 3 D " w i d t h = 3 D d e v i c e - w i d t h , i n i t i a l - s c a l e = 3 D 1 " > < s t y l e   t = 
 y p e = 3 D " t e x t / c s s " > # o u t l o o k   a { p a d d i n g : 0 } b o d y { m a r g i n : 0 ; p a d d i n g : 0 ; - w e b k i t - t e x t - = 
 s i z e - a d j u s t : 1 0 0 % ; - m s - t e x t - s i z e - a d j u s t : 1 0 0 % } t a b l e , t d { b o r d e r - c o l l a p s e : c o l l a p s = 
 e ; m s o - t a b l e - l s p a c e : 0 p t ; m s o - t a b l e - r s p a c e : 0 p t } i m g { b o r d e r : 0 ; h e i g h t : a u t o ; l i n e - h = 
 e i g h t : 1 0 0 % ; o u t l i n e : 0 ; t e x t - d e c o r a t i o n : n o n e ; - m s - i n t e r p o l a t i o n - m o d e : b i c u b i c } p { = 
 d i s p l a y : b l o c k ; m a r g i n : 1 3 p x   0 } < / s t y l e > < ! - - [ i f   m s o ] > 
         < n o s c r i p t > 
         < x m l > 
         < o : O f f i c e D o c u m e n t S e t t i n g s > 
             < o : A l l o w P N G / > 
             < o : P i x e l s P e r I n c h > 9 6 < / o : P i x e l s P e r I n c h > 
         < / o : O f f i c e D o c u m e n t S e t t i n g s > 
         < / x m l > 
         < / n o s c r i p t > 
         < ! [ e n d i f ] - - > < ! - - [ i f   l t e   m s o   1 1 ] > 
         < s t y l e   t y p e = 3 D " t e x t / c s s " > . m j - o u t l o o k - g r o u p - f i x { w i d t h : 1 0 0 % ! i m p o r t a n t } < / s = 
 t y l e > 
         < ! [ e n d i f ] - - > < s t y l e   t y p e = 3 D " t e x t / c s s " > @ m e d i a   o n l y   s c r e e n   a n d   ( m i n - w i d t h : = 
 6 0 0 p x ) { . m j - c o l u m n - p e r - 1 0 0 { w i d t h : 1 0 0 % ! i m p o r t a n t ; m a x - w i d t h : 1 0 0 % } } < / s t y l e > < s t y = 
 l e   m e d i a = 3 D " s c r e e n   a n d   ( m i n - w i d t h : 6 0 0 p x ) " > . m o z - t e x t - h t m l   . m j - c o l u m n - p e r - 1 0 0 = 
   {   w i d t h : 1 0 0 %   ! i m p o r t a n t ;   m a x - w i d t h :   1 0 0 % ;   } < / s t y l e > < s t y l e   t y p e = 3 D " t e x t / c s s = 
 " > @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 2 8 , . r i o - h e a d e r - 2 8   * { c o l o r : = 
 # f f f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 0 { c o l o r : # f f f } = 
 } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 2 9 , . r i o - h e a d e r - 2 9   * { c o l o r : # = 
 f f f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 1 { c o l o r : # f f f } } = 
 @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 0 , . r i o - h e a d e r - 3 0   * { c o l o r : # f = 
 f f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 2 { c o l o r : # f f f } } @ = 
 m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 1 , . r i o - h e a d e r - 3 1   * { c o l o r : # f f = 
 f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 3 { c o l o r : # f f f } } @ m = 
 e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 2 , . r i o - h e a d e r - 3 2   * { c o l o r : # f f f = 
 ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 4 { c o l o r : # f f f } } @ m e = 
 d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 3 , . r i o - h e a d e r - 3 3   * { c o l o r : # f f f ! = 
 i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 5 { c o l o r : # f f f } } @ m e d = 
 i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 4 , . r i o - h e a d e r - 3 4   * { c o l o r : # f f f ! i = 
 m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 6 { c o l o r : # f f f } } @ m e d i = 
 a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 5 , . r i o - h e a d e r - 3 5   * { c o l o r : # f f f ! i m = 
 p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 7 { c o l o r : # f f f } } . a m a z o = 
 n - n a v b a r - c o n t e n t { f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z = 
 e : 1 4 p x ! i m p o r t a n t ; f o n t - w e i g h t : 7 0 0 ! i m p o r t a n t ; c o l o r : " # 0 F 1 1 1 1 " ! i m p o r t a n t } . a m a z o = 
 n - l o g o . f u l l { p a d d i n g - l e f t : 0 ! i m p o r t a n t ; p a d d i n g - r i g h t : 0 ! i m p o r t a n t } . a m a z o n - l o g o = 
 . z e r o B o r d e r { b o r d e r : 0 ; b o r d e r - c o l l a p s e : c o l l a p s e ; b o r d e r - s p a c i n g : 0 } . a m a z o n - l o g o = 
   . f u l l { p a d d i n g - l e f t : 0 ! i m p o r t a n t ; p a d d i n g - r i g h t : 0 ! i m p o r t a n t } . a m a z o n - l o g o   . z e r = 
 o B o r d e r { b o r d e r : 0 ; b o r d e r - c o l l a p s e : c o l l a p s e ; b o r d e r - s p a c i n g : 0 } . a m a z o n - l o g o   . l i = 
 g h t - i m g { b a c k g r o u n d - c o l o r : # f f f ; b a c k g r o u n d - i m a g e : l i n e a r - g r a d i e n t ( # f f f , # f f f ) } @ = 
 m e d i a   ( p r e f e r s - c o l o r - s c h e m e : l i g h t ) { . a m a z o n - l o g o   . l i g h t - i m g { d i s p l a y : b l o c k ! i m = 
 p o r t a n t } . a m a z o n - l o g o   . d a r k - i m g { d i s p l a y : n o n e ! i m p o r t a n t } . a m a z o n - n a v b a r - c o n t e n = 
 t { f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; b a c k g r o u n d - c o l o r : # f f f F F = 
 ! i m p o r t a n t ; c o l o r : # 0 0 0 ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . a m a z o n = 
 - l o g o { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r t a n t } . a m a z o n - n a v b a r - c o n t e n t { b a c k g r o u n d - = 
 c o l o r : # 1 6 1 d 2 6 ! i m p o r t a n t ; c o l o r : # f f f ! i m p o r t a n t } . a m a z o n - l o g o   . l i g h t - i m g { d i s p l a = 
 y : n o n e ! i m p o r t a n t } . a m a z o n - l o g o   . d a r k - i m g { d i s p l a y : b l o c k ! i m p o r t a n t } } [ d a t a - o g s c = 
 ]   . a m a z o n - l o g o   . c o n t e n t { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r t a n t } [ d a t a - o g s c ]   . a m a = 
 z o n - l o g o   . l i g h t - i m g { d i s p l a y : n o n e ! i m p o r t a n t } [ d a t a - o g s c ]   . a m a z o n - l o g o   . d a r k - i = 
 m g { d i s p l a y : b l o c k ! i m p o r t a n t } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - c a r d , . r i = 
 o - c a r d - t e x t , . r i o - c a r d - t e x t > t a b l e , . r i o - c a r d > t a b l e { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i = 
 m p o r t a n t } } [ d a t a - o g s c ]   . r i o - c a r d , [ d a t a - o g s c ]   . r i o - c a r d - t e x t , [ d a t a - o g s c ]   . r i o = 
 - c a r d - t e x t > t a b l e , [ d a t a - o g s c ]   . r i o - c a r d > t a b l e { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r = 
 t a n t } . r i o - c a r d - t e x t   p + p { m a r g i n - t o p : 1 . 2 e m } . r i o - h e a d e r   s t r o n g { c o l o r : # 0 6 7 d 6 2 } @ = 
 m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r   a { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } . r i = 
 o - h e a d e r   s t r o n g { c o l o r : # 1 3 b d 9 6 ! i m p o r t a n t } } [ d a t a - o g s c ]   . r i o - h e a d e r , [ d a t a - o g s c = 
 ]   . r i o - h e a d e r   * { c o l o r : # f f f ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - h e a d e r   a { c o l o r : # 6 e d 6 e = 
 6 ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - h e a d e r   s t r o n g { c o l o r : # 1 3 b d 9 6 ! i m p o r t a n t } . r i o - t e x = 
 t   s t r o n g { c o l o r : # 0 6 7 d 6 2 } . r i o - t e x t   i m g { w i d t h : 1 0 0 % ; h e i g h t : a u t o } @ m e d i a   ( p r e f e r s = 
 - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t   * { c o l o r : # f f f ! i m p o r t a n t } . r i o - t e x t   a , . r i o - t e x t   = 
 a > * { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } . r i o - t e x t   s t r o n g { c o l o r : # 1 3 b d 9 6 ! i m p o r t a n t } } [ d a t a = 
 - o g s c ]   . r i o - t e x t   * { c o l o r : # f f f ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - t e x t   a , [ d a t a - o g s c ] = 
   . r i o - t e x t   a > * { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - t e x t   s t r o n g { c o l o r : # = 
 1 3 b d 9 6 ! i m p o r t a n t } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - b u t t o n - s e c o n d a r y   * = 
 { c o l o r : # 0 f 1 1 1 1 ! i m p o r t a n t ; b a c k g r o u n d : # f e f e f e ! i m p o r t a n t ; b a c k g r o u n d - c o l o r : l i n e = 
 a r - g r a d i e n t ( # f e f e f e , # f e f e f e ) ! i m p o r t a n t } } [ d a t a - o g s c ]   . r i o - b u t t o n - s e c o n d a r y   * = 
 { c o l o r : # 0 f 1 1 1 1 ! i m p o r t a n t ; b a c k g r o u n d : # f e f e f e ! i m p o r t a n t ; b a c k g r o u n d - c o l o r : l i n e = 
 a r - g r a d i e n t ( # f e f e f e , # f e f e f e ) ! i m p o r t a n t } . f o o t e r C a r d   l i , . f o o t e r C a r d   p { c o l o r : i = 
 n h e r i t } . f o o t e r C a r d   p + p { m a r g i n - t o p : 1 . 2 e m } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { = 
 . f o o t e r C a r d   d i v { b a c k g r o u n d - c o l o r : # 3 0 3 3 3 3 ! i m p o r t a n t } . f o o t e r L i n k   d i v { c o l o r : # 6 = 
 e d 6 e 6 ! i m p o r t a n t } . f o o t e r T e x t   d i v { c o l o r : # c 8 c c c c ! i m p o r t a n t } . l i g h t F o o t e r I m g { d i s = 
 p l a y : n o n e ! i m p o r t a n t } . d a r k F o o t e r I m g { d i s p l a y : b l o c k ! i m p o r t a n t } } [ d a t a - o g s b ]   . f o = 
 o t e r C a r d   d i v { b a c k g r o u n d - c o l o r : # 3 0 3 3 3 3 ! i m p o r t a n t } [ d a t a - o g s c ]   . f o o t e r L i n k   d i v = 
 { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } [ d a t a - o g s c ]   . f o o t e r T e x t   d i v { c o l o r : # c 8 c c c c ! i m p o r t a n = 
 t } [ d a t a - o g s c ]   . l i g h t F o o t e r I m g { d i s p l a y : n o n e ! i m p o r t a n t } [ d a t a - o g s c ]   . d a r k F o o t e = 
 r I m g { d i s p l a y : b l o c k ! i m p o r t a n t } < / s t y l e > < s t y l e   t y p e = 3 D " t e x t / c s s " > @ f o n t - f a c e { f o = 
 n t - f a m i l y : E m b e r ; f o n t - w e i g h t : 7 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z = 
 o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f = 
 f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i = 
 l y : E m b e r ; f o n t - w e i g h t : 6 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / = 
 i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o = 
 - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : E m b e = 
 r ; f o n t - w e i g h t : 5 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / = 
 G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ M d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i = 
 c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : E m b e r ; f o n t - = 
 w e i g h t : 4 0 0 ; f o n t - s t y l e : n o r m a l ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . = 
 c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ R g . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) = 
 ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : = 
 E m b e r ; f o n t - w e i g h t : 2 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a = 
 g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ L t . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e = 
 n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : " A m a z o n = 
   E m b e r " ; f o n t - w e i g h t : 7 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o = 
 n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f = 
 " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l = 
 y : " A m a z o n   E m b e r " ; f o n t - w e i g h t : 6 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e = 
 d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r = 
 m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f = 
 o n t - f a m i l y : " A m a z o n   E m b e r " ; f o n t - w e i g h t : 5 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t = 
 p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ M d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . = 
 W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o = 
 n t - f a c e { f o n t - f a m i l y : " A m a z o n   E m b e r " ; f o n t - s t y l e : n o r m a l ; f o n t - w e i g h t : 4 0 0 ; s r c : l o = 
 c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a = 
 z o n E m b e r _ R g . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i = 
 s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : " A m a z o n   E m b e r " ; f o n t - w e i g h t : 2 = 
 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t = 
 b o u n d / A m a z o n E m b e r _ L t . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f = 
 a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } * { f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s = 
 a n s - s e r i f ; b o r d e r - s p a c i n g : 0 ; m a r g i n : 0 ; p a d d i n g : 0 } [ d a t a - o g s c ]   : r o o t { - - b o d y - b g : # = 
 1 8 1 A 1 A ; - - b o d y - c o l o r : # f f f f f f } . r o o t C o n t e n t { b a c k g r o u n d : # f f f ! i m p o r t a n t } . f o n t s , . = 
 s a n s , h 1 , h 2 , h 3 , h 4 , h 5 , l i , p , t a b l e , t d , t h { c o l o r : # 0 f 1 1 1 1 } a { c o l o r : # 0 0 7 1 8 5 ; t e x t - d e c = 
 o r a t i o n : n o n e } @ m e d i a   s c r e e n   a n d   ( m a x - w i d t h : 5 9 9 p x ) { . m o b i l e - o n l y { d i s p l a y : i n i t i = 
 a l ! i m p o r t a n t } . d e s k t o p - o n l y { d i s p l a y : n o n e ! i m p o r t a n t ; m s o - h i d e : a l l ! i m p o r t a n t } } @ = 
 m e d i a   s c r e e n   a n d   ( m i n - w i d t h : 6 0 0 p x ) { . m o b i l e - o n l y { d i s p l a y : n o n e ! i m p o r t a n t ; m s o - = 
 h i d e : a l l ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : l i g h t ) { : r o o t { - - b o d y - b g : # f f = 
 f f f f ; - - b o d y - c o l o r : # 0 0 0 0 0 0 } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { : r o o t { - - b o d y - = 
 b g : # 1 8 1 A 1 A ; - - b o d y - c o l o r : # f f f f f f } b o d y { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r t a n t } . f o = 
 n t s , . s a n s , h 1 , h 2 , h 3 , h 4 , h 5 , l i , p , t a b l e , t d , t h { c o l o r : # f f f } a { c o l o r : # 6 e d 6 e 6 } . r o o t C = 
 o n t e n t , . r o o t C o n t e n t > t a b l e { b a c k g r o u n d : # 1 8 1 a 1 a ! i m p o r t a n t } } [ d a t a - o g s c ]   . f o n t s , = 
 [ d a t a - o g s c ]   . s a n s , [ d a t a - o g s c ]   h 1 , [ d a t a - o g s c ]   h 2 , [ d a t a - o g s c ]   h 3 , [ d a t a - o g s c ]   = 
 h 4 , [ d a t a - o g s c ]   h 5 , [ d a t a - o g s c ]   l i , [ d a t a - o g s c ]   p { c o l o r : # f f f } [ d a t a - o g s c ]   a { c o l = 
 o r : # 6 e d 6 e 6 } [ d a t a - o g s c ]   . r o o t C o n t e n t , [ d a t a - o g s c ]   . r o o t C o n t e n t > t a b l e { b a c k g r o u = 
 n d : # 1 8 1 a 1 a ! i m p o r t a n t } b o d y { b a c k g r o u n d - c o l o r : v a r ( - - b o d y - b g ) ! i m p o r t a n t ; c o l o r : v = 
 a r ( - - b o d y - c o l o r ) ! i m p o r t a n t ; m a r g i n : 0 ! i m p o r t a n t ; p a d d i n g : 0 } b o d y > i m g { p o s i t i o n : a = 
 b s o l u t e } t a b l e { b o r d e r - s p a c i n g : 0 } h 3 , h 4 , h 5 , p , t a b l e   t h { f o n t - w e i g h t : 4 0 0 ; m a r g i n : 0 = 
 ; p a d d i n g : 0 } t d { p a d d i n g : 0 } i m g { b o r d e r : 0 } a , s p a n , t d { w o r d - b r e a k : b r e a k - w o r d ! i m p o r t = 
 a n t } o l , u l { m a r g i n - l e f t : 3 2 p x ! i m p o r t a n t } . b u t t o n { b a c k g r o u n d - c o l o r : # f f d 8 1 4 ; c o l o r = 
 : # 0 f 1 1 1 1 ! i m p o r t a n t ; b o r d e r - r a d i u s : 2 4 p x ; p a d d i n g : 1 p x   1 6 p x ; d i s p l a y : i n l i n e - b l o c k = 
 ; b o x - s h a d o w : 1 p x   2 p x   4 p x   r g b a ( 1 5 3 , 1 5 3 , 1 5 3 , . 2 ) ; f o n t - s i z e : 1 3 p x ; l i n e - h e i g h t : 2 9 p = 
 x ; w h i t e - s p a c e : n o w r a p ; t e x t - d e c o r a t i o n : n o n e ; m a r g i n - t o p : 4 p x } . b o x - s h a d o w   a { b o x - = 
 s h a d o w : 1 p x   2 p x   4 p x   r g b a ( 1 5 3 , 1 5 3 , 1 5 3 , . 2 ) } a , b o d y , t a b l e , t d { - m s - t e x t - s i z e - a d j u s = 
 t : 1 0 0 % ; - w e b k i t - t e x t - s i z e - a d j u s t : 1 0 0 % } . a p p l e B o d y   a , . a p p l e F o o t e r   a { c o l o r : # 0 0 7 = 
 1 8 5 ! i m p o r t a n t ; t e x t - d e c o r a t i o n : n o n e } a [ x - a p p l e - d a t a - d e t e c t o r s ] { c o l o r : # 0 0 7 1 8 5 ! = 
 i m p o r t a n t ; f o n t - f a m i l y : i n h e r i t ! i m p o r t a n t ; f o n t - s i z e : i n h e r i t ! i m p o r t a n t ; f o n t - w e = 
 i g h t : i n h e r i t ! i m p o r t a n t ; l i n e - h e i g h t : i n h e r i t ! i m p o r t a n t } u + # b o d y   a { c o l o r : # 0 0 7 1 8 = 
 5 ! i m p o r t a n t ; f o n t - f a m i l y : i n h e r i t ! i m p o r t a n t ; f o n t - s i z e : i n h e r i t ! i m p o r t a n t ; f o n t - = 
 w e i g h t : i n h e r i t ! i m p o r t a n t ; l i n e - h e i g h t : i n h e r i t ! i m p o r t a n t } # M e s s a g e V i e w B o d y   a { c = 
 o l o r : # 0 0 7 1 8 5 ! i m p o r t a n t ; f o n t - f a m i l y : i n h e r i t ! i m p o r t a n t ; f o n t - s i z e : i n h e r i t ! i m p o = 
 r t a n t ; f o n t - w e i g h t : i n h e r i t ! i m p o r t a n t ; l i n e - h e i g h t : i n h e r i t ! i m p o r t a n t } < / s t y l e > < = 
 m e t a   c o n t e n t = 3 D " t e x t / h t m l ;   c h a r s e t = 3 D U T F - 8 "   h t t p - e q u i v = 3 D " C o n t e n t - T y p e " > < m e = 
 t a   c o n t e n t = 3 D " t e l e p h o n e = 3 D n o "   n a m e = 3 D " f o r m a t - d e t e c t i o n " > < m e t a   c o n t e n t = 3 D " w i = 
 d t h = 3 D d e v i c e - w i d t h , i n i t i a l - s c a l e = 3 D 1 ; u s e r - s c a l a b l e = 3 D n o ; "   n a m e = 3 D " v i e w p o r t " = 
 > < m e t a   c o n t e n t = 3 D " I E = 3 D 9 ;   I E = 3 D 8 ;   I E = 3 D 7 ;   I E = 3 D E D G E "   h t t p - e q u i v = 3 D " X - U A - C o m = 
 p a t i b l e " > < m e t a   n a m e = 3 D " x - a p p l e - d i s a b l e - m e s s a g e - r e f o r m a t t i n g " > < m e t a   c o n t e n t = 
 = 3 D " l i g h t   d a r k "   n a m e = 3 D " c o l o r - s c h e m e " > < m e t a   c o n t e n t = 3 D " l i g h t   d a r k "   n a m e = 3 D " = 
 s u p p o r t e d - c o l o r - s c h e m e s " > < ! - - 
                           = 2 0 
                           = 2 0 
                           = 2 0 
                             - - > < s t y l e   t y p e = 3 D " t e x t / c s s " > . p r o d u c t L i s t P r i c e { c o l o r : # 5 6 5 9 5 9 } . = 
 p r o d u c t D i s c o u n t { c o l o r : # c c 0 c 3 9 } . p r o d u c t P r i c e { c o l o r : # 0 f 1 1 1 1 } @ m e d i a   ( p r e f e r s - c = 
 o l o r - s c h e m e : d a r k ) { . p r o d u c t L i s t P r i c e { c o l o r : # f f f ! i m p o r t a n t } . p r o d u c t D i s c o u n t { c = 
 o l o r : # f f 8 c 8 c ! i m p o r t a n t } . p r o d u c t P r i c e { c o l o r : # f f f ! i m p o r t a n t } } [ d a t a - o g s c ]   . p r o = 
 d u c t L i s t P r i c e { c o l o r : # f f f ! i m p o r t a n t } [ d a t a - o g s c ]   . p r o d u c t D i s c o u n t { c o l o r : # f f 8 c = 
 8 c ! i m p o r t a n t } [ d a t a - o g s c ]   . p r o d u c t P r i c e { c o l o r : # f f f ! i m p o r t a n t } < / s t y l e > < s t y l e   = 
 t y p e = 3 D " t e x t / c s s " > . d e a l B a d g e { b a c k g r o u n d - c o l o r : # c c 0 c 3 9 ; c o l o r : # f f f } . d e a l T e x t { = 
 c o l o r : # c c 0 c 3 9 } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . d e a l B a d g e { b a c k g r o u n d - c o l o = 
 r : # f f 8 c 8 c ! i m p o r t a n t ; c o l o r : # 0 0 0 ! i m p o r t a n t } . d e a l T e x t { c o l o r : # f f 8 c 8 c ! i m p o r t a n t } = 
 } [ d a t a - o g s c ]   . d e a l B a d g e { b a c k g r o u n d - c o l o r : # f f 8 c 8 c ! i m p o r t a n t ; c o l o r : # 0 0 0 ! i m p o r = 
 t a n t } [ d a t a - o g s c ]   . d e a l T e x t { c o l o r : # f f 8 c 8 c ! i m p o r t a n t } < / s t y l e > < ! - - [ i f   g t e   m s o   = 
 9 ] > 
         < x m l > 
                 < o : O f f i c e D o c u m e n t S e t t i n g s > 
                         < o : A l l o w P N G   / > 
                         < o : P i x e l s P e r I n c h > 9 6 < / o : P i x e l s P e r I n c h > 
                 < / o : O f f i c e D o c u m e n t S e t t i n g s > 
         < / x m l > 
         < s t y l e > 
                 b o d y ,   h 1 ,   h 2 ,   h 3 ,   h 4 ,   t a b l e ,   t h ,   t d ,   p ,   l i ,   a ,   . s a n s ,   . f o n t s   { 
                         f o n t - f a m i l y :   H e l v e t i c a ,   A r i a l ,   s a n s - s e r i f   ! i m p o r t a n t ; 
                 } 
                 [ d a t a - o g s c ]   . r o o t C o n t e n t ,   [ d a t a - o g s c ]   . r o o t C o n t e n t   >   t a b l e { 
                     b a c k g r o u n d :   # 1 8 1 A 1 A   ! i m p o r t a n t ; 
                 } 
         < / s t y l e > 
         < ! [ e n d i f ] - - > < / h e a d > < b o d y   c l a s s = 3 D " b o d y "   s t y l e = 3 D " w o r d - s p a c i n g : n o r m a l ; " > = 
 < i m g   w i d t h = 3 D " 1 "   h e i g h t = 3 D " 1 "   s r c = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / r . h t m l ? C = 3 D 1 V = 
 D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 3 3 4 4 7 4 7 f a 4 7 8 a 4 3 6 4 a 8 9 9 8 9 4 4 a f 5 c c a 0 p 0 e u & = 
 R = 3 D 4 Z Y 1 C J V O Z R K R & T = 3 D O & U = 3 D h t t p s % 3 A % 2 F % 2 F i m a g e s - e u . s s l - i m a g e s - a m a z o n . c o m % 2 F = 
 i m a g e s % 2 F G % 2 F 0 1 % 2 F n a v % 2 F t r a n s p . g i f & H = 3 D N A 8 I A D 7 Q R 2 W Y D V T V K Q G 0 Y L M 8 T G U A & r e f _ = 3 D = 
 p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 _ o p e n s "   / > < d i v   c l a s s = 3 D " b o d y "   l a n g = 3 D " d e "   d i r = 3 D " a u t = 
 o " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 " = 
   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l = 
 e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e = 
 - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c = 
 l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m = 
 a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p = 
 a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f = 
 f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i = 
 o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   = 
 |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i = 
 n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " s o n = 
 a r - t r a n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 3 D = 
 " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e x t   = 
 p { m a r g i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i = 
 o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 
 = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - = 
 - > < d i v   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r = 
 : # f f f f f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e   a l i g n = 
 = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n = 
 t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; b o r = 
 d e r - r a d i u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n = 
 g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s = 
 e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D = 
 " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l = 
 l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " = 
 w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x = 
 ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m = 
 a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l = 
 l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s = 
 t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o = 
   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c = 
 i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i = 
 f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i = 
 z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o = 
 n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o = 
 p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o = 
 u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e = 
 - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 = 
 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y = 
 l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   = 
 c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   a l i g n = 
 = 3 D " l e f t "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d ; " > < d i v   s t y = 
 l e = 3 D " f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z e : 1 5 p x ; f o n t = 
 - w e i g h t : 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p a n   c l a s s = 3 D = 
 " r i o - t e x t   r i o - t e x t - 3 0 " > D u   h a s t   e i n e   = E 2 = 8 0 = 9 E V D L = E 2 = 8 0 = 9 C - D a t e i   v o n   d e i n e m   = 
 K i n d l e   g e s e n d e t .   D u   k a n n s t   d i e s e   D a t e i   = C 3 = B C b e r   d i e   f o l g e n d e n   D o w n l o a d l i n k = 
 s   h e r u n t e r l a d e n : < / s p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / = 
 t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m = 
 s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - = 
 [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " " = 
   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e = 
 l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d = 
 t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - = 
 r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > = 
 < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o = 
 l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n = 
 : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l = 
 e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d = 
   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 
 = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h = 
 t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f = 
   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " = 
 p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; " = 
   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 
 = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c = 
 a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a = 
 l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b o d y > < / t a b l e > < / t d > < = 
 / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < = 
 / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a = 
 b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - = 
 > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < = 
 / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / = 
 t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   = 
 I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 = 
 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 6 0 0 p x ; = 
 "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - = 
 s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r o o t C o n t e = 
 n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; m a = 
 x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l = 
 s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - = 
 c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : = 
 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 
 = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < ! [ e n d i f = 
 ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " s o n a r - t r a n s a c t i o n a l - = 
 c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 3 D " 6 0 0 p x "   > < ! [ e n d i f = 
 ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e x t   p { m a r g i n - t o p : 1 . 2 e = 
 m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n = 
 g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t = 
 h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 = 
 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r = 
 i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 = 
 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b = 
 a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; b o r d e r - r a d i u s : 4 p x ; " > < = 
 t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 1 2 p x   8 p x   1 6 p x   8 p = 
 x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " = 
 "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c = 
 e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i = 
 d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t = 
 - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " = 
 > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r = 
 o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o = 
 n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o = 
 l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t = 
 d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 
 = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h = 
 t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f = 
   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " = 
 p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; " = 
   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 
 = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c = 
 a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a = 
 l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   a l i g n = 3 D " l e f t "   s = 
 t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d ; " > < d i v   s t y l e = 3 D " f o n t - = 
 f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z e : 1 5 p x ; f o n t - w e i g h t : 4 0 0 = 
 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p a n   c l a s s = 3 D " r i o - t e x t   r = 
 i o - t e x t - 3 2 " > < a   h r e f = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 
 = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 3 3 4 4 7 4 7 f a 4 7 8 a 4 3 6 4 a 8 9 9 8 9 4 4 a f 5 c c a 0 p 0 e u & R = 3 D 3 J E J Q L X 9 A = 
 R P G 5 & T = 3 D C & U = 3 D h t t p s % 3 A % 2 F % 2 F k i n d l e - c o n t e n t - r e q u e s t s - p r o d . s 3 . a m a z o n a w s . c o m % = 
 2 F a f a 1 0 0 3 1 - f c b b - 4 f c 9 - 8 2 9 d - 1 0 4 d 5 0 2 7 d a 1 d % 2 F V D L - 2 0 2 4 - 1 2 - 0 2 - 0 8 - 3 3 . p d f % 3 F r e s p o n s = 
 e - c a c h e - c o n t r o l % 3 D n o - s t o r e % 2 6 X - A m z - A l g o r i t h m % 3 D A W S 4 - H M A C - S H A 2 5 6 % 2 6 X - A m z - D a t = 
 e % 3 D 2 0 2 4 1 2 0 2 T 0 7 3 3 3 3 Z % 2 6 X - A m z - S i g n e d H e a d e r s % 3 D h o s t % 2 6 X - A m z - C r e d e n t i a l % 3 D A K I A = 
 Q N G C F 4 J 7 G 2 V 4 Y N X N % 2 5 2 F 2 0 2 4 1 2 0 2 % 2 5 2 F u s - e a s t - 1 % 2 5 2 F s 3 % 2 5 2 F a w s 4 _ r e q u e s t % 2 6 X - A m z = 
 - E x p i r e s % 3 D 6 0 4 8 0 0 % 2 6 X - A m z - S i g n a t u r e % 3 D a b 8 a f 9 f 3 9 2 0 6 d 9 8 2 8 e 1 b c d 4 1 7 f 5 1 4 b 8 f 6 a 8 c f = 
 2 c f c 9 8 6 5 4 f 4 7 4 4 a 1 4 e 9 d 1 0 2 7 a 1 9 & H = 3 D F G A O O C Y W O L A Q A G O T M 7 E E E T O W P Y I A "   r e l = 3 D " n o f o l l = 
 o w " > D u r c h s u c h b a r e s   P D F   h e r u n t e r l a d e n < / a > < / s p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / t a = 
 b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ = 
 e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / = 
 t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d   a = 
 l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D = 
 " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t = 
 y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s = 
 i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x = 
   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D = 
 " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t = 
 r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - = 
 [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c = 
 e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > = 
 < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " = 
 f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d = 
 i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l = 
 s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a = 
 l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l = 
 o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y = 
 : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i = 
 n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > = 
 < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b = 
 o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t = 
 a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d = 
 > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < = 
 / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < = 
 / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / = 
 t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] = 
 - - >   < ! - - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 = 
 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y = 
 l e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n = 
 e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   = 
 c l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; = 
 m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l = 
 p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # = 
 f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t = 
 i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o = 
   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c = 
 i n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " s o = 
 n a r - t r a n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 
 = 3 D " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e = 
 x t   p { m a r g i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d = 
 i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r e s e n t = 
 a t i o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t = 
 y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i = 
 f ] - - > < d i v   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o = 
 l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e   a l i g = 
 n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e = 
 n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; b o = 
 r d e r - r a d i u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i = 
 n g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e = 
 s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 
 = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   = 
 c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 
 = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e = 
 : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u = 
 t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 " = 
   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < = 
 t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f = 
   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l = 
 s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ = 
 e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n = 
 t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e = 
 c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a = 
 c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g = 
 n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k = 
 - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n = 
 l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t = 
 d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t = 
 d   a l i g n = 3 D " l e f t "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d ; " > < = 
 d i v   s t y l e = 3 D " f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z e : 1 5 = 
 p x ; f o n t - w e i g h t : 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p a n   c = 
 l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 3 " > < a   h r e f = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m l ? C = 
 = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 3 3 4 4 7 4 7 f a 4 7 8 a 4 3 6 4 a 8 9 9 8 9 4 4 a f 5 c c a 0 = 
 p 0 e u & R = 3 D 2 L 0 W I A M 1 9 3 6 U A & T = 3 D C & U = 3 D h t t p s % 3 A % 2 F % 2 F k i n d l e - c o n t e n t - r e q u e s t s - p r o d = 
 . s 3 . a m a z o n a w s . c o m % 2 F a f a 1 0 0 3 1 - f c b b - 4 f c 9 - 8 2 9 d - 1 0 4 d 5 0 2 7 d a 1 d % 2 F V D L - 2 0 2 4 - 1 2 - 0 2 - 0 = 
 8 - 3 3 . t x t % 3 F r e s p o n s e - c a c h e - c o n t r o l % 3 D n o - s t o r e % 2 6 X - A m z - A l g o r i t h m % 3 D A W S 4 - H M A C - = 
 S H A 2 5 6 % 2 6 X - A m z - D a t e % 3 D 2 0 2 4 1 2 0 2 T 0 7 3 3 3 3 Z % 2 6 X - A m z - S i g n e d H e a d e r s % 3 D h o s t % 2 6 X - A m z = 
 - C r e d e n t i a l % 3 D A K I A Q N G C F 4 J 7 G 2 V 4 Y N X N % 2 5 2 F 2 0 2 4 1 2 0 2 % 2 5 2 F u s - e a s t - 1 % 2 5 2 F s 3 % 2 5 2 F a w = 
 s 4 _ r e q u e s t % 2 6 X - A m z - E x p i r e s % 3 D 6 0 4 8 0 0 % 2 6 X - A m z - S i g n a t u r e % 3 D 8 3 1 8 0 b 1 1 d d 0 b 9 2 8 3 d 0 8 = 
 3 0 a c 3 0 a 8 6 4 a 0 c a c c 6 4 6 e f f 2 4 6 9 5 e 2 e 1 3 d 7 9 6 9 7 4 8 5 0 3 7 d & H = 3 D P 0 M Q C N R X J H W F 7 Z R T W R T N 9 0 Z J G = 
 J O A "   r e l = 3 D " n o f o l l o w " > T e x t d a t e i   h e r u n t e r l a d e n < / a > < / s p a n > < / d i v > < / t d > < / t r > < / t = 
 b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / = 
 t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t = 
 d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > = 
 < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   = 
 b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t = 
 a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 = 
 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m = 
 a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p = 
 a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > = 
 < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e = 
 f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n = 
 g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : = 
 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   = 
 s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d = 
 t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t = 
 ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - = 
 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : = 
 l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 = 
 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > = 
 < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   = 
 c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t = 
 b o d y >     < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / = 
 t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n = 
 d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > = 
 < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   | = 
   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ = 
 e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l = 
 e > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p = 
 a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n = 
 t a t i o n "   s t y l e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s = 
 t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d = 
 i f ] - - > < d i v   c l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l = 
 o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b = 
 a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l = 
 e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > = 
 < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " = 
 0 "   c e l l s p a c i n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   = 
 c l a s s = 3 D " s o n a r - t r a n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o = 
 o k "   w i d t h = 3 D " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i = 
 o - c a r d - t e x t   p { m a r g i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 " = 
   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 
 = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   = 
 > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l = 
 y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a = 
 c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > = 
 < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o = 
 l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i = 
 d t h : 1 0 0 % ; b o r d e r - r a d i u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z = 
 e : 0 p x ; p a d d i n g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   = 
 r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > = 
 < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d = 
 e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o = 
 n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f = 
 o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i = 
 n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i = 
 n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o = 
 d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " = 
 > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D = 
 " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p = 
 x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l = 
 e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 = 
 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 " = 
   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i = 
 c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j = 
 - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i = 
 s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l = 
 p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y = 
 > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a = 
 d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < = 
 t r > < t d   a l i g n = 3 D " l e f t "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r = 
 d ; " > < d i v   s t y l e = 3 D " f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i = 
 z e : 1 5 p x ; f o n t - w e i g h t : 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s = 
 p a n   c l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 4 " > B i t t e   b e a c h t e ,   d a s s   d e r   D o w n l o a d - L i n k ( s ) = 
   i n   7 & n b s p ; T a g e n   a b l = C 3 = A 4 u f t . < / s p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / t a b l e > < / t d > < = 
 / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < = 
 / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a = 
 b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d   a l i g n = 3 D " l e = 
 f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a = 
 d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d = 
 t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s = 
 o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - = 
 w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p = 
 a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l = 
 e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   = 
 I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - = 
 - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : = 
 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l = 
 t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D = 
 " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w = 
 i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - = 
 f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l = 
 o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c = 
 e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 
 = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e = 
 l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b o d y > < / t a b = 
 l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e = 
 n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t = 
 b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < / t a b l e > < ! = 
 [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b = 
 l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < = 
 / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - >   < ! - - [ = 
 i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a = 
 c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d = 
 t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : = 
 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " = 
 r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p = 
 x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; = 
 b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r = 
 ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > = 
 < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " = 
 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " s o n a r - t r a = 
 n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 3 D " 6 0 0 p x = 
 "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e x t   p { m a r g = 
 i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 " = 
   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t = 
 y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i = 
 n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v = 
   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f = 
 f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e   a l i g n = 3 D " c e n t = 
 e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   = 
 s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; b o r d e r - r a d i = 
 u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 1 2 p x   8 = 
 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n = 
 "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c = 
 l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 = 
 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n = 
 e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h = 
 : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " = 
 d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < = 
 t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 = 
 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i = 
 v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n = 
 e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > = 
 < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r = 
 o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : = 
 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   = 
 s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v = 
 e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p = 
 a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e = 
 r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c = 
 i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   a l i g n = 3 D " l e f t = 
 "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d ; " > < d i v   s t y l e = 3 D " f o = 
 n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z e : 1 5 p x ; f o n t - w e i g h t : = 
 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p a n   c l a s s = 3 D " r i o - t e x = 
 t   r i o - t e x t - 3 7 " > H a s t   d u   F r a g e n   o d e r   B e d e n k e n   z u m   E r h a l t   d i e s e r   E - M a i l ?   H o l   d = 
 i r   H i l f e   v o m   < a   h r e f = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 
 = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 3 3 4 4 7 4 7 f a 4 7 8 a 4 3 6 4 a 8 9 9 8 9 4 4 a f 5 c c a 0 p 0 e u & R = 3 D T U 0 M N S 7 U L = 
 D 0 5 & T = 3 D C & U = 3 D h t t p s % 3 A % 2 F % 2 F w w w . a m a z o n . c o m % 2 F d e v i c e s u p p o r t % 3 F r e f _ % 3 D p e _ 1 1 4 5 = 
 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 & H = 3 D D L V C 6 V 6 E 2 0 Q X 0 3 S L C J O Q K X T Q U U Y A & r e f _ = 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 = 
 1 3 0 5 1 "   r e l = 3 D " n o f o l l o w " > A m a z o n - K u n d e n d i e n s t < / a > . < / s p a n > < / d i v > < / t d > < / t r > < / t b = 
 o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t = 
 a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d = 
 > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < = 
 t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b = 
 o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a = 
 t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p = 
 x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a = 
 r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a = 
 d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < = 
 t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f = 
 t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 = 
 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s = 
 t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t = 
 h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D = 
 " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e = 
 r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0 = 
   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r = 
 ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c = 
 e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b = 
 o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l = 
 l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d = 
 y >     < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > = 
 < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f = 
 ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t = 
 d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E = 
 ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d = 
 i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < = 
 ! [ e n d i f ] - - >   < / d i v > < i m g   w i d t h = 3 D " 1 "   h e i g h t = 3 D " 1 "   s r c = 3 D " h t t p s : / / w w w . a m a z o n . d = 
 e / g p / r . h t m l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 3 3 4 4 7 4 7 f a 4 7 8 a 4 3 6 4 a 8 = 
 9 9 8 9 4 4 a f 5 c c a 0 p 0 e u & R = 3 D 3 U 5 F V L V W C 9 W U U & T = 3 D E & U = 3 D h t t p s % 3 A % 2 F % 2 F i m a g e s - e u . s s l - i = 
 m a g e s - a m a z o n . c o m % 2 F i m a g e s % 2 F G % 2 F 0 1 % 2 F n a v % 2 F t r a n s p . g i f & H = 3 D K L W G V C C A Z 5 2 W S F I O Q = 
 K U B 9 4 S P A M U A & r e f _ = 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 _ o p e n "   / > < / b o d y > < / h t m l > 
 - - - - - - = _ P a r t _ 8 2 5 8 9 7 _ 5 7 5 7 9 2 6 8 5 . 1 7 3 3 1 2 4 8 2 5 0 6 0 - - 
 � � � ��� �� R e t u r n - p a t h :   < 2 0 2 4 1 2 0 2 0 7 4 2 4 6 7 8 7 0 9 8 c 0 b 0 7 3 4 d c 5 b a 8 a 8 3 a 1 4 8 6 0 p 0 e u - C 4 1 3 S V X 6 Q E Y 5 5 @ b o u n c e s . a m a z o n . c o m > 
 R e c e i v e d :   f r o m   e x i m   b y   d e l i v e r y 0 7 . r u n b o x   w i t h   s a - s c a n n e d     ( E x i m   4 . 9 5 ) 
 	 i d   1 t I 1 5 J - 0 0 G I 5 4 - 4 s 
 	 f o r   m i c h a e l . s c h e r e r @ r u n b o x . c o m ; 
 	 M o n ,   0 2   D e c   2 0 2 4   0 8 : 4 3 : 0 9   + 0 1 0 0 
 X - S p a m - C h e c k e r - V e r s i o n :   S p a m A s s a s s i n   4 . 0 . 0   ( 2 0 2 2 - 1 2 - 1 3 )   o n   a n t i s p a m c 0 5 . r u n b o x 
 X - S p a m - L e v e l :   
 X - S p a m - S t a t u s :   N o ,   s c o r e = 0 . 0   r e q u i r e d = 5 . 0   t e s t s = D K I M _ S I G N E D , D K I M _ V A L I D , 
 	 D K I M _ V A L I D _ A U , H T M L _ M E S S A G E , P L I N G _ Q U E R Y , R C V D _ I N _ M S P I K E _ H 5 , 
 	 R C V D _ I N _ M S P I K E _ W L , S P F _ P A S S   a u t o l e a r n = n o   a u t o l e a r n _ f o r c e = n o 
 	 v e r s i o n = 4 . 0 . 0 
 X - S p a m - R e p o r t :   
 	 *     0 . 0   R C V D _ I N _ M S P I K E _ H 5   R B L :   E x c e l l e n t   r e p u t a t i o n   ( + 5 ) 
 	 *             [ 5 4 . 2 4 0 . 1 . 3   l i s t e d   i n   w l . m a i l s p i k e . n e t ] 
 	 *   - 0 . 0   S P F _ P A S S   S P F :   s e n d e r   m a t c h e s   S P F   r e c o r d 
 	 *   - 0 . 1   D K I M _ V A L I D _ A U   M e s s a g e   h a s   a   v a l i d   D K I M   o r   D K   s i g n a t u r e   f r o m   a u t h o r ' s 
 	 *               d o m a i n 
 	 *   - 0 . 1   D K I M _ V A L I D   M e s s a g e   h a s   a t   l e a s t   o n e   v a l i d   D K I M   o r   D K   s i g n a t u r e 
 	 *     0 . 1   D K I M _ S I G N E D   M e s s a g e   h a s   a   D K I M   o r   D K   s i g n a t u r e ,   n o t   n e c e s s a r i l y 
 	 *             v a l i d 
 	 *     0 . 0   R C V D _ I N _ M S P I K E _ W L   M a i l s p i k e   g o o d   s e n d e r s 
 	 *     0 . 0   H T M L _ M E S S A G E   B O D Y :   H T M L   i n c l u d e d   i n   m e s s a g e 
 	 *     0 . 1   P L I N G _ Q U E R Y   S u b j e c t   h a s   e x c l a m a t i o n   m a r k   a n d   q u e s t i o n   m a r k 
 R e c e i v e d :   f r o m   [ 1 0 . 9 . 9 . 1 8 0 ]   ( h e l o = m a i l f r o n t 2 5 . r u n b o x ) 
 	 b y   d e l i v e r y 0 7 . r u n b o x   w i t h   e s m t p     ( E x i m   4 . 9 5 ) 
 	 i d   1 t I 1 5 J - 0 0 G I 5 1 - 7 L 
 	 f o r   m i c h a e l . s c h e r e r @ r u n b o x . c o m ; 
 	 M o n ,   0 2   D e c   2 0 2 4   0 8 : 4 3 : 0 9   + 0 1 0 0 
 R e c e i v e d :   f r o m   e x i m   b y   m a i l f r o n t 2 5 . r u n b o x   w i t h   s a - s c a n n e d     ( E x i m   4 . 9 3 ) 
 	 i d   1 t I 1 5 I - 0 0 1 k n f - H E 
 	 f o r   m i c h a e l . s c h e r e r @ r u n b o x . c o m ;   M o n ,   0 2   D e c   2 0 2 4   0 8 : 4 3 : 0 8   + 0 1 0 0 
 R e c e i v e d - S P F :   p a s s   c l i e n t - i p = 5 4 . 2 4 0 . 1 . 3 ;   e n v e l o p e - f r o m = 2 0 2 4 1 2 0 2 0 7 4 2 4 6 7 8 7 0 9 8 c 0 b 0 7 3 4 d c 5 b a 8 a 8 3 a 1 4 8 6 0 p 0 e u - C 4 1 3 S V X 6 Q E Y 5 5 @ b o u n c e s . a m a z o n . c o m ;   h e l o = a 1 - 3 . s m t p - o u t . e u - w e s t - 1 . a m a z o n s e s . c o m 
 R e c e i v e d :   f r o m   a 1 - 3 . s m t p - o u t . e u - w e s t - 1 . a m a z o n s e s . c o m   ( [ 5 4 . 2 4 0 . 1 . 3 ] ) 
 	 b y   m a i l f r o n t 2 5 . r u n b o x   w i t h   e s m t p s     ( T L S 1 . 3 : E C D H E _ X 2 5 5 1 9 _ _ R S A _ P S S _ R S A E _ S H A 2 5 6 _ _ A E S _ 1 2 8 _ G C M : 1 2 8 ) 
 	 ( E x i m   4 . 9 3 ) 
 	 i d   1 t I 1 4 z - 0 0 1 k e o - 0 N 
 	 f o r   s p a m @ s c h e r e r o n l i n e . n e t ;   M o n ,   0 2   D e c   2 0 2 4   0 8 : 4 2 : 5 0   + 0 1 0 0 
 D K I M - S i g n a t u r e :   v = 1 ;   a = r s a - s h a 2 5 6 ;   q = d n s / t x t ;   c = r e l a x e d / s i m p l e ; 
 	 s = e z c n b l p 2 x c a g j h u m w v h r j z s a 2 s g w a w g 7 ;   d = a m a z o n . c o m ;   t = 1 7 3 3 1 2 5 3 6 7 ; 
 	 h = D a t e : F r o m : T o : M e s s a g e - I D : S u b j e c t : M I M E - V e r s i o n : C o n t e n t - T y p e ; 
 	 b h = Y t P o q N C b J T y g k 6 W H S 6 Z x d 8 k w t v f J D k X B k q c J 9 P C q K 3 k = ; 
 	 b = c 9 r w T e C Z b T H 0 D S e t E J n k M q I E F S S 3 j 7 r h M N y Y A r + O / 0 H N T A U x e H 9 D t B O E v R g l N G b M 
 	 T B s t s J i b 2 5 Q q D a N y C b Z 0 w C v 0 3 O j e y p L d 2 p S h k 6 p 2 0 4 s B h j B T B / h T d n I 9 a 9 L l x P l I X O p 
 	 6 5 j f v E r S T p Q l z + E i s X 1 h f s h + C C C e H T 5 H s I G e z H k M = 
 D K I M - S i g n a t u r e :   v = 1 ;   a = r s a - s h a 2 5 6 ;   q = d n s / t x t ;   c = r e l a x e d / s i m p l e ; 
 	 s = u k u 4 t a i a 5 b 5 t s b g l x y j 6 z y m 3 2 e f j 7 x q v ;   d = a m a z o n s e s . c o m ;   t = 1 7 3 3 1 2 5 3 6 7 ; 
 	 h = D a t e : F r o m : T o : M e s s a g e - I D : S u b j e c t : M I M E - V e r s i o n : C o n t e n t - T y p e : F e e d b a c k - I D ; 
 	 b h = Y t P o q N C b J T y g k 6 W H S 6 Z x d 8 k w t v f J D k X B k q c J 9 P C q K 3 k = ; 
 	 b = U C Q q i L s F 9 w z O i T u y m l t B H 5 4 H b 0 4 T K P D I m 4 6 Q A l r 0 C l r z 4 j B w J F R u h Y Z F B e F y 3 b d 1 
 	 6 Z C m B z d r V z 3 M Z s M v m H B N 0 Z E f I 9 h 3 b G I U C S 6 J v 9 i u Y G Y C S K R y o u F W H D 7 L s I N 1 b 9 A R F L L 
 	 J 6 D H b D p A W N 1 D x k Z A l S 1 Y P l y u h 2 Z W Z h y A D q I K W P M k = 
 D a t e :   M o n ,   2   D e c   2 0 2 4   0 7 : 4 2 : 4 7   + 0 0 0 0 
 F r o m :   A m a z o n   K i n d l e   S u p p o r t   < d o - n o t - r e p l y @ a m a z o n . c o m > 
 T o :   s p a m @ s c h e r e r o n l i n e . n e t 
 M e s s a g e - I D :   < 0 1 0 2 0 1 9 3 8 6 5 2 6 7 f 7 - 1 e d a 1 6 5 c - d 6 b 0 - 4 e 0 f - 8 3 f 4 - f b c 1 3 8 6 c 3 5 1 8 - 0 0 0 0 0 0 @ e u - w e s t - 1 . a m a z o n s e s . c o m > 
 S u b j e c t :   = ? U T F - 8 ? B ? R H U g a G F z d C B l a W 5 l I O K A n m 5 l d W V z I E 5 v d C D D p M O 2 w 7 w = ? = 
   = ? U T F - 8 ? B ? I E B + 4 o K s w 5 / i g K Z 9 I C M l f l 5 b X X t 9 f F z i g q z D n y g p I i c t K y 9 A ? = 
   = ? U T F - 8 ? B ? I T 8 6 O y z i g K b C t y b i g J 7 i g J 8 8 P l 8 q P c K p w q f C o s K l w q M k w q 7 i g J w t R G F 0 Z Q = = ? = 
   = ? U T F - 8 ? B ? a S B 2 b 2 4 g Z G V p b m V t I E t p b m R s Z S B n Z X N l b m R l d A = = ? = 
 M I M E - V e r s i o n :   1 . 0 
 C o n t e n t - T y p e :   m u l t i p a r t / a l t e r n a t i v e ;   
 	 b o u n d a r y = " - - - - = _ P a r t _ 8 3 2 3 0 9 _ 9 2 8 1 4 7 0 8 5 . 1 7 3 3 1 2 5 3 6 7 7 9 0 " 
 X - A M A Z O N - M A I L - R E L A Y - T Y P E :   n o t i f i c a t i o n 
 B o u n c e s - t o :   2 0 2 4 1 2 0 2 0 7 4 2 4 6 7 8 7 0 9 8 c 0 b 0 7 3 4 d c 5 b a 8 a 8 3 a 1 4 8 6 0 p 0 e u - C 4 1 3 S V X 6 Q E Y 5 5 @ b o u n c e s . a m a z o n . c o m 
 X - A M A Z O N - M E T A D A T A :   C A = C 4 1 3 S V X 6 Q E Y 5 5 
 X - O r i g i n a l - M e s s a g e I D :   < u r n . r t n . m s g . 2 0 2 4 1 2 0 2 0 7 4 2 4 6 7 8 7 0 9 8 c 0 b 0 7 3 4 d c 5 b a 8 a 8 3 a 1 4 8 6 0 p 0 e u @ 1 7 3 3 1 2 5 3 6 7 7 9 1 . > 
 F e e d b a c k - I D :   1 1 2 0 5 1 3 0 5 1 : : 1 . e u - w e s t - 1 . U I A U r M f b p G r x a v q n R E 0 y o Z r A U B I 9 C 7 G R N U x / k U D o 6 B 4 = : A m a z o n S E S 
 X - S E S - O u t g o i n g :   2 0 2 4 . 1 2 . 0 2 - 5 4 . 2 4 0 . 1 . 3 
 
 - - - - - - = _ P a r t _ 8 3 2 3 0 9 _ 9 2 8 1 4 7 0 8 5 . 1 7 3 3 1 2 5 3 6 7 7 9 0 
 C o n t e n t - T y p e :   t e x t / p l a i n ;   c h a r s e t = u t f - 8 
 C o n t e n t - T r a n s f e r - E n c o d i n g :   q u o t e d - p r i n t a b l e 
 
 
   = 2 0 
 
 D u   h a s t   e i n e   = E 2 = 8 0 = 9 E n e u e s   N o t   = C 3 = A 4 = C 3 = B 6 = C 3 = B C   @ ~ = E 2 = 8 2 = A C = C 3 = 9 F = E 2 = 8 0 = 
 = A 6 }   # % ~ ^ [ ] { } | \ = E 2 = 8 2 = A C = C 3 = 9 F ( ) " ' - + / @ ! ? : ; , = E 2 = 8 0 = A 6 = C 2 = B 7 & = E 2 = 8 0 = 9 E = E 2 = 8 0 = 
 = 9 F < > _ * = 3 D = C 2 = A 9 = C 2 = A 7 = C 2 = A 2 = C 2 = A 5 = C 2 = A 3 $ = C 2 = A E = E 2 = 8 0 = 9 C - D a t e i   v o n   d e i n e m   K = 
 i n d l e   g e s e n d e t .   D u   k a n n s t   d i e s e   D a t e i   = C 3 = B C b e r   d i e   f o l g e n d e n   D o w n l o a d l i n k s = 
   h e r u n t e r l a d e n : 
 = 2 0 
 = 2 0 
 
 
 
 D u r c h s u c h b a r e s   P D F   h e r u n t e r l a d e n 
 = 2 0 
 = 2 0 
 
 
 
 T e x t d a t e i   h e r u n t e r l a d e n 
 = 2 0 
 = 2 0 
 
 
 
 B i t t e   b e a c h t e ,   d a s s   d e r   D o w n l o a d - L i n k ( s )   i n   7 = C 2 = A 0 T a g e n   a b l = C 3 = A 4 u f t . 
 = 2 0 
 = 2 0 
 
 
 
 
 H a s t   d u   F r a g e n   o d e r   B e d e n k e n   z u m   E r h a l t   d i e s e r   E - M a i l ?   H o l   d i r   H i l f e   v o m   A m = 
 a z o n - K u n d e n d i e n s t . 
 = 2 0 
 = 2 0 
 
 
 
 - - - - - - = _ P a r t _ 8 3 2 3 0 9 _ 9 2 8 1 4 7 0 8 5 . 1 7 3 3 1 2 5 3 6 7 7 9 0 
 C o n t e n t - T y p e :   t e x t / h t m l ;   c h a r s e t = u t f - 8 
 C o n t e n t - T r a n s f e r - E n c o d i n g :   q u o t e d - p r i n t a b l e 
 
 < ! d o c t y p e   h t m l > < h t m l   l a n g = 3 D " d e "   d i r = 3 D " a u t o "   x m l n s = 3 D " h t t p : / / w w w . w 3 . o r g / 1 9 = 
 9 9 / x h t m l "   x m l n s : v = 3 D " u r n : s c h e m a s - m i c r o s o f t - c o m : v m l "   x m l n s : o = 3 D " u r n : s c h e m a s - = 
 m i c r o s o f t - c o m : o f f i c e : o f f i c e " > < h e a d > < t i t l e > < / t i t l e > < ! - - [ i f   ! m s o ] > < ! - - > < m e t a   = 
 h t t p - e q u i v = 3 D " X - U A - C o m p a t i b l e "   c o n t e n t = 3 D " I E = 3 D e d g e " > < ! - - < ! [ e n d i f ] - - > < m e t a   = 
 h t t p - e q u i v = 3 D " C o n t e n t - T y p e "   c o n t e n t = 3 D " t e x t / h t m l ;   c h a r s e t = 3 D U T F - 8 " > < m e t a   n a = 
 m e = 3 D " v i e w p o r t "   c o n t e n t = 3 D " w i d t h = 3 D d e v i c e - w i d t h , i n i t i a l - s c a l e = 3 D 1 " > < s t y l e   t = 
 y p e = 3 D " t e x t / c s s " > # o u t l o o k   a { p a d d i n g : 0 } b o d y { m a r g i n : 0 ; p a d d i n g : 0 ; - w e b k i t - t e x t - = 
 s i z e - a d j u s t : 1 0 0 % ; - m s - t e x t - s i z e - a d j u s t : 1 0 0 % } t a b l e , t d { b o r d e r - c o l l a p s e : c o l l a p s = 
 e ; m s o - t a b l e - l s p a c e : 0 p t ; m s o - t a b l e - r s p a c e : 0 p t } i m g { b o r d e r : 0 ; h e i g h t : a u t o ; l i n e - h = 
 e i g h t : 1 0 0 % ; o u t l i n e : 0 ; t e x t - d e c o r a t i o n : n o n e ; - m s - i n t e r p o l a t i o n - m o d e : b i c u b i c } p { = 
 d i s p l a y : b l o c k ; m a r g i n : 1 3 p x   0 } < / s t y l e > < ! - - [ i f   m s o ] > 
         < n o s c r i p t > 
         < x m l > 
         < o : O f f i c e D o c u m e n t S e t t i n g s > 
             < o : A l l o w P N G / > 
             < o : P i x e l s P e r I n c h > 9 6 < / o : P i x e l s P e r I n c h > 
         < / o : O f f i c e D o c u m e n t S e t t i n g s > 
         < / x m l > 
         < / n o s c r i p t > 
         < ! [ e n d i f ] - - > < ! - - [ i f   l t e   m s o   1 1 ] > 
         < s t y l e   t y p e = 3 D " t e x t / c s s " > . m j - o u t l o o k - g r o u p - f i x { w i d t h : 1 0 0 % ! i m p o r t a n t } < / s = 
 t y l e > 
         < ! [ e n d i f ] - - > < s t y l e   t y p e = 3 D " t e x t / c s s " > @ m e d i a   o n l y   s c r e e n   a n d   ( m i n - w i d t h : = 
 6 0 0 p x ) { . m j - c o l u m n - p e r - 1 0 0 { w i d t h : 1 0 0 % ! i m p o r t a n t ; m a x - w i d t h : 1 0 0 % } } < / s t y l e > < s t y = 
 l e   m e d i a = 3 D " s c r e e n   a n d   ( m i n - w i d t h : 6 0 0 p x ) " > . m o z - t e x t - h t m l   . m j - c o l u m n - p e r - 1 0 0 = 
   {   w i d t h : 1 0 0 %   ! i m p o r t a n t ;   m a x - w i d t h :   1 0 0 % ;   } < / s t y l e > < s t y l e   t y p e = 3 D " t e x t / c s s = 
 " > @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 2 8 , . r i o - h e a d e r - 2 8   * { c o l o r : = 
 # f f f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 0 { c o l o r : # f f f } = 
 } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 2 9 , . r i o - h e a d e r - 2 9   * { c o l o r : # = 
 f f f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 1 { c o l o r : # f f f } } = 
 @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 0 , . r i o - h e a d e r - 3 0   * { c o l o r : # f = 
 f f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 2 { c o l o r : # f f f } } @ = 
 m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 1 , . r i o - h e a d e r - 3 1   * { c o l o r : # f f = 
 f ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 3 { c o l o r : # f f f } } @ m = 
 e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 2 , . r i o - h e a d e r - 3 2   * { c o l o r : # f f f = 
 ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 4 { c o l o r : # f f f } } @ m e = 
 d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 3 , . r i o - h e a d e r - 3 3   * { c o l o r : # f f f ! = 
 i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 5 { c o l o r : # f f f } } @ m e d = 
 i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 4 , . r i o - h e a d e r - 3 4   * { c o l o r : # f f f ! i = 
 m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 6 { c o l o r : # f f f } } @ m e d i = 
 a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r - 3 5 , . r i o - h e a d e r - 3 5   * { c o l o r : # f f f ! i m = 
 p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t - 3 7 { c o l o r : # f f f } } . a m a z o = 
 n - n a v b a r - c o n t e n t { f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z = 
 e : 1 4 p x ! i m p o r t a n t ; f o n t - w e i g h t : 7 0 0 ! i m p o r t a n t ; c o l o r : " # 0 F 1 1 1 1 " ! i m p o r t a n t } . a m a z o = 
 n - l o g o . f u l l { p a d d i n g - l e f t : 0 ! i m p o r t a n t ; p a d d i n g - r i g h t : 0 ! i m p o r t a n t } . a m a z o n - l o g o = 
 . z e r o B o r d e r { b o r d e r : 0 ; b o r d e r - c o l l a p s e : c o l l a p s e ; b o r d e r - s p a c i n g : 0 } . a m a z o n - l o g o = 
   . f u l l { p a d d i n g - l e f t : 0 ! i m p o r t a n t ; p a d d i n g - r i g h t : 0 ! i m p o r t a n t } . a m a z o n - l o g o   . z e r = 
 o B o r d e r { b o r d e r : 0 ; b o r d e r - c o l l a p s e : c o l l a p s e ; b o r d e r - s p a c i n g : 0 } . a m a z o n - l o g o   . l i = 
 g h t - i m g { b a c k g r o u n d - c o l o r : # f f f ; b a c k g r o u n d - i m a g e : l i n e a r - g r a d i e n t ( # f f f , # f f f ) } @ = 
 m e d i a   ( p r e f e r s - c o l o r - s c h e m e : l i g h t ) { . a m a z o n - l o g o   . l i g h t - i m g { d i s p l a y : b l o c k ! i m = 
 p o r t a n t } . a m a z o n - l o g o   . d a r k - i m g { d i s p l a y : n o n e ! i m p o r t a n t } . a m a z o n - n a v b a r - c o n t e n = 
 t { f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; b a c k g r o u n d - c o l o r : # f f f F F = 
 ! i m p o r t a n t ; c o l o r : # 0 0 0 ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . a m a z o n = 
 - l o g o { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r t a n t } . a m a z o n - n a v b a r - c o n t e n t { b a c k g r o u n d - = 
 c o l o r : # 1 6 1 d 2 6 ! i m p o r t a n t ; c o l o r : # f f f ! i m p o r t a n t } . a m a z o n - l o g o   . l i g h t - i m g { d i s p l a = 
 y : n o n e ! i m p o r t a n t } . a m a z o n - l o g o   . d a r k - i m g { d i s p l a y : b l o c k ! i m p o r t a n t } } [ d a t a - o g s c = 
 ]   . a m a z o n - l o g o   . c o n t e n t { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r t a n t } [ d a t a - o g s c ]   . a m a = 
 z o n - l o g o   . l i g h t - i m g { d i s p l a y : n o n e ! i m p o r t a n t } [ d a t a - o g s c ]   . a m a z o n - l o g o   . d a r k - i = 
 m g { d i s p l a y : b l o c k ! i m p o r t a n t } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - c a r d , . r i = 
 o - c a r d - t e x t , . r i o - c a r d - t e x t > t a b l e , . r i o - c a r d > t a b l e { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i = 
 m p o r t a n t } } [ d a t a - o g s c ]   . r i o - c a r d , [ d a t a - o g s c ]   . r i o - c a r d - t e x t , [ d a t a - o g s c ]   . r i o = 
 - c a r d - t e x t > t a b l e , [ d a t a - o g s c ]   . r i o - c a r d > t a b l e { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r = 
 t a n t } . r i o - c a r d - t e x t   p + p { m a r g i n - t o p : 1 . 2 e m } . r i o - h e a d e r   s t r o n g { c o l o r : # 0 6 7 d 6 2 } @ = 
 m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - h e a d e r   a { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } . r i = 
 o - h e a d e r   s t r o n g { c o l o r : # 1 3 b d 9 6 ! i m p o r t a n t } } [ d a t a - o g s c ]   . r i o - h e a d e r , [ d a t a - o g s c = 
 ]   . r i o - h e a d e r   * { c o l o r : # f f f ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - h e a d e r   a { c o l o r : # 6 e d 6 e = 
 6 ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - h e a d e r   s t r o n g { c o l o r : # 1 3 b d 9 6 ! i m p o r t a n t } . r i o - t e x = 
 t   s t r o n g { c o l o r : # 0 6 7 d 6 2 } . r i o - t e x t   i m g { w i d t h : 1 0 0 % ; h e i g h t : a u t o } @ m e d i a   ( p r e f e r s = 
 - c o l o r - s c h e m e : d a r k ) { . r i o - t e x t   * { c o l o r : # f f f ! i m p o r t a n t } . r i o - t e x t   a , . r i o - t e x t   = 
 a > * { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } . r i o - t e x t   s t r o n g { c o l o r : # 1 3 b d 9 6 ! i m p o r t a n t } } [ d a t a = 
 - o g s c ]   . r i o - t e x t   * { c o l o r : # f f f ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - t e x t   a , [ d a t a - o g s c ] = 
   . r i o - t e x t   a > * { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } [ d a t a - o g s c ]   . r i o - t e x t   s t r o n g { c o l o r : # = 
 1 3 b d 9 6 ! i m p o r t a n t } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . r i o - b u t t o n - s e c o n d a r y   * = 
 { c o l o r : # 0 f 1 1 1 1 ! i m p o r t a n t ; b a c k g r o u n d : # f e f e f e ! i m p o r t a n t ; b a c k g r o u n d - c o l o r : l i n e = 
 a r - g r a d i e n t ( # f e f e f e , # f e f e f e ) ! i m p o r t a n t } } [ d a t a - o g s c ]   . r i o - b u t t o n - s e c o n d a r y   * = 
 { c o l o r : # 0 f 1 1 1 1 ! i m p o r t a n t ; b a c k g r o u n d : # f e f e f e ! i m p o r t a n t ; b a c k g r o u n d - c o l o r : l i n e = 
 a r - g r a d i e n t ( # f e f e f e , # f e f e f e ) ! i m p o r t a n t } . f o o t e r C a r d   l i , . f o o t e r C a r d   p { c o l o r : i = 
 n h e r i t } . f o o t e r C a r d   p + p { m a r g i n - t o p : 1 . 2 e m } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { = 
 . f o o t e r C a r d   d i v { b a c k g r o u n d - c o l o r : # 3 0 3 3 3 3 ! i m p o r t a n t } . f o o t e r L i n k   d i v { c o l o r : # 6 = 
 e d 6 e 6 ! i m p o r t a n t } . f o o t e r T e x t   d i v { c o l o r : # c 8 c c c c ! i m p o r t a n t } . l i g h t F o o t e r I m g { d i s = 
 p l a y : n o n e ! i m p o r t a n t } . d a r k F o o t e r I m g { d i s p l a y : b l o c k ! i m p o r t a n t } } [ d a t a - o g s b ]   . f o = 
 o t e r C a r d   d i v { b a c k g r o u n d - c o l o r : # 3 0 3 3 3 3 ! i m p o r t a n t } [ d a t a - o g s c ]   . f o o t e r L i n k   d i v = 
 { c o l o r : # 6 e d 6 e 6 ! i m p o r t a n t } [ d a t a - o g s c ]   . f o o t e r T e x t   d i v { c o l o r : # c 8 c c c c ! i m p o r t a n = 
 t } [ d a t a - o g s c ]   . l i g h t F o o t e r I m g { d i s p l a y : n o n e ! i m p o r t a n t } [ d a t a - o g s c ]   . d a r k F o o t e = 
 r I m g { d i s p l a y : b l o c k ! i m p o r t a n t } < / s t y l e > < s t y l e   t y p e = 3 D " t e x t / c s s " > @ f o n t - f a c e { f o = 
 n t - f a m i l y : E m b e r ; f o n t - w e i g h t : 7 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z = 
 o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f = 
 f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i = 
 l y : E m b e r ; f o n t - w e i g h t : 6 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / = 
 i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o = 
 - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : E m b e = 
 r ; f o n t - w e i g h t : 5 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / = 
 G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ M d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i = 
 c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : E m b e r ; f o n t - = 
 w e i g h t : 4 0 0 ; f o n t - s t y l e : n o r m a l ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . = 
 c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ R g . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) = 
 ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : = 
 E m b e r ; f o n t - w e i g h t : 2 0 0 ; s r c : l o c a l ( " E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a = 
 g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ L t . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e = 
 n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : " A m a z o n = 
   E m b e r " ; f o n t - w e i g h t : 7 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o = 
 n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f = 
 " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l = 
 y : " A m a z o n   E m b e r " ; f o n t - w e i g h t : 6 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e = 
 d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ B d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r = 
 m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f = 
 o n t - f a m i l y : " A m a z o n   E m b e r " ; f o n t - w e i g h t : 5 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t = 
 p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a z o n E m b e r _ M d . _ C B 1 5 1 5 4 5 0 2 3 9 _ . = 
 W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } @ f o = 
 n t - f a c e { f o n t - f a m i l y : " A m a z o n   E m b e r " ; f o n t - s t y l e : n o r m a l ; f o n t - w e i g h t : 4 0 0 ; s r c : l o = 
 c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t b o u n d / A m a = 
 z o n E m b e r _ R g . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f a m i l y : s w i = 
 s s ; m s o - f o n t - a l t : " A r i a l " } @ f o n t - f a c e { f o n t - f a m i l y : " A m a z o n   E m b e r " ; f o n t - w e i g h t : 2 = 
 0 0 ; s r c : l o c a l ( " A m a z o n   E m b e r " ) , u r l ( h t t p s : / / m . m e d i a - a m a z o n . c o m / i m a g e s / G / 0 1 / o u t = 
 b o u n d / A m a z o n E m b e r _ L t . _ C B 1 5 1 5 4 5 0 2 3 9 _ . W O F F )   f o r m a t ( " w o f f " ) ; m s o - g e n e r i c - f o n t - f = 
 a m i l y : s w i s s ; m s o - f o n t - a l t : " A r i a l " } * { f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s = 
 a n s - s e r i f ; b o r d e r - s p a c i n g : 0 ; m a r g i n : 0 ; p a d d i n g : 0 } [ d a t a - o g s c ]   : r o o t { - - b o d y - b g : # = 
 1 8 1 A 1 A ; - - b o d y - c o l o r : # f f f f f f } . r o o t C o n t e n t { b a c k g r o u n d : # f f f ! i m p o r t a n t } . f o n t s , . = 
 s a n s , h 1 , h 2 , h 3 , h 4 , h 5 , l i , p , t a b l e , t d , t h { c o l o r : # 0 f 1 1 1 1 } a { c o l o r : # 0 0 7 1 8 5 ; t e x t - d e c = 
 o r a t i o n : n o n e } @ m e d i a   s c r e e n   a n d   ( m a x - w i d t h : 5 9 9 p x ) { . m o b i l e - o n l y { d i s p l a y : i n i t i = 
 a l ! i m p o r t a n t } . d e s k t o p - o n l y { d i s p l a y : n o n e ! i m p o r t a n t ; m s o - h i d e : a l l ! i m p o r t a n t } } @ = 
 m e d i a   s c r e e n   a n d   ( m i n - w i d t h : 6 0 0 p x ) { . m o b i l e - o n l y { d i s p l a y : n o n e ! i m p o r t a n t ; m s o - = 
 h i d e : a l l ! i m p o r t a n t } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : l i g h t ) { : r o o t { - - b o d y - b g : # f f = 
 f f f f ; - - b o d y - c o l o r : # 0 0 0 0 0 0 } } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { : r o o t { - - b o d y - = 
 b g : # 1 8 1 A 1 A ; - - b o d y - c o l o r : # f f f f f f } b o d y { b a c k g r o u n d - c o l o r : # 1 8 1 a 1 a ! i m p o r t a n t } . f o = 
 n t s , . s a n s , h 1 , h 2 , h 3 , h 4 , h 5 , l i , p , t a b l e , t d , t h { c o l o r : # f f f } a { c o l o r : # 6 e d 6 e 6 } . r o o t C = 
 o n t e n t , . r o o t C o n t e n t > t a b l e { b a c k g r o u n d : # 1 8 1 a 1 a ! i m p o r t a n t } } [ d a t a - o g s c ]   . f o n t s , = 
 [ d a t a - o g s c ]   . s a n s , [ d a t a - o g s c ]   h 1 , [ d a t a - o g s c ]   h 2 , [ d a t a - o g s c ]   h 3 , [ d a t a - o g s c ]   = 
 h 4 , [ d a t a - o g s c ]   h 5 , [ d a t a - o g s c ]   l i , [ d a t a - o g s c ]   p { c o l o r : # f f f } [ d a t a - o g s c ]   a { c o l = 
 o r : # 6 e d 6 e 6 } [ d a t a - o g s c ]   . r o o t C o n t e n t , [ d a t a - o g s c ]   . r o o t C o n t e n t > t a b l e { b a c k g r o u = 
 n d : # 1 8 1 a 1 a ! i m p o r t a n t } b o d y { b a c k g r o u n d - c o l o r : v a r ( - - b o d y - b g ) ! i m p o r t a n t ; c o l o r : v = 
 a r ( - - b o d y - c o l o r ) ! i m p o r t a n t ; m a r g i n : 0 ! i m p o r t a n t ; p a d d i n g : 0 } b o d y > i m g { p o s i t i o n : a = 
 b s o l u t e } t a b l e { b o r d e r - s p a c i n g : 0 } h 3 , h 4 , h 5 , p , t a b l e   t h { f o n t - w e i g h t : 4 0 0 ; m a r g i n : 0 = 
 ; p a d d i n g : 0 } t d { p a d d i n g : 0 } i m g { b o r d e r : 0 } a , s p a n , t d { w o r d - b r e a k : b r e a k - w o r d ! i m p o r t = 
 a n t } o l , u l { m a r g i n - l e f t : 3 2 p x ! i m p o r t a n t } . b u t t o n { b a c k g r o u n d - c o l o r : # f f d 8 1 4 ; c o l o r = 
 : # 0 f 1 1 1 1 ! i m p o r t a n t ; b o r d e r - r a d i u s : 2 4 p x ; p a d d i n g : 1 p x   1 6 p x ; d i s p l a y : i n l i n e - b l o c k = 
 ; b o x - s h a d o w : 1 p x   2 p x   4 p x   r g b a ( 1 5 3 , 1 5 3 , 1 5 3 , . 2 ) ; f o n t - s i z e : 1 3 p x ; l i n e - h e i g h t : 2 9 p = 
 x ; w h i t e - s p a c e : n o w r a p ; t e x t - d e c o r a t i o n : n o n e ; m a r g i n - t o p : 4 p x } . b o x - s h a d o w   a { b o x - = 
 s h a d o w : 1 p x   2 p x   4 p x   r g b a ( 1 5 3 , 1 5 3 , 1 5 3 , . 2 ) } a , b o d y , t a b l e , t d { - m s - t e x t - s i z e - a d j u s = 
 t : 1 0 0 % ; - w e b k i t - t e x t - s i z e - a d j u s t : 1 0 0 % } . a p p l e B o d y   a , . a p p l e F o o t e r   a { c o l o r : # 0 0 7 = 
 1 8 5 ! i m p o r t a n t ; t e x t - d e c o r a t i o n : n o n e } a [ x - a p p l e - d a t a - d e t e c t o r s ] { c o l o r : # 0 0 7 1 8 5 ! = 
 i m p o r t a n t ; f o n t - f a m i l y : i n h e r i t ! i m p o r t a n t ; f o n t - s i z e : i n h e r i t ! i m p o r t a n t ; f o n t - w e = 
 i g h t : i n h e r i t ! i m p o r t a n t ; l i n e - h e i g h t : i n h e r i t ! i m p o r t a n t } u + # b o d y   a { c o l o r : # 0 0 7 1 8 = 
 5 ! i m p o r t a n t ; f o n t - f a m i l y : i n h e r i t ! i m p o r t a n t ; f o n t - s i z e : i n h e r i t ! i m p o r t a n t ; f o n t - = 
 w e i g h t : i n h e r i t ! i m p o r t a n t ; l i n e - h e i g h t : i n h e r i t ! i m p o r t a n t } # M e s s a g e V i e w B o d y   a { c = 
 o l o r : # 0 0 7 1 8 5 ! i m p o r t a n t ; f o n t - f a m i l y : i n h e r i t ! i m p o r t a n t ; f o n t - s i z e : i n h e r i t ! i m p o = 
 r t a n t ; f o n t - w e i g h t : i n h e r i t ! i m p o r t a n t ; l i n e - h e i g h t : i n h e r i t ! i m p o r t a n t } < / s t y l e > < = 
 m e t a   c o n t e n t = 3 D " t e x t / h t m l ;   c h a r s e t = 3 D U T F - 8 "   h t t p - e q u i v = 3 D " C o n t e n t - T y p e " > < m e = 
 t a   c o n t e n t = 3 D " t e l e p h o n e = 3 D n o "   n a m e = 3 D " f o r m a t - d e t e c t i o n " > < m e t a   c o n t e n t = 3 D " w i = 
 d t h = 3 D d e v i c e - w i d t h , i n i t i a l - s c a l e = 3 D 1 ; u s e r - s c a l a b l e = 3 D n o ; "   n a m e = 3 D " v i e w p o r t " = 
 > < m e t a   c o n t e n t = 3 D " I E = 3 D 9 ;   I E = 3 D 8 ;   I E = 3 D 7 ;   I E = 3 D E D G E "   h t t p - e q u i v = 3 D " X - U A - C o m = 
 p a t i b l e " > < m e t a   n a m e = 3 D " x - a p p l e - d i s a b l e - m e s s a g e - r e f o r m a t t i n g " > < m e t a   c o n t e n t = 
 = 3 D " l i g h t   d a r k "   n a m e = 3 D " c o l o r - s c h e m e " > < m e t a   c o n t e n t = 3 D " l i g h t   d a r k "   n a m e = 3 D " = 
 s u p p o r t e d - c o l o r - s c h e m e s " > < ! - - 
                           = 2 0 
                           = 2 0 
                           = 2 0 
                             - - > < s t y l e   t y p e = 3 D " t e x t / c s s " > . p r o d u c t L i s t P r i c e { c o l o r : # 5 6 5 9 5 9 } . = 
 p r o d u c t D i s c o u n t { c o l o r : # c c 0 c 3 9 } . p r o d u c t P r i c e { c o l o r : # 0 f 1 1 1 1 } @ m e d i a   ( p r e f e r s - c = 
 o l o r - s c h e m e : d a r k ) { . p r o d u c t L i s t P r i c e { c o l o r : # f f f ! i m p o r t a n t } . p r o d u c t D i s c o u n t { c = 
 o l o r : # f f 8 c 8 c ! i m p o r t a n t } . p r o d u c t P r i c e { c o l o r : # f f f ! i m p o r t a n t } } [ d a t a - o g s c ]   . p r o = 
 d u c t L i s t P r i c e { c o l o r : # f f f ! i m p o r t a n t } [ d a t a - o g s c ]   . p r o d u c t D i s c o u n t { c o l o r : # f f 8 c = 
 8 c ! i m p o r t a n t } [ d a t a - o g s c ]   . p r o d u c t P r i c e { c o l o r : # f f f ! i m p o r t a n t } < / s t y l e > < s t y l e   = 
 t y p e = 3 D " t e x t / c s s " > . d e a l B a d g e { b a c k g r o u n d - c o l o r : # c c 0 c 3 9 ; c o l o r : # f f f } . d e a l T e x t { = 
 c o l o r : # c c 0 c 3 9 } @ m e d i a   ( p r e f e r s - c o l o r - s c h e m e : d a r k ) { . d e a l B a d g e { b a c k g r o u n d - c o l o = 
 r : # f f 8 c 8 c ! i m p o r t a n t ; c o l o r : # 0 0 0 ! i m p o r t a n t } . d e a l T e x t { c o l o r : # f f 8 c 8 c ! i m p o r t a n t } = 
 } [ d a t a - o g s c ]   . d e a l B a d g e { b a c k g r o u n d - c o l o r : # f f 8 c 8 c ! i m p o r t a n t ; c o l o r : # 0 0 0 ! i m p o r = 
 t a n t } [ d a t a - o g s c ]   . d e a l T e x t { c o l o r : # f f 8 c 8 c ! i m p o r t a n t } < / s t y l e > < ! - - [ i f   g t e   m s o   = 
 9 ] > 
         < x m l > 
                 < o : O f f i c e D o c u m e n t S e t t i n g s > 
                         < o : A l l o w P N G   / > 
                         < o : P i x e l s P e r I n c h > 9 6 < / o : P i x e l s P e r I n c h > 
                 < / o : O f f i c e D o c u m e n t S e t t i n g s > 
         < / x m l > 
         < s t y l e > 
                 b o d y ,   h 1 ,   h 2 ,   h 3 ,   h 4 ,   t a b l e ,   t h ,   t d ,   p ,   l i ,   a ,   . s a n s ,   . f o n t s   { 
                         f o n t - f a m i l y :   H e l v e t i c a ,   A r i a l ,   s a n s - s e r i f   ! i m p o r t a n t ; 
                 } 
                 [ d a t a - o g s c ]   . r o o t C o n t e n t ,   [ d a t a - o g s c ]   . r o o t C o n t e n t   >   t a b l e { 
                     b a c k g r o u n d :   # 1 8 1 A 1 A   ! i m p o r t a n t ; 
                 } 
         < / s t y l e > 
         < ! [ e n d i f ] - - > < / h e a d > < b o d y   c l a s s = 3 D " b o d y "   s t y l e = 3 D " w o r d - s p a c i n g : n o r m a l ; " > = 
 < i m g   w i d t h = 3 D " 1 "   h e i g h t = 3 D " 1 "   s r c = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / r . h t m l ? C = 3 D 1 V = 
 D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 4 2 4 6 7 8 7 0 9 8 c 0 b 0 7 3 4 d c 5 b a 8 a 8 3 a 1 4 8 6 0 p 0 e u & = 
 R = 3 D 1 7 X 9 Z T A C P I 5 T B & T = 3 D O & U = 3 D h t t p s % 3 A % 2 F % 2 F i m a g e s - e u . s s l - i m a g e s - a m a z o n . c o m % 2 = 
 F i m a g e s % 2 F G % 2 F 0 1 % 2 F n a v % 2 F t r a n s p . g i f & H = 3 D O O N 4 F K Z H N N V B J O U M L 6 Z X E X 4 Q Q M G A & r e f _ = 
 = 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 _ o p e n s "   / > < d i v   c l a s s = 3 D " b o d y "   l a n g = 3 D " d e "   d i r = 3 D " = 
 a u t o " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D = 
 " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s = 
 t y l e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l = 
 i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i = 
 v   c l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f = 
 f ; m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e = 
 l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d = 
 : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e = 
 c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m = 
 s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p = 
 a c i n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " = 
 s o n a r - t r a n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 
 = 3 D " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e = 
 x t   p { m a r g i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d = 
 i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r e s e n t = 
 a t i o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t = 
 y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i = 
 f ] - - > < d i v   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o = 
 l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e   a l i g = 
 n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e = 
 n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; b o = 
 r d e r - r a d i u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i = 
 n g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e = 
 s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 
 = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   = 
 c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 
 = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e = 
 : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u = 
 t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 " = 
   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < = 
 t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f = 
   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l = 
 s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ = 
 e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n = 
 t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e = 
 c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a = 
 c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g = 
 n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k = 
 - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n = 
 l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t = 
 d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t = 
 d   a l i g n = 3 D " l e f t "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d ; " > < = 
 d i v   s t y l e = 3 D " f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z e : 1 5 = 
 p x ; f o n t - w e i g h t : 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p a n   c = 
 l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 0 " > D u   h a s t   e i n e   = E 2 = 8 0 = 9 E n e u e s   N o t   = C 3 = A 4 = C 3 = B 6 = 
 = C 3 = B C   @ ~ = E 2 = 8 2 = A C = C 3 = 9 F = E 2 = 8 0 = A 6 }   # % ~ ^ [ ] { } | \ = E 2 = 8 2 = A C = C 3 = 9 F ( ) " ' - + / @ ! ? : ; , = 
 = E 2 = 8 0 = A 6 = C 2 = B 7 & a m p ; = E 2 = 8 0 = 9 E = E 2 = 8 0 = 9 F & l t ; & g t ; _ * = 3 D = C 2 = A 9 = C 2 = A 7 = C 2 = A 2 = C 2 = A 5 = 
 = C 2 = A 3 $ = C 2 = A E = E 2 = 8 0 = 9 C - D a t e i   v o n   d e i n e m   K i n d l e   g e s e n d e t .   D u   k a n n s t   d i e s e   D a = 
 t e i   = C 3 = B C b e r   d i e   f o l g e n d e n   D o w n l o a d l i n k s   h e r u n t e r l a d e n : < / s p a n > < / d i v > < / t d > < = 
 / t r > < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > = 
 < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f = 
 ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t = 
 d > < / t r > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c = 
 e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " = 
 p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h = 
 e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y = 
 l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 = 
 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : = 
 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a = 
 l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l = 
 l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D = 
 " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u = 
 p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l = 
 o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a = 
 d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n = 
 : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n = 
 - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c = 
 t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 = 
 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 = 
 0 0 % " > < t b o d y >     < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   | = 
   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l = 
 e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < = 
 / t a b l e > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i = 
 f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a = 
 b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r = 
 > < / t a b l e > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 = 
 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D = 
 " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t = 
 r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " = 
 > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o = 
 u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r " = 
   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y = 
 l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < = 
 t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : = 
 l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d = 
 i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D = 
 " l e f t "   c l a s s = 3 D " s o n a r - t r a n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v = 
 1 - o u t l o o k "   w i d t h = 3 D " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c = 
 s s " > . r i o - c a r d - t e x t   p { m a r g i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e = 
 r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k " = 
   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f = 
 f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e = 
 x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f = 
 f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 = 
 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " = 
 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f = 
 f f ; w i d t h : 1 0 0 % ; b o r d e r - r a d i u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n = 
 t - s i z e : 0 p x ; p a d d i n g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t = 
 a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " = 
 > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r " = 
   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n = 
 t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : = 
 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " = 
 m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l = 
 p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " = 
 > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l = 
 e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i = 
 n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h = 
 : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x " = 
   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i = 
 d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t = 
 ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - = 
 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : = 
 l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 = 
 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > = 
 < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   = 
 c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t = 
 b o d y > < t r > < t d   a l i g n = 3 D " l e f t "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e = 
 a k - w o r d ; " > < d i v   s t y l e = 3 D " f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f = 
 o n t - s i z e : 1 5 p x ; f o n t - w e i g h t : 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 = 
 1 ; " > < s p a n   c l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 2 " > < a   h r e f = 3 D " h t t p s : / / w w w . a m a z o n . d e / g = 
 p / f . h t m l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 4 2 4 6 7 8 7 0 9 8 c 0 b 0 7 3 4 d c 5 b a = 
 8 a 8 3 a 1 4 8 6 0 p 0 e u & R = 3 D 2 P 6 R 8 O 3 G R P 7 Q N & T = 3 D C & U = 3 D h t t p s % 3 A % 2 F % 2 F k i n d l e - c o n t e n t - r e q = 
 u e s t s - p r o d . s 3 . a m a z o n a w s . c o m % 2 F c 0 e e 7 c 5 7 - 4 3 b c - 4 1 2 2 - a b 6 9 - c 0 7 e 0 7 0 b d d 7 6 % 2 F n e u e s % = 
 2 5 2 0 N o t % 2 5 2 0 % 2 5 C 3 % 2 5 A 4 % 2 5 C 3 % 2 5 B 6 % 2 5 C 3 % 2 5 B C % 2 5 2 0 % 2 5 4 0 % 7 E % 2 5 E 2 % 2 5 8 2 % 2 5 A C % 2 5 C 3 = 
 % 2 5 9 F % 2 5 E 2 % 2 5 8 0 % 2 5 A 6 % 2 5 7 D % 2 5 2 0 % 2 5 2 3 % 2 5 2 5 % 7 E % 2 5 5 E % 2 5 5 B % 2 5 5 D % 2 5 7 B % 2 5 7 D _ _ % 2 5 E 2 = 
 % 2 5 8 2 % 2 5 A C % 2 5 C 3 % 2 5 9 F % 2 5 2 8 % 2 5 2 9 _ % 2 5 2 7 - % 2 5 2 B _ % 2 5 4 0 % 2 5 2 1 _ _ % 2 5 3 B % 2 5 2 C % 2 5 E 2 % 2 5 8 0 = 
 % 2 5 A 6 % 2 5 C 2 % 2 5 B 7 % 2 5 2 6 % 2 5 E 2 % 2 5 8 0 % 2 5 9 E % 2 5 E 2 % 2 5 8 0 % 2 5 9 F _ _ _ _ % 2 5 3 D % 2 5 C 2 % 2 5 A 9 % 2 5 C 2 % = 
 2 5 A 7 % 2 5 C 2 % 2 5 A 2 % 2 5 C 2 % 2 5 A 5 % 2 5 C 2 % 2 5 A 3 % 2 5 2 4 % 2 5 C 2 % 2 5 A E - 2 0 2 4 - 1 2 - 0 2 - 0 8 - 4 2 . p d f % 3 F r e = 
 s p o n s e - c a c h e - c o n t r o l % 3 D n o - s t o r e % 2 6 X - A m z - A l g o r i t h m % 3 D A W S 4 - H M A C - S H A 2 5 6 % 2 6 X - A m = 
 z - D a t e % 3 D 2 0 2 4 1 2 0 2 T 0 7 4 2 4 2 Z % 2 6 X - A m z - S i g n e d H e a d e r s % 3 D h o s t % 2 6 X - A m z - C r e d e n t i a l % 3 = 
 D A K I A Q N G C F 4 J 7 G 2 V 4 Y N X N % 2 5 2 F 2 0 2 4 1 2 0 2 % 2 5 2 F u s - e a s t - 1 % 2 5 2 F s 3 % 2 5 2 F a w s 4 _ r e q u e s t % 2 6 = 
 X - A m z - E x p i r e s % 3 D 6 0 4 8 0 0 % 2 6 X - A m z - S i g n a t u r e % 3 D 6 1 c 9 4 8 d f 3 2 b 4 9 b 0 9 4 a 8 2 5 e 7 4 4 d 3 6 f 7 4 4 = 
 c 8 0 d d 6 d 5 3 f 8 c 3 d 3 b a f 6 6 7 8 3 3 2 c b 1 8 1 7 4 & H = 3 D K A S K 9 E C B H 3 N 9 C K E Z B V X K K O Z Q T Y 0 A "   r e l = 3 D " n = 
 o f o l l o w " > D u r c h s u c h b a r e s   P D F   h e r u n t e r l a d e n < / a > < / s p a n > < / d i v > < / t d > < / t r > < / t b o d y = 
 > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l = 
 e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / = 
 t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < t r > = 
 < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d = 
 e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o = 
 n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f = 
 o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i = 
 n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i = 
 n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o = 
 d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " = 
 > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D = 
 " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p = 
 x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l = 
 e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 = 
 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 " = 
   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i = 
 c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j = 
 - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i = 
 s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l = 
 p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y = 
 > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a = 
 d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >   = 
   < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t = 
 r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - = 
 > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < = 
 / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < = 
 / t d > < / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] = 
 - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e = 
 n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n = 
 "   s t y l e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 
 = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - = 
 - > < d i v   c l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # = 
 f f f f f f ; m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " = 
 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g = 
 r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D = 
 " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - = 
 [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c = 
 e l l s p a c i n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s = 
 s = 3 D " s o n a r - t r a n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   = 
 w i d t h = 3 D " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a = 
 r d - t e x t   p { m a r g i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l = 
 l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r = 
 e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < = 
 t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! = 
 [ e n d i f ] - - > < d i v   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u = 
 n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e = 
   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " = 
 p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 = 
 0 % ; b o r d e r - r a d i u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; = 
 p a d d i n g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 
 = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   = 
 a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n " = 
   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n = 
 t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : = 
 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y = 
 > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < = 
 ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 = 
 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; = 
 "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 
 = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 = 
 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   = 
 c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c = 
 a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - = 
 o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s = 
 p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p = 
 a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > = 
 < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d = 
 d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t = 
 r > < t d   a l i g n = 3 D " l e f t "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d = 
 ; " > < d i v   s t y l e = 3 D " f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z = 
 e : 1 5 p x ; f o n t - w e i g h t : 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p = 
 a n   c l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 3 " > < a   h r e f = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m = 
 l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 4 2 4 6 7 8 7 0 9 8 c 0 b 0 7 3 4 d c 5 b a 8 a 8 3 a 1 4 = 
 8 6 0 p 0 e u & R = 3 D 3 4 3 J V 2 S 1 0 G U T E & T = 3 D C & U = 3 D h t t p s % 3 A % 2 F % 2 F k i n d l e - c o n t e n t - r e q u e s t s - p = 
 r o d . s 3 . a m a z o n a w s . c o m % 2 F c 0 e e 7 c 5 7 - 4 3 b c - 4 1 2 2 - a b 6 9 - c 0 7 e 0 7 0 b d d 7 6 % 2 F n e u e s % 2 5 2 0 N o t = 
 % 2 5 2 0 % 2 5 C 3 % 2 5 A 4 % 2 5 C 3 % 2 5 B 6 % 2 5 C 3 % 2 5 B C % 2 5 2 0 % 2 5 4 0 % 7 E % 2 5 E 2 % 2 5 8 2 % 2 5 A C % 2 5 C 3 % 2 5 9 F % 2 = 
 5 E 2 % 2 5 8 0 % 2 5 A 6 % 2 5 7 D % 2 5 2 0 % 2 5 2 3 % 2 5 2 5 % 7 E % 2 5 5 E % 2 5 5 B % 2 5 5 D % 2 5 7 B % 2 5 7 D _ _ % 2 5 E 2 % 2 5 8 2 % 2 = 
 5 A C % 2 5 C 3 % 2 5 9 F % 2 5 2 8 % 2 5 2 9 _ % 2 5 2 7 - % 2 5 2 B _ % 2 5 4 0 % 2 5 2 1 _ _ % 2 5 3 B % 2 5 2 C % 2 5 E 2 % 2 5 8 0 % 2 5 A 6 % 2 = 
 5 C 2 % 2 5 B 7 % 2 5 2 6 % 2 5 E 2 % 2 5 8 0 % 2 5 9 E % 2 5 E 2 % 2 5 8 0 % 2 5 9 F _ _ _ _ % 2 5 3 D % 2 5 C 2 % 2 5 A 9 % 2 5 C 2 % 2 5 A 7 % 2 5 = 
 C 2 % 2 5 A 2 % 2 5 C 2 % 2 5 A 5 % 2 5 C 2 % 2 5 A 3 % 2 5 2 4 % 2 5 C 2 % 2 5 A E - 2 0 2 4 - 1 2 - 0 2 - 0 8 - 4 2 . t x t % 3 F r e s p o n s e - = 
 c a c h e - c o n t r o l % 3 D n o - s t o r e % 2 6 X - A m z - A l g o r i t h m % 3 D A W S 4 - H M A C - S H A 2 5 6 % 2 6 X - A m z - D a t e % = 
 3 D 2 0 2 4 1 2 0 2 T 0 7 4 2 4 2 Z % 2 6 X - A m z - S i g n e d H e a d e r s % 3 D h o s t % 2 6 X - A m z - C r e d e n t i a l % 3 D A K I A Q N = 
 G C F 4 J 7 G 2 V 4 Y N X N % 2 5 2 F 2 0 2 4 1 2 0 2 % 2 5 2 F u s - e a s t - 1 % 2 5 2 F s 3 % 2 5 2 F a w s 4 _ r e q u e s t % 2 6 X - A m z - E = 
 x p i r e s % 3 D 6 0 4 8 0 0 % 2 6 X - A m z - S i g n a t u r e % 3 D 2 5 2 2 9 8 d 9 3 4 c 1 1 9 0 9 c 5 d c 1 7 6 b 9 7 0 e 2 4 4 b f 1 b 4 4 4 7 = 
 3 c d a 6 9 d a 7 6 f 4 5 f 1 6 b 3 b 7 8 a 7 f 1 & H = 3 D D C N B G K P D J Z S W W V V T T Z J D A N A P D P S A "   r e l = 3 D " n o f o l l o w = 
 " > T e x t d a t e i   h e r u n t e r l a d e n < / a > < / s p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / t a b l e > < / t d > < / = 
 t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / = 
 d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b = 
 l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d   a l i g n = 3 D " l e f = 
 t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d = 
 d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t = 
 h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o = 
 - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w = 
 i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a = 
 c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 
 = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I = 
 E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - = 
 - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : = 
 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l = 
 t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D = 
 " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w = 
 i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - = 
 f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l = 
 o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c = 
 e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 
 = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e = 
 l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b o d y > < / t a b = 
 l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e = 
 n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t = 
 b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < / t a b l e > < ! = 
 [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b = 
 l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < = 
 / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - >   < ! - - [ = 
 i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a = 
 c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d = 
 t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : = 
 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " = 
 r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p = 
 x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; = 
 b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r = 
 ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > = 
 < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " = 
 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " s o n a r - t r a = 
 n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 3 D " 6 0 0 p x = 
 "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e x t   p { m a r g = 
 i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 " = 
   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t = 
 y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i = 
 n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v = 
   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f = 
 f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e   a l i g n = 3 D " c e n t = 
 e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   = 
 s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; b o r d e r - r a d i = 
 u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 1 2 p x   8 = 
 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n = 
 "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c = 
 l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 = 
 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n = 
 e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h = 
 : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " = 
 d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < = 
 t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 = 
 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i = 
 v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n = 
 e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > = 
 < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r = 
 o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : = 
 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   = 
 s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v = 
 e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p = 
 a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e = 
 r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c = 
 i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   a l i g n = 3 D " l e f t = 
 "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d ; " > < d i v   s t y l e = 3 D " f o = 
 n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z e : 1 5 p x ; f o n t - w e i g h t : = 
 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p a n   c l a s s = 3 D " r i o - t e x = 
 t   r i o - t e x t - 3 4 " > B i t t e   b e a c h t e ,   d a s s   d e r   D o w n l o a d - L i n k ( s )   i n   7 & n b s p ; T a g e n   a b l = 
 = C 3 = A 4 u f t . < / s p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > = 
 < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I = 
 E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s = 
 o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 
 = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c = 
 i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " = 
 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e = 
 x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e = 
   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " = 
 p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f = 
 o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p = 
 r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 
 = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c = 
 o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t = 
 - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I = 
 E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a = 
 t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d = 
 i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s = 
 i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t = 
 o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l = 
 e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o = 
 p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 
 = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y = 
 > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i = 
 f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < = 
 ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > = 
 < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i = 
 f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v = 
 > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t a b l e   = 
 a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " = 
 r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " = 
 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s = 
 o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 
 = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 = 
 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # = 
 f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d = 
 d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e = 
 s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! = 
 - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " s o n a r - t r a n s a c t i o n a l - c o p y - o u = 
 t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 3 D " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! = 
 - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e x t   p { m a r g i n - t o p : 1 . 2 e m } < / s t y = 
 l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " = 
   c l a s s = 3 D " r i o - c a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x = 
 ; "   w i d t h = 3 D " 5 8 4 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t = 
 - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r i o - c a r d = 
 - t e x t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o = 
 ; b o r d e r - r a d i u s : 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c = 
 e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n = 
 d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; b o r d e r - r a d i u s : 4 p x ; " > < t b o d y > < t = 
 r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a = 
 l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l = 
 l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D = 
 " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 = 
 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c = 
 t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l = 
 i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e = 
 s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t = 
 - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s = 
 e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D = 
 " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u = 
 m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l = 
 i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > = 
 < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o = 
 n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] = 
 - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e = 
 : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; = 
 w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 
 = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p = 
 ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 
 = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   a l i g n = 3 D " l e f t "   s t y l e = 3 D " f o n = 
 t - s i z e : 0 p x ; p a d d i n g : 0 ; w o r d - b r e a k : b r e a k - w o r d ; " > < d i v   s t y l e = 3 D " f o n t - f a m i l y : E m b e = 
 r , ' A m a z o n   E m b e r ' , A r i a l , s a n s - s e r i f ; f o n t - s i z e : 1 5 p x ; f o n t - w e i g h t : 4 0 0 ; l i n e - h e i g h = 
 t : 2 0 p x ; t e x t - a l i g n : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p a n   c l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 7 " = 
 > H a s t   d u   F r a g e n   o d e r   B e d e n k e n   z u m   E r h a l t   d i e s e r   E - M a i l ?   H o l   d i r   H i l f e   v o m   < = 
 a   h r e f = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g = 
 : 2 0 2 4 1 2 0 2 0 7 4 2 4 6 7 8 7 0 9 8 c 0 b 0 7 3 4 d c 5 b a 8 a 8 3 a 1 4 8 6 0 p 0 e u & R = 3 D 2 S 9 S W F V C X 7 W J 2 & T = 3 D C & U = 
 = 3 D h t t p s % 3 A % 2 F % 2 F w w w . a m a z o n . c o m % 2 F d e v i c e s u p p o r t % 3 F r e f _ % 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 = 
 1 3 0 5 1 & H = 3 D E I D X A U F 1 B D S V V M W 1 N 7 A C X C G M E I 0 A & r e f _ = 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 "   r e l = 
 = 3 D " n o f o l l o w " > A m a z o n - K u n d e n d i e n s t < / a > . < / s p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / t a b l = 
 e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n = 
 d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b = 
 o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d   a l i = 
 g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 = 
 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l = 
 e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z = 
 e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a = 
 u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 = 
 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > = 
 < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i = 
 f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l = 
 l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! = 
 [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o = 
 n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r = 
 e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p = 
 a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i = 
 g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o = 
 k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i = 
 n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t = 
 d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
 = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b = 
 o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t = 
 a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d = 
 > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < = 
 / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < = 
 / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / = 
 t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] = 
 - - >   < / d i v > < i m g   w i d t h = 3 D " 1 "   h e i g h t = 3 D " 1 "   s r c = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / r . h = 
 t m l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 4 1 2 0 2 0 7 4 2 4 6 7 8 7 0 9 8 c 0 b 0 7 3 4 d c 5 b a 8 a 8 3 a = 
 1 4 8 6 0 p 0 e u & R = 3 D 2 W W W O K Y 9 B O A B 5 & T = 3 D E & U = 3 D h t t p s % 3 A % 2 F % 2 F i m a g e s - e u . s s l - i m a g e s - a m = 
 a z o n . c o m % 2 F i m a g e s % 2 F G % 2 F 0 1 % 2 F n a v % 2 F t r a n s p . g i f & H = 3 D W G 1 V Q V D 3 O F S 2 W S E X N M R H A W H I 6 = 
 H S A & r e f _ = 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 _ o p e n "   / > < / b o d y > < / h t m l > 
 - - - - - - = _ P a r t _ 8 3 2 3 0 9 _ 9 2 8 1 4 7 0 8 5 . 1 7 3 3 1 2 5 3 6 7 7 9 0 - - 
�k  �j  �i  �h  �g  �f  �e  �d  �c  �b  �a   � �` ��_�^ � ��]�` (0 isalreadyprocessed isAlreadyProcessed�_ �\ ��\  �  �[�[ 0 	inputitem 	inputItem�^   � �Z�Y�X�Z 0 	inputitem 	inputItem�Y 0 isfound isFound�X 0 processeditem processedItem � �W�V�U�T�S�R�W 0 itemlist itemList
�V 
kocl
�U 
cobj
�T .corecnte****       ****
�S 
TEXT
�R 
rslt�] JfE�O +b  �,[��l kh ��&��&  eE�Y h[OY��O�f  �b  �,6FY hO�E� ascr  ��ޭ