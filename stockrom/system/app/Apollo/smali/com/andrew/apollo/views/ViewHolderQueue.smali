.class public Lcom/andrew/apollo/views/ViewHolderQueue;
.super Ljava/lang/Object;
.source "ViewHolderQueue.java"


# instance fields
.field public final mAlbumArt:Landroid/widget/ImageView;

.field public final mArtistImage:Landroid/widget/ImageView;

.field public final mPeakOne:Landroid/widget/ImageView;

.field public final mPeakTwo:Landroid/widget/ImageView;

.field public final mTrackName:Landroid/widget/TextView;

.field public position:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const v0, 0x7f0e0052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderQueue;->mArtistImage:Landroid/widget/ImageView;

    .line 28
    const v0, 0x7f0e0050

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderQueue;->mAlbumArt:Landroid/widget/ImageView;

    .line 29
    const v0, 0x7f0e004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderQueue;->mTrackName:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0e003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderQueue;->mPeakOne:Landroid/widget/ImageView;

    .line 31
    const v0, 0x7f0e003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderQueue;->mPeakTwo:Landroid/widget/ImageView;

    .line 32
    return-void
.end method
