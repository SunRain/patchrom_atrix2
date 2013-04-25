.class public Lcom/andrew/apollo/preferences/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 17
    const v0, 0x7f050004

    .line 18
    .local v0, preferencesResId:I
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/preferences/SettingsFragment;->addPreferencesFromResource(I)V

    .line 19
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 20
    return-void
.end method
