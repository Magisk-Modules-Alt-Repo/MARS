# MARS

MINAPI=30
MAXAPI=32
DYNLIB=true
DEBUG=false

REPLACE="
/system/app/Stk
/system/product/app/Stk
/system/product/priv-app/StorageManager
"

set_permissions() {
  : 
}

SKIPUNZIP=1
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh
