.class public Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;
.super Landroid/app/ListFragment;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/PowerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerWidgetOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;
    }
.end annotation


# instance fields
.field private mButtonAdapter:Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;

.field private mButtonList:Landroid/widget/ListView;

.field mContentView:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field private mDropListener:Lcom/android/settings/cyanogenmod/TouchInterceptor$DropListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 426
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mContentView:Landroid/view/View;

    .line 471
    new-instance v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$1;

    invoke-direct {v0, p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$1;-><init>(Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mDropListener:Lcom/android/settings/cyanogenmod/TouchInterceptor$DropListener;

    .line 496
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;)Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mButtonAdapter:Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mButtonList:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 447
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mContext:Landroid/content/Context;

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mButtonList:Landroid/widget/ListView;

    .line 451
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mButtonList:Landroid/widget/ListView;

    check-cast v0, Lcom/android/settings/cyanogenmod/TouchInterceptor;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mDropListener:Lcom/android/settings/cyanogenmod/TouchInterceptor$DropListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/TouchInterceptor;->setDropListener(Lcom/android/settings/cyanogenmod/TouchInterceptor$DropListener;)V

    .line 452
    new-instance v0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;-><init>(Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mButtonAdapter:Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;

    .line 453
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mButtonAdapter:Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 454
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 438
    const v0, 0x7f040047

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mContentView:Landroid/view/View;

    .line 439
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mButtonList:Landroid/widget/ListView;

    check-cast v0, Lcom/android/settings/cyanogenmod/TouchInterceptor;

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/TouchInterceptor;->setDropListener(Lcom/android/settings/cyanogenmod/TouchInterceptor$DropListener;)V

    .line 459
    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 460
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 461
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 465
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 467
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mButtonAdapter:Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->reloadButtons()V

    .line 468
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mButtonList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 469
    return-void
.end method
