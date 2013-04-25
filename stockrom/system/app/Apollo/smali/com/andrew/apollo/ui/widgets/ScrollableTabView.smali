.class public Lcom/andrew/apollo/ui/widgets/ScrollableTabView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollableTabView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private mAdapter:Lcom/andrew/apollo/adapters/TabAdapter;

.field private final mContainer:Landroid/widget/LinearLayout;

.field private final mContext:Landroid/content/Context;

.field private final mDividerColor:I

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mDividerMarginBottom:I

.field private mDividerMarginTop:I

.field private mDividerWidth:I

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v2, 0xc

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mTabs:Ljava/util/ArrayList;

    .line 50
    const v1, -0x9c9c9d

    iput v1, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mDividerColor:I

    .line 52
    iput v2, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mDividerMarginTop:I

    .line 54
    iput v2, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mDividerMarginBottom:I

    .line 56
    const/4 v1, 0x1

    iput v1, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mDividerWidth:I

    .line 69
    iput-object p1, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget v2, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mDividerMarginTop:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mDividerMarginTop:I

    .line 72
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget v2, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mDividerMarginBottom:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mDividerMarginBottom:I

    .line 73
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget v2, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mDividerWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mDividerWidth:I

    .line 75
    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->setHorizontalScrollBarEnabled(Z)V

    .line 76
    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 78
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mContainer:Landroid/widget/LinearLayout;

    .line 79
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v1, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 85
    iget-object v1, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->addView(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/ui/widgets/ScrollableTabView;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/ui/widgets/ScrollableTabView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->selectTab(I)V

    return-void
.end method

.method private getSeparator()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 165
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 167
    .local v1, v:Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mDividerWidth:I

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mDividerMarginTop:I

    iget v3, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mDividerMarginBottom:I

    invoke-virtual {v0, v4, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 170
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v2, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :goto_0
    return-object v1

    .line 175
    :cond_0
    const v2, -0x9c9c9d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private initTabs()V
    .locals 5

    .prologue
    .line 106
    iget-object v3, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 107
    iget-object v3, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 109
    iget-object v3, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mAdapter:Lcom/andrew/apollo/adapters/TabAdapter;

    if-nez v3, :cond_0

    .line 141
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 114
    move v1, v0

    .line 116
    .local v1, index:I
    iget-object v3, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mAdapter:Lcom/andrew/apollo/adapters/TabAdapter;

    invoke-interface {v3, v0}, Lcom/andrew/apollo/adapters/TabAdapter;->getView(I)Landroid/view/View;

    move-result-object v2

    .line 117
    .local v2, tab:Landroid/view/View;
    iget-object v3, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 121
    iget-object v3, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v3, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_1

    .line 124
    iget-object v3, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->getSeparator()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    :cond_1
    new-instance v3, Lcom/andrew/apollo/ui/widgets/ScrollableTabView$1;

    invoke-direct {v3, p0, v1}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView$1;-><init>(Lcom/andrew/apollo/ui/widgets/ScrollableTabView;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    .end local v1           #index:I
    .end local v2           #tab:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->selectTab(I)V

    goto :goto_0
.end method

.method private selectTab(I)V
    .locals 9
    .parameter "position"

    .prologue
    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v2, 0x0

    .local v2, pos:I
    :goto_0
    iget-object v7, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 183
    iget-object v7, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 184
    .local v4, tab:Landroid/view/View;
    if-ne v2, p1, :cond_0

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    .line 182
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 187
    .end local v4           #tab:Landroid/view/View;
    :cond_1
    iget-object v7, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mContainer:Landroid/widget/LinearLayout;

    mul-int/lit8 v8, p1, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 189
    .local v3, selectedTab:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 190
    .local v5, w:I
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 192
    .local v1, l:I
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    div-int/lit8 v8, v5, 0x2

    add-int v6, v7, v8

    .line 194
    .local v6, x:I
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->getScrollY()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->smoothScrollTo(II)V

    .line 196
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 158
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 160
    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->selectTab(I)V

    .line 162
    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 145
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 149
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->selectTab(I)V

    .line 154
    return-void
.end method

.method public setAdapter(Lcom/andrew/apollo/adapters/TabAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mAdapter:Lcom/andrew/apollo/adapters/TabAdapter;

    .line 92
    iget-object v0, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mAdapter:Lcom/andrew/apollo/adapters/TabAdapter;

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->initTabs()V

    .line 94
    :cond_0
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .parameter "pager"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mPager:Landroid/support/v4/view/ViewPager;

    .line 98
    iget-object v0, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mAdapter:Lcom/andrew/apollo/adapters/TabAdapter;

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->initTabs()V

    .line 102
    :cond_0
    return-void
.end method
