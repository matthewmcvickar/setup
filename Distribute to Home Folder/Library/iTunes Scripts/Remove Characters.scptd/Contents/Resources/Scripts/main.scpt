FasdUAS 1.101.10   ��   ��    k             l      ��  ��   XR Remove n Characters From Front or Back
written by Doug Adams

v3.0 - may 13 2008
-- runs as universal binary
-- adds "Comments" to options
-- performance fixes and finessings

v2.0 - March 30 2006
-- adds the ability to remove characters from the end of the tag
-- includes "composer" as a tag option

Get more free AppleScripts and info on writing your own
at Doug's AppleScripts for iTunes
http://dougscripts.com/itunes/

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

Get a copy of the GNU General Public License by writing to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

or visit http://www.gnu.org/copyleft/gpl.html

     � 	 	�   R e m o v e   n   C h a r a c t e r s   F r o m   F r o n t   o r   B a c k 
 w r i t t e n   b y   D o u g   A d a m s 
 
 v 3 . 0   -   m a y   1 3   2 0 0 8 
 - -   r u n s   a s   u n i v e r s a l   b i n a r y 
 - -   a d d s   " C o m m e n t s "   t o   o p t i o n s 
 - -   p e r f o r m a n c e   f i x e s   a n d   f i n e s s i n g s 
 
 v 2 . 0   -   M a r c h   3 0   2 0 0 6 
 - -   a d d s   t h e   a b i l i t y   t o   r e m o v e   c h a r a c t e r s   f r o m   t h e   e n d   o f   t h e   t a g 
 - -   i n c l u d e s   " c o m p o s e r "   a s   a   t a g   o p t i o n 
 
 G e t   m o r e   f r e e   A p p l e S c r i p t s   a n d   i n f o   o n   w r i t i n g   y o u r   o w n 
 a t   D o u g ' s   A p p l e S c r i p t s   f o r   i T u n e s 
 h t t p : / / d o u g s c r i p t s . c o m / i t u n e s / 
 
 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e ;   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y   i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y   t h e   F r e e   S o f t w a r e   F o u n d a t i o n ;   e i t h e r   v e r s i o n   2   o f   t h e   L i c e n s e ,   o r   ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 T h i s   p r o g r a m   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l ,   b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f   M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 G e t   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   b y   w r i t i n g   t o   t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   I n c . ,   5 1   F r a n k l i n   S t r e e t ,   F i f t h   F l o o r ,   B o s t o n ,   M A     0 2 1 1 0 - 1 3 0 1 ,   U S A . 
 
 o r   v i s i t   h t t p : / / w w w . g n u . o r g / c o p y l e f t / g p l . h t m l 
 
   
  
 j     �� �� 0 my_title    m        �   & R e m o v e   n   C h a r a c t e r s      j    �� �� 0 options    J    
       m       �    S o n g   N a m e      m       �    A r t i s t      m       �   
 A l b u m       m     ! ! � " "  C o m m e n t s    #�� # m     $ $ � % %  C o m p o s e r��     & ' & l     ��������  ��  ��   '  ( ) ( l   J *���� * O    J + , + k   I - -  . / . Z    , 0 1�� 2 0 >   
 3 4 3 1    ��
