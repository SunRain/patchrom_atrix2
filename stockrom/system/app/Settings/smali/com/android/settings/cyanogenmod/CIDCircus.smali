.class public Lcom/android/settings/cyanogenmod/CIDCircus;
.super Landroid/app/Activity;
.source "CIDCircus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/CIDCircus$Board;
    }
.end annotation


# instance fields
.field private mBoard:Lcom/android/settings/cyanogenmod/CIDCircus$Board;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 372
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 373
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/CIDCircus;->mBoard:Lcom/android/settings/cyanogenmod/CIDCircus$Board;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->stopAnimation()V

    .line 374
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 378
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 379
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/CIDCircus;->mBoard:Lcom/android/settings/cyanogenmod/CIDCircus$Board;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->startAnimation()V

    .line 380
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 360
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/CIDCircus;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 366
    new-instance v0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/CIDCircus;->mBoard:Lcom/android/settings/cyanogenmod/CIDCircus$Board;

    .line 367
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/CIDCircus;->mBoard:Lcom/android/settings/cyanogenmod/CIDCircus$Board;

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/CIDCircus;->setContentView(Landroid/view/View;)V

    .line 368
    return-void
.end method
