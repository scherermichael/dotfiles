FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m      
 
 �    P r i v a t e 	 o      ���� 0 accountname accountName��  ��        l    ����  r        m       �   & K i n d l e   S c r i b e   N o t e s  o      ���� &0 sourcemailboxname sourceMailboxName��  ��        l    ����  r        b        o    	���� &0 sourcemailboxname sourceMailboxName  m   	 
   �    / p r o c e s s e d  o      ���� ,0 processedmailboxname processedMailboxName��  ��        l    ����  r         b     ! " ! o    ���� &0 sourcemailboxname sourceMailboxName " m     # # � $ $  / f a i l e d   o      ���� &0 failedmailboxname failedMailboxName��  ��     % & % l    '���� ' r     ( ) ( m     * * � + + J / U s e r s / m i c h a e l / b i n / s c r i b e 2 o b s i d i a n . s h ) o      ����  0 scriptfilename scriptFilename��  ��   &  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0 � � see: https://stackoverflow.com/questions/16064957/how-to-check-in-applescript-if-an-app-is-running-without-launching-it-via-osa    1 � 2 2    s e e :   h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 1 6 0 6 4 9 5 7 / h o w - t o - c h e c k - i n - a p p l e s c r i p t - i f - a n - a p p - i s - r u n n i n g - w i t h o u t - l a u n c h i n g - i t - v i a - o s a /  3 4 3 l   � 5���� 5 Z    � 6 7���� 6 =    8 9 8 n     : ; : 1    ��
