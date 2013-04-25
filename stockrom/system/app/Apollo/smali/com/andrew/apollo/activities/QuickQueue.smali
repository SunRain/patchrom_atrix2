.class public Lcom/andrew/apollo/activities/QuickQueue;
.super Landroid/support/v4/app/FragmentActivity;
.source "QuickQueue.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/activities/QuickQueue;->setVolumeControlStream(I)V

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "_id"

    const-wide/16 v2, -0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 34
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/QuickQueue;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    new-instance v3, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;

    invoke-direct {v3, v0}, Lcom/andrew/apollo/grid/fragments/QuickQueueFragment;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 36
    return-void
.end method
