.class public Lcom/android/settings/cmstats/PreviewData;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PreviewData.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCarrier:Landroid/preference/Preference;

.field private mCountry:Landroid/preference/Preference;

.field private mDevice:Landroid/preference/Preference;

.field private mId:Landroid/preference/Preference;

.field private mVersion:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/cmstats/PreviewData;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    const v1, 0x7f05002a

    invoke-virtual {p0, v1}, Lcom/android/settings/cmstats/PreviewData;->addPreferencesFromResource(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/cmstats/PreviewData;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 58
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "preview_id"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cmstats/PreviewData;->mId:Landroid/preference/Preference;

    .line 59
    const-string v1, "preview_device"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cmstats/PreviewData;->mDevice:Landroid/preference/Preference;

    .line 60
    const-string v1, "preview_version"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cmstats/PreviewData;->mVersion:Landroid/preference/Preference;

    .line 61
    const-string v1, "preview_country"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cmstats/PreviewData;->mCountry:Landroid/preference/Preference;

    .line 62
    const-string v1, "preview_carrier"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cmstats/PreviewData;->mCarrier:Landroid/preference/Preference;

    .line 64
    iget-object v1, p0, Lcom/android/settings/cmstats/PreviewData;->mId:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cmstats/PreviewData;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/cmstats/Utilities;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lcom/android/settings/cmstats/PreviewData;->mDevice:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/settings/cmstats/Utilities;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/android/settings/cmstats/PreviewData;->mVersion:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/settings/cmstats/Utilities;->getModVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p0, Lcom/android/settings/cmstats/PreviewData;->mCountry:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cmstats/PreviewData;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/cmstats/Utilities;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/android/settings/cmstats/PreviewData;->mCarrier:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cmstats/PreviewData;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/cmstats/Utilities;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    .end local v0           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method
