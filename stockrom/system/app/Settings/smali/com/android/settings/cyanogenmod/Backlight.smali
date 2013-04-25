.class public Lcom/android/settings/cyanogenmod/Backlight;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Backlight.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDecreaseEnabled:Landroid/preference/CheckBoxPreference;

.field private mDecreaseHysteresis:Landroid/preference/ListPreference;

.field private mFilterEnabled:Landroid/preference/CheckBoxPreference;

.field private mFilterInterval:Landroid/preference/ListPreference;

.field private mFilterReset:Landroid/preference/ListPreference;

.field private mFilterWindow:Landroid/preference/ListPreference;

.field private mLevelsEnabled:Landroid/preference/CheckBoxPreference;

.field private mScreenDim:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getBoolean(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private getInt(Ljava/lang/Object;)I
    .locals 1
    .parameter "o"

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/Backlight;->addPreferencesFromResource(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Backlight;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 59
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Backlight;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "light_filter_enabled"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mFilterEnabled:Landroid/preference/CheckBoxPreference;

    .line 62
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/Backlight;->mFilterEnabled:Landroid/preference/CheckBoxPreference;

    const-string v2, "light_filter"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 64
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mFilterEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 66
    const-string v2, "light_filter_reset"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mFilterReset:Landroid/preference/ListPreference;

    .line 67
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mFilterReset:Landroid/preference/ListPreference;

    const-string v5, "light_filter_reset"

    const/4 v6, -0x1

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mFilterReset:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    const-string v2, "light_filter_window"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mFilterWindow:Landroid/preference/ListPreference;

    .line 72
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mFilterWindow:Landroid/preference/ListPreference;

    const-string v5, "light_filter_window"

    const/16 v6, 0x7530

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mFilterWindow:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    const-string v2, "light_filter_interval"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mFilterInterval:Landroid/preference/ListPreference;

    .line 77
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mFilterInterval:Landroid/preference/ListPreference;

    const-string v5, "light_filter_interval"

    const/16 v6, 0x3e8

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mFilterInterval:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    const-string v2, "light_levels_enabled"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mLevelsEnabled:Landroid/preference/CheckBoxPreference;

    .line 82
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/Backlight;->mLevelsEnabled:Landroid/preference/CheckBoxPreference;

    const-string v2, "light_sensor_custom"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mLevelsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    const-string v2, "light_levels_dim"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mScreenDim:Landroid/preference/ListPreference;

    .line 87
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mScreenDim:Landroid/preference/ListPreference;

    const-string v5, "light_screen_dim"

    const/16 v6, 0x14

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mScreenDim:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    const-string v2, "light_decrease_enabled"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mDecreaseEnabled:Landroid/preference/CheckBoxPreference;

    .line 93
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mDecreaseEnabled:Landroid/preference/CheckBoxPreference;

    const-string v5, "light_decrease"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 95
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mDecreaseEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    const-string v2, "light_decrease_hysteresis"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mDecreaseHysteresis:Landroid/preference/ListPreference;

    .line 98
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mDecreaseHysteresis:Landroid/preference/ListPreference;

    const-string v3, "light_hysteresis"

    const/16 v4, 0x32

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Backlight;->mDecreaseHysteresis:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    return-void

    :cond_0
    move v2, v4

    .line 62
    goto/16 :goto_0

    :cond_1
    move v2, v4

    .line 82
    goto :goto_1

    :cond_2
    move v3, v4

    .line 93
    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, handled:Z
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/Backlight;->mFilterEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Backlight;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "light_filter"

    invoke-direct {p0, p2}, Lcom/android/settings/cyanogenmod/Backlight;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    const/4 v0, 0x1

    .line 141
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Backlight;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lights_changed"

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long v1, v3, v5

    .line 145
    .local v1, tag:J
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Backlight;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lights_changed"

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 149
    .end local v1           #tag:J
    :cond_1
    return v0

    :cond_2
    move v3, v4

    .line 107
    goto :goto_0

    .line 110
    :cond_3
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/Backlight;->mFilterWindow:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_4

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Backlight;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "light_filter_window"

    invoke-direct {p0, p2}, Lcom/android/settings/cyanogenmod/Backlight;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    const/4 v0, 0x1

    goto :goto_1

    .line 114
    :cond_4
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/Backlight;->mFilterReset:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_5

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Backlight;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "light_filter_reset"

    invoke-direct {p0, p2}, Lcom/android/settings/cyanogenmod/Backlight;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    const/4 v0, 0x1

    goto :goto_1

    .line 118
    :cond_5
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/Backlight;->mFilterInterval:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_6

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Backlight;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "light_filter_interval"

    invoke-direct {p0, p2}, Lcom/android/settings/cyanogenmod/Backlight;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    const/4 v0, 0x1

    goto :goto_1

    .line 122
    :cond_6
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/Backlight;->mScreenDim:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_7

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Backlight;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "light_screen_dim"

    invoke-direct {p0, p2}, Lcom/android/settings/cyanogenmod/Backlight;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 126
    :cond_7
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/Backlight;->mLevelsEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_9

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Backlight;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "light_sensor_custom"

    invoke-direct {p0, p2}, Lcom/android/settings/cyanogenmod/Backlight;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_8
    move v3, v4

    .line 127
    goto :goto_2

    .line 130
    :cond_9
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/Backlight;->mDecreaseEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_b

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Backlight;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "light_decrease"

    invoke-direct {p0, p2}, Lcom/android/settings/cyanogenmod/Backlight;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :goto_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_a
    move v3, v4

    .line 131
    goto :goto_3

    .line 134
    :cond_b
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/Backlight;->mDecreaseHysteresis:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Backlight;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "light_hysteresis"

    invoke-direct {p0, p2}, Lcom/android/settings/cyanogenmod/Backlight;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    const/4 v0, 0x1

    goto/16 :goto_1
.end method
