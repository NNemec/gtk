function meson {
    Param(
        [parameter(ValueFromRemainingArguments = $true)]
        [string[]]$params
    )
    python3 ..\meson\meson.py @params
}

meson .\builddir -Dintrospection=false "-Dpango:gir=false"
