.class Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ArtistAlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment$1;->this$0:Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment$1;->this$0:Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;

    #getter for: Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->access$000(Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment$1;->this$0:Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;

    #getter for: Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->mArtistAlbumAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;
    invoke-static {v0}, Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;->access$100(Lcom/andrew/apollo/list/fragments/ArtistAlbumsFragment;)Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->notifyDataSetChanged()V

    .line 172
    :cond_0
    return-void
.end method
