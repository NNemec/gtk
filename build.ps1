function meson {
    Param(
        [parameter(ValueFromRemainingArguments = $true)]
        [string[]]$params
    )
    python3 ..\meson\meson.py @params
}

#meson configure -Dintrospection=false # pango does not seem to compile with this...
#meson configure -Dpango:gir=false

#meson wrap promote subprojects\glib\subprojects\libffi.wrap
#meson wrap promote subprojects\glib\subprojects\zlib.wrap
#meson wrap promote subprojects\glib\subprojects\proxy-libintl.wrap

#meson wrap promote subprojects\pango\subprojects\fribidi.wrap

meson .\builddir
