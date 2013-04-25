.class public abstract Lcom/android/camera/ActivityBase;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "ActivityBase.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ActivityBase$MyAppBridge;,
        Lcom/android/camera/ActivityBase$HideCameraAppView;,
        Lcom/android/camera/ActivityBase$SaveThumbnailTask;,
        Lcom/android/camera/ActivityBase$LoadThumbnailTask;,
        Lcom/android/camera/ActivityBase$CameraOpenThread;
    }
.end annotation


# static fields
.field public static mFocusTime:I


# instance fields
.field protected mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field protected mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

.field protected mCameraAppView:Landroid/view/View;

.field protected mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field protected mCameraDisabled:Z

.field protected mCameraId:I

.field protected mCameraPicker:Lcom/android/camera/ui/CameraPicker;

.field protected mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field protected mCaptureMode:I

.field private mDeletePictureFilter:Landroid/content/IntentFilter;

.field private mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

.field private mHideCameraAppView:Lcom/android/camera/ActivityBase$HideCameraAppView;

.field protected mLoadThumbnailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/camera/Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field protected mNumberOfCameras:I

.field protected mOpenCameraFail:Z

.field protected mParameters:Landroid/hardware/Camera$Parameters;

.field protected mPaused:Z

.field protected mPendingSwitchCameraId:I

.field protected mPowerShutter:Z

.field private mResultCodeForTesting:I

.field private mResultDataForTesting:Landroid/content/Intent;

.field protected mShowCameraAppView:Z

.field private mSingleTapArea:Landroid/view/View;

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field protected mThumbnail:Lcom/android/camera/Thumbnail;

.field protected mThumbnailView:Lcom/android/camera/ui/RotateImageView;

.field protected mThumbnailViewWidth:I

