# PxCPowerShellWorkshop1

## Proposed Content

- Parallel execution
- multidimensional arrays
- local module management

> Content may vary

This is how one can put source code into markdown documents:

```powershell
$tvs = Get-Content -Path 'D:\Git\PxCPowerShellWorkshop\Scripts and code\Flow Control and Collection Types\tvs.yml' |
ConvertFrom-Yaml

$tvs.LivingRoom[0]
```

Useful Links
- [About Topics](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about?view=powershell-7.2)
- [PowerShell Explained](https://powershellexplained.com/sitemap/?utm_source=blog&utm_medium=blog&utm_content=recent)
- [PowerShell Function Evolution](https://github.com/raandree/PowerShellTraining/)
- Create your own dev and test environment with [AutomatedLab](https://automatedlab.org/en/latest/)

