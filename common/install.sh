image_view mars.png

ui_print " "
ui_print " "
ui_print " "
ui_print "   DO YOU WANT TO OPTIMIZE ALL YOUR APPS?"
ui_print "   WITH ~80 APPS IT WILL TAKE UP TO 10-15 MINUTES"
ui_print " "
ui_print "→ Vol+ (Up) = Yes, Vol- (Down) = No"
ui_print " "
if $VKSEL; then
      echo "Yes"
ui_print " - APP OPTIMIZATION..."
ui_print " -- PLEASE BE PATIENT..."
ui_print " --- THIS PROCESS CAN TAKE UP SOME TIME..."
ui_print " "
su -c cmd package bg-dexopt-job
ui_print " "
ui_print " FINISHED THE OPTIMIZATION"
ui_print " "
    else
      echo "No"
  ui_print "- Skipping this One..."
fi

ui_print "- ZIPALIGN APPS"
do_zipalign() {
  cp "$MODPATH/zipalign" /data/local/tmp >&2
chmod 775 /data/local/zipalign
for apk in "$MODPATH" 'system_ext/priv-app/*/*.apk' "$MODPATH" 'system/app/*/*.apk' "$MODPATH" 'system/priv-app/*/*.apk' "$MODPATH" 'system/product/priv-app/*/*.apk' "$MODPATH" 'system/product/app/*/*.apk'; do
   $zipalign -c -v 4 "$apk" 1>&2;
done;
}

zipalign

ui_print " "
ui_print "__________________________________________________"
ui_print " "
ui_print " Enabling Extra Functions..."
ui_print "__________________________________________________"
ui_print " "
if [ $API -ge 30 ]; then
  ui_print " "
  DPF=$(find /data/data/com.google.android.dialer* -name "dialer_phenotype_flags.xml")
  if [ -f $DPF ]; then
	patch_xml -s $DPF '/map/boolean[@name="CallRecording__enable_call_recording_for_fi"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="ContactRetriever__enable_suggested_contacts_enhanced_view_holder"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__allow_gcore_spam_read"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__config_caller_id_enabled"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__enable_call_recording"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__enable_caller_id_and_spam_confirmation_dialogs"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__enable_coin"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__enable_duplicates_promo_v2_ui"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__enable_emergency_panel"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__enable_fastpass"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__enable_patronus_spam"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__enable_phone_number_classification_spam"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__enable_return_to_call_bubble"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__enable_revelio"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__enable_revelio_on_bluetooth"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__enable_spam_blocking_promo"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__enable_speakeasy_details"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__enable_theme_pushing"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__force_within_call_recording_geofence_value"]' "false"
	patch_xml -s $DPF '/map/boolean[@name="G__speak_easy_bypass_locale_check"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__speak_easy_enable_listen_in_button"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__use_possibly_faked_number_result_from_server"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="G__vvm_network_capability_enabled"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="Voip__handoff_on_cell_loss_allowed"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="Voip__wifi_network_optimizing_handoff_allowed"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="enable_call_recording_system_feature"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="enable_constellation_consent_v2"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="enable_drag_and_drop_preview"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="enable_enriched_calling"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="enable_revelio_transcript"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="enable_seamless_call"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="enable_video_call_conference"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="enable_video_call_introduction"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="enable_video_call_type_chooser"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="enable_video_handover_dialog"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="enable_video_type_picker"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="kill_ops_record_audio_pre_call"]' "true"
	patch_xml -s $DPF '/map/boolean[@name="suggest_turn_off_airplane_mode"]' "true"
    patch_xml -s $DPF '/map/boolean[@name="G__call_screen_audio_listener_enabled"]' "true"
    patch_xml -s $DPF '/map/boolean[@name="G__enable_atlas"]' "true"
    patch_xml -s $DPF '/map/boolean[@name="G__enable_revelio_on_wired_headset"]' "true"
    patch_xml -s $DPF '/map/boolean[@name="G__enable_speakeasy_details"]' "true"
    patch_xml -s $DPF '/map/boolean[@name="G__speak_easy_bypass_locale_check"]' "true"
    patch_xml -s $DPF '/map/boolean[@name="G__speak_easy_enable_listen_in_button"]' "true"
    patch_xml -s $DPF '/map/boolean[@name="G__speak_easy_enabled"]' "true"
    patch_xml -s $DPF '/map/boolean[@name="G__speakeasy_postcall_survey_enabled"]' "true"
    patch_xml -s $DPF '/map/boolean[@name="G__speakeasy_show_privacy_tour"]' "true"
    patch_xml -s $DPF '/map/boolean[@name="__data_rollout__SpeakEasy.CallScreenOnPixelTwoRollout__launched__"]' "true"
    patch_xml -s $DPF '/map/boolean[@name="__data_rollout__SpeakEasy.OverrideUSLocaleCheckRollout__launched__"]' "true"
    patch_xml -s $DPF '/map/boolean[@name="__data_rollout__SpeakEasy.SpeakEasyDetailsRollout__launched__"]' "true"
  fi
fi

cleanup() {
ui_print "- CLEANUP"
rm -rf $MODPATH/system/product/app/Music2
rm -rf $MODPATH/system/product/app/Stk
rm -rf $MODPATH/system/app/Stk
rm -rf $MODPATH/system/product/priv-app/StorageManager
rm -rf /cache/*
rm -rf /data/cache/*
rm -rf /data/dalvik-cache/*
}

cleanup