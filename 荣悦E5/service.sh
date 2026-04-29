#!/system/bin/sh
MODDIR=${0%/*}

log_print() {
    log -t kano_tether "$1"
}

PKG="com.google.android.networkstack.tethering"
PATH_NOW="$(pm path $PKG 2>/dev/null)"

case "$PATH_NOW" in
  package:/data/app/*)
    log_print "发现 $PKG 正在使用更新包，开始卸载系统更新"
    cmd package uninstall-system-updates $PKG
    ;;
  *)
    log_print "$PKG 当前未使用更新包"
    ;;
esac
