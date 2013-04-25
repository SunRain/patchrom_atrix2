.class public Lcom/android/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseLockPatternSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPatternSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternSizeFragment"
.end annotation


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 44
    const v0, 0x7f05003d

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->addPreferencesFromResource(I)V

    .line 45
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 53
    const-string v4, "lock_pattern_size_3"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 65
    iget-object v1, p0, Lcom/android/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 67
    :goto_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v1, :cond_5

    const-class v1, Lcom/android/settings/ChooseLockPatternTutorial;

    :goto_2
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 71
    const-string v1, "pattern_size"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    const-string v0, "key_lock_method"

    const-string v1, "pattern"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v0, "confirm_credentials"

    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    const-string v0, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    const/high16 v0, 0x200

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->finish()V

    .line 80
    return v2

    .line 55
    :cond_1
    const-string v4, "lock_pattern_size_4"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    const/4 v0, 0x4

    goto :goto_0

    .line 57
    :cond_2
    const-string v4, "lock_pattern_size_5"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 58
    const/4 v0, 0x5

    goto :goto_0

    .line 59
    :cond_3
    const-string v4, "lock_pattern_size_6"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    move v1, v3

    .line 65
    goto :goto_1

    .line 68
    :cond_5
    const-class v1, Lcom/android/settings/ChooseLockPattern;

    goto :goto_2
.end method
