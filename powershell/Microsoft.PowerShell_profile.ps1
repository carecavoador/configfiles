# Variáveis de ambiente
$venvs = '~\.virtualenvs'


# Aliases
Set-Alias v nvim

# FUNÇÕES
# Contabiliza o tempo que um comando levou para executar
function time {
    param (
        [Parameter(Mandatory=$false)]
        [string]$comando
    )
    If ($comando) {
        $tempo = Measure-Command {Invoke-Expression $comando} | Select-Object -ExpandProperty TotalMilliseconds
        Write-Host "Levou $($tempo) milisegundos para executar."
    } else {
        Write-Host "É preciso especificar um comando."
        Write-Host "`tEXEMPLO: time {python main.py}"
    }
}


# Inicializa Oh My Posh
$tema = '~\.config\powershell\themes\meutema.omp.toml'
oh-my-posh init pwsh --config $tema | Invoke-Expression


# Terminal Icons
Import-Module -Name Terminal-Icons
