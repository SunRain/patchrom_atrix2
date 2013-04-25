.class Lcom/android/settings/cyanogenmod/CIDCircus$Board$2;
.super Ljava/lang/Object;
.source "CIDCircus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/CIDCircus$Board;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/CIDCircus$Board;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/CIDCircus$Board;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board$2;->this$0:Lcom/android/settings/cyanogenmod/CIDCircus$Board;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board$2;->this$0:Lcom/android/settings/cyanogenmod/CIDCircus$Board;

    #calls: Lcom/android/settings/cyanogenmod/CIDCircus$Board;->reset()V
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->access$200(Lcom/android/settings/cyanogenmod/CIDCircus$Board;)V

    .line 309
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board$2;->this$0:Lcom/android/settings/cyanogenmod/CIDCircus$Board;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->startAnimation()V

    .line 310
    return-void
.end method
