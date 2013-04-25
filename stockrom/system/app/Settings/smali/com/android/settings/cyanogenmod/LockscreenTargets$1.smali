.class Lcom/android/settings/cyanogenmod/LockscreenTargets$1;
.super Ljava/lang/Object;
.source "LockscreenTargets.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/LockscreenTargets;->resetAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$1;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$1;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    const-string v1, "empty|#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.google.android.googlequicksearchbox/.SearchActivity;S.icon_resource=ic_lockscreen_google_normal;end|empty|#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.android.gallery3d/com.android.camera.CameraLauncher;S.icon_resource=ic_lockscreen_camera_normal;end"

    #calls: Lcom/android/settings/cyanogenmod/LockscreenTargets;->initializeView(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->access$000(Lcom/android/settings/cyanogenmod/LockscreenTargets;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$1;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    #calls: Lcom/android/settings/cyanogenmod/LockscreenTargets;->saveAll()V
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->access$100(Lcom/android/settings/cyanogenmod/LockscreenTargets;)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$1;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->access$200(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0756

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 315
    return-void
.end method
