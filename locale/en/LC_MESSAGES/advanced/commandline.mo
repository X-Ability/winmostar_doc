Þ          ¼               \     ]     e     j     q       Ñ   "     ô       >        Ï  K   ë  0   7  l   h  3   Õ  /   	     9  !   E  Â   g  9   *    d     ò     ú     ÿ            ²   ª  p   ]	     Î	  ?   á	     !
  B   =
  &   
  N   §
  4   ö
  /   +  	   [  0   e       =   *   -aspect -hsp -molsv -mopac1, -mopac2, -mopac3 ãããããã¼ã«ã»ç°å¢è¨­å®ã¡ãã¥ã¼ã»ãã­ã°ã©ã ãã¹ã«ããã¦é¸æãã3ç¨®ã®MOPACãã¤ããªã«å¯¾å¿ -o (output filename) -oãªãã·ã§ã³ã§ãã¡ã¤ã«å½¢å¼ãå¤æããéã«ããadjustã(åº§æ¨èª¿æ´)ããhaddã(æ°´ç´ ä»å )ããhdelã(æ°´ç´ åé¤)ããcleanã(ã¯ãªã¼ã³)ãæå®ãããã¨ãã§ãã¾ãã Gaussianã¨GAMESSãé£ç¶å®è¡ããå ´åã¯ããã®æ¹æ³ã§ã¯ãªã :menuselection:`ãã¼ã« --> é£ç¶å®è¡` ãä½¿ç¨ãã¾ãã MOPACã®å®è¡ samplesãã©ã«ãã®wmjobs.batã«ä½¿ç¨ä¾ãããã¾ãã ã¢ã¹ãã¯ãæ¯ã®è¨ç® ãªãã·ã§ã³ã«å¥åãã¡ã¤ã«åã¨å¦çåå®¹ãæå®ãã¾ãã ã³ãã³ããã­ã³ããããã®å®è¡æ¹æ³ ã³ãã³ããã­ã³ããããåç¨®ã®ãªãã·ã§ã³ãæå®ãã¦èµ·åãããã¨ãå¯è½ã§ãã ãã³ã»ã³æº¶è§£åº¦ãã©ã¡ã¼ã¿è¨ç®ã®å®è¡ ãã¡ã¤ã«å½¢å¼ã®å¤æ(dat,gjf,mol,pdbç­) ä½¿ç¨ä¾:: åå­è¡¨é¢ç©ã»ä½ç©ã®è¨ç® å®è¡ãã­ã°ã©ã ãæå®ããæã¯å¦çå¾ã«èªåçã«Winmostarãçµäºããã®ã§ãDOSã®BATãã¡ã¤ã«ãè¨è¿°ããMOPACç­ãé£ç¶çã«å®è¡ãããã¨ãã§ãã¾ãã æå®ã§ããå¦çåå®¹ã¯ãä»¥ä¸ã®éãã§ãã Project-Id-Version: PROJECT VERSION
Report-Msgid-Bugs-To: EMAIL@ADDRESS
POT-Creation-Date: 2019-12-05 17:54+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: en
Language-Team: en <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.7.0
 -aspect -hsp -molsv -mopac1, -mopac2, -mopac3 These correspond to the three MOPAC binaries selected in :menuselection:`Tools --> Preferences... --> Program path`. -o (output filename) You can also specify "adjust" (coordinate adjustment), " hadd" (hydrogen addition), "hdel" (hydrogen removal), "clean" (clean) when converting the file format with the -o option. If you want to run Gaussian and GAMESS sequentially, use this :menuselection:`Tools --> Batch Queue...` instead. Execution of MOPAC There is an example of use in wmjobs.bat in the samples folder. Calculation of aspect ratio Specify the input file name and processing contents in the option. How to execute from the command prompt It is possible to start by specifying various options from the command prompt. Execution of Hansen solubility parameter calculation File format conversion (dat, gjf, mol, pdb etc) Use case: Calculation of molecular surface area and volume When executable program is specified, Winmostar ends automatically after processing, so you can write DOS BAT file and run MOPAC etc. continuously. The processing contents that can be specified are as follows. 