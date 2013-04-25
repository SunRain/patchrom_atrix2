.class public Lcom/android/settings/cyanogenmod/LockscreenInterface;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockscreenInterface.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBatteryStatus:Landroid/preference/ListPreference;

.field private mCalendarPref:Landroid/preference/Preference;

.field private mClockAlign:Landroid/preference/ListPreference;

.field private mCustomBackground:Landroid/preference/ListPreference;

.field private mIsScreenLarge:Z

.field private mLockscreenButtons:Landroid/preference/PreferenceScreen;

.field mResolver:Landroid/content/ContentResolver;

.field private mWeatherPref:Landroid/preference/Preference;

.field private wallpaperImage:Ljava/io/File;

.field private wallpaperTemporary:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/LockscreenInterface;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/LockscreenInterface;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->updateCustomBackgroundSummary()V

    return-void
.end method

.method private updateCustomBackgroundSummary()V
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_background"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 111
    const v0, 0x7f0b0791

    .line 112
    .local v0, resId:I
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    return-void

    .line 113
    .end local v0           #resId:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    const v0, 0x7f0b0790

    .line 115
    .restart local v0       #resId:I
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 117
    .end local v0           #resId:I
    :cond_1
    const v0, 0x7f0b078f

    .line 118
    .restart local v0       #resId:I
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0
.end method

.method private updateState()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 138
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mWeatherPref:Landroid/preference/Preference;

    if-eqz v5, :cond_0

    .line 139
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "lockscreen_weather"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    move v2, v3

    .line 141
    .local v2, weatherEnabled:Z
    :goto_0
    if-eqz v2, :cond_5

    .line 142
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mWeatherPref:Landroid/preference/Preference;

    const v6, 0x7f0b075f

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 149
    .end local v2           #weatherEnabled:Z
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCalendarPref:Landroid/preference/Preference;

    if-eqz v5, :cond_1

    .line 150
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "lockscreen_calendar"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_6

    move v2, v3

    .line 152
    .restart local v2       #weatherEnabled:Z
    :goto_2
    if-eqz v2, :cond_7

    .line 153
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCalendarPref:Landroid/preference/Preference;

    const v6, 0x7f0b0779

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 160
    .end local v2           #weatherEnabled:Z
    :cond_1
    :goto_3
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    if-eqz v5, :cond_2

    .line 161
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "lockscreen_always_show_battery"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_8

    move v0, v3

    .line 163
    .local v0, batteryStatusAlwaysOn:Z
    :goto_4
    if-eqz v0, :cond_9

    .line 164
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 168
    :goto_5
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    .end local v0           #batteryStatusAlwaysOn:Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mClockAlign:Landroid/preference/ListPreference;

    if-eqz v3, :cond_3

    .line 173
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "lockscreen_clock_align"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 175
    .local v1, clockAlign:I
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mClockAlign:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 176
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mClockAlign:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mClockAlign:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    .end local v1           #clockAlign:I
    :cond_3
    return-void

    :cond_4
    move v2, v4

    .line 139
    goto :goto_0

    .line 144
    .restart local v2       #weatherEnabled:Z
    :cond_5
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mWeatherPref:Landroid/preference/Preference;

    const v6, 0x7f0b075e

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .end local v2           #weatherEnabled:Z
    :cond_6
    move v2, v4

    .line 150
    goto :goto_2

    .line 155
    .restart local v2       #weatherEnabled:Z
    :cond_7
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCalendarPref:Landroid/preference/Preference;

    const v6, 0x7f0b0778

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3

    .end local v2           #weatherEnabled:Z
    :cond_8
    move v0, v4

    .line 161
    goto :goto_4

    .line 166
    .restart local v0       #batteryStatusAlwaysOn:Z
    :cond_9
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_5
.end method


