.class Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickQueueFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1;->this$0:Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1;->this$0:Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;

    #getter for: Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->access$000(Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;)Landroid/widget/GridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1;->this$0:Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;

    #getter for: Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mQuickQueueAdapter:Lcom/andrew/apollo/adapters/QuickQueueAdapter;
    invoke-static {v0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->access$100(Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;)Lcom/andrew/apollo/adapters/QuickQueueAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/QuickQueueAdapter;->notifyDataSetChanged()V

    .line 244
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1;->this$0:Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;

    #getter for: Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->access$000(Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;)Landroid/widget/GridView;

    move-result-object v0

    new-instance v1, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1$1;

    invoke-direct {v1, p0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1$1;-><init>(Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    :cond_0
    return-void
.end method
