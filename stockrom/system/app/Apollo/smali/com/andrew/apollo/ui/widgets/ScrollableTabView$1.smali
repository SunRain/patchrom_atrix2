.class Lcom/andrew/apollo/ui/widgets/ScrollableTabView$1;
.super Ljava/lang/Object;
.source "ScrollableTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->initTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/ui/widgets/ScrollableTabView;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/andrew/apollo/ui/widgets/ScrollableTabView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView$1;->this$0:Lcom/andrew/apollo/ui/widgets/ScrollableTabView;

    iput p2, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView$1;->this$0:Lcom/andrew/apollo/ui/widgets/ScrollableTabView;

    #getter for: Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->access$000(Lcom/andrew/apollo/ui/widgets/ScrollableTabView;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget v1, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView$1;->val$index:I

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView$1;->this$0:Lcom/andrew/apollo/ui/widgets/ScrollableTabView;

    iget v1, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView$1;->val$index:I

    #calls: Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->selectTab(I)V
    invoke-static {v0, v1}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->access$100(Lcom/andrew/apollo/ui/widgets/ScrollableTabView;I)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView$1;->this$0:Lcom/andrew/apollo/ui/widgets/ScrollableTabView;

    #getter for: Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/andrew/apollo/ui/widgets/ScrollableTabView;->access$000(Lcom/andrew/apollo/ui/widgets/ScrollableTabView;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/andrew/apollo/ui/widgets/ScrollableTabView$1;->val$index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method
