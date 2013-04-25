.class public Lcom/android/settings/profiles/ProfilesSettings$TabManager;
.super Ljava/lang/Object;
.source "ProfilesSettings.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/profiles/ProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/profiles/ProfilesSettings$TabManager$DummyTabFactory;,
        Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContainerId:I

.field mLastTab:Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;

.field private final mTabHost:Landroid/widget/TabHost;

.field private final mTabs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/TabHost;I)V
    .locals 1
    .parameter "activity"
    .parameter "tabHost"
    .parameter "containerId"

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mTabs:Ljava/util/HashMap;

    .line 388
    iput-object p1, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mActivity:Landroid/app/Activity;

    .line 389
    iput-object p2, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mTabHost:Landroid/widget/TabHost;

    .line 390
    iput p3, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mContainerId:I

    .line 391
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 392
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .parameter "tabSpec"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 395
    .local p2, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v3, Lcom/android/settings/profiles/ProfilesSettings$TabManager$DummyTabFactory;

    iget-object v4, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 396
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, tag:Ljava/lang/String;
    new-instance v1, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;

    invoke-direct {v1, v2, p2, p3}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 403
    .local v1, info:Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;
    iget-object v3, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    #setter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1, v3}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$202(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 404
    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$200(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$200(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    .line 405
    iget-object v3, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 406
    .local v0, ft:Landroid/app/FragmentTransaction;
    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$200(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 407
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 410
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v3, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 412
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "tabId"

    .prologue
    .line 416
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;

    .line 417
    .local v1, newTab:Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mLastTab:Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;

    if-eq v2, v1, :cond_2

    .line 418
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 419
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mLastTab:Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;

    if-eqz v2, :cond_0

    .line 420
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mLastTab:Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;

    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$200(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 421
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mLastTab:Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;

    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$200(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 425
    :cond_0
    if-eqz v1, :cond_1

    .line 426
    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$200(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_3

    .line 427
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mActivity:Landroid/app/Activity;

    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v1}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$300(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$400(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    #setter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1, v2}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$202(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 429
    iget v2, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mContainerId:I

    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$200(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->tag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$500(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 435
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mLastTab:Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;

    .line 436
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 439
    invoke-static {}, Lcom/android/settings/profiles/ProfilesSettings;->updateOptionsMenu()V

    .line 441
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_2
    return-void

    .line 431
    .restart local v0       #ft:Landroid/app/FragmentTransaction;
    :cond_3
    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$200(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public refreshTab(Ljava/lang/String;)V
    .locals 5
    .parameter "tabId"

    .prologue
    .line 444
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;

    .line 446
    .local v0, currentTab:Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;
    if-eqz v0, :cond_1

    .line 447
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 448
    .local v1, ft:Landroid/app/FragmentTransaction;
    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$200(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 449
    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$200(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 452
    :cond_0
    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$200(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    .line 453
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mActivity:Landroid/app/Activity;

    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v0}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$300(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$400(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    #setter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0, v2}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$202(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 455
    iget v2, p0, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->mContainerId:I

    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$200(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->tag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$500(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 461
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 464
    invoke-static {}, Lcom/android/settings/profiles/ProfilesSettings;->updateOptionsMenu()V

    .line 466
    .end local v1           #ft:Landroid/app/FragmentTransaction;
    :cond_1
    return-void

    .line 458
    .restart local v1       #ft:Landroid/app/FragmentTransaction;
    :cond_2
    #getter for: Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;->access$200(Lcom/android/settings/profiles/ProfilesSettings$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method
