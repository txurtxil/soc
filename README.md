# ScreenOnAuto (build modificada)

Build personal, descompilada y recompilada, de [ScreenOnAuto](https://github.com/slzn/ScreenOnAuto-releases) v1.7.7, con los enlaces del dialogo "Acerca de" apuntando a este repositorio y a mi ko-fi en vez de a los del autor original.

## Compilacion (ARM64 / Debian proot)

Requiere un aapt2 nativo ARM64 (Google no distribuye uno oficial para Linux ARM) - se uso el de [ReVanced/aapt2](https://github.com/ReVanced/aapt2) v1.1.0.

    apktool d ScreenOnAuto-V1.7.7.apk -o proyecto_apk
    # editar recursos/smali necesarios
    apktool b proyecto_apk -o app_unsigned.apk -a ./aapt2-arm64
    zipalign -v -p 4 app_unsigned.apk app_final.apk
    apksigner sign --ks mi_firma.keystore --ks-key-alias alias_app app_final.apk

Si `apktool b` falla con `attribute ... not found` (atributos ocultos del framework, tipico en recursos de Material Components), usar `strip_attrs.py` incluido en este repo para eliminarlos de los XML afectados antes de recompilar.

## Uso con Android Auto

Para que Android Auto ofrezca esta app como candidata dentro de sus categorias restringidas, es necesario instalarla mediante **KingInstaller** en lugar de una instalacion normal - esto hace que el sistema la trate como si procediera de Play Store.

**Aviso conocido**: este metodo depende de un permiso de accesibilidad adicional que en Android 14/15/16 puede aparecer bloqueado/gris sin acceso root en el dispositivo. Si esto ocurre, no es un fallo de esta build - es una restriccion de plataforma con la que se choca sistematicamente este tipo de instalacion en Android moderno.
