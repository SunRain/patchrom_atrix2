.class Lcom/andrew/apollo/grid/fragments/ArtistsFragment$2;
.super Ljava/lang/Object;
.source "ArtistsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->setHeaderLayout()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/grid/fragments/ArtistsFragment;

.field final synthetic val$artistName:Ljava/lang/String;

.field final synthetic val$mHanderImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/grid/fragments/ArtistsFragment;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$2;->this$0:Lcom/andrew/apollo/grid/fragments/ArtistsFragment;

    iput-object p2, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$2;->val$artistName:Ljava/lang/String;

    iput-object p3, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$2;->val$mHanderImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    iget-object v0, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$2;->val$artistName:Ljava/lang/String;

    const-string v1, "artistimageoriginal"

    iget-object v2, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$2;->this$0:Lcom/andrew/apollo/grid/fragments/ArtistsFragment;

    invoke-virtual {v2}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;

    iget-object v1, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$2;->this$0:Lcom/andrew/apollo/grid/fragments/ArtistsFragment;

    invoke-virtual {v1}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$2;->val$mHanderImage:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2}, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$2;->val$artistName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/tasks/LastfmGetArtistImagesOriginal;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 267
    :cond_0
    new-instance v0, Lcom/andrew/apollo/tasks/GetCachedImages;

    iget-object v1, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$2;->this$0:Lcom/andrew/apollo/grid/fragments/ArtistsFragment;

    invoke-virtual {v1}, Lcom/andrew/apollo/grid/fragments/ArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$2;->val$mHanderImage:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v4, v2}, Lcom/andrew/apollo/tasks/GetCachedImages;-><init>(Landroid/content/Context;ILandroid/widget/ImageView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/andrew/apollo/grid/fragments/ArtistsFragment$2;->val$artistName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/tasks/GetCachedImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 269
    return-void
.end method