�� 
sele 4 J    	����   1 r     5 6 5 1    ��
�� 
sele 6 o      ���� 0 sel  ��   2 I   ,�� 7 8
�� .sysodlogaskr        TEXT 7 b     9 : 9 o    ��
�� 
ret  : m     ; ; � < < H Y o u   m u s t   s e l e c t   s o m e   t r a c k s   f i r s t . . . 8 �� = >
�� 
btns = J     ? ?  @�� @ m     A A � B B  C a n c e l��   > �� C D
�� 
dflt C m    ����  D �� E F
�� 
disp E m     ����  F �� G H
�� 
appr G o   ! &���� 0 my_title   H �� I��
�� 
givu I m   ' (���� ��   /  J K J l  - -��������  ��  ��   K  L M L l  - -�� N O��   N  
 what tag?    O � P P    w h a t   t a g ? M  Q R Q T   - � S S k   2 ~ T T  U V U r   2 I W X W l  2 E Y���� Y I  2 E�� Z [
�� .gtqpchltTEXT  @   @ TEXT Z o   2 7���� 0 options   [ �� \ ]
�� 
prmp \ m   8 9 ^ ^ � _ _ H E d i t   w h i c h   t a g   o f   s e l e c t e d   t r a c k s . . . ] �� `��
�� 
appr ` o   : ?���� 0 my_title  ��  ��  ��   X o      ���� 0 this_tag   V  a b a l  J ` c d e c Z  J ` f g���� f =  J O h i h o   J M���� 0 this_tag   i m   M N��
�� boovfals g R   R \���� j
�� .ascrerr ****      � ****��   j �� k��
�� 
errn k m   V Y��������  ��  ��   d   cancel    e � l l    c a n c e l b  m�� m Z   a ~ n o���� n =  a j p q p l  a h r���� r n   a h s t s 1   d h��
�� 
leng t o   a d���� 0 this_tag  ��  ��   q m   h i����  o l  m z u v w u k   m z x x  y z y r   m x { | { c   m t } ~ } o   m p���� 0 this_tag   ~ m   p s��
�� 
TEXT | o      ���� 0 this_tag   z  ��   S   y z��   v $  type-selection bug workaround    w � � � <   t y p e - s e l e c t i o n   b u g   w o r k a r o u n d��  ��  ��   R  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n  � � � � � I   � ��� ����� 0 get_a_number   �  � � � m   � � � � � � �   �  ��� � o   � ����� 0 this_tag  ��  ��   �  f   � � � J       � �  � � � o      ���� 0 this_offset   �  ��� � o      ���� 0 myend myEnd��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � 1   � ���
�� 
pFix � o      ���� 	0 oldfi   �  � � � r   � � � � � m   � ���
�� boovtrue � 1   � ���
�� 
pFix �  � � � l  � ���������  ��  ��   �  � � � t   � � � � X   � ��� � � O   � � � � Z   �  � � ��� � =  � � � � � o   � ����� 0 this_tag   � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 options   � Z   �@ � ��� � � =  � � � � � o   � ����� 0 myend myEnd � m   � � � � � � � 
 F r o n t � l  � � � � � Q   � � ��� � r   � � � � n   � � � � 7  ��� � �
