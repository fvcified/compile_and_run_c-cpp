function c {
    param([string]$file, [string]$out)
    if (-not $out) { $out = [System.IO.Path]::GetFileNameWithoutExtension($file) }
    gcc $file -o $out
}

function cpp {
    param([string]$file, [string]$out)
    if (-not $out) { $out = [System.IO.Path]::GetFileNameWithoutExtension($file) }
    g++ $file -o $out
}
