# Strings

**Part 1 strings theory**

- not finished yet

**Part 2 - strings coding**

<a href="https://youtu.be/7DUrBs5q6kM" target="_blank">
  <img src="https://github.com/kokchun/assets/blob/main/sql/09_a_strings.png?raw=true" alt="strings in duckdb" width="600">
</a>

In this lecture we'll work with strings and regular expressions. I strongly recommend you to check the documentation for text operations as we won't cover them all in this lecture.

## Regex glossary

Here are some common regex patterns which can be used for string matching

| **Pattern** | **Description**                                                             | **Example**                                                         |
| ----------- | --------------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `\bword\b`  | Matches the exact word "word" with word boundaries.                         | `\bcat\b` matches "cat" in "The cat sat." but not in "caterpillar." |
| `\d`        | Matches any single digit (0-9).                                             | `\d` matches "5" in "There are 5 apples."                           |
| `\D`        | Matches any character that is not a digit.                                  | `\D` matches "a" in "a1b2."                                         |
| `\s`        | Matches any whitespace character (spaces, tabs, line breaks).               | `\s` matches the space in "Hello World."                            |
| `\S`        | Matches any character that is not a whitespace.                             | `\S` matches "H" in " Hello."                                       |
| `\w`        | Matches any word character (alphanumeric and underscore).                   | `\w` matches "a" in "apple."                                        |
| `\W`        | Matches any character that is not a word character.                         | `\W` matches "!" in "Hello!"                                        |
| `^`         | Asserts the position at the start of a line.                                | `^Hello` matches "Hello" at the beginning of a line.                |
| `$`         | Asserts the position at the end of a line.                                  | `world$` matches "world" at the end of a line.                      |
| `.`         | Matches any single character except newline characters.                     | `a.b` matches "aab" or "acb" but not "ab."                          |
| `*`         | Matches zero or more occurrences of the preceding element.                  | `a*` matches "", "a", "aa", etc.                                    |
| `+`         | Matches one or more occurrences of the preceding element.                   | `a+` matches "a", "aa", etc., but not "".                           |
| `?`         | Matches zero or one occurrence of the preceding element.                    | `a?` matches "" or "a".                                             |
| `{n}`       | Matches exactly 'n' occurrences of the preceding element.                   | `a{3}` matches "aaa".                                               |
| `{n,}`      | Matches 'n' or more occurrences of the preceding element.                   | `a{2,}` matches "aa", "aaa", etc.                                   |
| `{n,m}`     | Matches between 'n' and 'm' occurrences of the preceding element.           | `a{2,4}` matches "aa", "aaa", or "aaaa".                            |
| `[abc]`     | Matches any one character within the brackets.                              | `[abc]` matches "a", "b", or "c".                                   |
| `[^abc]`    | Matches any one character not within the brackets.                          | `[^abc]` matches any character except "a", "b", or "c".             |
| `(abc)`     | Matches the exact sequence "abc" and captures it.                           | `(abc)` matches "abc" in "abc".                                     |
| `a\|b`      | Matches either "a" or "b".                                                  | `a\|b` matches "a" or "b".                                          |
| `\b`        | Asserts a word boundary.                                                    | `\bword\b` matches "word" as a whole word.                          |
| `\B`        | Asserts a position where \b does not match.                                 | `\Bword\B` matches "word" within another word like "swordfish".     |
| `(?=...)`   | Positive lookahead; asserts that what follows matches the pattern.          | `a(?=b)` matches "a" only if followed by "b".                       |
| `(?!...)`   | Negative lookahead; asserts that what follows does not match the pattern.   | `a(?!b)` matches "a" only if not followed by "b".                   |
| `(?<=...)`  | Positive lookbehind; asserts that what precedes matches the pattern.        | `(?<=a)b` matches "b" only if preceded by "a".                      |
| `(?<!...)`  | Negative lookbehind; asserts that what precedes does not match the pattern. | `(?<!a)b` matches "b" only if not preceded by "a".                  |

## Other videos 📹

## Read more 👓

From duckdb documentation

- [text functions and operators](https://duckdb.org/docs/sql/functions/char.html)

Other sources

- [regex cheat sheet](https://www.rexegg.com/regex-quickstart.php)
