# MARS

MINAPI=30
MAXAPI=31
DYNLIB=false
DEBUG=false

REPLACE="
/system/app/DaxUI
/system/app/SomcXperiaServices
/system/app/Stk
/system/app/com.booking
/system/app/com.epicgames.portal
/system/app/com.facebook.appmanager
/system/app/com.facebook.katana
/system/app/com.gameloft.android.anmp.glofta9hm
/system/app/com.netflix.mediaclient
/system/app/com.sonymobile.support
/system/app/daxService
/system/priv-app/SemcAlbum-albumLive-release
/system/priv-app/SemcMusic
/system/priv-app/SemcPhotoEditor
/system/priv-app/SemcPhotoEditor
/system/priv-app/UpdateCenter-release
/system/priv-app/com.facebook.services
/system/priv-app/com.facebook.system
/system/product/app/Music2
/system/product/app/Stk
/system/product/priv-app/StorageManager
"

# PERMISSIONS

set_permissions() {
  : 
}

# MMT

SKIPUNZIP=1
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh
