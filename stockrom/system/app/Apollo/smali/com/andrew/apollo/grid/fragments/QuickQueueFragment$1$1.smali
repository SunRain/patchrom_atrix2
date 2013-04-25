.class Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1$1;
.super Ljava/lang/Object;
.source "QuickQueueFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1$1;->this$1:Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1$1;->this$1:Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1;

    iget-object v0, v0, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment$1;->this$0:Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;

    #getter for: Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;->access$000(Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getQueuePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 248
    return-void
.end method
