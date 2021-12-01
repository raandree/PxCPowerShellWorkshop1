#Regular expressions are no fun without a tool like https://regex101.com/

$pattern = '(?<Number1>\d{2})\.\.\.\.(?<Number2>\d{2})'

'Digit 55..,.66 this string' -match $pattern

'Digit 55....66 this string' -match $pattern
$Matches.Number1
$Matches.Number2