.class public Lcom/andrew/apollo/views/ViewHolderList;
.super Ljava/lang/Object;
.source "ViewHolderList.java"


# instance fields
.field public final mPeakOne:Landroid/widget/ImageView;

.field public final mPeakTwo:Landroid/widget/ImageView;

.field public final mQuickContext:Landroid/widget/FrameLayout;

.field public final mQuickContextDivider:Landroid/widget/ImageView;

.field public final mQuickContextTip:Landroid/widget/ImageView;

.field public final mViewHolderImage:Landroid/widget/ImageView;

.field public final mViewHolderLineOne:Landroid/widget/TextView;

.field public final mViewHolderLineTwo:Landroid/widget/TextView;

.field public position:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const v0, 0x7f0e0049

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderImage:Landroid/widget/ImageView;

    .line 33
    const v0, 0x7f0e004a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderLineOne:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f0e004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderLineTwo:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0e001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderList;->mQuickContext:Landroid/widget/FrameLayout;

    .line 36
    const v0, 0x7f0e003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderList;->mPeakOne:Landroid/widget/ImageView;

    .line 37
    const v0, 0x7f0e003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderList;->mPeakTwo:Landroid/widget/ImageView;

    .line 38
    const v0, 0x7f0e001c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderList;->mQuickContextDivider:Landroid/widget/ImageView;

    .line 39
    const v0, 0x7f0e001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/views/ViewHolderList;->mQuickContextTip:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderLineOne:Landroid/widget/TextView;

    const-string v2, "list_view_text_color"

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/utils/ThemeUtils;->setTextColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/views/ViewHolderList;->mViewHolderLineTwo:Landroid/widget/TextView;

    const-string v2, "list_view_text_color"

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/utils/ThemeUtils;->setTextColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/views/ViewHolderList;->mQuickContextDivider:Landroid/widget/ImageView;

    const-string v2, "list_view_quick_context_menu_button_divider"

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/utils/ThemeUtils;->setBackgroundColor(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 46
    return-void
.end method
