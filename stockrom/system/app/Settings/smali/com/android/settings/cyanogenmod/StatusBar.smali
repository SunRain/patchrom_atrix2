.class public Lcom/android/settings/cyanogenmod/StatusBar;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StatusBar.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCombinedBarAutoHide:Landroid/preference/CheckBoxPreference;

.field private mPrefCategoryGeneral:Landroid/preference/PreferenceCategory;

.field private mStatusBarAmPm:Landroid/preference/ListPreference;

.field private mStatusBarBattery:Landroid/preference/ListPreference;

.field private mStatusBarBrightnessControl:Landroid/preference/CheckBoxPreference;

.field private mStatusBarClock:Landroid/preference/CheckBoxPreference;

.field private mStatusBarCmSignal:Landroid/preference/ListPreference;

.field private mStatusBarNotifCount:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v4, 0x7f050046

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/StatusBar;->addPreferencesFromResource(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 62
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v4, "status_bar_show_clock"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarClock:Landroid/preference/CheckBoxPreference;

    .line 63
    const-string v4, "status_bar_brightness_control"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBrightnessControl:Landroid/preference/CheckBoxPreference;

    .line 64
    const-string v4, "status_bar_am_pm"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    .line 65
    const-string v4, "status_bar_battery"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    .line 66
    const-string v4, "combined_bar_auto_hide"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mCombinedBarAutoHide:Landroid/preference/CheckBoxPreference;

    .line 67
    const-string v4, "status_bar_signal"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    .line 69
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "status_bar_clock"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 71
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBrightnessControl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "status_bar_brightness_control"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "screen_brightness_mode"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 77
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBrightnessControl:Landroid/preference/CheckBoxPreference;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 78
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBrightnessControl:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0b074a

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    :cond_0
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "time_12_24"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    const/16 v7, 0x18

    if-ne v4, v7, :cond_1

    .line 86
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 87
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    const v7, 0x7f0b0746

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setSummary(I)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "status_bar_am_pm"

    const/4 v8, 0x2

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 94
    .local v2, statusBarAmPm:I
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 95
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "status_bar_battery"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 100
    .local v3, statusBarBattery:I
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 101
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "status_bar_signal"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 106
    .local v1, signalStyle:I
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 107
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mCombinedBarAutoHide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "combined_bar_auto_hide"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 113
    const-string v4, "status_bar_notif_count"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarNotifCount:Landroid/preference/CheckBoxPreference;

    .line 114
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarNotifCount:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "status_bar_notif_count"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_5

    :goto_5
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 117
    const-string v4, "status_bar_general"

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/StatusBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mPrefCategoryGeneral:Landroid/preference/PreferenceCategory;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 120
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mPrefCategoryGeneral:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBrightnessControl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mPrefCategoryGeneral:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 125
    :goto_6
    return-void

    .end local v1           #signalStyle:I
    .end local v2           #statusBarAmPm:I
    .end local v3           #statusBarBattery:I
    :cond_2
    move v4, v6

    .line 69
    goto/16 :goto_0

    :cond_3
    move v4, v6

    .line 71
    goto/16 :goto_1

    .restart local v1       #signalStyle:I
    .restart local v2       #statusBarAmPm:I
    .restart local v3       #statusBarBattery:I
    :cond_4
    move v4, v6

    .line 110
    goto :goto_4

    :cond_5
    move v5, v6

    .line 114
    goto :goto_5

    .line 123
    :cond_6
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mPrefCategoryGeneral:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mCombinedBarAutoHide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 89
    .end local v1           #signalStyle:I
    .end local v2           #statusBarAmPm:I
    .end local v3           #statusBarBattery:I
    :catch_0
    move-exception v4

    goto/16 :goto_3

    .line 80
    :catch_1
    move-exception v4

    goto/16 :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x1

    .line 128
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_0

    move-object v4, p2

    .line 129
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 130
    .local v2, statusBarAmPm:I
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, index:I
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "status_bar_am_pm"

    invoke-static {v4, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v4, v5

    .line 150
    .end local v0           #index:I
    .end local v2           #statusBarAmPm:I
    :goto_0
    return v4

    .line 135
    .restart local p2
    :cond_0
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_1

    move-object v4, p2

    .line 136
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 137
    .local v3, statusBarBattery:I
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 138
    .restart local v0       #index:I
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "status_bar_battery"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v4, v5

    .line 141
    goto :goto_0

    .line 142
    .end local v0           #index:I
    .end local v3           #statusBarBattery:I
    .restart local p2
    :cond_1
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_2

    move-object v4, p2

    .line 143
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 144
    .local v1, signalStyle:I
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 145
    .restart local v0       #index:I
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "status_bar_signal"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v4, v5

    .line 148
    goto :goto_0

    .line 150
    .end local v0           #index:I
    .end local v1           #signalStyle:I
    .restart local p2
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 156
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarClock:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 157
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 158
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_bar_clock"

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    .end local v0           #value:Z
    :goto_0
    return v2

    .line 161
    :cond_1
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBrightnessControl:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 162
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBrightnessControl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 163
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_bar_brightness_control"

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 166
    .end local v0           #value:Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mCombinedBarAutoHide:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 167
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mCombinedBarAutoHide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 168
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "combined_bar_auto_hide"

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 171
    .end local v0           #value:Z
    :cond_5
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarNotifCount:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_7

    .line 172
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarNotifCount:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 173
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_bar_notif_count"

    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .end local v0           #value:Z
    :cond_7
    move v2, v1

    .line 177
    goto :goto_0
.end method