# virtual methods
.method public hasButtons()Z
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    .line 182
    const/16 v0, 0x400

    if-ne p1, v0, :cond_1

    .line 183
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->wallpaperTemporary:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->wallpaperTemporary:Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->wallpaperImage:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->wallpaperImage:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z

    .line 188
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b078d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_background"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 192
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->updateCustomBackgroundSummary()V

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->wallpaperTemporary:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->wallpaperTemporary:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b078e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mActivity:Landroid/app/Activity;

    .line 79
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mResolver:Landroid/content/ContentResolver;

    .line 81
    const v0, 0x7f050021

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->addPreferencesFromResource(I)V

    .line 82
    const-string v0, "lockscreen_weather"

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mWeatherPref:Landroid/preference/Preference;

    .line 83
    const-string v0, "lockscreen_calendar"

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCalendarPref:Landroid/preference/Preference;

    .line 85
    const-string v0, "lockscreen_background"

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    .line 86
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lockwallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->wallpaperImage:Ljava/io/File;

    .line 88
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lockwallpaper.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->wallpaperTemporary:Ljava/io/File;

    .line 90
    const-string v0, "lockscreen_battery_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    .line 91
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    const-string v0, "lockscreen_clock_align"

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mClockAlign:Landroid/preference/ListPreference;

    .line 94
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mClockAlign:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    const-string v0, "lockscreen_buttons"

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mLockscreenButtons:Landroid/preference/PreferenceScreen;

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->hasButtons()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mLockscreenButtons:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mIsScreenLarge:Z

    .line 103
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->updateCustomBackgroundSummary()V

    .line 104
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 132
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 23
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v9

    .line 211
    .local v9, indexOf:I
    packed-switch v9, :pswitch_data_0

    .line 291
    :goto_0
    const/16 v20, 0x1

    .line 306
    .end local v9           #indexOf:I
    .end local p2
    :goto_1
    return v20

    .line 214
    .restart local v9       #indexOf:I
    .restart local p2
    :pswitch_0
    new-instance v3, Lcom/android/settings/notificationlight/ColorPickerView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lcom/android/settings/notificationlight/ColorPickerView;-><init>(Landroid/content/Context;)V

    .line 215
    .local v3, colorView:Lcom/android/settings/notificationlight/ColorPickerView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "lockscreen_background"

    const/16 v22, -0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 217
    .local v5, currentColor:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v5, v0, :cond_0

    .line 218
    invoke-virtual {v3, v5}, Lcom/android/settings/notificationlight/ColorPickerView;->setColor(I)V

    .line 220
    :cond_0
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/settings/notificationlight/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 221
    new-instance v20, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v21, 0x7f0b078c

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    const v21, 0x7f0b08a5

    new-instance v22, Lcom/android/settings/cyanogenmod/LockscreenInterface$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/cyanogenmod/LockscreenInterface$2;-><init>(Lcom/android/settings/cyanogenmod/LockscreenInterface;Lcom/android/settings/notificationlight/ColorPickerView;)V

    invoke-virtual/range {v20 .. v22}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    const v21, 0x7f0b00eb

    new-instance v22, Lcom/android/settings/cyanogenmod/LockscreenInterface$1;

    invoke-direct/range {v22 .. v23}, Lcom/android/settings/cyanogenmod/LockscreenInterface$1;-><init>(Lcom/android/settings/cyanogenmod/LockscreenInterface;)V

    invoke-virtual/range {v20 .. v22}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 235
    const/16 v20, 0x0

    goto :goto_1

    .line 238
    .end local v3           #colorView:Lcom/android/settings/notificationlight/ColorPickerView;
    .end local v5           #currentColor:I
    :pswitch_1
    new-instance v10, Landroid/content/Intent;

    const-string v20, "android.intent.action.GET_CONTENT"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 239
    .local v10, intent:Landroid/content/Intent;
    const-string v20, "image/*"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v20, "crop"

    const-string v21, "true"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v20, "scale"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 242
    const-string v20, "scaleUpIfNeeded"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 243
    const-string v20, "outputFormat"

    sget-object v21, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 245
    .local v6, display:Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v18

    .line 246
    .local v18, width:I
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 247
    .local v7, height:I
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 248
    .local v12, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v19

    .line 249
    .local v19, window:Landroid/view/Window;
    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 250
    iget v15, v12, Landroid/graphics/Rect;->top:I

    .line 251
    .local v15, statusBarHeight:I
    const v20, 0x1020002

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v4

    .line 252
    .local v4, contentViewTop:I
    sub-int v16, v4, v15

    .line 256
    .local v16, titleBarHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mIsScreenLarge:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getWallpaperDesiredMinimumWidth()I

    move-result v18

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getWallpaperDesiredMinimumHeight()I

    move-result v7

    .line 259
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v13, v20, v21

    .line 260
    .local v13, spotlightX:F
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v7

    move/from16 v21, v0

    div-float v14, v20, v21

    .line 261
    .local v14, spotlightY:F
    const-string v20, "aspectX"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    const-string v20, "aspectY"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    const-string v20, "outputX"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    const-string v20, "outputY"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string v20, "spotlightX"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 266
    const-string v20, "spotlightY"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 275
    .end local v13           #spotlightX:F
    .end local v14           #spotlightY:F
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->wallpaperTemporary:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->createNewFile()Z

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->wallpaperTemporary:Ljava/io/File;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Ljava/io/File;->setWritable(ZZ)Z

    .line 277
    const-string v20, "output"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->wallpaperTemporary:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 278
    const-string v20, "return-data"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const/16 v21, 0x400

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-virtual {v0, v1, v10, v2}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_3
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 269
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/4 v11, 0x1

    .line 271
    .local v11, isPortrait:Z
    :goto_4
    const-string v21, "aspectX"

    if-eqz v11, :cond_3

    move/from16 v20, v18

    :goto_5
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    const-string v21, "aspectY"

    if-eqz v11, :cond_4

    sub-int v20, v7, v16

    :goto_6
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 269
    .end local v11           #isPortrait:Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_4

    .line 271
    .restart local v11       #isPortrait:Z
    :cond_3
    sub-int v20, v7, v16

    goto :goto_5

    :cond_4
    move/from16 v20, v18

    .line 272
    goto :goto_6

    .line 286
    .end local v4           #contentViewTop:I
    .end local v6           #display:Landroid/view/Display;
    .end local v7           #height:I
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #isPortrait:Z
    .end local v12           #rect:Landroid/graphics/Rect;
    .end local v15           #statusBarHeight:I
    .end local v16           #titleBarHeight:I
    .end local v18           #width:I
    .end local v19           #window:Landroid/view/Window;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "lockscreen_background"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->updateCustomBackgroundSummary()V

    goto/16 :goto_0

    .line 292
    .end local v9           #indexOf:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    move-object/from16 v20, p2

    .line 293
    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 294
    .local v17, value:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v8

    .line 295
    .local v8, index:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "lockscreen_always_show_battery"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v21

    aget-object v21, v21, v8

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 299
    .end local v8           #index:I
    .end local v17           #value:I
    .restart local p2
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mClockAlign:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 300
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 301
    .restart local v17       #value:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "lockscreen_clock_align"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mClockAlign:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mClockAlign:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v21

    aget-object v21, v21, v17

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 304
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 306
    .end local v17           #value:I
    .restart local p2
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 281
    .restart local v4       #contentViewTop:I
    .restart local v6       #display:Landroid/view/Display;
    .restart local v7       #height:I
    .restart local v9       #indexOf:I
    .restart local v10       #intent:Landroid/content/Intent;
    .restart local v12       #rect:Landroid/graphics/Rect;
    .restart local v15       #statusBarHeight:I
    .restart local v16       #titleBarHeight:I
    .restart local v18       #width:I
    .restart local v19       #window:Landroid/view/Window;
    :catch_0
    move-exception v20

    goto/16 :goto_3

    .line 280
    :catch_1
    move-exception v20

    goto/16 :goto_3

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 205
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->updateState()V

    .line 127
    return-void
.end method
