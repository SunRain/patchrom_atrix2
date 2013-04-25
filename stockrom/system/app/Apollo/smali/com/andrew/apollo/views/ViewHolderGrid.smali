.class public Lcom/andrew/apollo/views/ViewHolderGrid;
.super Ljava/lang/Object;
.source "ViewHolderGrid.java"


# instance fields
.field public final mInfoHolder:Landroid/widget/LinearLayout;

.field public final mPeakOne:Landroid/widget/ImageView;

.field public final mPeakTwo:Landroid/widget/ImageView;

.field public final mViewHolderImage:Landroid/widget/ImageView;

.field public final mViewHolderLineOne:Landroid/widget/TextView;

.field public final mViewHolderLineTwo:Landroid/widget/TextView;

.field public position:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const v0, 0x7f0e0039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderGrid;->mViewHolderImage:Landroid/widget/ImageView;

    .line 31
    const v0, 0x7f0e003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderGrid;->mViewHolderLineOne:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f0e003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderGrid;->mViewHolderLineTwo:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f0e003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderGrid;->mPeakOne:Landroid/widget/ImageView;

    .line 34
    const v0, 0x7f0e003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderGrid;->mPeakTwo:Landroid/widget/ImageView;

    .line 35
    const v0, 0x7f0e003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderGrid;->mInfoHolder:Landroid/widget/LinearLayout;

    .line 36
    iget-object v0, p0, Lcom/andrew/apollo/views/ViewHolderGrid;->mInfoHolder:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 37
    return-void
.end method
