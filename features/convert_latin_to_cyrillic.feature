Feature: Convert Latin To Cyrilic
    In order to use appropriate alphabet
    As an administrator
    I want to be able to convert all Latin characters to Cyrillic

    Scenario Outline: User enters Latin characters
        When user writes <Latin> character
        Then that character will be converted into <Cyrillic>

        Examples:
            | Latin | Cyrillic |
            | a     | а        |
            | A     | А        |
            | b     | б        |
            | B     | Б        |
            | v     | в        |
            | V     | В        |
            | g     | г        |
            | G     | Г        |
            | d     | д        |
            | D     | Д        |
            | ð     | ђ        |
            | Ð     | Ђ        |
            | dj    | ђ        |
            | Dj    | Ђ        |
            | DJ    | Ђ        |
            | e     | е        |
            | E     | Е        |
            | ž     | ж        |
            | Ž     | Ж        |
            | z     | з        |
            | Z     | З        |
            | i     | и        |
            | I     | И        |
            | j     | ј        |
            | J     | Ј        |
            | k     | к        |
            | K     | К        |
            | l     | л        |
            | L     | Л        |
            | lj    | љ        |
            | LJ    | Љ        |
            | Lj    | Љ        |
            | m     | м        |
            | M     | М        |
            | n     | н        |
            | N     | Н        |
            | nj    | њ        |
            | NJ    | Њ        |
            | Nj    | Њ        |
            | o     | о        |
            | O     | О        |
            | p     | п        |
            | P     | П        |
            | r     | р        |
            | R     | Р        |
            | s     | с        |
            | S     | С        |
            | t     | т        |
            | T     | Т        |
            | Ć     | Ћ        |
            | ć     | ћ        |
            | u     | у        |
            | U     | У        |
            | f     | ф        |
            | F     | Ф        |
            | h     | х        |
            | H     | Х        |
            | c     | ц        |
            | C     | Ц        |
            | č     | ч        |
            | Č     | Ч        |
            | ch    | ч        |
            | CH    | Ч        |
            | Ch    | Ч        |
            | dz    | џ        |
            | DZ    | Џ        |
            | Dz    | Џ        |
            | dž    | џ        |
            | DŽ    | Џ        |
            | Dž    | Џ        |
            | š     | ш        |
            | Š     | Ш        |
            | sh    | ш        |
            | SH    | Ш        |
            | Sh    | Ш        |

    Scenario Outline: User writes sentences in Latin characters
        When user writes <Latin> text
        Then that text will be converted into <Cyrillic>

        Examples:
            | Latin          | Cyrillic      |
            | abeceda        | абецеда       |
            | Cela rechenica | Цела реченица |
            | Cela rečenica  | Цела реченица |
            | Džečćž         | Џечћж         |
