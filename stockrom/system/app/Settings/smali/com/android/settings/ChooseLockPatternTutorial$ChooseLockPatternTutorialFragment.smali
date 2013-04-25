.class public Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPatternTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPatternTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternTutorialFragment"
.end annotation


# instance fields
.field private mNextButton:Landroid/view/View;

.field private mPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mSkipButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mSkipButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mNextButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 112
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    const-string v2, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const-string v0, "pattern_size"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "pattern_size"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->startActivity(Landroid/content/Intent;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 65
    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 71
    const-string v2, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    const-string v1, "pattern_size"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "pattern_size"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->startActivity(Landroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 78
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 83
    const v2, 0x7f040014

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, view:Landroid/view/View;
    const v2, 0x7f080020

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mNextButton:Landroid/view/View;

    .line 85
    iget-object v2, p0, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v2, 0x7f080028

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mSkipButton:Landroid/view/View;

    .line 87
    iget-object v2, p0, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mSkipButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v2, 0x7f080023

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView;

    iput-object v2, p0, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 91
    iget-object v2, p0, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pattern_size"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setLockPatternSize(I)V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, demoPattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {v7, v7}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-static {v7, v6}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-static {v6, v6}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    const/4 v2, 0x2

    invoke-static {v2, v6}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v2, p0, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 99
    iget-object v2, p0, Lcom/android/settings/ChooseLockPatternTutorial$ChooseLockPatternTutorialFragment;->mPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    .line 101
    return-object v1
.end method
