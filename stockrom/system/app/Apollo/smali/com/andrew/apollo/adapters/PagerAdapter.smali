.class public Lcom/andrew/apollo/adapters/PagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "PagerAdapter.java"


# instance fields
.field private final mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 24
    return-void
.end method


# virtual methods
.method public addFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {p0}, Lcom/andrew/apollo/adapters/PagerAdapter;->notifyDataSetChanged()V

    .line 29
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/andrew/apollo/utils/RefreshableFragment;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/andrew/apollo/adapters/PagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/utils/RefreshableFragment;

    invoke-virtual {v1}, Lcom/andrew/apollo/utils/RefreshableFragment;->refresh()V

    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method
