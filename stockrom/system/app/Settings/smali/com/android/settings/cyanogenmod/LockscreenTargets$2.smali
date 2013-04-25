.class Lcom/android/settings/cyanogenmod/LockscreenTargets$2;
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
    .line 453
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->access$400(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/settings/cyanogenmod/LockscreenTargets;->mImageTmp:Ljava/io/File;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->access$500(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 459
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/settings/cyanogenmod/LockscreenTargets;->mImageTmp:Ljava/io/File;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->access$500(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 460
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIconPicker:Lcom/android/settings/cyanogenmod/IconPicker;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->access$600(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Lcom/android/settings/cyanogenmod/IconPicker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    invoke-virtual {v1}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/settings/cyanogenmod/LockscreenTargets;->mImageTmp:Ljava/io/File;
    invoke-static {v2}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->access$500(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/cyanogenmod/IconPicker;->pickIcon(ILjava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v0

    goto :goto_0
.end method