�� 
prun ; m     < <�                                                                                  emal  alis    (  Macintosh HD               �<�*BD ����Mail.app                                                       �����<�*        ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    M a c i n t o s h   H D  System/Applications/Mail.app  / ��   9 m    ��
�� boovtrue 7 O     � = > = k   $ � ? ?  @ A @ r   $ - B C B n   $ + D E D 4   ( +�� F
�� 
mbxp F o   ) *���� &0 sourcemailboxname sourceMailboxName E 4   $ (�� G
�� 
mact G o   & '���� 0 accountname accountName C o      ���� $0 thesourcemailbox theSourceMailbox A  H I H r   . 7 J K J n   . 5 L M L 4   2 5�� N
�� 
mbxp N o   3 4���� ,0 processedmailboxname processedMailboxName M 4   . 2�� O
�� 
mact O o   0 1���� 0 accountname accountName K o      ���� *0 theprocessedmailbox theProcessedMailbox I  P Q P r   8 C R S R n   8 ? T U T 4   < ?�� V
�� 
mbxp V o   = >���� &0 failedmailboxname failedMailboxName U 4   8 <�� W
�� 
mact W o   : ;���� 0 accountname accountName S o      ���� $0 thefailedmailbox theFailedMailbox Q  X Y X r   D M Z [ Z n   D I \ ] \ 2  E I��
�� 
mssg ] o   D E���� $0 thesourcemailbox theSourceMailbox [ o      ���� 0 themessages theMessages Y  ^ _ ^ r   N Y ` a ` I  N U�� b��
�� .corecnte****       **** b o   N Q���� 0 themessages theMessages��   a o      ���� 0 messagescount messagesCount _  c d c l  Z Z�� e f��   e "  Go backwards through mails     f � g g 8   G o   b a c k w a r d s   t h r o u g h   m a i l s   d  h�� h Y   Z � i�� j k l i k   f � m m  n o n r   f r p q p n   f n r s r 4   i n�� t
�� 
cobj t o   l m���� 0 i   s o   f i���� 0 themessages theMessages q o      ���� 0 amessage aMessage o  u�� u Q   s � v w x v k   v � y y  z { z r   v � | } | n   v } ~  ~ 1   y }��
�� 
raso  o   v y���� 0 amessage aMessage } o      ���� 0 src   {  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � 
 e c h o   � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 src   � m   � � � � � � �    |   � n   � � � � � 1   � ���
�� 
strq � o   � �����  0 scriptfilename scriptFilename��   �  ��� � r   � � � � � o   � ����� *0 theprocessedmailbox theProcessedMailbox � n       � � � m   � ���
�� 
mbxp � o   � ����� 0 amessage aMessage��   w R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errormessage errorMessage��   x k   � � � �  � � � I  � ��� ���
�� .sysonotfnull��� ��� TEXT � o   � ����� 0 errormessage errorMessage��   �  ��� � l  � ��� � ���   � f ` Do not move failed message but retry later again! set mailbox of theMessage to theFailedMailbox    � � � � �   D o   n o t   m o v e   f a i l e d   m e s s a g e   b u t   r e t r y   l a t e r   a g a i n !   s e t   m a i l b o x   o f   t h e M e s s a g e   t o   t h e F a i l e d M a i l b o x��  ��  �� 0 i   j o   ] `���� 0 messagescount messagesCount k m   ` a����  l m   a b��������   > m     ! � ��                                                                                  emal  alis    (  Macintosh HD               �<�*BD ����Mail.app                                                       �����<�*        ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    M a c i n t o s h   H D  System/Applications/Mail.app  / ��  ��  ��  ��  ��   4  ��� � l     ��������  ��  ��  ��       �� � � 
  � � * � � � ��� � ���������   � ��������������������������������
�� .aevtoappnull  �   � ****�� 0 accountname accountName�� &0 sourcemailboxname sourceMailboxName�� ,0 processedmailboxname processedMailboxName�� &0 failedmailboxname failedMailboxName��  0 scriptfilename scriptFilename�� $0 thesourcemailbox theSourceMailbox�� *0 theprocessedmailbox theProcessedMailbox�� $0 thefailedmailbox theFailedMailbox�� 0 themessages theMessages�� 0 messagescount messagesCount�� 0 amessage aMessage�� 0 src  ��  ��  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �   � �   � �   � �  % � �  3����  ��  ��   � ������ 0 i  �� 0 errormessage errorMessage �   
�� �� �� #�� *�� <��������������������~�}�|�{ ��z ��y�x�w�v�� 0 accountname accountName�� &0 sourcemailboxname sourceMailboxName�� ,0 processedmailboxname processedMailboxName�� &0 failedmailboxname failedMailboxName��  0 scriptfilename scriptFilename
�� 
prun
�� 
mact
�� 
mbxp�� $0 thesourcemailbox theSourceMailbox�� *0 theprocessedmailbox theProcessedMailbox�� $0 thefailedmailbox theFailedMailbox
�� 
mssg�� 0 themessages theMessages
�� .corecnte****       ****� 0 messagescount messagesCount
�~ 
cobj�} 0 amessage aMessage
�| 
raso�{ 0 src  
�z 
strq
�y .sysoexecTEXT���     TEXT�x 0 errormessage errorMessage�w  
�v .sysonotfnull��� ��� TEXT�� ��E�O�E�O��%E�O��%E�O�E�O��,e  �� �*��/��/E�O*��/��/E�O*��/��/E` O�a -E` O_ j E` O \_ kih  _ a �/E` O 2_ a ,E` Oa _ a ,%a %�a ,%j O�_ �,FW X  �j OP[OY��UY h � � � � : K i n d l e   S c r i b e   N o t e s / p r o c e s s e d � � � � 4 K i n d l e   S c r i b e   N o t e s / f a i l e d �  � �  ��u � �  <�t ��s
�t 
mact � � � � H B E F C 2 5 6 D - D B B C - 4 F D 0 - B 5 6 7 - 4 7 1 5 5 C 4 0 F A 8 A
�s kfrmID  
�u 
mbxp � � � � & K i n d l e   S c r i b e   N o t e s �  � �  ��r � �  <�q ��p
�q 
mact � � � � H B E F C 2 5 6 D - D B B C - 4 F D 0 - B 5 6 7 - 4 7 1 5 5 C 4 0 F A 8 A
�p kfrmID  
�r 
mbxp � � � � : K i n d l e   S c r i b e   N o t e s / p r o c e s s e d �  � �  ��o � �  <�n ��m
�n 
mact � � � � H B E F C 2 5 6 D - D B B C - 4 F D 0 - B 5 6 7 - 4 7 1 5 5 C 4 0 F A 8 A
�m kfrmID  
�o 
mbxp � � � � 4 K i n d l e   S c r i b e   N o t e s / f a i l e d � �l ��l   �   ��   �  � �  ��k�j�i �  ��h � �  <�g ��f
�g 
mact � � � � H B E F C 2 5 6 D - D B B C - 4 F D 0 - B 5 6 7 - 4 7 1 5 5 C 4 0 F A 8 A
�f kfrmID  
�h 
mbxp � � � � & K i n d l e   S c r i b e   N o t e s
�k 
mssg�j  ��
�i kfrmID   � � � �{� {� R e t u r n - p a t h :   < 2 0 2 5 0 6 3 0 1 3 4 8 1 7 9 0 6 5 4 7 0 e 7 8 e 2 4 0 9 f a c d 1 6 f 2 6 1 3 b 0 p 0 e u - C 4 1 3 S V X 6 Q E Y 5 5 @ b o u n c e s . a m a z o n . c o m > 
 R e c e i v e d :   f r o m   [ 1 0 . 9 . 9 . 2 0 3 ]   ( h e l o = m a i l f r o n t 2 1 . r u n b o x ) 
 	 b y   d e l i v e r y 0 7 . r u n b o x   w i t h   e s m t p     ( E x i m   4 . 9 5 ) 
 	 i d   1 u W E s D - 0 0 G E W j - U V 
 	 f o r   m i c h a e l . s c h e r e r @ r u n b o x . c o m ; 
 	 M o n ,   3 0   J u n   2 0 2 5   1 5 : 4 8 : 4 1   + 0 2 0 0 
 R e c e i v e d :   f r o m   e x i m   b y   m a i l f r o n t 2 1 . r u n b o x   w i t h   s a - s c a n n e d     ( E x i m   4 . 9 3 ) 
 	 i d   1 u W E s D - 0 0 2 P H N - 8 L 
 	 f o r   m i c h a e l . s c h e r e r @ r u n b o x . c o m ;   M o n ,   3 0   J u n   2 0 2 5   1 5 : 4 8 : 4 1   + 0 2 0 0 
 X - S p a m - C h e c k e r - V e r s i o n :   S p a m A s s a s s i n   4 . 0 . 0   ( 2 0 2 2 - 1 2 - 1 3 )   o n   a n t i s p a m c 0 6 . r u n b o x 
 X - S p a m - L e v e l :   
 X - S p a m - S t a t u s :   N o ,   s c o r e = 0 . 5   r e q u i r e d = 5 . 0   t e s t s = D K I M _ S I G N E D , D K I M _ V A L I D , 
 	 D K I M _ V A L I D _ A U , G B _ G E N _ R E D I R _ U R L , H T M L _ M E S S A G E , M I M E _ H T M L _ M O S T L Y , 
 	 R C V D _ I N _ M S P I K E _ H 5 , R C V D _ I N _ M S P I K E _ W L , S P F _ P A S S   a u t o l e a r n = n o 
 	 a u t o l e a r n _ f o r c e = n o   v e r s i o n = 4 . 0 . 0 
 X - S p a m - R e p o r t :   
 	 *     0 . 0   R C V D _ I N _ M S P I K E _ H 5   R B L :   E x c e l l e n t   r e p u t a t i o n   ( + 5 ) 
 	 *             [ 5 4 . 2 4 0 . 1 . 7 6   l i s t e d   i n   w l . m a i l s p i k e . n e t ] 
 	 *   - 0 . 0   S P F _ P A S S   S P F :   s e n d e r   m a t c h e s   S P F   r e c o r d 
 	 *   - 0 . 1   D K I M _ V A L I D _ A U   M e s s a g e   h a s   a   v a l i d   D K I M   o r   D K   s i g n a t u r e   f r o m   a u t h o r ' s 
 	 *               d o m a i n 
 	 *   - 0 . 1   D K I M _ V A L I D   M e s s a g e   h a s   a t   l e a s t   o n e   v a l i d   D K I M   o r   D K   s i g n a t u r e 
 	 *     0 . 1   D K I M _ S I G N E D   M e s s a g e   h a s   a   D K I M   o r   D K   s i g n a t u r e ,   n o t   n e c e s s a r i l y 
 	 *             v a l i d 
 	 *     0 . 0   R C V D _ I N _ M S P I K E _ W L   M a i l s p i k e   g o o d   s e n d e r s 
 	 *     0 . 1   M I M E _ H T M L _ M O S T L Y   B O D Y :   M u l t i p a r t   m e s s a g e   m o s t l y   t e x t / h t m l   M I M E 
 	 *     0 . 0   H T M L _ M E S S A G E   B O D Y :   H T M L   i n c l u d e d   i n   m e s s a g e 
 	 *     0 . 5   G B _ G E N _ R E D I R _ U R L   R e d i r e c t o r   f o u n d   i n   h r e f   l i n k 
 R e c e i v e d - S P F :   p a s s   c l i e n t - i p = 5 4 . 2 4 0 . 1 . 7 6 ;   e n v e l o p e - f r o m = 2 0 2 5 0 6 3 0 1 3 4 8 1 7 9 0 6 5 4 7 0 e 7 8 e 2 4 0 9 f a c d 1 6 f 2 6 1 3 b 0 p 0 e u - C 4 1 3 S V X 6 Q E Y 5 5 @ b o u n c e s . a m a z o n . c o m ;   h e l o = a 1 - 7 6 . s m t p - o u t . e u - w e s t - 1 . a m a z o n s e s . c o m 
 R e c e i v e d :   f r o m   a 1 - 7 6 . s m t p - o u t . e u - w e s t - 1 . a m a z o n s e s . c o m   ( [ 5 4 . 2 4 0 . 1 . 7 6 ] ) 
 	 b y   m a i l f r o n t 2 1 . r u n b o x   w i t h   e s m t p s     ( T L S 1 . 3 : E C D H E _ X 2 5 5 1 9 _ _ R S A _ P S S _ R S A E _ S H A 2 5 6 _ _ A E S _ 1 2 8 _ G C M : 1 2 8 ) 
 	 ( E x i m   4 . 9 3 ) 
 	 i d   1 u W E r r - 0 0 2 P A I - O n 
 	 f o r   s p a m @ s c h e r e r o n l i n e . n e t ;   M o n ,   3 0   J u n   2 0 2 5   1 5 : 4 8 : 2 0   + 0 2 0 0 
 D K I M - S i g n a t u r e :   v = 1 ;   a = r s a - s h a 2 5 6 ;   q = d n s / t x t ;   c = r e l a x e d / s i m p l e ; 
 	 s = e z c n b l p 2 x c a g j h u m w v h r j z s a 2 s g w a w g 7 ;   d = a m a z o n . c o m ;   t = 1 7 5 1 2 9 1 2 9 8 ; 
 	 h = D a t e : F r o m : T o : M e s s a g e - I D : S u b j e c t : M I M E - V e r s i o n : C o n t e n t - T y p e ; 
 	 b h = 5 p 0 0 i Y o 5 d j d c D d U y Z 2 x I T U / O W J 4 l w U A E u 8 R D p 0 h 2 p d s = ; 
 	 b = W k q i k 7 H d X h o p s k Y X q 7 Y p 4 X i 9 8 H Q n 7 z d D H 5 a Q D b r A e + a k D y D A s U p r N P W s 3 M f b c j 5 G 
 	 P k h X T F X D C u x B b m z f F o A C Y s 5 C A n i q q s D S j 2 Y Y Q H 0 W w T u n h i H F j I y L V j T n 3 n F Q p 3 U f F d p 
 	 J z j a A + a w Y j C c D k / g J k N w 6 v l B q O t s o g 7 n t s z F V / h 0 = 
 D K I M - S i g n a t u r e :   v = 1 ;   a = r s a - s h a 2 5 6 ;   q = d n s / t x t ;   c = r e l a x e d / s i m p l e ; 
 	 s = i h c h h v u b u q g j s x y u h s s f v q o h v 7 z 3 u 4 h n ;   d = a m a z o n s e s . c o m ;   t = 1 7 5 1 2 9 1 2 9 8 ; 
 	 h = D a t e : F r o m : T o : M e s s a g e - I D : S u b j e c t : M I M E - V e r s i o n : C o n t e n t - T y p e : F e e d b a c k - I D ; 
 	 b h = 5 p 0 0 i Y o 5 d j d c D d U y Z 2 x I T U / O W J 4 l w U A E u 8 R D p 0 h 2 p d s = ; 
 	 b = d z + w F 0 h Z 5 y F O 0 G f d C 9 Y I X T M Q B q r b 9 C A V p 7 5 2 f U u 1 F I M U 6 l I i c i J j 3 J a V u 2 3 r d u y b 
 	 o b I 9 3 Z v u o 5 l 6 0 j e Y x x 8 h + / K 0 Y g n u E E B q p I U U g v u T p P / + u y Z 8 M y 3 D Q E M 7 e N Y P p P D w g P B 
 	 k w y 2 + H L E k M R / l q c h v + N 2 H f N h 6 y U 4 C w u k o x K l T b B 8 = 
 D a t e :   M o n ,   3 0   J u n   2 0 2 5   1 3 : 4 8 : 1 8   + 0 0 0 0 
 F r o m :   A m a z o n   K i n d l e   S u p p o r t   < d o - n o t - r e p l y @ a m a z o n . c o m > 
 T o :   s p a m @ s c h e r e r o n l i n e . n e t 
 M e s s a g e - I D :   < 0 1 0 2 0 1 9 7 c 1 1 8 8 2 d 8 - 4 9 a 3 3 2 f f - 1 4 6 0 - 4 6 a a - 9 a 5 d - 7 2 b 4 9 4 d e 8 e b c - 0 0 0 0 0 0 @ e u - w e s t - 1 . a m a z o n s e s . c o m > 
 S u b j e c t :   = ? U T F - 8 ? B ? R H U g a G F z d C B l a W 5 l I O K A n n c g a 3 c y N + K A n C 1 E Y X R l a Q = = ? = 
   = ? U T F - 8 ? B ? I H Z v b i B k Z W l u Z W 0 g S 2 l u Z G x l I G d l c 2 V u Z G V 0 ? = 
 M I M E - V e r s i o n :   1 . 0 
 C o n t e n t - T y p e :   m u l t i p a r t / a l t e r n a t i v e ;   
 	 b o u n d a r y = " - - - - = _ P a r t _ 4 4 9 7 0 3 _ 5 4 8 9 9 9 7 2 5 . 1 7 5 1 2 9 1 2 9 8 5 0 2 " 
 X - A M A Z O N - M A I L - R E L A Y - T Y P E :   n o t i f i c a t i o n 
 B o u n c e s - t o :   2 0 2 5 0 6 3 0 1 3 4 8 1 7 9 0 6 5 4 7 0 e 7 8 e 2 4 0 9 f a c d 1 6 f 2 6 1 3 b 0 p 0 e u - C 4 1 3 S V X 6 Q E Y 5 5 @ b o u n c e s . a m a z o n . c o m 
 X - A M A Z O N - M E T A D A T A :   C A = C 4 1 3 S V X 6 Q E Y 5 5 
 X - O r i g i n a l - M e s s a g e I D :   < u r n . r t n . m s g . 2 0 2 5 0 6 3 0 1 3 4 8 1 7 9 0 6 5 4 7 0 e 7 8 e 2 4 0 9 f a c d 1 6 f 2 6 1 3 b 0 p 0 e u @ 1 7 5 1 2 9 1 2 9 8 5 0 3 . > 
 F e e d b a c k - I D :   1 1 2 0 5 1 3 0 5 1 : : 1 . e u - w e s t - 1 . U I A U r M f b p G r x a v q n R E 0 y o Z r A U B I 9 C 7 G R N U x / k U D o 6 B 4 = : A m a z o n S E S 
 X - S E S - O u t g o i n g :   2 0 2 5 . 0 6 . 3 0 - 5 4 . 2 4 0 . 1 . 7 6 
 X - T r a n s i t - S t a r t :   1 7 5 1 2 9 1 3 2 1 
 
 - - - - - - = _ P a r t _ 4 4 9 7 0 3 _ 5 4 8 9 9 9 7 2 5 . 1 7 5 1 2 9 1 2 9 8 5 0 2 
 C o n t e n t - T y p e :   t e x t / p l a i n ;   c h a r s e t = u t f - 8 
 C o n t e n t - T r a n s f e r - E n c o d i n g :   q u o t e d - p r i n t a b l e 
 
 
   = 2 0 
 
 D u   h a s t   e i n e   = E 2 = 8 0 = 9 E w   k w 2 7 = E 2 = 8 0 = 9 C - D a t e i   v o n   d e i n e m   K i n d l e   g e s e n d e t .   D u   = 
 k a n n s t   d i e s e   D a t e i   = C 3 = B C b e r   d i e   f o l g e n d e n   D o w n l o a d l i n k s   h e r u n t e r l a d e n : 
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
 - - - - - - = _ P a r t _ 4 4 9 7 0 3 _ 5 4 8 9 9 9 7 2 5 . 1 7 5 1 2 9 1 2 9 8 5 0 2 
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
 D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 5 0 6 3 0 1 3 4 8 1 7 9 0 6 5 4 7 0 e 7 8 e 2 4 0 9 f a c d 1 6 f 2 6 1 3 b 0 p 0 e u & = 
 R = 3 D 1 Z 6 O F O O 4 1 I G L H & T = 3 D O & U = 3 D h t t p s % 3 A % 2 F % 2 F i m a g e s - e u . s s l - i m a g e s - a m a z o n . c o m % 2 = 
 F i m a g e s % 2 F G % 2 F 0 1 % 2 F n a v % 2 F t r a n s p . g i f & H = 3 D N L 1 3 P A 2 A G S D H B N A Y M A A Y C C N T S S C A & r e f _ = 
 = 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 _ o p e n s "   a l t = 3 D " "   / > < d i v   c l a s s = 3 D " b o d y "   l a n g = 3 D " d e = 
 "   d i r = 3 D " a u t o " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p = 
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
 p a n   c l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 0 " > D u   h a s t   e i n e   = E 2 = 8 0 = 9 E w   k w 2 7 = E 2 = 8 0 = 9 C - D a = 
 t e i   v o n   d e i n e m   K i n d l e   g e s e n d e t .   D u   k a n n s t   d i e s e   D a t e i   = C 3 = B C b e r   d i e   f o l g e n d = 
 e n   D o w n l o a d l i n k s   h e r u n t e r l a d e n : < / s p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / t a b l e > < / t d > = 
 < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > = 
 < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t = 
 a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d   a l i g n = 3 D " l = 
 e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p = 
 a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i = 
 d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m = 
 s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x = 
 - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s = 
 p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y = 
 l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   | = 
   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n = 
 g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] = 
 - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e = 
 : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : = 
 l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o = 
 p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o = 
 u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e = 
 - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 = 
 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y = 
 l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   = 
 c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b o d y > < / t = 
 a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! = 
 [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < = 
 / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < / t a b l e > = 
 < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t = 
 a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r = 
 > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - >   < ! - = 
 - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s = 
 p a c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w = 
 i d t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h = 
 t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 
 = 3 D " r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i = 
 n : 0 p x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i = 
 n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f = 
 f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l = 
 t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E = 
 ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 
 = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " s o n a r = 
 - t r a n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 3 D " 6 = 
 0 0 p x "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e x t   p { = 
 m a r g i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 
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
 " r i o - t e x t   r i o - t e x t - 3 2 " > < a   h r e f = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m l ? C = 3 D 1 V D J 0 = 
 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 5 0 6 3 0 1 3 4 8 1 7 9 0 6 5 4 7 0 e 7 8 e 2 4 0 9 f a c d 1 6 f 2 6 1 3 b 0 p 0 e u & R = 
 = 3 D 1 V 7 T N A 9 E M D 7 R 1 & T = 3 D C & U = 3 D h t t p s % 3 A % 2 F % 2 F k i n d l e - c o n t e n t - r e q u e s t s - p r o d . s 3 . a m = 
 a z o n a w s . c o m % 2 F 3 3 a 3 b 9 d 4 - 1 2 8 d - 4 b 4 e - b d 9 3 - d 5 8 9 b 5 9 f b c b 1 % 2 F w % 2 5 2 0 k w 2 7 - 2 0 2 5 - 0 6 - 3 0 - = 
 1 5 - 4 7 . p d f % 3 F r e s p o n s e - c a c h e - c o n t r o l % 3 D n o - s t o r e % 2 6 X - A m z - A l g o r i t h m % 3 D A W S 4 - H M A C = 
 - S H A 2 5 6 % 2 6 X - A m z - D a t e % 3 D 2 0 2 5 0 6 3 0 T 1 3 4 8 0 7 Z % 2 6 X - A m z - S i g n e d H e a d e r s % 3 D h o s t % 2 6 X - A m = 
 z - C r e d e n t i a l % 3 D A K I A Q N G C F 4 J 7 J M L Y E 5 V L % 2 5 2 F 2 0 2 5 0 6 3 0 % 2 5 2 F u s - e a s t - 1 % 2 5 2 F s 3 % 2 5 2 F a = 
 w s 4 _ r e q u e s t % 2 6 X - A m z - E x p i r e s % 3 D 6 0 4 8 0 0 % 2 6 X - A m z - S i g n a t u r e % 3 D f 7 3 0 b 7 d c f a 8 2 d e 8 d 8 b = 
 b 9 8 a a c 3 5 7 e 9 d f 3 6 d 0 f 8 b 0 7 3 e 2 5 8 d 4 9 0 8 7 2 f 0 7 0 0 2 7 3 4 7 3 3 & H = 3 D A B 5 8 A S V L 5 V W Q 9 5 A L K V I L O N A 3 = 
 Y U G A "   r e l = 3 D " n o f o l l o w " > D u r c h s u c h b a r e s   P D F   h e r u n t e r l a d e n < / a > < / s p a n > < / d i v > < / t = 
 d > < / t r > < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / = 
 t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n = 
 d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > = 
 < / t d > < / t r > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e   a l i g n = 
 = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " "   r o l = 
 e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l e = 3 D " l = 
 i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i = 
 v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w = 
 i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 0 ; t = 
 e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 = 
 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   s t y = 
 l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k = 
 - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a y : i n l i = 
 n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 3 D " 0 "   c = 
 e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s t y l e = 3 D " = 
 a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c = 
 o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i g n : l e f t ; = 
 d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > < t a b l e   b = 
 o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 
 = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t a b l e   b o r = 
 d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   w i d t h = 
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
 o n . d e / g p / f . h t m l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 5 0 6 3 0 1 3 4 8 1 7 9 0 6 5 4 7 0 e 7 8 e = 
 2 4 0 9 f a c d 1 6 f 2 6 1 3 b 0 p 0 e u & R = 3 D P A G T 9 N 4 8 Z 5 J R & T = 3 D C & U = 3 D h t t p s % 3 A % 2 F % 2 F k i n d l e - c o n t e = 
 n t - r e q u e s t s - p r o d . s 3 . a m a z o n a w s . c o m % 2 F 3 3 a 3 b 9 d 4 - 1 2 8 d - 4 b 4 e - b d 9 3 - d 5 8 9 b 5 9 f b c b 1 % 2 F = 
 w % 2 5 2 0 k w 2 7 - 2 0 2 5 - 0 6 - 3 0 - 1 5 - 4 7 . t x t % 3 F r e s p o n s e - c a c h e - c o n t r o l % 3 D n o - s t o r e % 2 6 X - A m z = 
 - A l g o r i t h m % 3 D A W S 4 - H M A C - S H A 2 5 6 % 2 6 X - A m z - D a t e % 3 D 2 0 2 5 0 6 3 0 T 1 3 4 8 0 7 Z % 2 6 X - A m z - S i g n e = 
 d H e a d e r s % 3 D h o s t % 2 6 X - A m z - C r e d e n t i a l % 3 D A K I A Q N G C F 4 J 7 J M L Y E 5 V L % 2 5 2 F 2 0 2 5 0 6 3 0 % 2 5 2 F = 
 u s - e a s t - 1 % 2 5 2 F s 3 % 2 5 2 F a w s 4 _ r e q u e s t % 2 6 X - A m z - E x p i r e s % 3 D 6 0 4 8 0 0 % 2 6 X - A m z - S i g n a t u r = 
 e % 3 D a 1 4 7 0 e 5 1 2 2 2 8 0 e 1 0 5 c 6 9 f d 5 2 c 6 4 f 7 3 f 3 9 9 b 7 f c 3 f e 5 8 d b 1 9 d e b d e 3 d 7 9 0 7 3 9 3 e e 3 & H = 3 D Z 8 = 
 W V U 1 U Y O 5 V A Y R O H M K Z O T K Q 1 K 9 O A "   r e l = 3 D " n o f o l l o w " > T e x t d a t e i   h e r u n t e r l a d e n < / a > < / s = 
 p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f = 
   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > = 
 < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > = 
 < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < = 
 t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a = 
 s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d = 
   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e = 
 n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n = 
 t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n " = 
   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; = 
 p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   = 
 b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a = 
 s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0 = 
   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d = 
 i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r = 
 d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t = 
 d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l = 
 a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - = 
 a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % = 
 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a = 
 t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " = 
 > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i = 
 o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v = 
 > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / = 
 t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I = 
 E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l = 
 e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i f   = 
 m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   | = 
   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > < t a b l e   a l i g n = 3 D " c e n t e = 
 r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r o o t C o n t e n t - o u = 
 t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 6 0 0 p x ; "   w i d t h = 3 D " 6 0 0 "   b g c o l o r = 
 = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h = 
 t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r o o t C o n t e n t "   s t y l e = 3 D " b a c k g r o u n d = 
 : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 6 0 0 p x ; " > < t a b l e   = 
 a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p = 
 r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 = 
 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 4 p x   8 p x   4 p x = 
   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e = 
 r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o   |   I E ] > = 
 < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " s o n a r - t r a n s a c t i o n a l - c o p y - o u t l o o k   s o n a r - t r a n = 
 s a c t i o n a l - c o p y - v 1 - o u t l o o k "   w i d t h = 3 D " 6 0 0 p x "   > < ! [ e n d i f ] - - >   < ! - - [ i f   m s o ] > < s t y l = 
 e   t y p e = 3 D " t e x t / c s s " > . r i o - c a r d - t e x t   p { m a r g i n - t o p : 1 . 2 e m } < / s t y l e > < t a b l e   a l i g n = 
 = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D " r i o - c = 
 a r d - t e x t - o u t l o o k "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 8 4 p x ; "   w i d t h = 3 D " 5 8 4 = 
 "   b g c o l o r = 3 D " # f f f f f f "   > < t r > < t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l = 
 i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " r i o - c a r d - t e x t "   s t y l e = 3 D = 
 " b a c k g r o u n d : # f f f f f f ; b a c k g r o u n d - c o l o r : # f f f f f f ; m a r g i n : 0 p x   a u t o ; b o r d e r - r a d i u s : = 
 4 p x ; m a x - w i d t h : 5 8 4 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 = 
 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " b a c k g r o u n d : # f f f f f f ; b a c k g = 
 r o u n d - c o l o r : # f f f f f f ; w i d t h : 1 0 0 % ; b o r d e r - r a d i u s : 4 p x ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " = 
 d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i n g : 1 2 p x   8 p x   1 6 p x   8 p x ; t e x t - a l i g n : l e f t ; " > < ! - = 
 - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   = 
 c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   > < t a b l e = 
   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c l a s s = 3 D = 
 " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < t d   s t y l = 
 e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! [ e n d i f ] = 
 - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c e n t e r "   = 
 b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l = 
 e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p x ; p a d d i = 
 n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n "   b o r d e = 
 r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D = 
 " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o = 
 u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t ; d i s p l a = 
 y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b o r d e r = 
 = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > < t d   s = 
 t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 
 = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x t - a l i = 
 g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 0 % ; " > = 
 < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o = 
 n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 ; " > < t = 
 a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n " = 
   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   a l i g n = 3 D " l e f t "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; p a d d i n = 
 g : 0 ; w o r d - b r e a k : b r e a k - w o r d ; " > < d i v   s t y l e = 3 D " f o n t - f a m i l y : E m b e r , ' A m a z o n   E m b e r ' , = 
 A r i a l , s a n s - s e r i f ; f o n t - s i z e : 1 5 p x ; f o n t - w e i g h t : 4 0 0 ; l i n e - h e i g h t : 2 0 p x ; t e x t - a l i g n = 
 : l e f t ; c o l o r : # 0 F 1 1 1 1 ; " > < s p a n   c l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 4 " > B i t t e   b e a c h t e ,   d = 
 a s s   d e r   D o w n l o a d - L i n k ( s )   i n   7 & n b s p ; T a g e n   a b l = C 3 = A 4 u f t . < / s p a n > < / d i v > < / t d > < / t = 
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
 1 ; " > < s p a n   c l a s s = 3 D " r i o - t e x t   r i o - t e x t - 3 7 " > H a s t   d u   F r a g e n   o d e r   B e d e n k e n   z u m   E = 
 r h a l t   d i e s e r   E - M a i l ?   H o l   d i r   H i l f e   v o m   < a   h r e f = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / = 
 f . h t m l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 5 0 6 3 0 1 3 4 8 1 7 9 0 6 5 4 7 0 e 7 8 e 2 4 0 9 f a c d 1 = 
 6 f 2 6 1 3 b 0 p 0 e u & R = 3 D J U W N Z 6 9 D 2 J S 4 & T = 3 D C & U = 3 D h t t p s % 3 A % 2 F % 2 F w w w . a m a z o n . c o m % 2 F d e v i = 
 c e s u p p o r t % 3 F r e f _ % 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 & H = 3 D K 4 2 O 6 Y X P P Q M P F 2 Z Q Z 1 P B O F 8 N J Z C A = 
 & r e f _ = 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 "   r e l = 3 D " n o f o l l o w " > A m a z o n - K u n d e n d i e n s t < / a > . < = 
 / s p a n > < / d i v > < / t d > < / t r > < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ = 
 i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t = 
 r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t = 
 d > < / t r > < / t a b l e > < / t d > < / t r > < t r > < t d   a l i g n = 3 D " l e f t "   c l a s s = 3 D " "   w i d t h = 3 D " 5 8 4 p x "   = 
 > < t a b l e   a l i g n = 3 D " c e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   c = 
 l a s s = 3 D " "   r o l e = 3 D " p r e s e n t a t i o n "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   w i d t h = 3 D " 5 6 8 "   > < t r > < = 
 t d   s t y l e = 3 D " l i n e - h e i g h t : 0 p x ; f o n t - s i z e : 0 p x ; m s o - l i n e - h e i g h t - r u l e : e x a c t l y ; " > < ! = 
 [ e n d i f ] - - > < d i v   s t y l e = 3 D " m a r g i n : 0 p x   a u t o ; m a x - w i d t h : 5 6 8 p x ; " > < t a b l e   a l i g n = 3 D " c = 
 e n t e r "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o = 
 n "   s t y l e = 3 D " w i d t h : 1 0 0 % ; " > < t b o d y > < t r > < t d   s t y l e = 3 D " d i r e c t i o n : l t r ; f o n t - s i z e : 0 p = 
 x ; p a d d i n g : 0 ; t e x t - a l i g n : l e f t ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   r o l e = 3 D " p r e s e n t a t i o n = 
 "   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 " > < t r > < t d   a l i g n = 3 D " l e f t "   c = 
 l a s s = 3 D " "   s t y l e = 3 D " w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   c l a s s = 3 D " m j - c o l u m n - p e r - 1 = 
 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 ; l i n e - h e i g h t : 0 ; t e x t - a l i g n : l e f t = 
 ; d i s p l a y : i n l i n e - b l o c k ; w i d t h : 1 0 0 % ; d i r e c t i o n : l t r ; " > < ! - - [ i f   m s o   |   I E ] > < t a b l e   b = 
 o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a t i o n "   > < t r > = 
 < t d   s t y l e = 3 D " a l i g n : l e f t ; v e r t i c a l - a l i g n : t o p ; w i d t h : 5 6 8 p x ; "   > < ! [ e n d i f ] - - > < d i v   = 
 c l a s s = 3 D " m j - c o l u m n - p e r - 1 0 0   m j - o u t l o o k - g r o u p - f i x "   s t y l e = 3 D " f o n t - s i z e : 0 p x ; t e x = 
 t - a l i g n : l e f t ; d i r e c t i o n : l t r ; d i s p l a y : i n l i n e - b l o c k ; v e r t i c a l - a l i g n : t o p ; w i d t h : 1 0 = 
 0 % ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n = 
 t a t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y > < t r > < t d   s t y l e = 3 D " v e r t i c a l - a l i g n : t o p ; p a d d i n g : 0 = 
 ; " > < t a b l e   b o r d e r = 3 D " 0 "   c e l l p a d d i n g = 3 D " 0 "   c e l l s p a c i n g = 3 D " 0 "   r o l e = 3 D " p r e s e n t a = 
 t i o n "   w i d t h = 3 D " 1 0 0 % " > < t b o d y >     < / t b o d y > < / t a b l e > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d = 
 i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / d i v > < ! - - [ i f   m s o   |   I E ] > = 
 < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o   | = 
   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a = 
 b l e > < / d i v > < ! - - [ i f   m s o   |   I E ] > < / t d > < / t r > < / t a b l e > < / t d > < / t r > < ! [ e n d i f ] - - >   < ! - - [ i = 
 f   m s o   |   I E ] > < / t a b l e > < ! [ e n d i f ] - - > < / t d > < / t r > < / t b o d y > < / t a b l e > < / d i v > < ! - - [ i f   m s o = 
   |   I E ] > < / t d > < / t r > < / t a b l e > < ! [ e n d i f ] - - >   < / d i v > < i m g   w i d t h = 3 D " 1 "   h e i g h t = 3 D " 1 "   s = 
 r c = 3 D " h t t p s : / / w w w . a m a z o n . d e / g p / r . h t m l ? C = 3 D 1 V D J 0 A 9 H K Y 6 4 7 & M = 3 D u r n : r t n : m s g : 2 0 2 = 
 5 0 6 3 0 1 3 4 8 1 7 9 0 6 5 4 7 0 e 7 8 e 2 4 0 9 f a c d 1 6 f 2 6 1 3 b 0 p 0 e u & R = 3 D 1 E Z 1 4 Q Q I Z I N G 0 & T = 3 D E & U = 3 D h t t = 
 p s % 3 A % 2 F % 2 F i m a g e s - e u . s s l - i m a g e s - a m a z o n . c o m % 2 F i m a g e s % 2 F G % 2 F 0 1 % 2 F n a v % 2 F t r a n s p = 
 . g i f & H = 3 D Z F J W F W 7 P E U N 5 L I K 9 8 A V 3 M R P B X U K A & r e f _ = 3 D p e _ 1 1 4 5 1 1 4 4 1 _ 1 1 2 0 5 1 3 0 5 1 _ o p e n "   = 
 a l t = 3 D " "   / > < / b o d y > < / h t m l > 
 - - - - - - = _ P a r t _ 4 4 9 7 0 3 _ 5 4 8 9 9 9 7 2 5 . 1 7 5 1 2 9 1 2 9 8 5 0 2 - - 
��  ��  ��   ascr  ��ޭ