package com.xiaomi.parts;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.Context;
import android.os.Bundle;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceFragment;

import com.xiaomi.parts.kcal.KCalSettingsActivity;
import com.xiaomi.parts.preferences.SecureSettingListPreference;
import com.xiaomi.parts.preferences.SecureSettingSwitchPreference;
import com.xiaomi.parts.preferences.VibrationSeekBarPreference;
import com.xiaomi.parts.preferences.CustomSeekBarPreference;

import com.xiaomi.parts.R;

public class DeviceSettings extends PreferenceFragment implements
        Preference.OnPreferenceChangeListener {

    public static final String PREF_VIBRATION_STRENGTH = "vibration_strength";
    public static final String VIBRATION_STRENGTH_PATH = "/sys/devices/virtual/timed_output/vibrator/vtg_level";

    private static final String CATEGORY_DISPLAY = "display";
    private static final String PREF_DEVICE_KCAL = "device_kcal";

    //public static final String PREF_THERMAL = "thermal";
    //public static final String THERMAL_PATH = "/sys/devices/virtual/thermal/thermal_message/sconfig";

    private static final String PREF_ENABLE_DIRAC = "dirac_enabled";
    private static final String PREF_HEADSET = "dirac_headset_pref";
    private static final String PREF_PRESET = "dirac_preset_pref";

    // value of vtg_min and vtg_max
    public static final int MIN_VIBRATION = 116;
    public static final int MAX_VIBRATION = 3596;

    public static final  String PREF_HEADPHONE_GAIN = "headphone_gain";
    public static final  String PREF_MICROPHONE_GAIN = "microphone_gain";
    public static final  String HEADPHONE_GAIN_PATH = "/sys/kernel/sound_control/headphone_gain";
    public static final  String MICROPHONE_GAIN_PATH = "/sys/kernel/sound_control/mic_gain";

    public static final String PREF_TORCH_BRIGHTNESS = "torch_brightness";
    private static final String TORCH_1_BRIGHTNESS_PATH = "/sys/devices/soc/800f000.qcom," +
            "spmi/spmi-0/spmi0-03/800f000.qcom,spmi:qcom,pm660l@3:qcom,leds@d300/leds/led:torch_0/max_brightness";
    private static final String TORCH_2_BRIGHTNESS_PATH = "/sys/devices/soc/800f000.qcom," +
            "spmi/spmi-0/spmi0-03/800f000.qcom,spmi:qcom,pm660l@3:qcom,leds@d300/leds/led:torch_1/max_brightness";

    private static final String CATEGORY_HALL_WAKEUP = "hall_wakeup";
    public static final String PREF_HALL_WAKEUP = "hall";
    public static final String HALL_WAKEUP_PATH = "/sys/module/hall/parameters/hall_toggle";
    public static final String HALL_WAKEUP_PROP = "vendor.persist.hall_wakeup";

    private SecureSettingListPreference mTHERMAL;

    @Override
    public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
        setPreferencesFromResource(R.xml.xiaomiparts_preferences, rootKey);

        VibrationSeekBarPreference vibrationStrength = (VibrationSeekBarPreference) findPreference(PREF_VIBRATION_STRENGTH);
        vibrationStrength.setEnabled(FileUtils.fileWritable(VIBRATION_STRENGTH_PATH));
        vibrationStrength.setOnPreferenceChangeListener(this);

        CustomSeekBarPreference headphone_gain = (CustomSeekBarPreference) findPreference(PREF_HEADPHONE_GAIN);
        headphone_gain.setOnPreferenceChangeListener(this);

        CustomSeekBarPreference microphone_gain = (CustomSeekBarPreference) findPreference(PREF_MICROPHONE_GAIN);
        microphone_gain.setOnPreferenceChangeListener(this);

        CustomSeekBarPreference torch_brightness = (CustomSeekBarPreference) findPreference(PREF_TORCH_BRIGHTNESS);
        torch_brightness.setEnabled(FileUtils.fileWritable(TORCH_1_BRIGHTNESS_PATH) &&
                FileUtils.fileWritable(TORCH_2_BRIGHTNESS_PATH));
        torch_brightness.setOnPreferenceChangeListener(this);

        //mTHERMAL = (SecureSettingListPreference) findPreference(PREF_THERMAL);
        //mTHERMAL.setValue(FileUtils.getValue(THERMAL_PATH));
        //mTHERMAL.setSummary(mTHERMAL.getEntry());
        //mTHERMAL.setOnPreferenceChangeListener(this);

        boolean enhancerEnabled;
        try {
            enhancerEnabled = DiracService.sDiracUtils.isDiracEnabled();
        } catch (java.lang.NullPointerException e) {
            getContext().startService(new Intent(getContext(), DiracService.class));
            try {
                enhancerEnabled = DiracService.sDiracUtils.isDiracEnabled();
            } catch (NullPointerException ne) {
                // Avoid crash
                ne.printStackTrace();
                enhancerEnabled = false;
            }
        }

        SecureSettingSwitchPreference enableDirac = (SecureSettingSwitchPreference) findPreference(PREF_ENABLE_DIRAC);
        enableDirac.setOnPreferenceChangeListener(this);
        enableDirac.setChecked(enhancerEnabled);

        SecureSettingListPreference headsetType = (SecureSettingListPreference) findPreference(PREF_HEADSET);
        headsetType.setOnPreferenceChangeListener(this);

        SecureSettingListPreference preset = (SecureSettingListPreference) findPreference(PREF_PRESET);
        preset.setOnPreferenceChangeListener(this);

        PreferenceCategory displayCategory = (PreferenceCategory) findPreference(CATEGORY_DISPLAY);

        Preference kcal = findPreference(PREF_DEVICE_KCAL);

        kcal.setOnPreferenceClickListener(preference -> {
            Intent intent = new Intent(getActivity().getApplicationContext(), KCalSettingsActivity.class);
            startActivity(intent);
            return true;
        });

        if (FileUtils.fileWritable(HALL_WAKEUP_PATH)) {
            SecureSettingSwitchPreference hall = (SecureSettingSwitchPreference) findPreference(PREF_HALL_WAKEUP);
            hall.setChecked(FileUtils.getValue(HALL_WAKEUP_PATH).equals("Y"));
            hall.setOnPreferenceChangeListener(this);
        } else {
            getPreferenceScreen().removePreference(findPreference(CATEGORY_HALL_WAKEUP));
        }
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object value) {
        final String key = preference.getKey();
        switch (key) {
            case PREF_TORCH_BRIGHTNESS:
                FileUtils.setValue(TORCH_1_BRIGHTNESS_PATH, (int) value);
                FileUtils.setValue(TORCH_2_BRIGHTNESS_PATH, (int) value);
                break;

            case PREF_VIBRATION_STRENGTH:
                double vibrationValue = (int) value / 100.0 * (MAX_VIBRATION - MIN_VIBRATION) + MIN_VIBRATION;
                FileUtils.setValue(VIBRATION_STRENGTH_PATH, vibrationValue);
                break;

            case PREF_HEADPHONE_GAIN:
                FileUtils.setValue(HEADPHONE_GAIN_PATH, value + " " + value);
                break;

            case PREF_MICROPHONE_GAIN:
                FileUtils.setValue(MICROPHONE_GAIN_PATH, (int) value);
                break;

            /*case PREF_THERMAL:
                mTHERMAL.setValue((String) value);
                mTHERMAL.setSummary(mTHERMAL.getEntry());
                FileUtils.setValue(THERMAL_PATH, (String) value);
                break;*/

            case PREF_HALL_WAKEUP:
                FileUtils.setValue(HALL_WAKEUP_PATH, (boolean) value ? "Y" : "N");
                FileUtils.setProp(HALL_WAKEUP_PROP, (boolean) value);
                break;

            case PREF_ENABLE_DIRAC:
                try {
                    DiracService.sDiracUtils.setEnabled((boolean) value);
                } catch (java.lang.NullPointerException e) {
                    getContext().startService(new Intent(getContext(), DiracService.class));
                    DiracService.sDiracUtils.setEnabled((boolean) value);
                }
                break;

            case PREF_HEADSET:
                try {
                    DiracService.sDiracUtils.setHeadsetType(Integer.parseInt(value.toString()));
                } catch (java.lang.NullPointerException e) {
                    getContext().startService(new Intent(getContext(), DiracService.class));
                    DiracService.sDiracUtils.setHeadsetType(Integer.parseInt(value.toString()));
                }
                break;

            case PREF_PRESET:
                try {
                    DiracService.sDiracUtils.setLevel(String.valueOf(value));
                } catch (java.lang.NullPointerException e) {
                    getContext().startService(new Intent(getContext(), DiracService.class));
                    DiracService.sDiracUtils.setLevel(String.valueOf(value));
                }
                break;

            default:
                break;
        }
        return true;
    }

    private boolean isAppNotInstalled(String uri) {
        PackageManager packageManager = getContext().getPackageManager();
        try {
            packageManager.getPackageInfo(uri, PackageManager.GET_ACTIVITIES);
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return true;
        }
    }
}
