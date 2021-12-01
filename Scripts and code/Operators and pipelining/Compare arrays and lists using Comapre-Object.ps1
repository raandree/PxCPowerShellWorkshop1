#Compare-Object -ReferenceObject $a -DifferenceObject $b
<#
InputObject SideIndicator
----------- -------------
         11 =>
         12 =>
         13 =>
         14 =>
         15 =>
         16 =>
          1 <=
          2 <=
          3 <=
          4 <=
#>

Compare-Object -ReferenceObject $a -DifferenceObject $b -ExcludeDifferent -IncludeEqual

<#
InputObject SideIndicator
----------- -------------
          5 ==
          6 ==
          7 ==
          8 ==
          9 ==
         10 ==
#>
