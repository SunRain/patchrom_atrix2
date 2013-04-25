.class public Lcom/android/settings/cyanogenmod/PowerMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerMenu.java"


# instance fields
.field private mAirplanePref:Landroid/preference/CheckBoxPreference;

.field private mExpandedDesktopPref:Landroid/preference/CheckBoxPreference;

.field private mProfilesPref:Landroid/preference/CheckBoxPreference;

.field private mRebootPref:Landroid/preference/CheckBoxPreference;

.field private mScreenshotPref:Landroid/preference/CheckBoxPreference;

.field private mSilentPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v2, 0x7f050026

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/PowerMenu;->addPreferencesFromResource(I)V

    .line 51
    const-string v2, "power_menu_reboot"

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mRebootPref:Landroid/preference/CheckBoxPreference;

    .line 52
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mRebootPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "power_menu_reboot_enabled"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 55
    const-string v2, "power_menu_screenshot"

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    .line 56
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "power_menu_screenshot_enabled"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 59
    const-string v2, "power_menu_expanded_desktop"

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mExpandedDesktopPref:Landroid/preference/CheckBoxPreference;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f090009

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 62
    .local v1, showExpandedDesktopPref:Z
    if-nez v1, :cond_3

    .line 63
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mExpandedDesktopPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mExpandedDesktopPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 71
    :cond_0
    :goto_2
    const-string v2, "power_menu_profiles"

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mProfilesPref:Landroid/preference/CheckBoxPreference;

    .line 72
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mProfilesPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "power_menu_profiles_enabled"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "system_profiles_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v0, v3

    .line 78
    .local v0, enabled:Z
    :goto_4
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mProfilesPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 80
    const-string v2, "power_menu_airplane"

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    .line 81
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "power_menu_airplane_enabled"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    const-string v2, "power_menu_silent"

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mSilentPref:Landroid/preference/CheckBoxPreference;

    .line 85
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mSilentPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "power_menu_silent_enabled"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_8

    :goto_6
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 88
    return-void

    .end local v0           #enabled:Z
    .end local v1           #showExpandedDesktopPref:Z
    :cond_1
    move v2, v4

    .line 52
    goto/16 :goto_0

    :cond_2
    move v2, v4

    .line 56
    goto/16 :goto_1

    .line 67
    .restart local v1       #showExpandedDesktopPref:Z
    :cond_3
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mExpandedDesktopPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "power_menu_expanded_desktop_enabled"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_7
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    move v2, v4

    goto :goto_7

    :cond_5
    move v2, v4

    .line 72
    goto :goto_3

    :cond_6
    move v0, v4

    .line 76
    goto :goto_4

    .restart local v0       #enabled:Z
    :cond_7
    move v2, v4

    .line 81
    goto :goto_5

    :cond_8
    move v3, v4

    .line 85
    goto :goto_6
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 94
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 95
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 96
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_screenshot_enabled"

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    .end local v0           #value:Z
    :goto_0
    return v2

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mExpandedDesktopPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 100
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mExpandedDesktopPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 101
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_expanded_desktop_enabled"

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 104
    .end local v0           #value:Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mRebootPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 105
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mRebootPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 106
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_reboot_enabled"

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 109
    .end local v0           #value:Z
    :cond_5
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mProfilesPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_7

    .line 110
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mProfilesPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 111
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_profiles_enabled"

    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 114
    .end local v0           #value:Z
    :cond_7
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_9

    .line 115
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 116
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_airplane_enabled"

    if-eqz v0, :cond_8

    move v1, v2

    :cond_8
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 119
    .end local v0           #value:Z
    :cond_9
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mSilentPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_b

    .line 120
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerMenu;->mSilentPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 121
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_silent_enabled"

    if-eqz v0, :cond_a

    move v1, v2

    :cond_a
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 125
    .end local v0           #value:Z
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method
