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
      |  b    |    б    |
      |  Б    |    Б    |
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
      |  e    |    Е    |
      |  zh   |    ж    |
      |  ZH   |    Ж    |
      |  Zh   |    Ж    |
      |  z    |    з    |
      |  Z    |    З    |
      |  dz   |    ѕ    |
      |  DZ   |    Ѕ    |
      |  Dz   |    Ѕ    |
      |  i    |    и    |
      |  i    |    И    |
      |  j    |    ј    |
      |  j    |    Ј    |
      |  k    |    к    |
      |  k    |    К    |
      |  l    |    л    |
      |  l    |    Ј    |
      |  lj   |    љ    |
      |  LJ   |    Љ    |
      |  Lj   |    Љ    |
      |  m    |    м    |
      |  m    |    М    |
      |  n    |    н    |
      |  n    |    Н    |
      |  nj   |    њ    |
      |  NJ   |    Њ    |
      |  Nj   |    Њ    |
      |  o    |    о    |
      |  o    |    О    |
      |  p    |    п    |
      |  p    |    П    |
      |  r    |    р    |
      |  r    |    Р    |
      |  s    |    с    |
      |  s    |    С    |
      |  t    |    т    |
      |  t    |    Т    |
      |  kj   |    ќ    |
      |  KJ   |    Ќ    |
      |  Kj   |    Ќ    |
      |  u    |    у    |
      |  u    |    У    |
      |  f    |    ф    |
      |  f    |    Ф    |
      |  h    |    х    |
      |  h    |    Х    |
      |  c    |    ц    |
      |  c    |    Ц    |
      |  ch   |    ч    |
      |  CH   |    Ч    |
      |  Ch   |    Ч    |
      |  dj   |    џ    |
      |  DJ   |    Џ    |
      |  Dj   |    Џ    |
      |  sh   |    ш    |
      |  SH   |    Ш    |
      |  Sh   |    Ш    |

  Scenario Outline: User writes sentences in latic characters
    When user writes <latin> text
    Then that text will be converted into <cyrilic>

    Examples:
      | latin 			| cyrilic |
      |  abeceda    |  абецеда    |
      |  Cela rechenica |  Цела реченица |