.field private mUpdateThumbnailDelayed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPowerShutter:Z

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.gallery3d.action.DELETE_PICTURE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mDeletePictureFilter:Landroid/content/IntentFilter;

    .line 109
    new-instance v0, Lcom/android/camera/ActivityBase$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$1;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    .line 519
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ActivityBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mUpdateThumbnailDelayed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/ActivityBase;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onSingleTapUp(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/ActivityBase;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase;->onFullScreenChanged(Z)V

    return-void
.end method

.method private onFullScreenChanged(Z)V
    .locals 2
    .parameter "full"

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-ne v0, p1, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    .line 419
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHideCameraAppView:Lcom/android/camera/ActivityBase$HideCameraAppView;

    if-nez v0, :cond_2

    .line 422
    new-instance v0, Lcom/android/camera/ActivityBase$HideCameraAppView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ActivityBase$HideCameraAppView;-><init>(Lcom/android/camera/ActivityBase;Lcom/android/camera/ActivityBase$1;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mHideCameraAppView:Lcom/android/camera/ActivityBase$HideCameraAppView;

    .line 423
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 426
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateCameraAppView()V

    .line 430
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mUpdateThumbnailDelayed:Z

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getLastThumbnailUncached()V

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mUpdateThumbnailDelayed:Z

    goto :goto_0
.end method

.method private onSingleTapUp(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 486
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    .line 497
    :goto_0
    return v1

    .line 488
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-static {v1, v4}, Lcom/android/camera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    .line 490
    .local v0, relativeLocation:[I
    aget v1, v0, v3

    sub-int/2addr p1, v1

    .line 491
    aget v1, v0, v2

    sub-int/2addr p2, v1

    .line 492
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-ltz p2, :cond_2

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 494
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/camera/ActivityBase;->onSingleTapUp(Landroid/view/View;II)V

    move v1, v2

    .line 495
    goto :goto_0

    :cond_2
    move v1, v3

    .line 497
    goto :goto_0
.end method


# virtual methods
.method protected createCameraScreenNail(Z)V
    .locals 3
    .parameter

    .prologue
    .line 371
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    .line 372
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 373
    const-string v0, "/local/all/"

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    const-string v2, "media-set-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v2, "media-item-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v0, Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$MyAppBridge;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    .line 383
    const-string v0, "app-bridge"

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 384
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 385
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$MyAppBridge;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 386
    return-void

    .line 377
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method protected getLastThumbnail()V
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ThumbnailHolder;->getLastThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 291
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateThumbnailView()V

    .line 292
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;-><init>(Lcom/android/camera/ActivityBase;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 295
    :cond_0
    return-void
.end method

.method protected getLastThumbnailUncached()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 299
    :cond_0
    new-instance v0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;-><init>(Lcom/android/camera/ActivityBase;Z)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 300
    return-void
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/android/camera/ActivityBase;->mResultCodeForTesting:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    return-object v0
.end method

.method protected gotoGallery()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    const/4 v1, 0x1

    #calls: Lcom/android/camera/ActivityBase$MyAppBridge;->switchWithCaptureAnimation(I)V
    invoke-static {v0, v1}, Lcom/android/camera/ActivityBase$MyAppBridge;->access$100(Lcom/android/camera/ActivityBase$MyAppBridge;I)V

    .line 349
    return-void
.end method

.method protected initPowerShutter(Lcom/android/camera/ComboPreferences;)V
    .locals 5
    .parameter "prefs"

    .prologue
    const/high16 v4, -0x8000

    .line 157
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 158
    const-string v1, "pref_power_shutter"

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, val:Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPowerShutter:Z

    .line 161
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mPowerShutter:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public isPanoramaActivity()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method protected notifyScreenNailChanged()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    #calls: Lcom/android/camera/ActivityBase$MyAppBridge;->notifyScreenNailChanged()V
    invoke-static {v0}, Lcom/android/camera/ActivityBase$MyAppBridge;->access$600(Lcom/android/camera/ActivityBase$MyAppBridge;)V

    .line 509
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 138
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->disableToggleStatusBar()V

    .line 145
    const v0, 0x7f0e0032

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setTheme(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 147
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->requestWindowFeature(I)Z

    .line 149
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 247
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 240
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->removeInstance(Landroid/content/Context;)V

    .line 241
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    .line 242
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 211
    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 213
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 15
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 445
    iget-object v12, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    if-nez v12, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    move/from16 v0, p2

    move/from16 v1, p6

    if-ne v0, v1, :cond_2

    move/from16 v0, p3

    move/from16 v1, p7

    if-ne v0, v1, :cond_2

    move/from16 v0, p4

    move/from16 v1, p8

    if-ne v0, v1, :cond_2

    move/from16 v0, p5

    move/from16 v1, p9

    if-eq v0, v1, :cond_0

    .line 453
    :cond_2
    sub-int v11, p4, p2

    .line 454
    .local v11, width:I
    sub-int v4, p5, p3

    .line 455
    .local v4, height:I
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v12

    rem-int/lit16 v12, v12, 0xb4

    if-nez v12, :cond_3

    .line 456
    iget-object v12, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v12, v11, v4}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    .line 465
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 466
    .local v7, root:Landroid/view/View;
    const/4 v12, 0x2

    new-array v8, v12, [I

    .line 467
    .local v8, rootLocation:[I
    const/4 v12, 0x2

    new-array v10, v12, [I

    .line 468
    .local v10, viewLocation:[I
    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 469
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 471
    const/4 v12, 0x0

    aget v12, v10, v12

    const/4 v13, 0x0

    aget v13, v8, v13

    sub-int v5, v12, v13

    .line 472
    .local v5, l:I
    const/4 v12, 0x1

    aget v12, v10, v12

    const/4 v13, 0x1

    aget v13, v8, v13

    sub-int v9, v12, v13

    .line 473
    .local v9, t:I
    add-int v6, v5, v11

    .line 474
    .local v6, r:I
    add-int v2, v9, v4

    .line 475
    .local v2, b:I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v9, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 476
    .local v3, frame:Landroid/graphics/Rect;
    const-string v12, "ActivityBase"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "set CameraRelativeFrame as "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v12, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    #calls: Lcom/android/camera/ActivityBase$MyAppBridge;->setCameraRelativeFrame(Landroid/graphics/Rect;)V
    invoke-static {v12, v3}, Lcom/android/camera/ActivityBase$MyAppBridge;->access$400(Lcom/android/camera/ActivityBase$MyAppBridge;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 460
    .end local v2           #b:I
    .end local v3           #frame:Landroid/graphics/Rect;
    .end local v5           #l:I
    .end local v6           #r:I
    .end local v7           #root:Landroid/view/View;
    .end local v8           #rootLocation:[I
    .end local v9           #t:I
    .end local v10           #viewLocation:[I
    :cond_3
    iget-object v12, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v12, v4, v11}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 178
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 179
    .local v0, manager:Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->saveThumbnailToFile()V

    .line 184
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 186
    iput-object v3, p0, Lcom/android/camera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 191
    iput-object v3, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 193
    :cond_1
    return-void
.end method

.method protected onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 171
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 172
    .local v0, manager:Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mDeletePictureFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 173
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 501
    return-void
.end method

.method protected saveThumbnailToFile()V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->fromFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Lcom/android/camera/ActivityBase$SaveThumbnailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ActivityBase$SaveThumbnailTask;-><init>(Lcom/android/camera/ActivityBase;Lcom/android/camera/ActivityBase$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/camera/Thumbnail;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase$SaveThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 355
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setContentView(I)V

    .line 199
    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/GalleryActionBar;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 200
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 201
    return-void
.end method

.method protected setResultEx(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 220
    iput p1, p0, Lcom/android/camera/ActivityBase;->mResultCodeForTesting:I

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->setResult(I)V

    .line 222
    return-void
.end method

.method protected setResultEx(ILandroid/content/Intent;)V
    .locals 0
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 225
    iput p1, p0, Lcom/android/camera/ActivityBase;->mResultCodeForTesting:I

    .line 226
    iput-object p2, p0, Lcom/android/camera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 228
    return-void
.end method

.method protected setSingleTapUpListener(Landroid/view/View;)V
    .locals 0
    .parameter "singleTapArea"

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    .line 482
    return-void
.end method

.method protected setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    #calls: Lcom/android/camera/ActivityBase$MyAppBridge;->setSwipingEnabled(Z)V
    invoke-static {v0, p1}, Lcom/android/camera/ActivityBase$MyAppBridge;->access$500(Lcom/android/camera/ActivityBase$MyAppBridge;Z)V

    .line 505
    return-void
.end method

.method protected updateCameraAppView()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x64

    .line 398
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 406
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 414
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mHideCameraAppView:Lcom/android/camera/ActivityBase$HideCameraAppView;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method protected updateStorageHint(J)V
    .locals 3
    .parameter "storageSpace"

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, message:Ljava/lang/String;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    .line 253
    const v1, 0x7f0d0008

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    .line 263
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_5

    .line 264
    invoke-static {p0, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 268
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->show()V

    .line 273
    :cond_1
    :goto_2
    return-void

    .line 254
    :cond_2
    const-wide/16 v1, -0x2

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    .line 255
    const v1, 0x7f0d000a

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_3
    const-wide/16 v1, -0x3

    cmp-long v1, p1, v1

    if-nez v1, :cond_4

    .line 257
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_4
    const-wide/32 v1, 0x2faf080

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 259
    const v1, 0x7f0d0092

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 269
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 271
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_2
.end method

.method protected updateThumbnailView()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 278
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 283
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 281
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method
