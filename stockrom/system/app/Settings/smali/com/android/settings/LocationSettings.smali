.class public Lcom/android/settings/LocationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mGPSBTPref:Landroid/preference/ListPreference;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mLocationAccess:Landroid/preference/SwitchPreference;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mSettingsObserver:Ljava/util/Observer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LocationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateLocationToggles()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 13

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 96
    .local v8, root:Landroid/preference/PreferenceScreen;
    if-eqz v8, :cond_0

    .line 97
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 99
    :cond_0
    const v11, 0x7f05001f

    invoke-virtual {p0, v11}, Lcom/android/settings/LocationSettings;->addPreferencesFromResource(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 102
    const-string v11, "location_toggle"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    .line 103
    const-string v11, "location_network"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 104
    const-string v11, "location_gps"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 105
    const-string v11, "assisted_gps"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 107
    const-string v11, "location_gps_source"

    invoke-virtual {p0, v11}, Lcom/android/settings/LocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/settings/LocationSettings;->mGPSBTPref:Landroid/preference/ListPreference;

    .line 108
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v4, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070076

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .line 110
    .local v3, e:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 112
    .end local v3           #e:Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v10, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070077

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v9, v0, v5

    .line 114
    .local v9, v:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 117
    .end local v9           #v:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 118
    .local v7, mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 119
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 120
    .local v1, d:Landroid/bluetooth/BluetoothDevice;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, dname:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 125
    .end local v1           #d:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #dname:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v12, p0, Lcom/android/settings/LocationSettings;->mGPSBTPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 126
    iget-object v12, p0, Lcom/android/settings/LocationSettings;->mGPSBTPref:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 127
    iget-object v11, p0, Lcom/android/settings/LocationSettings;->mGPSBTPref:Landroid/preference/ListPreference;

    const-string v12, "0"

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 128
    iget-object v11, p0, Lcom/android/settings/LocationSettings;->mGPSBTPref:Landroid/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    iget-object v11, p0, Lcom/android/settings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    return-object v8
.end method

.method private onToggleLocationAccess(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 209
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 211
    const-string v1, "network"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 213
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateLocationToggles()V

    .line 214
    return-void
.end method

.method private updateLocationToggles()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 183
    .local v2, res:Landroid/content/ContentResolver;
    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 185
    .local v0, gpsEnabled:Z
    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 187
    .local v1, networkEnabled:Z
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 188
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 189
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 190
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 191
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v6, "assisted_gps_enabled"

    const/4 v7, 0x2

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_3

    :goto_1
    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 193
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 195
    :cond_1
    return-void

    :cond_2
    move v3, v4

    .line 189
    goto :goto_0

    :cond_3
    move v5, v4

    .line 191
    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 202
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 203
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 204
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "pref"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x1

    .line 218
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "location_toggle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/LocationSettings;->onToggleLocationAccess(Z)V

    .line 238
    :cond_0
    :goto_0
    return v6

    .line 220
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/android/settings/LocationSettings;->mGPSBTPref:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, oldPref:Ljava/lang/String;
    if-nez p2, :cond_3

    const-string v1, "0"

    .line 225
    .end local p2
    .local v1, newPref:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    :cond_2
    const-string v3, "location"

    invoke-virtual {p0, v3}, Lcom/android/settings/LocationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 230
    .local v0, locationManager:Landroid/location/LocationManager;
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->setGPSSource(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b036a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 223
    .end local v0           #locationManager:Landroid/location/LocationManager;
    .end local v1           #newPref:Ljava/lang/String;
    .restart local p2
    :cond_3
    check-cast p2, Ljava/lang/String;

    move-object v1, p2

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 158
    const-string v2, "network"

    iget-object v4, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 175
    :cond_0
    :goto_0
    return v3

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 161
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 162
    .local v1, enabled:Z
    const-string v2, "gps"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 164
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 167
    .end local v1           #enabled:Z
    :cond_2
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 168
    const-string v4, "assisted_gps_enabled"

    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 172
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 140
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 141
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateLocationToggles()V

    .line 143
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/android/settings/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/LocationSettings$1;-><init>(Lcom/android/settings/LocationSettings;)V

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 152
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "location_providers_allowed"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 83
    .local v6, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 84
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 89
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 92
    :cond_0
    return-void
.end method
