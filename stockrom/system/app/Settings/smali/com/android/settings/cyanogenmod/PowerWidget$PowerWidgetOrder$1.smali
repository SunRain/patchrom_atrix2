.class Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$1;
.super Ljava/lang/Object;
.source "PowerWidget.java"

# interfaces
.implements Lcom/android/settings/cyanogenmod/TouchInterceptor$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$1;->this$0:Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 474
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$1;->this$0:Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;

    iget-object v2, v2, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->getCurrentButtons(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->getButtonListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 478
    .local v1, buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 479
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 481
    .local v0, button:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p2, v2, :cond_0

    .line 482
    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 485
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$1;->this$0:Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;

    iget-object v2, v2, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->getButtonStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/cyanogenmod/PowerWidgetUtil;->saveCurrentButtons(Landroid/content/Context;Ljava/lang/String;)V

    .line 489
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$1;->this$0:Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;

    #getter for: Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mButtonAdapter:Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;
    invoke-static {v2}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->access$000(Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;)Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$ButtonAdapter;->reloadButtons()V

    .line 490
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder$1;->this$0:Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;

    #getter for: Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->mButtonList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;->access$100(Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 493
    .end local v0           #button:Ljava/lang/String;
    :cond_0
    return-void
.end method
