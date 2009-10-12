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
      |  b    |    б    |
      |  v    |    в    |
      |  g    |    г    |
      |  d    |    д    |
      |  gj   |    ѓ    |
      |  e    |    е    |
      |  zh   |    ж    |
      |  z    |    з    |
      |  dz   |    ѕ    |
      |  i    |    и    |
      |  j    |    ј    |
      |  k    |    к    |
      |  l    |    л    |
      |  lj   |    љ    |
      |  m    |    м    |
      |  n    |    н    |
      |  nj   |    њ    |
      |  o    |    о    |
      |  p    |    п    |
      |  r    |    р    |
      |  s    |    с    |
      |  t    |    т    |
      |  kj   |    ќ    |
      |  u    |    у    |
      |  f    |    ф    |
      |  h    |    х    |
      |  c    |    ц    |
      |  ch   |    ч    |
      |  dj   |    џ    |
      |  sh   |    ш    |

  Scenario Outline: User writes sentences in latic characters
    When user writes <latin> text
    Then that text will be converted into <cyrilic>

    Examples:
      | latin | cyrilic |
      |  ab    |  аб    |
      |  ba    |  ба    |
      |  ljuljka njuh dzid zhetva djin gjevrek shtip cheshel kjorav |  љуљка њух ѕид жетва џин ѓеврек штип чешел ќорав |

