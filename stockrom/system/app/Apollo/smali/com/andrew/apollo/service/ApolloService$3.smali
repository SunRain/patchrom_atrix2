.class Lcom/andrew/apollo/service/ApolloService$3;
.super Ljava/lang/Object;
.source "ApolloService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/service/ApolloService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/service/ApolloService;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/service/ApolloService;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/andrew/apollo/service/ApolloService$3;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .parameter "focusChange"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/andrew/apollo/service/ApolloService$3;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/andrew/apollo/service/ApolloService;->access$100(Lcom/andrew/apollo/service/ApolloService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 421
    return-void
.end method
