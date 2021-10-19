# MARS

MINAPI=30
MAXAPI=31
DYNLIB=false
DEBUG=false

REPLACE="
/system/app/Stk
/system/product/overlays/
"

# PERMISSIONS

set_permissions() {
  : 
}

# MMT

SKIPUNZIP=1
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh
