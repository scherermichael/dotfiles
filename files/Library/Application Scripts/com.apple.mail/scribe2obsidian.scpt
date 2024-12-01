FasdUAS 1.101.10   ��   ��    k             l     ��  ��    Z T see: https://forum.keyboardmaestro.com/t/writing-applescript-for-mail-rules/29501/6     � 	 	 �   s e e :   h t t p s : / / f o r u m . k e y b o a r d m a e s t r o . c o m / t / w r i t i n g - a p p l e s c r i p t - f o r - m a i l - r u l e s / 2 9 5 0 1 / 6   
  
 w          i         I     �� ��
�� .emalcpmanull���     ****  o      ���� 0 themessages theMessages��    O    D    k   C       r        m       �   � $ { H O M E } / L i b r a r y / M o b i l e   D o c u m e n t s / i C l o u d ~ m d ~ o b s i d i a n / D o c u m e n t s / P e r s o n a l / 0 1   @ I n b o x  o      ���� 0 	vaultpath 	vaultPath      r        m    	   �    P r i v a t e   v a u l t  o      ���� 0 	vaultname 	vaultName     !   l   ��������  ��  ��   !  " # " l   �� $ %��   $ @ : set theMessages to the selection -- Only used for testing    % � & & t   s e t   t h e M e s s a g e s   t o   t h e   s e l e c t i o n   - -   O n l y   u s e d   f o r   t e s t i n g #  '�� ' Q   C ( ) * ( X   2 +�� , + k   - - -  . / . r    $ 0 1 0 n    " 2 3 2 1     "��
�� 
raso 3 o     ���� 0 amessage aMessage 1 o      ���� 0 	msgsource 	msgSource /  4 5 4 l  % %�� 6 7��   6 v p For some unknown reason a message an be part of the message list multiple times. Skip processing of duplicates.    7 � 8 8 �   F o r   s o m e   u n k n o w n   r e a s o n   a   m e s s a g e   a n   b e   p a r t   o f   t h e   m e s s a g e   l i s t   m u l t i p l e   t i m e s .   S k i p   p r o c e s s i n g   o f   d u p l i c a t e s . 5  9�� 9 Z   %- : ;�� < : n  % + = > = I   & +�� ?���� (0 isalreadyprocessed isAlreadyProcessed ?  @�� @ o   & '���� 0 	msgsource 	msgSource��  ��   >  f   % & ; l  . .�� A B��   A 3 - display dialog "Message already proccessed."    B � C C Z   d i s p l a y   d i a l o g   " M e s s a g e   a l r e a d y   p r o c c e s s e d . "��   < k   2- D D  E F E l  2 2�� G H��   G - ' display dialog "Processing message..."    H � I I N   d i s p l a y   d i a l o g   " P r o c e s s i n g   m e s s a g e . . . " F  J K J l  2 2��������  ��  ��   K  L M L l  2 2�� N O��   N X R Create single line with complete contents of mail source, remove escape sequences    O � P P �   C r e a t e   s i n g l e   l i n e   w i t h   c o m p l e t e   c o n t e n t s   o f   m a i l   s o u r c e ,   r e m o v e   e s c a p e   s e q u e n c e s M  Q R Q r   2 ? S T S I  2 =�� U��
�� .sysoexecTEXT���     TEXT U b   2 9 V W V b   2 7 X Y X m   2 3 Z Z � [ [ 
 e c h o   Y n   3 6 \ ] \ 1   4 6��
�� 
strq ] o   3 4���� 0 	msgsource 	msgSource W m   7 8 ^ ^ � _ _ \   |   s e d   ' s / = $ / / '   |   t r   - d   ' \ n '   |   s e d   ' s / = 3 D / = / g '��   T o      ���� 0 	msgsource 	msgSource R  ` a ` l  @ @��������  ��  ��   a  b c b l  @ @�� d e��   d   Extract url for txt file    e � f f 2   E x t r a c t   u r l   f o r   t x t   f i l e c  g h g r   @ C i j i m   @ A k k � l l   j o      ���� 0 txturl txtUrl h  m n m Q   D ] o p�� o r   G T q r q I  G R�� s��
�� .sysoexecTEXT���     TEXT s b   G N t u t b   G L v w v m   G H x x � y y 
 e c h o   w n   H K z { z 1   I K��
�� 
strq { o   H I���� 0 	msgsource 	msgSource u m   L M | | � } } z   |   g r e p   - E o   ' h t t p s : / / w w w . a m a z o n . d e / g p / f . h t m l ? [ ^ " ] * \ . t x t [ ^ " ] * '��   r o      ���� 0 txturl txtUrl p R      �� ~ 
�� .ascrerr ****      � **** ~ o      ���� 0 errormessage errorMessage  �� ���
�� 
errn � o      ���� 0 errornumber errorNumber��  ��   n  � � � l  ^ ^��������  ��  ��   �  � � � l  ^ ^�� � ���   �   Extract url for pdf file    � � � � 2   E x t r a c t   u r l   f o r   p d f   f i l e �  � � � r   ^ o � � � I  ^ m�� ���
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
�� .sysoexecTEXT���     TEXT � b   � � �  � m   � � �  e c h o   ' '   > >    o   � ����� 0 notefilename noteFilename��   �  I  � �����
�� .sysoexecTEXT���     TEXT b   � � m   � � �		 6 e c h o   ' # #   T r a n s c r i p t i o n '   > >   o   � ����� 0 notefilename noteFilename��   

 I  � �����
