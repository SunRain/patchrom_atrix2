.class Lcom/andrew/apollo/grid/fragments/AlbumsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/grid/fragments/AlbumsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/grid/fragments/AlbumsFragment;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/grid/fragments/AlbumsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment$1;->this$0:Lcom/andrew/apollo/grid/fragments/AlbumsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment$1;->this$0:Lcom/andrew/apollo/grid/fragments/AlbumsFragment;

    #getter for: Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->access$000(Lcom/andrew/apollo/grid/fragments/AlbumsFragment;)Landroid/widget/GridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/AlbumsFragment$1;->this$0:Lcom/andrew/apollo/grid/fragments/AlbumsFragment;

    #getter for: Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->mAlbumAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;
    invoke-static {v0}, Lcom/andrew/apollo/grid/fragments/AlbumsFragment;->access$100(Lcom/andrew/apollo/grid/fragments/AlbumsFragment;)Lcom/andrew/apollo/adapters/AlbumAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/AlbumAdapter;->notifyDataSetChanged()V

    .line 160
    :cond_0
    return-void
.end method
