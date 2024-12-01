FasdUAS 1.101.10   ��   ��    k             l     ��  ��    Z T see: https://forum.keyboardmaestro.com/t/writing-applescript-for-mail-rules/29501/6     � 	 	 �   s e e :   h t t p s : / / f o r u m . k e y b o a r d m a e s t r o . c o m / t / w r i t i n g - a p p l e s c r i p t - f o r - m a i l - r u l e s / 2 9 5 0 1 / 6   
  
 w          i         I     �� ��
�� .emalcpmanull���     ****  o      ���� 0 themessages theMessages��    O    D    k   C       r        m       �   � $ { H O M E } / L i b r a r y / M o b i l e   D o c u m e n t s / i C l o u d ~ m d ~ o b s i d i a n / D o c u m e n t s / P e r s o n a l / 0 1   @ I n b o x  o      ���� 0 	vaultpath 	vaultPath      r        m    	   �    P r i v a t e   v a u l t  o      ���� 0 	vaultname 	vaultName     !   l   �� " #��   " Z T set theMessages to the selection -- Only used to trigger manually for test purposes    # � $ $ �   s e t   t h e M e s s a g e s   t o   t h e   s e l e c t i o n   - -   O n l y   u s e d   t o   t r i g g e r   m a n u a l l y   f o r   t e s t   p u r p o s e s !  %�� % Q   C & ' ( & X   2 )�� * ) k   - + +  , - , r    $ . / . n    " 0 1 0 1     "��
�� 
raso 1 o     ���� 0 amessage aMessage / o      ���� 0 	msgsource 	msgSource -  2 3 2 l  % %�� 4 5��   4 v p For some unknown reason a message an be part of the message list multiple times. Skip processing of duplicates.    5 � 6 6 �   F o r   s o m e   u n k n o w n   r e a s o n   a   m e s s a g e   a n   b e   p a r t   o f   t h e   m e s s a g e   l i s t   m u l t i p l e   t i m e s .   S k i p   p r o c e s s i n g   o f   d u p l i c a t e s . 3  7�� 7 Z   %- 8 9�� : 8 n  % + ; < ; I   & +�� =���� (0 isalreadyprocessed isAlreadyProcessed =  >�� > o   & '���� 0 	msgsource 	msgSource��  ��   <  f   % & 9 l  . .�� ? @��   ? 3 - display dialog "Message already proccessed."    @ � A A Z   d i s p l a y   d i a l o g   " M e s s a g e   a l r e a d y   p r o c c e s s e d . "��   : k   2- B B  C D C l  2 2�� E F��   E - ' display dialog "Processing message..."    F � G G N   d i s p l a y   d i a l o g   " P r o c e s s i n g   m e s s a g e . . . " D  H I H l  2 2��������  ��  ��   I  J K J l  2 2�� L M��   L X R Create single line with complete contents of mail source, remove escape sequences    M � N N �   C r e a t e   s i n g l e   l i n e   w i t h   c o m p l e t e   c o n t e n t s   o f   m a i l   s o u r c e ,   r e m o v e   e s c a p e   s e q u e n c e s K  O P O r   2 ? Q R Q I  2 =�� S��
�� .sysoexecTEXT���     TEXT S b   2 9 T U T b   2 7 V W V m   2 3 X X � Y Y 
 e c h o   W n   3 6 Z [ Z 1   4 6��
�� 
strq [ o   3 4���� 0 	msgsource 	msgSource U m   7 8 \ \ � ] ] \   |   s e d   ' s / = $ / / '   |   t r   - d   ' \ n '   |   s e d   ' s / = 3 D / = / g '��   R o      ���� 0 	msgsource 	msgSource P  ^ _ ^ l  @ @��������  ��  ��   _  ` a ` l  @ @�� b c��   b   Extract url for txt file    c � d d 2   E x t r a c t   u r l   f o r   t x t   f i l e a  e f e r   @ C g h g m   @ A i i � j j   h o      ���� 0 txturl txtUrl f  k l k Q   D ] m n�� m r   G T o p o I  G R�� q��
�� .sysoexecTEXT���     TEXT q b   G N r s r b   G L t u t m   G H v v � w w 
 e c h o   u n   H K x y x 1   I K��
