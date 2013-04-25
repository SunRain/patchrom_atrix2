.class Lcom/andrew/apollo/list/fragments/TracksFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "TracksFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/list/fragments/TracksFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/list/fragments/TracksFragment;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/list/fragments/TracksFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/andrew/apollo/list/fragments/TracksFragment$1;->this$0:Lcom/andrew/apollo/list/fragments/TracksFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment$1;->this$0:Lcom/andrew/apollo/list/fragments/TracksFragment;

    #getter for: Lcom/andrew/apollo/list/fragments/TracksFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->access$000(Lcom/andrew/apollo/list/fragments/TracksFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment$1;->this$0:Lcom/andrew/apollo/list/fragments/TracksFragment;

    #getter for: Lcom/andrew/apollo/list/fragments/TracksFragment;->mTrackAdapter:Lcom/andrew/apollo/adapters/TrackAdapter;
    invoke-static {v0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->access$100(Lcom/andrew/apollo/list/fragments/TracksFragment;)Lcom/andrew/apollo/adapters/TrackAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/TrackAdapter;->notifyDataSetChanged()V

    .line 375
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment$1;->this$0:Lcom/andrew/apollo/list/fragments/TracksFragment;

    #getter for: Lcom/andrew/apollo/list/fragments/TracksFragment;->mPlaylistId:J
    invoke-static {v0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->access$200(Lcom/andrew/apollo/list/fragments/TracksFragment;)J

    move-result-wide v0

    const-wide/16 v2, -0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment$1;->this$0:Lcom/andrew/apollo/list/fragments/TracksFragment;

    #getter for: Lcom/andrew/apollo/list/fragments/TracksFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->access$000(Lcom/andrew/apollo/list/fragments/TracksFragment;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/andrew/apollo/list/fragments/TracksFragment$1$1;

    invoke-direct {v1, p0}, Lcom/andrew/apollo/list/fragments/TracksFragment$1$1;-><init>(Lcom/andrew/apollo/list/fragments/TracksFragment$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    :cond_0
    return-void
.end method
