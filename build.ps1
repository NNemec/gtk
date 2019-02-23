function meson {
    Param(
        [parameter(ValueFromRemainingArguments = $true)]
        [string[]]$params
    )
    python3 ..\meson\meson.py @params
}

New-Item .\.builddir -ItemType Directory -ErrorAction SilentlyContinue

meson wrap promote subprojects\glib\subprojects\libffi.wrap
meson wrap promote subprojects\glib\subprojects\zlib.wrap
meson .\builddir
