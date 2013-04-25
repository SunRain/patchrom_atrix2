.class public Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;
.super Landroid/app/ListFragment;
.source "TabletPowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/TabletPowerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerWidgetOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$ButtonAdapter;
    }
.end annotation


# instance fields
.field private mButtonAdapter:Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$ButtonAdapter;

.field private mButtonList:Landroid/widget/ListView;

.field mContentView:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field private mDropListener:Lcom/android/settings/cyanogenmod/TouchInterceptor$DropListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mContentView:Landroid/view/View;

    .line 150
    new-instance v0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$1;

    invoke-direct {v0, p0}, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$1;-><init>(Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mDropListener:Lcom/android/settings/cyanogenmod/TouchInterceptor$DropListener;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;)Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$ButtonAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mButtonAdapter:Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$ButtonAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mButtonList:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mButtonList:Landroid/widget/ListView;

    .line 130
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mButtonList:Landroid/widget/ListView;

    check-cast v0, Lcom/android/settings/cyanogenmod/TouchInterceptor;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mDropListener:Lcom/android/settings/cyanogenmod/TouchInterceptor$DropListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/TouchInterceptor;->setDropListener(Lcom/android/settings/cyanogenmod/TouchInterceptor$DropListener;)V

    .line 131
    new-instance v0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$ButtonAdapter;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$ButtonAdapter;-><init>(Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mButtonAdapter:Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$ButtonAdapter;

    .line 132
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mButtonAdapter:Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$ButtonAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 119
    const v0, 0x7f040047

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mContentView:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mButtonList:Landroid/widget/ListView;

    check-cast v0, Lcom/android/settings/cyanogenmod/TouchInterceptor;

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/TouchInterceptor;->setDropListener(Lcom/android/settings/cyanogenmod/TouchInterceptor$DropListener;)V

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 140
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 146
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mButtonAdapter:Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$ButtonAdapter;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$ButtonAdapter;->reloadButtons()V

    .line 147
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mButtonList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 148
    return-void
.end method
