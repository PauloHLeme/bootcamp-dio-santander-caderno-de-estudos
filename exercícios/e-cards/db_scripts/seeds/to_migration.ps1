# Pegar o diretório atual
$scriptDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

# Definir o caminho para o arquivo de destino
$outputFile = Join-Path -Path $scriptDir -ChildPath "to_migration.sql"

# Verifica se o arquivo já existe e o remove caso exista
if (Test-Path -Path $outputFile) {
    Remove-Item -Path $outputFile
}

# Obter todos os arquivos .sql no diretório atual
$sqlFiles = Get-ChildItem -Path $scriptDir -Filter "*.sql" -File | Sort-Object Name

# Concatenar o conteúdo de cada arquivo no arquivo de destino
foreach ($file in $sqlFiles) {
    Get-Content $file.FullName | Out-File -Append -FilePath $outputFile
    "" | Out-File -Append -FilePath $outputFile
    "GO" | Out-File -Append -FilePath $outputFile
    "" | Out-File -Append -FilePath $outputFile
}

Write-Host "Todos os arquivos SQL foram concatenados em $outputFile"
