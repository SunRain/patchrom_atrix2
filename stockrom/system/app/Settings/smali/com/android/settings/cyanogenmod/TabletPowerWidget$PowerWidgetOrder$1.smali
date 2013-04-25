.class Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$1;
.super Ljava/lang/Object;
.source "TabletPowerWidget.java"

# interfaces
.implements Lcom/android/settings/cyanogenmod/TouchInterceptor$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$1;->this$0:Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 153
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$1;->this$0:Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;

    iget-object v2, v2, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->getCurrentButtons(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->getButtonListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 157
    .local v1, buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 158
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    .local v0, button:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p2, v2, :cond_0

    .line 161
    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 164
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$1;->this$0:Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;

    iget-object v2, v2, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->getButtonStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->saveCurrentButtons(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$1;->this$0:Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;

    #getter for: Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mButtonAdapter:Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$ButtonAdapter;
    invoke-static {v2}, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->access$000(Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;)Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$ButtonAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$ButtonAdapter;->reloadButtons()V

    .line 169
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder$1;->this$0:Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;

    #getter for: Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->mButtonList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;->access$100(Lcom/android/settings/cyanogenmod/TabletPowerWidget$PowerWidgetOrder;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 172
    .end local v0           #button:Ljava/lang/String;
    :cond_0
    return-void
.end method
