.class public Lcom/andrew/apollo/adapters/ScrollingTabsAdapter;
.super Ljava/lang/Object;
.source "ScrollingTabsAdapter.java"

# interfaces
.implements Lcom/andrew/apollo/adapters/TabAdapter;


# instance fields
.field private final activity:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/andrew/apollo/adapters/ScrollingTabsAdapter;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 18
    return-void
.end method


# virtual methods
.method public getView(I)Landroid/view/View;
    .locals 5
    .parameter "position"

    .prologue
    .line 22
    iget-object v3, p0, Lcom/andrew/apollo/adapters/ScrollingTabsAdapter;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 23
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030018

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 24
    .local v2, tab:Landroid/widget/Button;
    iget-object v3, p0, Lcom/andrew/apollo/adapters/ScrollingTabsAdapter;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f06

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, mTitles:[Ljava/lang/String;
    array-length v3, v1

    if-ge p1, v3, :cond_0

    .line 27
    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_0
    iget-object v3, p0, Lcom/andrew/apollo/adapters/ScrollingTabsAdapter;->activity:Landroid/support/v4/app/FragmentActivity;

    const-string v4, "tab_text_color"

    invoke-static {v3, v2, v4}, Lcom/andrew/apollo/utils/ThemeUtils;->setTextColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 31
    return-object v2
.end method
