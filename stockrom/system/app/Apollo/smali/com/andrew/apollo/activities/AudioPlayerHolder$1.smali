.class Lcom/andrew/apollo/activities/AudioPlayerHolder$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioPlayerHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/activities/AudioPlayerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/activities/AudioPlayerHolder;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/activities/AudioPlayerHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/andrew/apollo/activities/AudioPlayerHolder$1;->this$0:Lcom/andrew/apollo/activities/AudioPlayerHolder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/andrew/apollo/activities/AudioPlayerHolder$1;->this$0:Lcom/andrew/apollo/activities/AudioPlayerHolder;

    invoke-virtual {v0}, Lcom/andrew/apollo/activities/AudioPlayerHolder;->invalidateOptionsMenu()V

    .line 124
    return-void
.end method
