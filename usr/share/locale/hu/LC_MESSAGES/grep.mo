��    2      �  C   <      H  
  I  0  T  t  �    �  v       �     �     �  ,   �     �  %     ,   <  -   i      �  &   �     �     �          !     2  E   J     �     �  �   �  (   :     c  �   �  &        @     M     Z     g     {  )   �  (   �     �     �          !     3     J     [     i     �     �     �     �     �     �  B    V  I  :  �  E  �  (  !$  {  J%     �&     �&     �&  1   '  #   H'  ,   l'  1   �'  2   �'  &   �'  6   %(  !   \(  !   ~(     �(     �(     �(  E   �(     )     .)  �   F)  4   �)     *  �   0*     +     ++     9+     G+     U+     k+  ,   �+  ,   �+     �+  $   �+  +   ,     0,     K,     k,     ,     �,     �,     �,     �,     �,     -     *-        ,          #       1                    0              -                   (   +      )   	   '   %           2                 *   &          .   /          "             
         $                                      !            
Context control:
  -B, --before-context=NUM  print NUM lines of leading context
  -A, --after-context=NUM   print NUM lines of trailing context
  -C, --context=NUM         print NUM lines of output context
  -NUM                      same as --context=NUM
      --color[=WHEN],
      --colour[=WHEN]       use markers to distinguish the matching string
                            WHEN may be `always', `never' or `auto'.
  -U, --binary              do not strip CR characters at EOL (MSDOS)
  -u, --unix-byte-offsets   report offsets as if CRs were not there (MSDOS)

`egrep' means `grep -E'.  `fgrep' means `grep -F'.
With no FILE, or when FILE is -, read standard input.  If less than
two FILEs given, assume -h.  Exit status is 0 if match, 1 if no match,
and 2 if trouble.
 
Miscellaneous:
  -s, --no-messages         suppress error messages
  -v, --invert-match        select non-matching lines
  -V, --version             print version information and exit
      --help                display this help and exit
      --mmap                use memory-mapped input if possible
 
Output control:
  -m, --max-count=NUM       stop after NUM matches
  -b, --byte-offset         print the byte offset with output lines
  -n, --line-number         print line number with output lines
      --line-buffered       flush output on every line
  -H, --with-filename       print the filename for each match
  -h, --no-filename         suppress the prefixing filename on output
      --label=LABEL         print LABEL as filename for standard input
  -o, --only-matching       show only the part of a line matching PATTERN
  -q, --quiet, --silent     suppress all normal output
      --binary-files=TYPE   assume that binary files are TYPE
                            TYPE is 'binary', 'text', or 'without-match'
  -a, --text                equivalent to --binary-files=text
  -I                        equivalent to --binary-files=without-match
  -d, --directories=ACTION  how to handle directories
                            ACTION is 'read', 'recurse', or 'skip'
  -D, --devices=ACTION      how to handle devices, FIFOs and sockets
                            ACTION is 'read' or 'skip'
  -R, -r, --recursive       equivalent to --directories=recurse
      --include=PATTERN     files that match PATTERN will be examined
      --exclude=PATTERN     files that match PATTERN will be skipped.
      --exclude-from=FILE   files that match PATTERN in FILE will be skipped.
  -L, --files-without-match only print FILE names containing no match
  -l, --files-with-matches  only print FILE names containing matches
  -c, --count               only print a count of matching lines per FILE
  -Z, --null                print 0 byte after FILE name
   -E, --extended-regexp     PATTERN is an extended regular expression
  -F, --fixed-strings       PATTERN is a set of newline-separated strings
  -G, --basic-regexp        PATTERN is a basic regular expression
  -P, --perl-regexp         PATTERN is a Perl regular expression
   -e, --regexp=PATTERN      use PATTERN as a regular expression
  -f, --file=FILE           obtain PATTERN from FILE
  -i, --ignore-case         ignore case distinctions
  -w, --word-regexp         force PATTERN to match only whole words
  -x, --line-regexp         force PATTERN to match only whole lines
  -z, --null-data           a data line ends in 0 byte, not newline
 %s (GNU grep) %s
 %s: illegal option -- %c
 %s: invalid option -- %c
 %s: option `%c%s' doesn't allow an argument
 %s: option `%s' is ambiguous
 %s: option `%s' requires an argument
 %s: option `--%s' doesn't allow an argument
 %s: option `-W %s' doesn't allow an argument
 %s: option `-W %s' is ambiguous
 %s: option requires an argument -- %c
 %s: unrecognized option `%c%s'
 %s: unrecognized option `--%s'
 ' (standard input) Binary file %s matches
 Copyright 1988, 1992-1999, 2000, 2001 Free Software Foundation, Inc.
 Memory exhausted No syntax specified Search for PATTERN in each FILE or standard input.
Example: %s -i 'hello world' menu.h main.c

Regexp selection and interpretation:
 The -P and -z options cannot be combined The -P option is not supported This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 Try `%s --help' for more information.
 Unbalanced ( Unbalanced ) Unbalanced [ Unfinished \ escape Unknown system error Usage: %s [OPTION]... PATTERN [FILE] ...
 Usage: %s [OPTION]... PATTERN [FILE]...
 ` input is too large to count invalid context length argument invalid max count malformed repeat count memory exhausted out of memory recursive directory loop unfinished repeat count unknown binary-files type unknown devices method unknown directories method warning: %s: %s
 writing output Project-Id-Version: grep 2.5g
POT-Creation-Date: 2002-03-26 16:38+0100
PO-Revision-Date: 2002-05-06 09:29+0200
Last-Translator: Emese Kov�cs <emese@gnome.hu>
Language-Team: Hungarian <translation-team-hu@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-2
Content-Transfer-Encoding: 8bit
 
Sz�vegk�rnyezet be�ll�t�sai:
  -B, --before-context=SZ�M SZ�M sort �r ki a tal�lat el�tti k�rnyezetb�l
  -A, --after-context=SZ�M  SZ�M sort �r ki a tal�lat ut�ni k�rnyezetb�l
  -C, -- context=SZ�M       SZ�M sort �r ki a k�rnyezetb�l
  -SZ�M                     ugyanaz mint a --context=SZ�M
      --color[=EKKOR],
      --colour[=EKKOR]      az illeszked� karakterl�ncot besz�nezi
                            EKKOR lehet 'always', 'never' vagy 'auto'
  -U, --binary              nem v�gja le a CR karaktereket sor v�g�n (MSDOS)
  -u, --unix-byte-offsets   eltol�sok ki�r�sa, mintha nem lenne CR (MSDOS)

`egrep' jelent�se `grep -E'. `fgrep' jelent�se `grep -F'.
Szabv�nyos bemenetr�l olvas, ha F�JL nincs megadva vagy -. Ha kevesebb mint
k�t F�JL van megadva, -h kapcsol�t felt�telez. Kil�p�si �rt�k 0, ha van 
tal�lat, 1, ha nincs �s 2, ha gond van.
 
Egy�b:
  -s, --no-messages         hiba�zenetek eln�m�t�sa
  -v, --invert-match        a nem illeszked� sorokat v�logatja ki
  -V, --version             ki�rja a program nev�t �s v�ltozat�t
      --help                eml�keztet�t �r ki
      --mmap                memory-mapped bemenet haszn�lata, ha lehets�ges
 
Kimenet be�ll�t�sa:
  -m, --max-count=SZ�M      le�ll SZ�M tal�lat ut�n
  -b, --byte-offset         a kimenetben szerepel a sor helye is (b�jt offset)
  -n, --line-number         a kimenetben szerepel a sor sz�ma is
      --line-buffered       kimenet 'flush'-ol�sa minden sor ut�n
  -H, --with-filename       minden tal�lathoz �r f�jlnevet is
  -h, --no-filename         a kimenetbe nem �r ki f�jln�v el�tagot
      --label=C�MKE         C�MKE ki�r�sa f�jln�v helyett, szabv�nyos
                            bemenetn�l
  -o, --only-matching       a sornak csak a MINT�RA illeszked� r�sz�t mutatja
  -q, --quiet, --silent     minden szokv�nyos ki�r�s elhagy�sa
      --binary-files=T�PUS  a bin�ris f�jlokat adott T�PUS�NAK veszi
                            T�PUS lehet 'binary', 'text' vagy 'without-match'
  -a, --text                mint --binary-files=text
  -I                        mint --binary-files=without-match 
  -d, --directories=M�VELET mit csin�ljon a k�nyvt�rakkal
                            M�VELET lehet 'read', 'recurse' vagy 'skip'
  -D, --devices=M�VELET     mit csin�ljon az eszk�z�kkel, fifokkal �s 
                            socketekkel
                            M�VELET lehet 'read' vagy 'skip'
  -R, -r, --recursive       mint --directories=recurse
      --include=MINTA       csak a MINT�RA illeszked� f�jlokat vizsg�lja
      --exclude=MINTA       a MINT�RA illeszked� f�jlokat �tugorja
      --exclude-from=F�JL   a F�JL-ban tal�lhat� mint�kra illeszked� 
                            f�jlokat �tugorja.
  -L, --files-without-match csak azokat a f�jlneveket �rja, 
                            ahol nem volt tal�lat
  -L, --files-with-matches  csak azokat a f�jlneveket �rja, ahol volt tal�lat
  -c, --count               csak az illeszked� sorok sz�m�t �rja, f�jlonk�nt
  -Z, --null                0 b�jt �r�sa a f�jln�v ut�n
   -E, --extended-regexp     MINTA kiterjesztett regul�ris kifejez�s (eregexp)
  -F, --fixed-strings       MINTA �jsorokkal elv�lasztott karakterl�ncok halmaza
  -G, --basic-regexp        MINTA alapvet� regul�ris kifejez�s (basic regexp)
  -P, --perl-regexp         MINTA Perl regul�ris kifejez�s
   -e, --regexp=MINTA        MINTA haszn�lata mint regul�ris kifejez�s
  -f, --file=F�JL           minta beolvas�sa F�JLB�L
  -i, --ignore-case         kis- �s nagybet� megegyezik
  -w, --word-regexp         MINTA csak eg�sz sz�ra illeszkedik
  -x, --line-regexp         MINTA csak eg�sz sorra illeszkedik
  -z, --null-data           az adat sorai 0 b�jtra v�gz�dnek, nem �jsorra
 %s (GNU grep) %s
 %s: illeg�lis kapcsol� -- %c
 %s: �rv�nytelen kapcsol� -- %c
 %s: a `%c%s' kapcsol� nem enged meg argumentumot
 %s: a `%s' kapcsol� nem egy�rtelm�
 %s: a `%s' kapcsol�hoz argumentum sz�ks�ges
 %s: a `--%s' kapcsol� nem enged meg argumentumot
 %s: a `-W %s' kapcsol� nem enged meg argumentumot
 %s: a `-W %s' kapcsol� nem egy�rtelm�
 %s: a kapcsol�nak sz�ks�ge van egy argumentumra -- %c
 %s: a `%c%s' kapcsol� ismeretlen
 %s: a `--%s' kapcsol� ismeretlen
 ' (szabv�nyos bemenet) %s bin�ris f�jl illeszkedik
 Copyright 1988, 1992-1999, 2000, 2001 Free Software Foundation, Inc.
 Elfogyott a mem�ria Nincs szintaxis megadva MINT�T keresi mindegyik F�JLBAN vagy a szabv�nyos bemeneten.
P�lda: %s -i 'szia vil�g' menu.h main.c

Regul�ris kifejez�s kiv�laszt�sa �s �rtelmez�se:
 A -P �s -z kapcsol�kat nem lehet egyszerre haszn�lni A -P kapcsol� nem t�mogatott Ez szabad szoftver; a sokszoros�t�sra vonatkoz� felt�teleket l�sd a forr�sban.
SEMMILYEN garanci�t nem v�llalunk, m�g azt sem �ll�tjuk, hogy ez a program 
KERESKEDELMI C�LOKRA ALKALMAS vagy HASZN�LHAT� EGY ADOTT FELADATRA.
 Pr�b�ld a `%s --help'-et.
 P�r n�lk�li ( P�r n�lk�li ) P�r n�lk�li [ Befejezetlen \ escape Ismeretlen rendszerhiba Haszn�lat: %s [KAPCSOL�]... MINTA [F�JL]...
 Haszn�lat: %s [KAPCSOL�]... MINTA [F�JL]...
 ` a bemenet t�l nagy a megsz�ml�l�shoz �rv�nytelen sz�vegk�rnyezethossz argumentum �rv�nytelen maxim�lis sz�m rosszul megadott ism�tl�si sz�m elfogyott a mem�ria elfogyott a mem�ria rekurz�v k�nyvt�rhurok befejezetlen ism�tl�si sz�m ismeretlen bin�ris f�jl t�pus ismeretlen eszk�zm�dszer ismeretlen k�nyvt�rm�dszer vigy�zat: %s: %s
 eredm�ny ki�r�sa 