.class public Lcom/android/settings/cyanogenmod/Weather;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Weather.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomWeatherLoc:Landroid/preference/EditTextPreference;

.field private mEnableWeather:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mInvertLowHigh:Landroid/preference/CheckBoxPreference;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShowLocation:Landroid/preference/CheckBoxPreference;

.field private mShowTimestamp:Landroid/preference/CheckBoxPreference;

.field private mUseCustomLoc:Landroid/preference/CheckBoxPreference;

.field private mUseMetric:Landroid/preference/CheckBoxPreference;

.field private mWeatherSyncInterval:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 171
    new-instance v0, Lcom/android/settings/cyanogenmod/Weather$1;

    invoke-direct {v0, p0}, Lcom/android/settings/cyanogenmod/Weather$1;-><init>(Lcom/android/settings/cyanogenmod/Weather;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/Weather;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/Weather;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Weather;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/Weather;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Weather;->mCustomWeatherLoc:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/cyanogenmod/Weather;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/cyanogenmod/Weather;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Weather;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/cyanogenmod/Weather;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/Weather;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/cyanogenmod/Weather;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Weather;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private mapUpdateValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6
    .parameter "time"

    .prologue
    .line 240
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 242
    .local v1, resources:Landroid/content/res/Resources;
    const v4, 0x7f07007e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, timeNames:[Ljava/lang/String;
    const v4, 0x7f07007f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, timeValues:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 246
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    aget-object v4, v2, v0

    .line 251
    :goto_1
    return-object v4

    .line 245
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_1
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/Weather;->mContext:Landroid/content/Context;

    const v5, 0x7f0b03d1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private updateLocationSummary()V
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mUseCustomLoc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "weather_custom_location"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, location:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mCustomWeatherLoc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    .end local v0           #location:Ljava/lang/String;
    :goto_0
    return-void

    .line 117
    .restart local v0       #location:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mCustomWeatherLoc:Landroid/preference/EditTextPreference;

    const v2, 0x7f0b03d1

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_0

    .line 120
    .end local v0           #location:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mCustomWeatherLoc:Landroid/preference/EditTextPreference;

    const v2, 0x7f0b0763

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v1, 0x7f050055

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/Weather;->addPreferencesFromResource(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Weather;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Weather;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    .line 69
    const-string v1, "enable_weather"

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/Weather;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mEnableWeather:Landroid/preference/CheckBoxPreference;

    .line 70
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/Weather;->mEnableWeather:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "lockscreen_weather"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 73
    const-string v1, "use_custom_location"

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/Weather;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mUseCustomLoc:Landroid/preference/CheckBoxPreference;

    .line 74
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/Weather;->mUseCustomLoc:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "weather_use_custom_location"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 76
    const-string v1, "custom_location"

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/Weather;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mCustomWeatherLoc:Landroid/preference/EditTextPreference;

    .line 77
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/Weather;->updateLocationSummary()V

    .line 78
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mCustomWeatherLoc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 80
    const-string v1, "show_location"

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/Weather;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mShowLocation:Landroid/preference/CheckBoxPreference;

    .line 81
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/Weather;->mShowLocation:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "weather_show_location"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    const-string v1, "show_timestamp"

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/Weather;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mShowTimestamp:Landroid/preference/CheckBoxPreference;

    .line 85
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/Weather;->mShowTimestamp:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "weather_show_timestamp"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 88
    const-string v1, "use_metric"

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/Weather;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mUseMetric:Landroid/preference/CheckBoxPreference;

    .line 89
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/Weather;->mUseMetric:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "weather_use_metric"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 92
    const-string v1, "invert_lowhigh"

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/Weather;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mInvertLowHigh:Landroid/preference/CheckBoxPreference;

    .line 93
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mInvertLowHigh:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "weather_invert_lowhigh"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_6

    :goto_5
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 96
    const-string v1, "refresh_interval"

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/Weather;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mWeatherSyncInterval:Landroid/preference/ListPreference;

    .line 97
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "weather_update_interval"

    const/16 v3, 0x3c

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 99
    .local v0, weatherInterval:I
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mWeatherSyncInterval:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mWeatherSyncInterval:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/cyanogenmod/Weather;->mapUpdateValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mWeatherSyncInterval:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "network"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mUseCustomLoc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/Weather;->showDialog(I)V

    .line 108
    :cond_0
    return-void

    .end local v0           #weatherInterval:I
    :cond_1
    move v1, v3

    .line 70
    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 74
    goto/16 :goto_1

    :cond_3
    move v1, v3

    .line 81
    goto/16 :goto_2

    :cond_4
    move v1, v3

    .line 85
    goto/16 :goto_3

    :cond_5
    move v1, v3

    .line 89
    goto :goto_4

    :cond_6
    move v2, v3

    .line 93
    goto :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    .line 256
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Weather;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 259
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 275
    const/4 v1, 0x0

    .line 277
    .local v1, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 261
    .end local v1           #dialog:Landroid/app/Dialog;
    :pswitch_0
    const v2, 0x7f0b076b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 262
    const v2, 0x7f0b076c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 263
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 264
    const v2, 0x7f0b076d

    new-instance v3, Lcom/android/settings/cyanogenmod/Weather$3;

    invoke-direct {v3, p0}, Lcom/android/settings/cyanogenmod/Weather$3;-><init>(Lcom/android/settings/cyanogenmod/Weather;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 271
    const v2, 0x7f0b00eb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 272
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 273
    .restart local v1       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mWeatherSyncInterval:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    move-object v1, p2

    .line 162
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 163
    .local v0, newVal:I
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "weather_update_interval"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mWeatherSyncInterval:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mWeatherSyncInterval:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/cyanogenmod/Weather;->mapUpdateValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/cyanogenmod/Weather;->mapUpdateValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 168
    .end local v0           #newVal:I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mCustomWeatherLoc:Landroid/preference/EditTextPreference;

    if-ne p1, v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "weather_custom_location"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, location:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mCustomWeatherLoc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mCustomWeatherLoc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mCustomWeatherLoc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const v2, 0x1020019

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/cyanogenmod/Weather$2;

    invoke-direct {v2, p0}, Lcom/android/settings/cyanogenmod/Weather$2;-><init>(Lcom/android/settings/cyanogenmod/Weather;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const/4 v1, 0x1

    .line 232
    .end local v0           #location:Ljava/lang/String;
    :goto_1
    return v1

    .line 202
    .restart local v0       #location:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather;->mCustomWeatherLoc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 232
    .end local v0           #location:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 126
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Weather;->mEnableWeather:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "lockscreen_weather"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    :goto_0
    return v1

    .line 131
    .restart local p2
    :cond_1
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Weather;->mUseCustomLoc:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 132
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "weather_use_custom_location"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/Weather;->updateLocationSummary()V

    goto :goto_0

    .line 137
    .restart local p2
    :cond_3
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Weather;->mShowLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 138
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "weather_show_location"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 142
    .restart local p2
    :cond_5
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Weather;->mUseMetric:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 143
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "weather_use_metric"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 146
    .restart local p2
    :cond_7
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Weather;->mShowTimestamp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 147
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "weather_show_timestamp"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 150
    .restart local p2
    :cond_9
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Weather;->mInvertLowHigh:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 151
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "weather_invert_lowhigh"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v0, v1

    :cond_a
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 156
    .restart local p2
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method
