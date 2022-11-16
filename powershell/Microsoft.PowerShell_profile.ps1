# Variáveis de ambiente
$venvs = '~\.virtualenvs'


# Aliases
Set-Alias v nvim

# FUNÇÕES
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


function Buscar-Trabalhos {
	param (
		[Parameter(Mandatory=$false)]
		[string]$opcoes
	)
	$python = "C:/Users/Everton Souza/.virtualenvs/busca_trabalhos-qFhn7DgV/Scripts/python"
	$script = "C:/Users/Everton Souza/python/busca_trabalhos/main.py"
	if ($opcoes){
		& $python $script $opcoes
	} else {
		& $python $script
	}
}


# Inicializa Oh My Posh
# $tema = '~\.config\powershell\themes\meutema.omp.toml'
# oh-my-posh init pwsh --config $tema | Invoke-Expression


# Inicializa o Starship Shell
Invoke-Expression (&starship init powershell)


# Terminal Icons
Import-Module -Name Terminal-Icons
