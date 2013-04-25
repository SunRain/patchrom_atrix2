.class public Lcom/android/settings/cyanogenmod/SystemSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SystemSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mFontSizePref:Landroid/preference/ListPreference;

.field private mPhoneDrawer:Landroid/preference/PreferenceScreen;

.field private mTabletDrawer:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 50
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mCurConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/SystemSettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 136
    return-void
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .parameter "val"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, indices:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 94
    .local v2, lastVal:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 95
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 96
    .local v3, thisVal:F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 97
    add-int/lit8 v4, v0, -0x1

    .line 101
    .end local v3           #thisVal:F
    :goto_1
    return v4

    .line 99
    .restart local v3       #thisVal:F
    :cond_0
    move v2, v3

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v3           #thisVal:F
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v3, 0x7f050048

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/SystemSettings;->addPreferencesFromResource(I)V

    .line 58
    const-string v3, "font_size"

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mFontSizePref:Landroid/preference/ListPreference;

    .line 59
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    const-string v3, "notification_drawer"

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mPhoneDrawer:Landroid/preference/PreferenceScreen;

    .line 61
    const-string v3, "notification_drawer_tablet"

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mTabletDrawer:Landroid/preference/PreferenceScreen;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mPhoneDrawer:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mPhoneDrawer:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 73
    :cond_0
    :goto_0
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 76
    .local v2, windowManager:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v3

    if-nez v3, :cond_3

    .line 77
    const-string v3, "navigation_bar"

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 78
    .local v1, naviBar:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1           #naviBar:Landroid/preference/Preference;
    :cond_1
    :goto_1
    return-void

    .line 68
    .end local v2           #windowManager:Landroid/view/IWindowManager;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mTabletDrawer:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mTabletDrawer:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 82
    .restart local v2       #windowManager:Landroid/view/IWindowManager;
    :cond_3
    :try_start_1
    const-string v3, "hardware_keys"

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 83
    .local v0, hardKeys:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 87
    .end local v0           #hardKeys:Landroid/preference/Preference;
    :catch_0
    move-exception v3

    goto :goto_1
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
    .locals 2
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, key:Ljava/lang/String;
    const-string v1, "font_size"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0, p2}, Lcom/android/settings/cyanogenmod/SystemSettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 153
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->updateState()V

    .line 127
    return-void
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 8
    .parameter "pref"

    .prologue
    .line 106
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/SystemSettings;->floatToIndex(F)I

    move-result v2

    .line 113
    .local v2, index:I
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 117
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f070008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, fontSizeNames:[Ljava/lang/String;
    const v4, 0x7f0b02a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v1, v2

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    return-void

    .line 107
    .end local v1           #fontSizeNames:[Ljava/lang/String;
    .end local v2           #index:I
    .end local v3           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SystemSettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .parameter "objValue"

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 141
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SystemSettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
