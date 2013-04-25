.class Lcom/android/settings/cyanogenmod/LockscreenTargets$3;
.super Ljava/lang/Object;
.source "LockscreenTargets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/LockscreenTargets;->onTrigger(Landroid/view/View;I)V
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
    .line 466
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$3;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 469
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$3;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/settings/cyanogenmod/LockscreenTargets;->mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->access$700(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->access$300()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-array v2, v3, [Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$3;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->access$200(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x108001d

    invoke-static {v3, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$3;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    invoke-virtual {v3}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->pickShortcut([Ljava/lang/String;[Landroid/content/Intent$ShortcutIconResource;I)V

    .line 471
    return-void
.end method
