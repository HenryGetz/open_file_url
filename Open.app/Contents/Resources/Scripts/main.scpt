FasdUAS 1.101.10   ��   ��    k             i         I     �� 	��
�� .GURLGURLnull��� ��� TEXT 	 o      ���� 0 theurl theURL��    k     o 
 
     l     ��  ��    V P Toggle this variable to true to remove extraneous quotes from the decoded path,     �   �   T o g g l e   t h i s   v a r i a b l e   t o   t r u e   t o   r e m o v e   e x t r a n e o u s   q u o t e s   f r o m   t h e   d e c o d e d   p a t h ,      l     ��  ��    ( " or false to leave the path as-is.     �   D   o r   f a l s e   t o   l e a v e   t h e   p a t h   a s - i s .      r         m     ��
�� boovtrue  o      ���� 0 parsefinder parseFinder      l   ��������  ��  ��        l   ��  ��    $  Strip off the "open://" part.     �   <   S t r i p   o f f   t h e   " o p e n : / / "   p a r t .     !   l   �� " #��   " K E For URLs like "open:///" this gets the text starting at character 8.    # � $ $ �   F o r   U R L s   l i k e   " o p e n : / / / "   t h i s   g e t s   t h e   t e x t   s t a r t i n g   a t   c h a r a c t e r   8 . !  % & % r     ' ( ' n     ) * ) 7   �� + ,
�� 
ctxt + m   	 ����  , m    ������ * o    ���� 0 theurl theURL ( o      ���� 0 thepath thePath &  - . - l   ��������  ��  ��   .  / 0 / l   �� 1 2��   1 V P Decode percent-encoded characters (e.g. %20, emoji codes, etc.) using Python 3.    2 � 3 3 �   D e c o d e   p e r c e n t - e n c o d e d   c h a r a c t e r s   ( e . g .   % 2 0 ,   e m o j i   c o d e s ,   e t c . )   u s i n g   P y t h o n   3 . 0  4 5 4 r     6 7 6 I   �� 8��
�� .sysoexecTEXT���     TEXT 8 b     9 : 9 m     ; ; � < < � p y t h o n 3   - c   ' i m p o r t   s y s ,   u r l l i b . p a r s e ;   p r i n t ( u r l l i b . p a r s e . u n q u o t e ( s y s . a r g v [ 1 ] ) ) '   : n     = > = 1    ��
�� 
strq > o    ���� 0 thepath thePath��   7 o      ����  0 thedecodedpath theDecodedPath 5  ? @ ? l   ��������  ��  ��   @  A B A Z    e C D���� C o    ���� 0 parsefinder parseFinder D k   " a E E  F G F l  " "�� H I��   H 2 , Remove extraneous single quotes if present.    I � J J X   R e m o v e   e x t r a n e o u s   s i n g l e   q u o t e s   i f   p r e s e n t . G  K L K Z   " A M N���� M F   " - O P O C   " % Q R Q o   " #����  0 thedecodedpath theDecodedPath R m   # $ S S � T T  ' P D   ( + U V U o   ( )����  0 thedecodedpath theDecodedPath V m   ) * W W � X X  ' N r   0 = Y Z Y n   0 ; [ \ [ 7  1 ;�� ] ^
�� 
ctxt ] m   5 7����  ^ m   8 :������ \ o   0 1����  0 thedecodedpath theDecodedPath Z o      ����  0 thedecodedpath theDecodedPath��  ��   L  _ ` _ l  B B�� a b��   a 2 , Remove extraneous double quotes if present.    b � c c X   R e m o v e   e x t r a n e o u s   d o u b l e   q u o t e s   i f   p r e s e n t . `  d�� d Z   B a e f���� e F   B M g h g C   B E i j i o   B C����  0 thedecodedpath theDecodedPath j m   C D k k � l l  " h D   H K m n m o   H I����  0 thedecodedpath theDecodedPath n m   I J o o � p p  " f r   P ] q r q n   P [ s t s 7  Q [�� u v
�� 
ctxt u m   U W����  v m   X Z������ t o   P Q����  0 thedecodedpath theDecodedPath r o      ����  0 thedecodedpath theDecodedPath��  ��  ��  ��  ��   B  w x w l  f f��������  ��  ��   x  y z y l  f f�� { |��   { < 6 Open the resulting path with the default application.    | � } } l   O p e n   t h e   r e s u l t i n g   p a t h   w i t h   t h e   d e f a u l t   a p p l i c a t i o n . z  ~�� ~ I  f o�� ��
�� .sysoexecTEXT���     TEXT  b   f k � � � m   f g � � � � � 
 o p e n   � n   g j � � � 1   h j��
�� 
strq � o   g h����  0 thedecodedpath theDecodedPath��  ��     ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .GURLGURLnull��� ��� TEXT � �� ���� � ���
�� .GURLGURLnull��� ��� TEXT�� 0 theurl theURL��   � ���������� 0 theurl theURL�� 0 parsefinder parseFinder�� 0 thepath thePath��  0 thedecodedpath theDecodedPath � ���� ;���� S W���� k o �
�� 
ctxt�� 
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
bool������ peE�O�[�\[Z�\Zi2E�O��,%j E�O� D��	 ���& �[�\[Zl\Z�2E�Y hO��	 ���& �[�\[Zl\Z�2E�Y hY hO��,%j  ascr  ��ޭ