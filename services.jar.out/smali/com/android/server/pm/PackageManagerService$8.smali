.class Lcom/android/server/pm/PackageManagerService$8;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7997
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$8;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$8;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$8;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 7999
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v3, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8001
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 8002
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$8;->val$packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/pm/PackageManagerService$8;->val$userId:I

    #calls: Lcom/android/server/pm/PackageManagerService;->clearApplicationUserDataLI(Ljava/lang/String;I)Z
    invoke-static {v3, v5, v6}, Lcom/android/server/pm/PackageManagerService;->access$3500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    move-result v2

    .line 8003
    .local v2, succeeded:Z
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8004
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$8;->val$packageName:Ljava/lang/String;

    const/4 v5, 0x1

    #calls: Lcom/android/server/pm/PackageManagerService;->clearExternalStorageDataSync(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$3600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)V

    .line 8005
    if-eqz v2, :cond_0

    .line 8007
    const-string v3, "devicestoragemonitor"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceStorageMonitorService;

    .line 8009
    .local v0, dsm:Lcom/android/server/DeviceStorageMonitorService;
    if-eqz v0, :cond_0

    .line 8010
    invoke-virtual {v0}, Lcom/android/server/DeviceStorageMonitorService;->updateMemory()V

    .line 8013
    .end local v0           #dsm:Lcom/android/server/DeviceStorageMonitorService;
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$8;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v3, :cond_1

    .line 8015
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$8;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$8;->val$packageName:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8020
    :cond_1
    :goto_0
    return-void

    .line 8003
    .end local v2           #succeeded:Z
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 8016
    .restart local v2       #succeeded:Z
    :catch_0
    move-exception v1

    .line 8017
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "PackageManager"

    const-string v4, "Observer no longer exists."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