�� .sysoexecTEXT���     TEXT b   � � m   � � �  e c h o   ' '   > >   o   � ����� 0 notefilename noteFilename��   �� I  � �����
�� .sysoexecTEXT���     TEXT b   � � b   � � b   � � m   � � �  c u r l   - s L f   ' o   � ����� 0 txturl txtUrl m   � � � 
 '   > >   o   � ����� 0 notefilename noteFilename��  ��  ��  ��   �  l  � ���������  ��  ��     l  � ���!"��  !   Download pdf file   " �## $   D o w n l o a d   p d f   f i l e  $%$ I  ���&��
�� .sysoexecTEXT���     TEXT& b   �'(' b   �	)*) b   �+,+ b   �-.- b   �/0/ b   � �121 m   � �33 �44  c u r l   - s L f   '2 o   � ����� 0 pdfurl pdfUrl0 m   � 55 �66  '   - o   ". o  ���� 0 	vaultpath 	vaultPath, m  77 �88  /* o  ���� 	0 title  ( m  	99 �:: 
 . p d f "��  % ;<; l ��������  ��  ��  < =>= l ��?@��  ? H B see: https://macosxautomation.com/mavericks/notifications/01.html   @ �AA �   s e e :   h t t p s : / / m a c o s x a u t o m a t i o n . c o m / m a v e r i c k s / n o t i f i c a t i o n s / 0 1 . h t m l> BCB I '��DE