�� 
strq y o   H I���� 0 	msgsource 	msgSource s m   L M z z � { { z   |   g r e p   - E o   ' h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m l ? [ ^ " ] * \ . t x t [ ^ " ] * '��   p o      ���� 0 txturl txtUrl n R      �� | }
�� .ascrerr ****      � **** | o      ���� 0 errormessage errorMessage } �� ~��
�� 
errn ~ o      ���� 0 errornumber errorNumber��  ��   l   �  l  ^ ^��������  ��  ��   �  � � � l  ^ ^�� � ���   �   Extract url for pdf file    � � � � 2   E x t r a c t   u r l   f o r   p d f   f i l e �  � � � r   ^ o � � � I  ^ m�� ���
�� .sysoexecTEXT���     TEXT � b   ^ i � � � b   ^ e � � � m   ^ a � � � � � 
 e c h o   � n   a d � � � 1   b d��
�� 
strq � o   a b���� 0 	msgsource 	msgSource � m   e h � � � � � z   |   g r e p   - E o   ' h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m l ? [ ^ " ] * \ . p d f [ ^ " ] * '��   � o      ���� 0 pdfurl pdfUrl �  � � � l  p p��������  ��  ��   �  � � � l  p p�� � ���   � � � Get title of note: Decode url-encoded characters twice (first decode the url parameter, then decode general url-decoded caracters like spaces), grep title from url, trim newlines    � � � �f   G e t   t i t l e   o f   n o t e :   D e c o d e   u r l - e n c o d e d   c h a r a c t e r s   t w i c e   ( f i r s t   d e c o d e   t h e   u r l   p a r a m e t e r ,   t h e n   d e c o d e   g e n e r a l   u r l - d e c o d e d   c a r a c t e r s   l i k e   s p a c e s ) ,   g r e p   t i t l e   f r o m   u r l ,   t r i m   n e w l i n e s �  � � � r   p � � � � I  p �� ���
�� .sysoexecTEXT���     TEXT � b   p { � � � b   p w � � � m   p s � � � � � 
 e c h o   � n   s v � � � 1   t v��
�� 
strq � o   s t���� 0 pdfurl pdfUrl � m   w z � � � � ��   |   p y t h o n 3   - c   ' i m p o r t   s y s ,   u r l l i b . p a r s e   a s   u l ;   p r i n t ( u l . u n q u o t e _ p l u s ( u l . u n q u o t e _ p l u s ( s y s . s t d i n . r e a d ( ) ) ) ) '   |   s e d   ' s / \ . p d f \ ? . * $ / / g '   |   s e d   ' s | ^ . * h t t p s : / / k i n d l e - c o n t e n t - r e q u e s t s . p r o d . s 3 . a m a z o n a w s . c o m / [ - 0 - 9 a - z ] * / | | g '   |   t r   - d   ' \ n '��   � o      ���� 	0 title   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   Create Markdown note    � � � � *   C r e a t e   M a r k d o w n   n o t e �  � � � r   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  " � o   � ����� 0 	vaultpath 	vaultPath � m   � � � � � � �  " / ' � o   � ����� 	0 title   � m   � � � � � � �  . m d ' � o      ���� 0 notefilename noteFilename �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  e c h o   ' #   � o   � ����� 	0 title   � m   � � � � � � �  '   >   � o   � ����� 0 notefilename noteFilename��   �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � �  e c h o   ' '   > >   � o   � ����� 0 notefilename noteFilename��   �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  e c h o   ' [ [ � o   � ����� 	0 title   � m   � � � � � � �  . p d f ] ] '   > >   � o   � ����� 0 notefilename noteFilename��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   Transcription found    � � � � (   T r a n s c r i p t i o n   f o u n d �  � � � Z   � � � ����� � >  � � � � � o   � ����� 0 txturl txtUrl � m   � � � � � � �   � k   � � � �  � � � l  � ��� � ���   � 6 0 Download txt file and add transcription to note    � � � � `   D o w n l o a d   t x t   f i l e   a n d   a d d   t r a n s c r i p t i o n   t o   n o t e �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � �    e c h o   ' '   > >   � o   � ����� 0 notefilename noteFilename��   �  I  � �����
�� .sysoexecTEXT���     TEXT b   � � m   � � � 6 e c h o   ' # #   T r a n s c r i p t i o n '   > >   o   � ����� 0 notefilename noteFilename��   	 I  � ���
��
�� .sysoexecTEXT���     TEXT
 b   � � m   � � �  e c h o   ' '   > >   o   � ����� 0 notefilename noteFilename��  	 �� I  � �����
�� .sysoexecTEXT���     TEXT b   � � b   � � b   � � m   � � �  c u r l   - s L f   ' o   � ����� 0 txturl txtUrl m   � � � 
 '   > >   o   � ����� 0 notefilename noteFilename��  ��  ��  ��   �  l  � ���������  ��  ��    l  � ��� ��     Download pdf file     �!! $   D o w n l o a d   p d f   f i l e "#" I  ���$��
�� .sysoexecTEXT���     TEXT$ b   �%&% b   �	'(' b   �)*) b   �+,+ b   �-.- b   � �/0/ m   � �11 �22  c u r l   - s L f   '0 o   � ����� 0 pdfurl pdfUrl. m   � 33 �44  '   - o   ", o  ���� 0 	vaultpath 	vaultPath* m  55 �66  /( o  ���� 	0 title  & m  	77 �88 
 . p d f "��  # 9:9 l ��������  ��  ��  : ;<; l ��=>��  = H B see: https://macosxautomation.com/mavericks/notifications/01.html   > �?? �   s e e :   h t t p s : / / m a c o s x a u t o m a t i o n . c o m / m a v e r i c k s / n o t i f i c a t i o n s / 0 1 . h t m l< @A@ I '��BC
�� .sysonotfnull��� ��� TEXTB b  DED o  ���� 	0 title  E m  FF �GG    i m p o r t e d .C ��HI
�� 
apprH m  JJ �KK 6 P D F   f r o m   S c r i b e   t o   O b s i d i a nI ��L��
�� 
subtL o   !���� 0 	vaultname 	vaultName��  A M��M l (-NOPN I (-��Q��
�� .sysodelanull��� ��� nmbrQ m  ()���� ��  O 2 ,> allow time for the notification to trigger   P �RR X >   a l l o w   t i m e   f o r   t h e   n o t i f i c a t i o n   t o   t r i g g e r��  ��  �� 0 amessage aMessage * o    �� 0 themessages theMessages ' R      �~ST
�~ .ascrerr ****      � ****S o      �}�} 0 errormessage errorMessageT �|U�{
�| 
errnU o      �z�z 0 errornumber errorNumber�{   ( I :C�yVW
�y .sysodisAaleR        TEXTV o  :;�x�x 0 errornumber errorNumberW �wX�v
�w 
mesSX o  >?�u�u 0 errormessage errorMessage�v  ��    m     YY�                                                                                  emal  alis    (  Macintosh HD               �=%�BD ����Mail.app                                                       �����=%�        ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    M a c i n t o s h   H D  System/Applications/Mail.app  / ��   �                                                                                  emal  alis    (  Macintosh HD               �=%�BD ����Mail.app                                                       �����=%�        ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    M a c i n t o s h   H D  System/Applications/Mail.app  / ��    Z[Z l     �t�s�r�t  �s  �r  [ \]\ l     �q^_�q  ^ \ V Loosely based on: https://www.macscripter.net/t/remove-duplicates-from-a-list/30098/2   _ �`` �   L o o s e l y   b a s e d   o n :   h t t p s : / / w w w . m a c s c r i p t e r . n e t / t / r e m o v e - d u p l i c a t e s - f r o m - a - l i s t / 3 0 0 9 8 / 2] aba h    �pc�p 0 	processed  c j     �od�o 0 itemlist itemListd J     ee f�nf m     gg �hh  �n  b iji i    klk I      �mm�l�m (0 isalreadyprocessed isAlreadyProcessedm n�kn o      �j�j 0 	inputitem 	inputItem�k  �l  l k     Ioo pqp r     rsr m     �i
�i boovfalss o      �h�h 0 isfound isFoundq tut X    0v�gwv Z    +xy�f�ex =   !z{z l   |�d�c| c    }~} o    �b�b 0 	inputitem 	inputItem~ m    �a
�a 
TEXT�d  �c  { l    �`�_ c     ��� o    �^�^ 0 processeditem processedItem� m    �]
�] 
TEXT�`  �_  y r   $ '��� m   $ %�\
�\ boovtrue� o      �[�[ 0 isfound isFound�f  �e  �g 0 processeditem processedItemw n   ��� o    �Z�Z 0 itemlist itemList� o    �Y�Y 0 	processed  u ��� Z   1 E���X�W� =   1 4��� o   1 2�V�V 0 isfound isFound� m   2 3�U
�U boovfals� r   7 A��� o   7 8�T�T 0 	inputitem 	inputItem� n      ���  ;   ? @� n  8 ?��� o   = ?�S�S 0 itemlist itemList� o   8 =�R�R 0 	processed  �X  �W  � ��Q� r   F I��� o   F G�P�P 0 isfound isFound� 1      �O
�O 
rslt�Q  j ��N� l     �M�L�K�M  �L  �K  �N       �J�����J  � �I�H�G
�I .emalcpmanull���     ****�H 0 	processed  �G (0 isalreadyprocessed isAlreadyProcessed� �F �E�D���C
�F .emalcpmanull���     ****�E 0 themessages theMessages�D  � �B�A�@�?�>�=�<�;�:�9�8�B 0 themessages theMessages�A 0 	vaultpath 	vaultPath�@ 0 	vaultname 	vaultName�? 0 amessage aMessage�> 0 	msgsource 	msgSource�= 0 txturl txtUrl�< 0 errormessage errorMessage�; 0 errornumber errorNumber�: 0 pdfurl pdfUrl�9 	0 title  �8 0 notefilename noteFilename� 0Y  �7�6�5�4�3 X�2 \�1 i v z�0� � � � � � � � � � � � � � �1357F�/J�.�-�,�+�*�)
�7 
kocl
�6 
cobj
�5 .corecnte****       ****
�4 
raso�3 (0 isalreadyprocessed isAlreadyProcessed
�2 
strq
�1 .sysoexecTEXT���     TEXT�0 0 errormessage errorMessage� �(�'�&
�( 
errn�' 0 errornumber errorNumber�&  
�/ 
appr
�. 
subt�- 
�, .sysonotfnull��� ��� TEXT
�+ .sysodelanull��� ��� nmbr
�* 
mesS
�) .sysodisAaleR        TEXT�CE�A�E�O�E�O("�[��l kh ��,E�O)�k+  hY ���,%�%j E�O�E�O ���,%�%j E�W X  hOa ��,%a %j E�Oa ��,%a %j E�Oa �%a %�%a %E�Oa �%a %�%j Oa �%j Oa �%a %�%j O�a  2a �%j Oa �%j Oa  �%j Oa !�%a "%�%j Y hOa #�%a $%�%a %%�%a &%j O�a '%a (a )a *�a + ,Okj -[OY��W X  �a .�l /U� �%c  ��% 0 	processed  �  ��� �$�$ 0 itemlist itemList� �#��# �  g� �"l�!� ����" (0 isalreadyprocessed isAlreadyProcessed�! ��� �  �� 0 	inputitem 	inputItem�   � ���� 0 	inputitem 	inputItem� 0 isfound isFound� 0 processeditem processedItem� ������� 0 itemlist itemList
� 
kocl
� 
cobj
� .corecnte****       ****
� 
TEXT
� 
rslt� JfE�O +b  �,[��l kh ��&��&  eE�Y h[OY��O�f  �b  �,6FY hO�E�ascr  ��ޭ