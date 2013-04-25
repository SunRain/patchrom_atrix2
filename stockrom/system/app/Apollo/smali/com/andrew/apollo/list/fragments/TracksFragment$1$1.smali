.class Lcom/andrew/apollo/list/fragments/TracksFragment$1$1;
.super Ljava/lang/Object;
.source "TracksFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/list/fragments/TracksFragment$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/andrew/apollo/list/fragments/TracksFragment$1;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/list/fragments/TracksFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/andrew/apollo/list/fragments/TracksFragment$1$1;->this$1:Lcom/andrew/apollo/list/fragments/TracksFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/TracksFragment$1$1;->this$1:Lcom/andrew/apollo/list/fragments/TracksFragment$1;

    iget-object v0, v0, Lcom/andrew/apollo/list/fragments/TracksFragment$1;->this$0:Lcom/andrew/apollo/list/fragments/TracksFragment;

    #getter for: Lcom/andrew/apollo/list/fragments/TracksFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/andrew/apollo/list/fragments/TracksFragment;->access$000(Lcom/andrew/apollo/list/fragments/TracksFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getQueuePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 380
    return-void
.end method