�� 
ctxt � o   ����� 0 this_offset   � m  ������ � l  � � ����� � e   � � � � 1   � ���
�� 
pnam��  ��   � 1  ��
�� 
pnam � R      ������
�� .ascrerr ****      � ****��  ��  ��   � ' ! remove characters from front end    � � � � B   r e m o v e   c h a r a c t e r s   f r o m   f r o n t   e n d��   � l @ � � � � Q  @ � ��� � r  7 � � � n  1 � � � 7 "1�� � �
�� 
ctxt � m  (*����  � d  +0 � � o  ,/���� 0 this_offset   � l " ����� � e  " � � 1  "��
�� 
pnam��  ��   � 1  16��
�� 
pnam � R      ������
�� .ascrerr ****      � ****��  ��  ��   � &   remove characters from back end    � � � � @   r e m o v e   c h a r a c t e r s   f r o m   b a c k   e n d �  � � � = CQ � � � o  CF���� 0 this_tag   � n  FP � � � 4  KP�� �
�� 
cobj � m  NO����  � o  FK���� 0 options   �  � � � Z  T� � ��� � � = T[ � � � o  TW���� 0 myend myEnd � m  WZ � � � � � 
 F r o n t � l ^� � � � � Q  ^� � ��� � r  a{ � � � n  au � � � 7 gu�� � �
�� 
ctxt � o  mq���� 0 this_offset   � m  rt������ � l ag ����� � e  ag � � 1  ag��
�� 
pArt��  ��   � 1  uz��
�� 
pArt � R      �����
�� .ascrerr ****      � ****��  �  ��   � ' ! remove characters from front end    � � � � B   r e m o v e   c h a r a c t e r s   f r o m   f r o n t   e n d��   � l �� � � � � Q  �� � ��~ � r  �� � � � n  �� � � � 7 ���} � �
�} 
ctxt � m  ���|�|  � d  �� � � o  ���{�{ 0 this_offset   � l �� ��z�y � e  �� � � 1  ���x
�x 
pArt�z  �y   � 1  ���w
�w 
pArt � R      �v�u�t
�v .ascrerr ****      � ****�u  �t  �~   � &   remove characters from back end    � � � � @   r e m o v e   c h a r a c t e r s   f r o m   b a c k   e n d �    = �� o  ���s�s 0 this_tag   n  �� 4  ���r
�r 
cobj m  ���q�q  o  ���p�p 0 options    Z  �	
�o	 = �� o  ���n�n 0 myend myEnd m  �� � 
 F r o n t
 l �� Q  ���m r  �� n  �� 7 ���l
�l 
ctxt o  ���k�k 0 this_offset   m  ���j�j�� l ���i�h e  �� 1  ���g
�g 
pAlb�i  �h   1  ���f
�f 
pAlb R      �e�d�c
�e .ascrerr ****      � ****�d  �c  �m   ' ! remove characters from front end    � B   r e m o v e   c h a r a c t e r s   f r o m   f r o n t   e n d�o   l �  Q  �!"�b! r  �#$# n  �%&% 7 ��a'(
�a 
ctxt' m  �`�` ( d  )) o  �_�_ 0 this_offset  & l ��*�^�]* e  ��++ 1  ���\
�\ 
pAlb�^  �]  $ 1  �[
�[ 
pAlb" R      �Z�Y�X
�Z .ascrerr ****      � ****�Y  �X  �b   &   remove characters from back end     �,, @   r e m o v e   c h a r a c t e r s   f r o m   b a c k   e n d -.- = //0/ o  "�W�W 0 this_tag  0 n  ".121 4  '.�V3
�V 
cobj3 m  *-�U�U 2 o  "'�T�T 0 options  . 454 Z  2�67�S86 = 299:9 o  25�R�R 0 myend myEnd: m  58;; �<< 
 F r o n t7 l <b=>?= Q  <b@A�Q@ r  ?YBCB n  ?SDED 7 ES�PFG
�P 
ctxtF o  KO�O�O 0 this_offset  G m  PR�N�N��E l ?EH�M�LH e  ?EII 1  ?E�K
�K 
pCmt�M  �L  C 1  SX�J
�J 
pCmtA R      �I�H�G
�I .ascrerr ****      � ****�H  �G  �Q  > ' ! remove characters from front end   ? �JJ B   r e m o v e   c h a r a c t e r s   f r o m   f r o n t   e n d�S  8 l e�KLMK Q  e�NO�FN r  h�PQP n  h}RSR 7 n}�ETU
�E 
ctxtT m  tv�D�D U d  w|VV o  x{�C�C 0 this_offset  S l hnW�B�AW e  hnXX 1  hn�@
�@ 
pCmt�B  �A  Q 1  }��?
�? 
pCmtO R      �>�=�<
�> .ascrerr ****      � ****�=  �<  �F  L &   remove characters from back end   M �YY @   r e m o v e   c h a r a c t e r s   f r o m   b a c k   e n d5 Z[Z = ��\]\ o  ���;�; 0 this_tag  ] n  ��^_^ 4  ���:`
�: 
cobj` m  ���9�9 _ o  ���8�8 0 options  [ a�7a Z  ��bc�6db = ��efe o  ���5�5 0 myend myEndf m  ��gg �hh 
 F r o n tc l ��ijki Q  ��lm�4l r  ��non n  ��pqp 7 ���3rs
�3 
ctxtr o  ���2�2 0 this_offset  s m  ���1�1��q l ��t�0�/t e  ��uu 1  ���.
�. 
pCmp�0  �/  o 1  ���-
�- 
pCmpm R      �,�+�*
�, .ascrerr ****      � ****�+  �*  �4  j ' ! remove characters from front end   k �vv B   r e m o v e   c h a r a c t e r s   f r o m   f r o n t   e n d�6  d l ��wxyw Q  ��z{�)z r  ��|}| n  ��~~ 7 ���(��
�( 
ctxt� m  ���'�' � d  ���� o  ���&�& 0 this_offset   l ����%�$� e  ���� 1  ���#
�# 
pCmp�%  �$  } 1  ���"
�" 
pCmp{ R      �!� �
�! .ascrerr ****      � ****�   �  �)  x &   remove characters from back end   y ��� @   r e m o v e   c h a r a c t e r s   f r o m   b a c k   e n d�7  ��   � o   � ��� 0 atrack aTrack�� 0 atrack aTrack � o   � ��� 0 sel   � m   � ���u0 � ��� l ����  �  �  � ��� r  ��� o  �� 	0 oldfi  � 1  �
� 
pFix� ��� l ����  �  �  � ��� Q  G���� Z >����� = ��� 1  �
� 
pisf� m  �
� boovtrue� I :���
� .sysodlogaskr        TEXT� b  $��� o   �
� 
ret � m   #�� ��� 
 D o n e !� ���
� 
btns� l 
%*���
� J  %*�� ��	� m  %(�� ���  T h a n k s�	  �  �
  � ���
� 
dflt� m  +,�� � ���
� 
disp� m  -.�� � ���
� 
appr� o  /4�� 0 my_title  � ���
� 
givu� m  56� �  �  �  �  � R      ������
�� .ascrerr ****      � ****��  ��  �  � ���� l HH��������  ��  ��  ��   , m     ���                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  ��  ��   ) ��� l     ��������  ��  ��  � ���� i   ��� I      ������� 0 get_a_number  � ��� o      ���� 0 addenda  � ���� o      ���� 0 this_tag  ��  ��  � k     ��� ��� O    "��� r    !��� l   ������ I   ����
�� .sysodlogaskr        TEXT� b    ��� b    ��� b    	��� b    ��� m    �� ���  � o    ���� 0 addenda  � m    �� ��� d E n t e r   t h e   n u m b e r   o f   c h a r a c t e r s   t o   r e m o v e   f r o m   t h e  � o   	 
���� 0 this_tag  � m    �� ��� �   t a g   o f   t h e   s e l e c t e d   t r a c k s ,   t h e n   c l i c k   t h e   a p p r o p r i a t e   " F r o n t "   o r   " B a c k "   b u t t o n :� ����
�� 
dtxt� m    �� ���  � ����
�� 
btns� J    �� ��� m    �� ���  C a n c e l� ��� m    �� ��� 
 F r o n t� ���� m    �� ���  B a c k��  � �����
�� 
appr� o    ���� 0 my_title  ��  ��  ��  � o      ���� 0 opts  � m     ���                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  � ��� l  # #��������  ��  ��  � ��� r   # (��� n   # &��� 1   $ &��
�� 
ttxt� o   # $���� 0 opts  � o      ���� 0 mynumber myNumber� ��� r   ) .��� n   ) ,��� 1   * ,��
�� 
bhit� o   ) *���� 0 opts  � o      ���� 0 myend myEnd� ��� l  / /��������  ��  ��  � ��� Q   / N���� l  2 5������ c   2 5��� o   2 3���� 0 mynumber myNumber� m   3 4��
�� 
long��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � I   = N������� 0 get_a_number  � ��� b   > I��� b   > E��� m   > A   � * E n t e r   o n l y   n u m b e r s . . .� o   A D��
�� 
ret � o   E H��
�� 
ret � �� o   I J���� 0 this_tag  ��  ��  �  l  O O��������  ��  ��    l  O O����   
  ***    �		    * * * 

 l  O O����   D > are you sure? Include this if block if you think you need to.    � |   a r e   y o u   s u r e ?   I n c l u d e   t h i s   i f   b l o c k   i f   y o u   t h i n k   y o u   n e e d   t o .  Z   O ����� ?  O X c   O T o   O P���� 0 mynumber myNumber m   P S��
�� 
nmbr m   T W���� 
 O   [ � Z  _ ����� =  _ � n   _  1   } ��
�� 
bhit l  _ }���� I  _ }�� !
�� .sysodlogaskr        TEXT  b   _ h"#" b   _ d$%$ m   _ b&& �''  % o   b c���� 0 mynumber myNumber# l 	 d g(����( m   d g)) �** F   i s   r a t h e r   l a r g e . . . u s e   t h i s   n u m b e r ?��  ��  ! ��+,
�� 
btns+ l 
 i q-����- J   i q.. /0/ m   i l11 �22  Y e s0 3��3 m   l o44 �55  N o��  ��  ��  , ��67
�� 
dflt6 m   t u���� 7 ��8��
�� 
disp8 m   x y���� ��  ��  ��   m    �99 �::  N o O  � �;<; I   � ���=���� 0 get_a_number  = >?> m   � �@@ �AA  ? B��B o   � ����� 0 this_tag  ��  ��  <  f   � ���  ��   m   [ \CC�                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  ��  ��   DED l  � ���FG��  F 
  ***   G �HH    * * *E IJI l  � ���������  ��  ��  J K��K L   � �LL J   � �MM NON l  � �P����P [   � �QRQ o   � ����� 0 mynumber myNumberR m   � ����� ��  ��  O S��S o   � ����� 0 myend myEnd��  ��  ��       ��T UVW��  T ���������� 0 my_title  �� 0 options  �� 0 get_a_number  
�� .aevtoappnull  �   � ****U ��X�� X      ! $V �������YZ���� 0 get_a_number  �� ��[�� [  ������ 0 addenda  �� 0 this_tag  ��  Y ������������ 0 addenda  �� 0 this_tag  �� 0 opts  �� 0 mynumber myNumber�� 0 myend myEndZ ���������������������������� ��������&)14��~9@
�� 
dtxt
�� 
btns
�� 
appr�� 
�� .sysodlogaskr        TEXT
�� 
ttxt
�� 
bhit
�� 
long��  ��  
�� 
ret �� 0 get_a_number  
�� 
nmbr�� 

� 
dflt
�~ 
disp�� �� �%�%�%�%������mv�b   � E�UO��,E�O��,E�O ��&W X  *a _ %_ %�l+ O�a &a  C� ;a �%a %�a a lva la l� �,a   ) *a �l+ UY hUY hO�k�lvW �}\�|�{]^�z
�} .aevtoappnull  �   � ****\ k    J__  (�y�y  �|  �{  ] �x�x 0 atrack aTrack^ 2��w�v�u ;�t A�s�r�q�p�o�n�m�l ^�k�j�i�h�g�f�e ��d�c�b�a�`�_�^�]�\ ��[�Z�Y�X ��W�V;�U�Tg�S�R��
�w 
sele�v 0 sel  
�u 
ret 
�t 
btns
�s 
dflt
�r 
disp
�q 
appr
�p 
givu�o �n 

�m .sysodlogaskr        TEXT
�l 
prmp�k 
�j .gtqpchltTEXT  @   @ TEXT�i 0 this_tag  
�h 
errn�g��
�f 
leng
�e 
TEXT�d 0 get_a_number  
�c 
cobj�b 0 this_offset  �a 0 myend myEnd
�` 
pFix�_ 	0 oldfi  �^u0
�] 
kocl
�\ .corecnte****       ****
�[ 
pnam
�Z 
ctxt�Y  �X  
�W 
pArt
�V 
pAlb
�U 
pCmt�T 
�S 
pCmp
�R 
pisf�zK�G*�,jv 
*�,E�Y ��%��kv�k�l�b   ��� O UhZb  ���b   a  E` O_ f  )a a lhY hO_ a ,k  _ a &E` OY h[OY��O)a _ l+ E[a k/E` Z[a l/E` ZO*a ,E` Oe*a ,FOa nH�[a a l  kh  �-_ b  a k/  __ a !  + *a ",E[a #\[Z_ \Zi2*a ",FW X $ %hY )  *a ",E[a #\[Zk\Z_ '2*a ",FW X $ %hY�_ b  a l/  __ a &  + *a ',E[a #\[Z_ \Zi2*a ',FW X $ %hY )  *a ',E[a #\[Zk\Z_ '2*a ',FW X $ %hYQ_ b  a m/  __ a (  + *a ),E[a #\[Z_ \Zi2*a ),FW X $ %hY )  *a ),E[a #\[Zk\Z_ '2*a ),FW X $ %hY �_ b  a a /  __ a *  + *a +,E[a #\[Z_ \Zi2*a +,FW X $ %hY )  *a +,E[a #\[Zk\Z_ '2*a +,FW X $ %hY s_ b  a a ,/  __ a -  + *a .,E[a #\[Z_ \Zi2*a .,FW X $ %hY )  *a .,E[a #\[Zk\Z_ '2*a .,FW X $ %hY hU[OY��oO_ *a ,FO .*a /,e   �a 0%�a 1kv�k�k�b   ��� Y hW X $ %hOPUascr  ��ޭ