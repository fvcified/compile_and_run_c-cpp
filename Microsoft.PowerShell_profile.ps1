# --- 1. Compile Only ---
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

# --- 2. Compile & Run ---
function cr {
    param([string]$file)
    $out = [System.IO.Path]::GetFileNameWithoutExtension($file)
    gcc $file -o $out
    if ($?) { .\"$out.exe" }
}

function cppr {
    param([string]$file)
    $out = [System.IO.Path]::GetFileNameWithoutExtension($file)
    g++ $file -o $out
    if ($?) { .\"$out.exe" }
}
