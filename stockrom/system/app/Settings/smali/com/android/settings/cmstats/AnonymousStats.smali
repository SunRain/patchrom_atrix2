.class public Lcom/android/settings/cmstats/AnonymousStats;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AnonymousStats.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mEnableReporting:Landroid/preference/CheckBoxPreference;

.field private mOkClicked:Z

.field private mOkDialog:Landroid/app/Dialog;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mViewStats:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 126
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 127
    iput-boolean v3, p0, Lcom/android/settings/cmstats/AnonymousStats;->mOkClicked:Z

    .line 128
    iget-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_anonymous_opt_in"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/cmstats/AnonymousStats;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/cmstats/ReportingServiceManager;->launchService(Landroid/content/Context;)V

    .line 136
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mEnableReporting:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 133
    :cond_1
    const-string v1, "http://www.cyanogenmod.org/blog/cmstats-what-it-is-and-why-you-should-opt-in"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 134
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/cmstats/AnonymousStats;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/cmstats/AnonymousStats;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 63
    const v3, 0x7f050003

    invoke-virtual {p0, v3}, Lcom/android/settings/cmstats/AnonymousStats;->addPreferencesFromResource(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/cmstats/AnonymousStats;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 65
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/cmstats/AnonymousStats;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "CMStats"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/cmstats/AnonymousStats;->mPrefs:Landroid/content/SharedPreferences;

    .line 66
    const-string v3, "pref_anonymous_opt_in"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/cmstats/AnonymousStats;->mEnableReporting:Landroid/preference/CheckBoxPreference;

    .line 67
    const-string v3, "pref_view_stats"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/cmstats/AnonymousStats;->mViewStats:Landroid/preference/Preference;

    .line 68
    iget-object v3, p0, Lcom/android/settings/cmstats/AnonymousStats;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "pref_anonymous_first_boot"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 69
    .local v0, firstBoot:Z
    iget-object v3, p0, Lcom/android/settings/cmstats/AnonymousStats;->mEnableReporting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 70
    iget-object v3, p0, Lcom/android/settings/cmstats/AnonymousStats;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_anonymous_first_boot"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/cmstats/AnonymousStats;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/cmstats/ReportingServiceManager;->launchService(Landroid/content/Context;)V

    .line 73
    :cond_0
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/cmstats/AnonymousStats;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 74
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-virtual {v1, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 76
    .end local v0           #firstBoot:Z
    .end local v1           #nm:Landroid/app/NotificationManager;
    .end local v2           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/settings/cmstats/AnonymousStats;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/cmstats/AnonymousStats;->mEnableReporting:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 122
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mEnableReporting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mEnableReporting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iput-boolean v3, p0, Lcom/android/settings/cmstats/AnonymousStats;->mOkClicked:Z

    .line 84
    iget-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mOkDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mOkDialog:Landroid/app/Dialog;

    .line 88
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/cmstats/AnonymousStats;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/cmstats/AnonymousStats;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0840

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b083f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0845

    invoke-virtual {p0, v2}, Lcom/android/settings/cmstats/AnonymousStats;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mOkDialog:Landroid/app/Dialog;

    .line 96
    iget-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 109
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_anonymous_opt_in"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mViewStats:Landroid/preference/Preference;

    if-ne p2, v1, :cond_3

    .line 103
    const-string v1, "http://stats.cyanogenmod.org"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 104
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/cmstats/AnonymousStats;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 107
    .end local v0           #uri:Landroid/net/Uri;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method
