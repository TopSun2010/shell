#!/bin/bash
skip=44

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -dt`
else
  gztmpdir=/tmp/gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `echo X | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  echo >&2 "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
�&��\lib32ncurses5.sh �XYs�6~節Y��'#	�w��jK��I�iqƴeR!)�����p+/��o�g<2�ow��a��?l�T���,σыA��x��q��?F����v`�y�r�{����1�)�*D��ښi˘1�9�8P�6��z}�ѻ���7�W����8����b/�ap���OF>�����pR�7�39�*���ʶlu���q��xG���4��I��aR�Y�ӓe����apxp����I���w�?�hШ�ֶ�G�e{���)��������q���*�l��1j�ncn8�������зY&����� �������08=\RK�
�|btk:��+>=�@ӄ;!h:���>�۽ڳ�9�|y��+�\�{k�s@�s���Q�+h�y��:�^&%�ӛ�l�q~�̽+���I�b��__V��Ǻ�O�ÂK��� �}^����e�*��2i�
�\ۢL�\��X�^�]�ݼO�O��yk��6"��]=�-���.?y/�zON�������l�0�T�6�� ��ȋ���p�r�V���޾n�Ui6�[[ \��-_*��Fa�ڝ�ܻ�y�e��Y�[,+�U��rjrPޖ���V;���_�������ŎtRI5����É688��@3>�4'��>�M3ɋ
p?@��G��i��p��Fp��w��p�!>�� N��$��nrvm������}\����}((��_qڀ�S�uk�[�bG�B�
�%h��WIM��EF�,I��z�8S���s�t��~�?�5�3��I�a�%*���E=∎"']�hh�p��	���b��XpH⶟�a<&b�CjH"(�L���R(&��"	Q���&����i�ݖs�.54�׉e�ny"���~��M}�@�-��5����)e ZX�b&��;B��i�1ΡN"�0�jN�Q[	a�`4Q����}��LD8�1E�҄��`,9�t��k�����!"M���hh,�N�XR̙��S�pD��k@Ec)����fP
�"H%sDI���%[�D�x��S�	�W*2��7�������\�RŰTXP�r�QF��w%9�Jq���	�屒r��$PqL#�ŜB_��3
�����J/ʡ}9\$W�j=9�	-������p9F�r\rI����w����)汔�{$�~ڬHn�Brc��w��5��ʹ���I�$��$��.�'����z�;��:�I̝�9C���C�2,'�/rSO��zV�б�q�=DFL;d��mAc%���SrC�{X�
ٰs{���y���B�:��8�g�VdZ�d���ęx���$>{^��{������9~3q���!�B��2����X�������{�޳#7����k��W��W�4���^�6~9x{�g���* |sF;�U����+�����/�e�u+��v~
���޵蕘[.�ೄZ��� ��S��� ��tlB-��7���\��J����n->�����ko&�b4�ܿ�J�M���l4�	�^��[O�>{z��أ{T`��[��a�=�e���Q�=�G]��.C߬���� ��  