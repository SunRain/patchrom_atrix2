.class Lcom/andrew/apollo/grid/fragments/ArtistsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ArtistsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/grid/fragments/ArtistsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/grid/fragments/ArtistsFragment;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/grid/fragments/ArtistsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$1;->this$0:Lcom/andrew/apollo/grid/fragments/ArtistsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$1;->this$0:Lcom/andrew/apollo/grid/fragments/ArtistsFragment;

    #getter for: Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->access$000(Lcom/andrew/apollo/grid/fragments/ArtistsFragment;)Landroid/widget/GridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$1;->this$0:Lcom/andrew/apollo/grid/fragments/ArtistsFragment;

    #getter for: Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->mArtistAdapter:Lcom/andrew/apollo/adapters/ArtistAdapter;
    invoke-static {v0}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->access$100(Lcom/andrew/apollo/grid/fragments/ArtistsFragment;)Lcom/andrew/apollo/adapters/ArtistAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/ArtistAdapter;->notifyDataSetChanged()V

    .line 224
    :cond_0
    return-void
.end method