�� .sysonotfnull��� ��� TEXTD b  FGF o  ���� 	0 title  G m  HH �II    i m p o r t e d .E ��JK
�� 
apprJ m  LL �MM 6 P D F   f r o m   S c r i b e   t o   O b s i d i a nK ��N��
�� 
subtN o   !���� 0 	vaultname 	vaultName��  C O��O l (-PQRP I (-�S�~
� .sysodelanull��� ��� nmbrS m  ()�}�} �~  Q 2 ,> allow time for the notification to trigger   R �TT X >   a l l o w   t i m e   f o r   t h e   n o t i f i c a t i o n   t o   t r i g g e r��  ��  �� 0 amessage aMessage , o    �|�| 0 themessages theMessages ) R      �{UV
�{ .ascrerr ****      � ****U o      �z�z 0 errormessage errorMessageV �yW�x
�y 
errnW o      �w�w 0 errornumber errorNumber�x   * I :C�vXY
�v .sysodisAaleR        TEXTX o  :;�u�u 0 errornumber errorNumberY �tZ�s
�t 
mesSZ o  >?�r�r 0 errormessage errorMessage�s  ��    m     [[�                                                                                  emal  alis    (  Macintosh HD               �=%�BD ����Mail.app                                                       �����=%�        ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    M a c i n t o s h   H D  System/Applications/Mail.app  / ��   �                                                                                  emal  alis    (  Macintosh HD               �=%�BD ����Mail.app                                                       �����=%�        ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    M a c i n t o s h   H D  System/Applications/Mail.app  / ��    \]\ l     �q�p�o�q  �p  �o  ] ^_^ l     �n`a�n  ` \ V Loosely based on: https://www.macscripter.net/t/remove-duplicates-from-a-list/30098/2   a �bb �   L o o s e l y   b a s e d   o n :   h t t p s : / / w w w . m a c s c r i p t e r . n e t / t / r e m o v e - d u p l i c a t e s - f r o m - a - l i s t / 3 0 0 9 8 / 2_ cdc h    �me�m 0 	processed  e j     �lf�l 0 itemlist itemListf J     gg h�kh m     ii �jj  �k  d klk i    mnm I      �jo�i�j (0 isalreadyprocessed isAlreadyProcessedo p�hp o      �g�g 0 	inputitem 	inputItem�h  �i  n k     Iqq rsr r     tut m     �f
�f boovfalsu o      �e�e 0 isfound isFounds vwv X    0x�dyx Z    +z{�c�bz =   !|}| l   ~�a�`~ c    � o    �_�_ 0 	inputitem 	inputItem� m    �^
�^ 
TEXT�a  �`  } l    ��]�\� c     ��� o    �[�[ 0 processeditem processedItem� m    �Z
�Z 
TEXT�]  �\  { r   $ '��� m   $ %�Y
�Y boovtrue� o      �X�X 0 isfound isFound�c  �b  �d 0 processeditem processedItemy n   ��� o    �W�W 0 itemlist itemList� o    �V�V 0 	processed  w ��� Z   1 E���U�T� =   1 4��� o   1 2�S�S 0 isfound isFound� m   2 3�R
�R boovfals� r   7 A��� o   7 8�Q�Q 0 	inputitem 	inputItem� n      ���  ;   ? @� n  8 ?��� o   = ?�P�P 0 itemlist itemList� o   8 =�O�O 0 	processed  �U  �T  � ��N� r   F I��� o   F G�M�M 0 isfound isFound� 1      �L
�L 
rslt�N  l ��K� l     �J�I�H�J  �I  �H  �K       �G�����G  � �F�E�D
�F .emalcpmanull���     ****�E 0 	processed  �D (0 isalreadyprocessed isAlreadyProcessed� �C �B�A���@
�C .emalcpmanull���     ****�B 0 themessages theMessages�A  � �?�>�=�<�;�:�9�8�7�6�5�? 0 themessages theMessages�> 0 	vaultpath 	vaultPath�= 0 	vaultname 	vaultName�< 0 amessage aMessage�; 0 	msgsource 	msgSource�: 0 txturl txtUrl�9 0 errormessage errorMessage�8 0 errornumber errorNumber�7 0 pdfurl pdfUrl�6 	0 title  �5 0 notefilename noteFilename� 0[  �4�3�2�1�0 Z�/ ^�. k x |�-� � � � � � � � � � � � � �3579H�,L�+�*�)�(�'�&
�4 
kocl
�3 
cobj
�2 .corecnte****       ****
�1 
raso�0 (0 isalreadyprocessed isAlreadyProcessed
�/ 
strq
�. .sysoexecTEXT���     TEXT�- 0 errormessage errorMessage� �%�$�#
�% 
errn�$ 0 errornumber errorNumber�#  
�, 
appr
�+ 
subt�* 
�) .sysonotfnull��� ��� TEXT
�( .sysodelanull��� ��� nmbr
�' 
mesS
�& .sysodisAaleR        TEXT�@E�A�E�O�E�O("�[��l kh ��,E�O)�k+  hY ���,%�%j E�O�E�O ���,%�%j E�W X  hOa ��,%a %j E�Oa ��,%a %j E�Oa �%a %�%a %E�Oa �%a %�%j Oa �%j Oa �%a %�%j O�a  2a �%j Oa �%j Oa  �%j Oa !�%a "%�%j Y hOa #�%a $%�%a %%�%a &%j O�a '%a (a )a *�a + ,Okj -[OY��W X  �a .�l /U� �"e  ��" 0 	processed  �  ��� �!�! 0 itemlist itemList� � ��  �  i� �n������ (0 isalreadyprocessed isAlreadyProcessed� ��� �  �� 0 	inputitem 	inputItem�  � ���� 0 	inputitem 	inputItem� 0 isfound isFound� 0 processeditem processedItem� ������� 0 itemlist itemList
� 
kocl
� 
cobj
� .corecnte****       ****
� 
TEXT
� 
rslt� JfE�O +b  �,[��l kh ��&��&  eE�Y h[OY��O�f  �b  �,6FY hO�E�ascr  ��ޭ