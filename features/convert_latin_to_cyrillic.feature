Feature: Convert Latin To Cyrilic
	In order to use appropriate alphabet
	As an administrator
	I want to be able to convert all latic characters to cyrilic

  Scenario Outline: User enters latic characters
    When user writes <latin> character
    Then that character will be converted into <cyrilic>

    Examples:
      | latin | cyrilic |
      |  a    |    а    |
      |  A    |    А    |
      |  b		|    б    |
      |  B		|    Б    |
      |  v    |    в    |
      |  V    |    В    |
      |  g    |    г    |
      |  G    |    Г    |
      |  d    |    д    |
      |  D    |    Д    |
      |  gj   |    ѓ    |
			|  GJ   |    Ѓ    |
			|  Gj   |    Ѓ    |
      |  e    |    е    |
      |  E    |    Е    |
      |  zh   |    ж    |
      |  ZH   |    Ж    |
      |  Zh   |    Ж    |
      |  z    |    з    |
      |  Z    |    З    |
      |  dz   |    ѕ    |
      |  DZ   |    Ѕ    |
      |  Dz   |    Ѕ    |
      |  i    |    и    |
      |  I    |    И    |
      |  j    |    ј    |
      |  J    |    Ј    |
      |  k    |    к    |
      |  K    |    К    |
      |  l    |    л    |
      |  L    |    Л    |
      |  lj   |    љ    |
      |  LJ   |    Љ    |
      |  Lj   |    Љ    |
      |  m    |    м    |
      |  M    |    М    |
      |  n    |    н    |
      |  N    |    Н    |
      |  nj   |    њ    |
      |  NJ   |    Њ    |
      |  Nj   |    Њ    |
      |  o    |    о    |
      |  O    |    О    |
      |  p    |    п    |
      |  P    |    П    |
      |  r    |    р    |
      |  R    |    Р    |
      |  s    |    с    |
      |  S    |    С    |
      |  t    |    т    |
      |  T    |    Т    |
      |  kj   |    ќ    |
      |  KJ   |    Ќ    |
      |  Kj   |    Ќ    |
      |  u    |    у    |
      |  U    |    У    |
      |  f    |    ф    |
      |  F    |    Ф    |
      |  h    |    х    |
      |  H    |    Х    |
      |  c    |    ц    |
      |  C    |    Ц    |
      |  ch   |    ч    |
      |  CH   |    Ч    |
      |  Ch   |    Ч    |
      |  dzh  |    џ    |
      |  DZH  |    Џ    |
      |  Dzh  |    Џ    |
      |  sh   |    ш    |
      |  SH   |    Ш    |
      |  Sh   |    Ш    |

  Scenario Outline: User writes sentences in latic characters
    When user writes <latin> text
    Then that text will be converted into <cyrilic>

    Examples:
      | latin 					| cyrilic 						|
      |  abeceda		    |  абецеда    				|
      |  Cela rechenica |  Цела реченица			|

