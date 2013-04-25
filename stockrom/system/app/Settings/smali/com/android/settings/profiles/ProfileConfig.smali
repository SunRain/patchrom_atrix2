.class public Lcom/android/settings/profiles/ProfileConfig;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ProfileConfig.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/profiles/ProfileConfig$VibratorItem;,
        Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;,
        Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    }
.end annotation


# instance fields
.field private mAirplaneModePreference:Landroid/preference/ListPreference;

.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNamePreference:Lcom/android/settings/profiles/NamePreference;

.field private mProfile:Landroid/app/Profile;

.field private mProfileManager:Landroid/app/ProfileManager;

.field private mScreenLockModePreference:Landroid/preference/ListPreference;

.field private mStreams:[Lcom/android/settings/profiles/ProfileConfig$StreamItem;

.field private mVibrators:[Lcom/android/settings/profiles/ProfileConfig$VibratorItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 428
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/profiles/ProfileConfig;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfileConfig;->doDelete()V

    return-void
.end method

.method private deleteProfile()V
    .locals 5

    .prologue
    .line 375
    iget-object v2, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v2}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v3}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b07ba

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 378
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 396
    .end local v1           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 380
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 381
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b07a9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 382
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 383
    const v2, 0x7f0b07b8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 384
    const v2, 0x7f0b0006

    new-instance v3, Lcom/android/settings/profiles/ProfileConfig$1;

    invoke-direct {v3, p0}, Lcom/android/settings/profiles/ProfileConfig$1;-><init>(Lcom/android/settings/profiles/ProfileConfig;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 389
    const v2, 0x7f0b00eb

    new-instance v3, Lcom/android/settings/profiles/ProfileConfig$2;

    invoke-direct {v3, p0}, Lcom/android/settings/profiles/ProfileConfig$2;-><init>(Lcom/android/settings/profiles/ProfileConfig;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private doDelete()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->removeProfile(Landroid/app/Profile;)V

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->finish()V

    .line 402
    return-void
.end method

.method private fillList()V
    .locals 23

    .prologue
    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 179
    .local v11, prefSet:Landroid/preference/PreferenceScreen;
    const-string v20, "profile_general_section"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 180
    .local v6, generalPrefs:Landroid/preference/PreferenceGroup;
    if-eqz v6, :cond_0

    .line 181
    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 184
    new-instance v20, Lcom/android/settings/profiles/NamePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/android/settings/profiles/NamePreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/profiles/ProfileConfig;->mNamePreference:Lcom/android/settings/profiles/NamePreference;

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mNamePreference:Lcom/android/settings/profiles/NamePreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/NamePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mNamePreference:Lcom/android/settings/profiles/NamePreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 190
    :cond_0
    const-string v20, "profile_system_settings"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceGroup;

    .line 191
    .local v16, systemPrefs:Landroid/preference/PreferenceGroup;
    if-eqz v16, :cond_1

    .line 192
    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 195
    new-instance v20, Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const v21, 0x7f0b07de

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const v21, 0x7f070070

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const v21, 0x7f070072

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070071

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Profile;->getScreenLockMode()I

    move-result v22

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/Profile;->getScreenLockMode()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 207
    new-instance v20, Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/profiles/ProfileConfig;->mAirplaneModePreference:Landroid/preference/ListPreference;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mAirplaneModePreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const v21, 0x7f0b07e5

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mAirplaneModePreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const v21, 0x7f070073

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mAirplaneModePreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const v21, 0x7f070075

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mAirplaneModePreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mAirplaneModePreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070074

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Profile;->getAirplaneMode()I

    move-result v22

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mAirplaneModePreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/Profile;->getAirplaneMode()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mAirplaneModePreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mAirplaneModePreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 220
    :cond_1
    const-string v20, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileConfig;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 221
    .local v2, am:Landroid/media/AudioManager;
    const-string v20, "profile_volumeoverrides"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceGroup;

    .line 222
    .local v15, streamList:Landroid/preference/PreferenceGroup;
    if-eqz v15, :cond_3

    .line 223
    invoke-virtual {v15}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/profiles/ProfileConfig;->mStreams:[Lcom/android/settings/profiles/ProfileConfig$StreamItem;

    .local v3, arr$:[Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    array-length v9, v3

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v14, v3, v8

    .line 225
    .local v14, stream:Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v20, v0

    iget v0, v14, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mStreamId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/app/Profile;->getSettingsForStream(I)Landroid/app/StreamSettings;

    move-result-object v13

    .line 226
    .local v13, settings:Landroid/app/StreamSettings;
    if-nez v13, :cond_2

    .line 227
    new-instance v13, Landroid/app/StreamSettings;

    .end local v13           #settings:Landroid/app/StreamSettings;
    iget v0, v14, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mStreamId:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/app/StreamSettings;-><init>(I)V

    .line 228
    .restart local v13       #settings:Landroid/app/StreamSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/app/Profile;->setStreamSettings(Landroid/app/StreamSettings;)V

    .line 230
    :cond_2
    iput-object v13, v14, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mSettings:Landroid/app/StreamSettings;

    .line 231
    new-instance v10, Lcom/android/settings/profiles/StreamVolumePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lcom/android/settings/profiles/StreamVolumePreference;-><init>(Landroid/content/Context;)V

    .line 232
    .local v10, pref:Lcom/android/settings/profiles/StreamVolumePreference;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "stream_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v14, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mStreamId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/profiles/StreamVolumePreference;->setKey(Ljava/lang/String;)V

    .line 233
    iget-object v0, v14, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mLabel:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/profiles/StreamVolumePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 234
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const v21, 0x7f0b07c0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Landroid/app/StreamSettings;->getValue()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v14, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mStreamId:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/profiles/StreamVolumePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 236
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/profiles/StreamVolumePreference;->setPersistent(Z)V

    .line 237
    invoke-virtual {v10, v14}, Lcom/android/settings/profiles/StreamVolumePreference;->setStreamItem(Lcom/android/settings/profiles/ProfileConfig$StreamItem;)V

    .line 238
    iput-object v10, v14, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mCheckbox:Lcom/android/settings/profiles/StreamVolumePreference;

    .line 239
    invoke-virtual {v15, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 224
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 244
    .end local v3           #arr$:[Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v10           #pref:Lcom/android/settings/profiles/StreamVolumePreference;
    .end local v13           #settings:Landroid/app/StreamSettings;
    .end local v14           #stream:Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    :cond_3
    const-string v20, "profile_vibratoroverrides"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceGroup;

    .line 245
    .local v19, vibratorList:Landroid/preference/PreferenceGroup;
    if-eqz v19, :cond_5

    .line 246
    invoke-virtual/range {v19 .. v19}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/profiles/ProfileConfig;->mVibrators:[Lcom/android/settings/profiles/ProfileConfig$VibratorItem;

    .local v3, arr$:[Lcom/android/settings/profiles/ProfileConfig$VibratorItem;
    array-length v9, v3

    .restart local v9       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_1
    if-ge v8, v9, :cond_5

    aget-object v18, v3, v8

    .line 248
    .local v18, vibrator:Lcom/android/settings/profiles/ProfileConfig$VibratorItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/profiles/ProfileConfig$VibratorItem;->mVibratorId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/app/Profile;->getSettingsForVibrator(I)Landroid/app/VibratorSettings;

    move-result-object v13

    .line 249
    .local v13, settings:Landroid/app/VibratorSettings;
    if-nez v13, :cond_4

    .line 250
    new-instance v13, Landroid/app/VibratorSettings;

    .end local v13           #settings:Landroid/app/VibratorSettings;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/profiles/ProfileConfig$VibratorItem;->mVibratorId:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/app/VibratorSettings;-><init>(I)V

    .line 251
    .restart local v13       #settings:Landroid/app/VibratorSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/app/Profile;->setVibratorSettings(Landroid/app/VibratorSettings;)V

    .line 253
    :cond_4
    move-object/from16 v0, v18

    iput-object v13, v0, Lcom/android/settings/profiles/ProfileConfig$VibratorItem;->mSettings:Landroid/app/VibratorSettings;

    .line 254
    new-instance v10, Lcom/android/settings/profiles/VibratorPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lcom/android/settings/profiles/VibratorPreference;-><init>(Landroid/content/Context;)V

    .line 255
    .local v10, pref:Lcom/android/settings/profiles/VibratorPreference;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "vibrator_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/profiles/ProfileConfig$VibratorItem;->mVibratorId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/profiles/VibratorPreference;->setKey(Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig$VibratorItem;->mLabel:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/profiles/VibratorPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {v13}, Landroid/app/VibratorSettings;->getValue()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 265
    const v20, 0x7f0b07c2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/profiles/VibratorPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 268
    :goto_2
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/profiles/VibratorPreference;->setPersistent(Z)V

    .line 269
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/android/settings/profiles/VibratorPreference;->setVibratorItem(Lcom/android/settings/profiles/ProfileConfig$VibratorItem;)V

    .line 270
    move-object/from16 v0, v18

    iput-object v10, v0, Lcom/android/settings/profiles/ProfileConfig$VibratorItem;->mCheckbox:Lcom/android/settings/profiles/VibratorPreference;

    .line 271
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 247
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 259
    :pswitch_0
    const v20, 0x7f0b07c1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/profiles/VibratorPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 262
    :pswitch_1
    const v20, 0x7f0b07c3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/profiles/VibratorPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 276
    .end local v3           #arr$:[Lcom/android/settings/profiles/ProfileConfig$VibratorItem;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v10           #pref:Lcom/android/settings/profiles/VibratorPreference;
    .end local v13           #settings:Landroid/app/VibratorSettings;
    .end local v18           #vibrator:Lcom/android/settings/profiles/ProfileConfig$VibratorItem;
    :cond_5
    const-string v20, "profile_connectionoverrides"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 277
    .local v5, connectionList:Landroid/preference/PreferenceGroup;
    if-eqz v5, :cond_8

    .line 278
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    .line 280
    .local v4, connection:Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v20, v0

    iget v0, v4, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mConnectionId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/app/Profile;->getSettingsForConnection(I)Landroid/app/ConnectionSettings;

    move-result-object v13

    .line 281
    .local v13, settings:Landroid/app/ConnectionSettings;
    if-nez v13, :cond_6

    .line 282
    new-instance v13, Landroid/app/ConnectionSettings;

    .end local v13           #settings:Landroid/app/ConnectionSettings;
    iget v0, v4, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mConnectionId:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/app/ConnectionSettings;-><init>(I)V

    .line 283
    .restart local v13       #settings:Landroid/app/ConnectionSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/app/Profile;->setConnectionSettings(Landroid/app/ConnectionSettings;)V

    .line 285
    :cond_6
    iput-object v13, v4, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mSettings:Landroid/app/ConnectionSettings;

    .line 286
    new-instance v10, Lcom/android/settings/profiles/ProfileConnectionPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lcom/android/settings/profiles/ProfileConnectionPreference;-><init>(Landroid/content/Context;)V

    .line 287
    .local v10, pref:Lcom/android/settings/profiles/ProfileConnectionPreference;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "connection_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v4, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mConnectionId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/profiles/ProfileConnectionPreference;->setKey(Ljava/lang/String;)V

    .line 288
    iget-object v0, v4, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mLabel:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/profiles/ProfileConnectionPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {v13}, Landroid/app/ConnectionSettings;->getValue()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    const v20, 0x7f0b07bf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v20

    :goto_4
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/profiles/ProfileConnectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 291
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/profiles/ProfileConnectionPreference;->setPersistent(Z)V

    .line 292
    invoke-virtual {v10, v4}, Lcom/android/settings/profiles/ProfileConnectionPreference;->setConnectionItem(Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;)V

    .line 293
    iput-object v10, v4, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mCheckbox:Lcom/android/settings/profiles/ProfileConnectionPreference;

    .line 294
    invoke-virtual {v5, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 289
    :cond_7
    const v20, 0x7f0b07be

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_4

    .line 299
    .end local v4           #connection:Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #pref:Lcom/android/settings/profiles/ProfileConnectionPreference;
    .end local v13           #settings:Landroid/app/ConnectionSettings;
    :cond_8
    const-string v20, "profile_appgroups"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    .line 300
    .local v7, groupList:Landroid/preference/PreferenceGroup;
    if-eqz v7, :cond_9

    .line 301
    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Profile;->getProfileGroups()[Landroid/app/ProfileGroup;

    move-result-object v3

    .local v3, arr$:[Landroid/app/ProfileGroup;
    array-length v9, v3

    .restart local v9       #len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_5
    if-ge v8, v9, :cond_9

    aget-object v12, v3, v8

    .line 303
    .local v12, profileGroup:Landroid/app/ProfileGroup;
    new-instance v10, Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v10, v0, v1}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 304
    .local v10, pref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v12}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v17

    .line 305
    .local v17, uuid:Ljava/util/UUID;
    invoke-virtual/range {v17 .. v17}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 308
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 309
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->setSelectable(Z)V

    .line 310
    invoke-virtual {v7, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 302
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 313
    .end local v3           #arr$:[Landroid/app/ProfileGroup;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v10           #pref:Landroid/preference/PreferenceScreen;
    .end local v12           #profileGroup:Landroid/app/ProfileGroup;
    .end local v17           #uuid:Ljava/util/UUID;
    :cond_9
    return-void

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startNFCProfileWriter()V
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 169
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/profiles/NFCProfileWriter;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    const-string v2, "PROFILE_UUID"

    iget-object v3, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v3}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 173
    return-void
.end method

.method private startProfileGroupActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 363
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 364
    const-string v0, "ProfileGroup"

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v0, "Profile"

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 369
    const-class v1, Lcom/android/settings/profiles/ProfileGroupConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 371
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    new-array v1, v9, [Lcom/android/settings/profiles/ProfileConfig$StreamItem;

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$StreamItem;

    const v3, 0x7f0b0270

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v9, v3}, Lcom/android/settings/profiles/ProfileConfig$StreamItem;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$StreamItem;

    const v3, 0x7f0b026e

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v8, v3}, Lcom/android/settings/profiles/ProfileConfig$StreamItem;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$StreamItem;

    const v3, 0x7f0b026a

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lcom/android/settings/profiles/ProfileConfig$StreamItem;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$StreamItem;

    const/4 v3, 0x5

    const v4, 0x7f0b026b

    invoke-virtual {p0, v4}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/profiles/ProfileConfig$StreamItem;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v8

    iput-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mStreams:[Lcom/android/settings/profiles/ProfileConfig$StreamItem;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    .line 92
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    const v3, 0x7f0b07f4

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    const/4 v3, 0x7

    const v4, 0x7f0b07f2

    invoke-virtual {p0, v4}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    const v3, 0x7f0b07f3

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v9, v3}, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    const v3, 0x7f0b07f0

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    const/4 v3, 0x5

    const v4, 0x7f0b07f5

    invoke-virtual {p0, v4}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    const v3, 0x7f0b07f1

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    const v3, 0x7f0b07fe

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v8, v3}, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    new-array v1, v7, [Lcom/android/settings/profiles/ProfileConfig$VibratorItem;

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$VibratorItem;

    const v3, 0x7f0b07ed

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lcom/android/settings/profiles/ProfileConfig$VibratorItem;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/settings/profiles/ProfileConfig$VibratorItem;

    const v3, 0x7f0b07ee

    invoke-virtual {p0, v3}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/android/settings/profiles/ProfileConfig$VibratorItem;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mVibrators:[Lcom/android/settings/profiles/ProfileConfig$VibratorItem;

    .line 107
    const v1, 0x7f05002d

    invoke-virtual {p0, v1}, Lcom/android/settings/profiles/ProfileConfig;->addPreferencesFromResource(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "profile"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfileManager;

    iput-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/Profile;

    :goto_0
    iput-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    .line 114
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    if-nez v1, :cond_1

    .line 115
    new-instance v1, Landroid/app/Profile;

    const v2, 0x7f0b07b1

    invoke-virtual {p0, v2}, Lcom/android/settings/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Profile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    .line 116
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v2, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1, v2}, Landroid/app/ProfileManager;->addProfile(Landroid/app/Profile;)V

    .line 119
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/settings/profiles/ProfileConfig;->setHasOptionsMenu(Z)V

    .line 121
    return-void

    .line 112
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 126
    const v2, 0x7f0b088b

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020052

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 128
    .local v1, nfc:Landroid/view/MenuItem;
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 131
    .end local v1           #nfc:Landroid/view/MenuItem;
    :cond_0
    const/4 v2, 0x2

    const v3, 0x7f0b07a9

    invoke-interface {p1, v4, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020056

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 133
    .local v0, delete:Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 135
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 147
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 141
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfileConfig;->deleteProfile()V

    goto :goto_0

    .line 144
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfileConfig;->startNFCProfileWriter()V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 162
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->updateProfile(Landroid/app/Profile;)V

    .line 165
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v9, 0x1

    .line 317
    instance-of v6, p1, Lcom/android/settings/profiles/StreamVolumePreference;

    if-eqz v6, :cond_1

    .line 318
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileConfig;->mStreams:[Lcom/android/settings/profiles/ProfileConfig$StreamItem;

    .local v0, arr$:[Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v5, v0, v2

    .line 319
    .local v5, stream:Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    iget-object v6, v5, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mCheckbox:Lcom/android/settings/profiles/StreamVolumePreference;

    if-ne p1, v6, :cond_0

    .line 320
    iget-object v7, v5, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mSettings:Landroid/app/StreamSettings;

    move-object v6, p2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v7, v6}, Landroid/app/StreamSettings;->setOverride(Z)V

    .line 318
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    .end local v0           #arr$:[Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #stream:Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    :cond_1
    instance-of v6, p1, Lcom/android/settings/profiles/ProfileConnectionPreference;

    if-eqz v6, :cond_3

    .line 324
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;

    .line 325
    .local v1, connection:Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;
    iget-object v6, v1, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mCheckbox:Lcom/android/settings/profiles/ProfileConnectionPreference;

    if-ne p1, v6, :cond_2

    .line 326
    iget-object v7, v1, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mSettings:Landroid/app/ConnectionSettings;

    move-object v6, p2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v7, v6}, Landroid/app/ConnectionSettings;->setOverride(Z)V

    goto :goto_1

    .line 329
    .end local v1           #connection:Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mNamePreference:Lcom/android/settings/profiles/NamePreference;

    if-ne p1, v6, :cond_6

    .line 330
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mNamePreference:Lcom/android/settings/profiles/NamePreference;

    invoke-virtual {v6}, Lcom/android/settings/profiles/NamePreference;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v6}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 332
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v6, v4}, Landroid/app/ProfileManager;->profileExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 333
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v6, v4}, Landroid/app/Profile;->setName(Ljava/lang/String;)V

    .line 349
    .end local v4           #name:Ljava/lang/String;
    .end local p2
    :cond_4
    :goto_2
    return v9

    .line 335
    .restart local v4       #name:Ljava/lang/String;
    .restart local p2
    :cond_5
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mNamePreference:Lcom/android/settings/profiles/NamePreference;

    iget-object v7, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v7}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/profiles/NamePreference;->setName(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b07b4

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 339
    .end local v4           #name:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_7

    .line 340
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Profile;->setScreenLockMode(I)V

    .line 341
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070071

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v8}, Landroid/app/Profile;->getScreenLockMode()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 343
    .restart local p2
    :cond_7
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mAirplaneModePreference:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_4

    .line 344
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Profile;->setAirplaneMode(I)V

    .line 345
    iget-object v6, p0, Lcom/android/settings/profiles/ProfileConfig;->mAirplaneModePreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070074

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v8}, Landroid/app/Profile;->getAirplaneMode()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 354
    const-string v0, "ProfileConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick(): entered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    instance-of v0, p2, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/profiles/ProfileConfig;->startProfileGroupActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const/4 v0, 0x1

    .line 359
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 154
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->getProfile(Ljava/util/UUID;)Landroid/app/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    .line 155
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfileConfig;->fillList()V

    .line 156
    return-void
.end method
