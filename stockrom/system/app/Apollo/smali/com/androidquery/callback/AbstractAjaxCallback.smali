.class public abstract Lcom/androidquery/callback/AbstractAjaxCallback;
.super Ljava/lang/Object;
.source "AbstractAjaxCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static AGENT:Ljava/lang/String;

.field private static final DEFAULT_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static GZIP:Z

.field private static NETWORK_POOL:I

.field private static NET_TIMEOUT:I

.field private static client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static fetchExe:Ljava/util/concurrent/ExecutorService;

.field private static lastStatus:I

.field private static ssf:Lorg/apache/http/conn/scheme/SocketFactory;

.field private static st:Lcom/androidquery/callback/Transformer;


# instance fields
.field private act:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private ah:Lcom/androidquery/auth/AccountHandle;

.field private blocked:Z

.field private cacheDir:Ljava/io/File;

.field private callback:Ljava/lang/String;

.field private completed:Z

.field private cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private encoding:Ljava/lang/String;

.field private expire:J

.field protected fileCache:Z

.field private handler:Ljava/lang/Object;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected memCache:Z

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private progress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private reauth:Z

.field private refresh:Z

.field protected result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected status:Lcom/androidquery/callback/AjaxStatus;

.field private transformer:Lcom/androidquery/callback/Transformer;

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private uiCallback:Z

.field private url:Ljava/lang/String;

.field private whandler:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 96
    const/16 v0, 0x7530

    sput v0, Lcom/androidquery/callback/AbstractAjaxCallback;->NET_TIMEOUT:I

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->AGENT:Ljava/lang/String;

    .line 98
    const/4 v0, 0x4

    sput v0, Lcom/androidquery/callback/AbstractAjaxCallback;->NETWORK_POOL:I

    .line 99
    sput-boolean v3, Lcom/androidquery/callback/AbstractAjaxCallback;->GZIP:Z

    .line 424
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const-class v1, Ljava/lang/Object;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v2, Lcom/androidquery/callback/AjaxStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->DEFAULT_SIG:[Ljava/lang/Class;

    .line 1291
    const/16 v0, 0xc8

    sput v0, Lcom/androidquery/callback/AbstractAjaxCallback;->lastStatus:I

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->uiCallback:Z

    .line 94
    return-void
.end method

.method private afterWork()V
    .locals 2

    .prologue
    .line 1006
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->memCache:Z

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->memPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1010
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->callback()V

    .line 1011
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->clear()V

    .line 1012
    return-void
.end method

.method private backgroundWork()V
    .locals 1

    .prologue
    .line 816
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->refresh:Z

    if-nez v0, :cond_0

    .line 818
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    if-eqz v0, :cond_0

    .line 819
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->fileWork()V

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 824
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->datastoreWork()V

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 828
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->networkWork()V

    .line 832
    :cond_2
    return-void
.end method

.method public static cancel()V
    .locals 1

    .prologue
    .line 1042
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 1043
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1044
    const/4 v0, 0x0

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    .line 1047
    :cond_0
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearTasks()V

    .line 1048
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->whandler:Ljava/lang/ref/Reference;

    .line 138
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->handler:Ljava/lang/Object;

    .line 139
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->progress:Ljava/lang/ref/WeakReference;

    .line 140
    return-void
.end method

.method private datastoreWork()V
    .locals 2

    .prologue
    .line 858
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->datastoreGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    .line 860
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    .line 863
    :cond_0
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "job"

    .prologue
    .line 1018
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 1019
    sget v0, Lcom/androidquery/callback/AbstractAjaxCallback;->NETWORK_POOL:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    .line 1022
    :cond_0
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1023
    return-void
.end method

.method private static extractParams(Landroid/net/Uri;)Ljava/util/Map;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 958
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 959
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 961
    array-length v4, v3

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_0

    .line 969
    return-object v2

    .line 961
    :cond_0
    aget-object v5, v3, v0

    .line 962
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 963
    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    .line 964
    aget-object v6, v5, v1

    aget-object v5, v5, v8

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 965
    :cond_2
    array-length v6, v5

    if-ne v6, v8, :cond_1

    .line 966
    aget-object v5, v5, v1

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static extractUrl(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 950
    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    .line 951
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 953
    :cond_0
    return-object v0
.end method

.method private filePut()V
    .locals 5

    .prologue
    .line 920
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    if-eqz v3, :cond_1

    .line 922
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v3}, Lcom/androidquery/callback/AjaxStatus;->getData()[B

    move-result-object v0

    .line 925
    .local v0, data:[B
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v3}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 927
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCacheFile()Ljava/io/File;

    move-result-object v2

    .line 928
    .local v2, file:Ljava/io/File;
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v3}, Lcom/androidquery/callback/AjaxStatus;->getInvalid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 930
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->filePut(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    .end local v2           #file:Ljava/io/File;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/androidquery/callback/AjaxStatus;->data([B)Lcom/androidquery/callback/AjaxStatus;

    .line 944
    .end local v0           #data:[B
    :cond_1
    return-void

    .line 932
    .restart local v0       #data:[B
    .restart local v2       #file:Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 933
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 938
    .end local v2           #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 939
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private fileWork()V
    .locals 5

    .prologue
    .line 843
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cacheDir:Ljava/io/File;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCacheUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 846
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 848
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v1, v0, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    .line 850
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxStatus;->time(Ljava/util/Date;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    .line 854
    :cond_0
    return-void
.end method

.method private getCacheUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 835
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androidquery/auth/AccountHandle;->getCacheUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 838
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 6

    .prologue
    .line 1116
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v0, :cond_0

    .line 1118
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1119
    sget v0, Lcom/androidquery/callback/AbstractAjaxCallback;->NET_TIMEOUT:I

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1120
    sget v0, Lcom/androidquery/callback/AbstractAjaxCallback;->NET_TIMEOUT:I

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1122
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    sget v2, Lcom/androidquery/callback/AbstractAjaxCallback;->NETWORK_POOL:I

    invoke-direct {v0, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 1126
    const/16 v0, 0x2000

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 1128
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1129
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1130
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->ssf:Lorg/apache/http/conn/scheme/SocketFactory;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    :goto_0
    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v0, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1132
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 1133
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v2, Lcom/androidquery/callback/AbstractAjaxCallback;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 1136
    :cond_0
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0

    .line 1130
    :cond_1
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->ssf:Lorg/apache/http/conn/scheme/SocketFactory;

    goto :goto_0
.end method

.method protected static getLastStatus()I
    .locals 1

    .prologue
    .line 1293
    sget v0, Lcom/androidquery/callback/AbstractAjaxCallback;->lastStatus:I

    return v0
.end method

.method private httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1142
    sget-object v1, Lcom/androidquery/callback/AbstractAjaxCallback;->AGENT:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1143
    const-string v1, "User-Agent"

    sget-object v2, Lcom/androidquery/callback/AbstractAjaxCallback;->AGENT:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    :cond_0
    if-eqz p3, :cond_1

    .line 1147
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1153
    :cond_1
    sget-boolean v1, Lcom/androidquery/callback/AbstractAjaxCallback;->GZIP:Z

    if-eqz v1, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    const-string v1, "Accept-Encoding"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1154
    :cond_3
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {p1, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    :cond_4
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->makeCookie()Ljava/lang/String;

    move-result-object v1

    .line 1158
    if-eqz v1, :cond_5

    .line 1159
    const-string v2, "Cookie"

    invoke-interface {p1, v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    :cond_5
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v1, :cond_6

    .line 1163
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    invoke-virtual {v1, p0, p1}, Lcom/androidquery/auth/AccountHandle;->applyToken(Lcom/androidquery/callback/AbstractAjaxCallback;Lorg/apache/http/HttpRequest;)V

    .line 1166
    :cond_6
    invoke-static {}, Lcom/androidquery/callback/AbstractAjaxCallback;->getClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v4

    .line 1168
    new-instance v5, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v5}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 1169
    new-instance v1, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v1}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 1170
    const-string v2, "http.cookie-store"

    invoke-interface {v5, v2, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1173
    invoke-virtual {v4, p1, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 1175
    const/4 v1, 0x0

    check-cast v1, [B

    .line 1179
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 1180
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    .line 1181
    const/4 v3, 0x0

    .line 1184
    const/16 v2, 0xc8

    if-lt v7, v2, :cond_7

    const/16 v2, 0x12c

    if-lt v7, v2, :cond_a

    .line 1187
    :cond_7
    :try_start_0
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 1188
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->toBytes(Ljava/io/InputStream;)[B

    move-result-object v9

    .line 1189
    new-instance v2, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v2, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    :try_start_1
    const-string v3, "error"

    invoke-static {v3, v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v1

    move-object v1, v2

    move-object/from16 v2, p2

    .line 1220
    :goto_1
    const-string v9, "response"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1221
    if-eqz v3, :cond_8

    .line 1222
    array-length v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1226
    :cond_8
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/androidquery/callback/AjaxStatus;->error(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxStatus;->redirect(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxStatus;->time(Ljava/util/Date;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/androidquery/callback/AjaxStatus;->data([B)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/androidquery/callback/AjaxStatus;->client(Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/androidquery/callback/AjaxStatus;->context(Lorg/apache/http/protocol/HttpContext;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v1

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxStatus;->headers([Lorg/apache/http/Header;)Lcom/androidquery/callback/AjaxStatus;

    .line 1229
    return-void

    .line 1147
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1148
    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1191
    :catch_0
    move-exception v2

    move-object v13, v2

    move-object v2, v3

    move-object v3, v13

    .line 1192
    :goto_2
    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    move-object v3, v1

    move-object v1, v2

    move-object/from16 v2, p2

    goto :goto_1

    .line 1198
    :cond_a
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 1200
    const-string v1, "http.target_host"

    invoke-interface {v5, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpHost;

    .line 1201
    const-string v2, "http.request"

    invoke-interface {v5, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 1202
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1204
    const/16 v2, 0x20

    const/high16 v10, 0x1

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1206
    new-instance v10, Lcom/androidquery/util/PredefinedBAOS;

    invoke-direct {v10, v2}, Lcom/androidquery/util/PredefinedBAOS;-><init>(I)V

    .line 1208
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v2

    .line 1209
    if-eqz v2, :cond_b

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v11, "gzip"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1210
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1211
    invoke-static {v2, v10}, Lcom/androidquery/util/AQUtility;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1217
    :goto_3
    invoke-virtual {v10}, Lcom/androidquery/util/PredefinedBAOS;->toByteArray()[B

    move-result-object v2

    move-object v13, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_1

    .line 1213
    :cond_b
    invoke-interface {v9, v10}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_3

    .line 1191
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method private httpGet(Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1058
    const-string v0, "get"

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1059
    invoke-static {p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->patchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1061
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1063
    invoke-direct {p0, v1, v0, p2, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    .line 1065
    return-void
.end method

.method private httpMulti(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1344
    const-string v0, "multipart"

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1350
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1353
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1355
    sget v1, Lcom/androidquery/callback/AbstractAjaxCallback;->NET_TIMEOUT:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1357
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1358
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1359
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1361
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1362
    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    const-string v1, "Content-Type"

    const-string v2, "multipart/form-data;charset=utf-8;boundary=*****"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    if-eqz p2, :cond_0

    .line 1366
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1371
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->makeCookie()Ljava/lang/String;

    move-result-object v1

    .line 1372
    if-eqz v1, :cond_1

    .line 1373
    const-string v2, "Cookie"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    :cond_1
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1378
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1384
    const-string v1, "--*****--\r\n"

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1385
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 1386
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 1388
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1390
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 1391
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    move-object v1, v3

    .line 1393
    check-cast v1, [B

    .line 1395
    const/16 v5, 0xc8

    if-lt v2, v5, :cond_2

    const/16 v5, 0x12c

    if-ge v2, v5, :cond_2

    .line 1399
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1400
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->toBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 1404
    :cond_2
    const-string v0, "response"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1405
    if-eqz v1, :cond_3

    .line 1406
    array-length v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1409
    :cond_3
    invoke-virtual {p4, v2}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidquery/callback/AjaxStatus;->redirect(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Lcom/androidquery/callback/AjaxStatus;->time(Ljava/util/Date;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->data([B)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/androidquery/callback/AjaxStatus;->client(Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/androidquery/callback/AjaxStatus;

    .line 1413
    return-void

    .line 1366
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1367
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1378
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1380
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v2, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeObject(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private httpPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1070
    const-string v0, "post"

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1073
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1077
    const-string v0, "%entity"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1079
    instance-of v2, v0, Lorg/apache/http/HttpEntity;

    if-eqz v2, :cond_1

    .line 1080
    check-cast v0, Lorg/apache/http/HttpEntity;

    .line 1097
    :goto_0
    if-eqz p2, :cond_0

    const-string v2, "Content-Type"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1098
    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    :cond_0
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1102
    invoke-direct {p0, v1, p1, p2, p4}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    .line 1105
    return-void

    .line 1083
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1085
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1092
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 1085
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1086
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1087
    if-eqz v4, :cond_2

    .line 1088
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v0, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private isActive()Z
    .locals 3

    .prologue
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v1, 0x1

    .line 729
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->act:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    .line 737
    :cond_0
    :goto_0
    return v1

    .line 731
    :cond_1
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->act:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 733
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 734
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isMultiPart(Ljava/util/Map;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1333
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1339
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1333
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1334
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1335
    .local v1, value:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1336
    instance-of v3, v1, Ljava/io/File;

    if-nez v3, :cond_2

    instance-of v3, v1, [B

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private makeCookie()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1476
    :goto_0
    return-object v0

    .line 1461
    :cond_1
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1465
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1476
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1466
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1467
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1468
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1472
    const-string v0, "; "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private network()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 976
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    .line 977
    .local v2, url:Ljava/lang/String;
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->params:Ljava/util/Map;

    .line 980
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_0

    .line 981
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 982
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->extractUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 983
    invoke-static {v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->extractParams(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    .line 986
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v3, :cond_1

    .line 987
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    invoke-virtual {v3, v2}, Lcom/androidquery/auth/AccountHandle;->getNetworkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 990
    :cond_1
    if-nez v0, :cond_2

    .line 991
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {p0, v2, v3, v4}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpGet(Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    .line 1001
    :goto_0
    return-void

    .line 993
    :cond_2
    invoke-static {v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->isMultiPart(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 994
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpMulti(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0

    .line 996
    :cond_3
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0
.end method

.method private networkWork()V
    .locals 4

    .prologue
    const/16 v3, -0x65

    .line 868
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0, v3}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    .line 911
    :goto_0
    return-void

    .line 874
    :cond_0
    const/4 v0, 0x0

    check-cast v0, [B

    .line 878
    :try_start_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->network()V

    .line 880
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v1, p0, v2}, Lcom/androidquery/auth/AccountHandle;->expired(Lcom/androidquery/callback/AbstractAjaxCallback;Lcom/androidquery/callback/AjaxStatus;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->reauth:Z

    if-nez v1, :cond_1

    .line 881
    const-string v1, "reauth needed"

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v2}, Lcom/androidquery/callback/AjaxStatus;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 882
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->reauth:Z

    .line 883
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    invoke-virtual {v1, p0}, Lcom/androidquery/auth/AccountHandle;->reauth(Lcom/androidquery/callback/AbstractAjaxCallback;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 884
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->network()V

    .line 891
    :cond_1
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v1}, Lcom/androidquery/callback/AjaxStatus;->getData()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 900
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v0, v1, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 905
    :goto_2
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 906
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/16 v1, -0x67

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    const-string v1, "transform error"

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    .line 909
    :cond_2
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    sput v0, Lcom/androidquery/callback/AbstractAjaxCallback;->lastStatus:I

    .line 910
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    goto :goto_0

    .line 886
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxStatus;->reauth(Z)Lcom/androidquery/callback/AjaxStatus;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 893
    :catch_0
    move-exception v1

    .line 894
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 895
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v1, v3}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v1

    const-string v2, "network error"

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-object v1, v0

    goto :goto_1

    .line 901
    :catch_1
    move-exception v0

    .line 902
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static patchUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1052
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    const-string v2, "%7C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1053
    return-object v0
.end method

.method private self()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    return-object p0
.end method

.method public static setAgent(Ljava/lang/String;)V
    .locals 0
    .parameter "agent"

    .prologue
    .line 157
    sput-object p0, Lcom/androidquery/callback/AbstractAjaxCallback;->AGENT:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public static setGZip(Z)V
    .locals 0
    .parameter "gzip"

    .prologue
    .line 166
    sput-boolean p0, Lcom/androidquery/callback/AbstractAjaxCallback;->GZIP:Z

    .line 167
    return-void
.end method

.method public static setNetworkLimit(I)V
    .locals 2
    .parameter "limit"

    .prologue
    .line 1032
    const/4 v0, 0x1

    const/16 v1, 0x19

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/androidquery/callback/AbstractAjaxCallback;->NETWORK_POOL:I

    .line 1033
    const/4 v0, 0x0

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    .line 1034
    return-void
.end method

.method public static setSSF(Lorg/apache/http/conn/scheme/SocketFactory;)V
    .locals 1
    .parameter "sf"

    .prologue
    .line 1109
    sput-object p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ssf:Lorg/apache/http/conn/scheme/SocketFactory;

    .line 1110
    const/4 v0, 0x0

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 1111
    return-void
.end method

.method public static setTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 148
    sput p0, Lcom/androidquery/callback/AbstractAjaxCallback;->NET_TIMEOUT:I

    .line 149
    return-void
.end method

.method public static setTransformer(Lcom/androidquery/callback/Transformer;)V
    .locals 0
    .parameter "transformer"

    .prologue
    .line 181
    sput-object p0, Lcom/androidquery/callback/AbstractAjaxCallback;->st:Lcom/androidquery/callback/Transformer;

    .line 182
    return-void
.end method

.method private wake()V
    .locals 1

    .prologue
    .line 453
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->blocked:Z

    if-nez v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 455
    :cond_0
    monitor-enter p0

    .line 457
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 458
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private work(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 759
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->memGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 761
    .local v0, object:Ljava/lang/Object;,"TT;"
    if-eqz v0, :cond_0

    .line 762
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    .line 763
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    .line 764
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->callback()V

    .line 771
    :goto_0
    return-void

    .line 767
    :cond_0
    iget-boolean v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cacheDir:Ljava/io/File;

    .line 769
    :cond_1
    invoke-static {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1432
    const-string v0, "--*****\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1434
    const-string v1, " filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1433
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1435
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1437
    invoke-static {p2, p0}, Lcom/androidquery/util/AQUtility;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1439
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1441
    return-void
.end method

.method private static writeField(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1445
    const-string v0, "--*****\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1447
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1448
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1450
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1451
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 1453
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1454
    return-void
.end method

.method private static writeObject(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "dos"
    .parameter "name"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1417
    if-nez p2, :cond_0

    .line 1427
    .end local p2
    :goto_0
    return-void

    .line 1419
    .restart local p2
    :cond_0
    instance-of v0, p2, Ljava/io/File;

    if-eqz v0, :cond_1

    .line 1420
    new-instance v0, Ljava/io/FileInputStream;

    check-cast p2, Ljava/io/File;

    .end local p2
    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    .line 1421
    .restart local p2
    :cond_1
    instance-of v0, p2, [B

    if-eqz v0, :cond_2

    .line 1422
    new-instance v0, Ljava/io/ByteArrayInputStream;

    check-cast p2, [B

    .end local p2
    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0, p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    .line 1424
    .restart local p2
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeField(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter "cacheDir"
    .parameter "url"

    .prologue
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 668
    iget-wide v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->expire:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    move-object v2, v3

    .line 679
    :cond_0
    :goto_0
    return-object v2

    .line 670
    :cond_1
    invoke-static {p1, p2}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 672
    .local v2, file:Ljava/io/File;
    if-eqz v2, :cond_0

    iget-wide v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->expire:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 674
    .local v0, diff:J
    iget-wide v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->expire:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    move-object v2, v3

    .line 675
    goto :goto_0
.end method

.method public async(Landroid/app/Activity;)V
    .locals 1
    .parameter "act"

    .prologue
    .line 692
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->act:Ljava/lang/ref/WeakReference;

    .line 693
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/content/Context;)V

    .line 695
    return-void
.end method

.method public async(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 706
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    if-nez v0, :cond_0

    .line 707
    new-instance v0, Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxStatus;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    .line 708
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->redirect(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    iget-boolean v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->refresh:Z

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->refresh(Z)Lcom/androidquery/callback/AjaxStatus;

    .line 711
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->showProgress(Z)V

    .line 713
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    invoke-virtual {v0}, Lcom/androidquery/auth/AccountHandle;->authenticated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 716
    const-string v0, "auth needed"

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 717
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    invoke-virtual {v0, p0}, Lcom/androidquery/auth/AccountHandle;->auth(Lcom/androidquery/callback/AbstractAjaxCallback;)V

    .line 724
    :goto_0
    return-void

    .line 722
    :cond_1
    invoke-direct {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->work(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public auth(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 1241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const-string v0, "g."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    new-instance v0, Lcom/androidquery/auth/GoogleHandle;

    invoke-direct {v0, p1, p2, p3}, Lcom/androidquery/auth/GoogleHandle;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 1245
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public auth(Lcom/androidquery/auth/AccountHandle;)Ljava/lang/Object;
    .locals 1
    .parameter "handle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/auth/AccountHandle;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 1257
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 1258
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public block()V
    .locals 2

    .prologue
    .line 475
    invoke-static {}, Lcom/androidquery/util/AQUtility;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot block UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_0
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->completed:Z

    if-eqz v0, :cond_1

    .line 490
    :goto_0
    return-void

    .line 482
    :cond_1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->blocked:Z

    .line 485
    sget v0, Lcom/androidquery/callback/AbstractAjaxCallback;->NET_TIMEOUT:I

    add-int/lit16 v0, v0, 0x1388

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 482
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 487
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected cacheAvailable(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 774
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method callback()V
    .locals 9

    .prologue
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 429
    invoke-virtual {p0, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->showProgress(Z)V

    .line 431
    iput-boolean v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->completed:Z

    .line 433
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->callback:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getHandler()Ljava/lang/Object;

    move-result-object v0

    .line 437
    .local v0, handler:Ljava/lang/Object;
    new-array v4, v6, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v3

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    aput-object v1, v4, v2

    const-class v1, Lcom/androidquery/callback/AjaxStatus;

    aput-object v1, v4, v8

    .line 438
    .local v4, AJAX_SIG:[Ljava/lang/Class;
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->callback:Ljava/lang/String;

    sget-object v5, Lcom/androidquery/callback/AbstractAjaxCallback;->DEFAULT_SIG:[Ljava/lang/Class;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    aput-object v7, v6, v8

    invoke-static/range {v0 .. v6}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .end local v0           #handler:Ljava/lang/Object;
    .end local v4           #AJAX_SIG:[Ljava/lang/Class;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->filePut()V

    .line 447
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->wake()V

    .line 448
    invoke-static {}, Lcom/androidquery/util/AQUtility;->debugNotify()V

    .line 449
    return-void

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v1, v2, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0
.end method

.method public callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0
    .parameter "url"
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    .prologue
    .line 502
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    .local p2, object:Ljava/lang/Object;,"TT;"
    return-void
.end method

.method public cookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected datastoreGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public encoding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    .line 362
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public expire(J)Ljava/lang/Object;
    .locals 1
    .parameter "expire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TK;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-wide p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->expire:J

    .line 319
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public failure(ILjava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "message"

    .prologue
    .line 743
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0, p1}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    .line 745
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->callback()V

    .line 748
    :cond_0
    return-void
.end method

.method public fileCache(Z)Ljava/lang/Object;
    .locals 1
    .parameter "cache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-boolean p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    .line 274
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .locals 3
    .parameter "url"
    .parameter "file"
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 506
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->toBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 507
    .local v0, data:[B
    invoke-virtual {p0, p1, v0, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 510
    .end local v0           #data:[B
    :goto_0
    return-object v2

    .line 508
    :catch_0
    move-exception v1

    .line 509
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 510
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected filePut(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;[B)V
    .locals 2
    .parameter "url"
    .parameter
    .parameter "file"
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/io/File;",
            "[B)V"
        }
    .end annotation

    .prologue
    .line 660
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    .local p2, object:Ljava/lang/Object;,"TT;"
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    const-wide/16 v0, 0x0

    invoke-static {p3, p4, v0, v1}, Lcom/androidquery/util/AQUtility;->storeAsync(Ljava/io/File;[BJ)V

    goto :goto_0
.end method

.method protected getCacheFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 914
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cacheDir:Ljava/io/File;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCacheUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getCallback()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1287
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->callback:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1323
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1276
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->handler:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->handler:Ljava/lang/Object;

    .line 1278
    :goto_0
    return-object v0

    .line 1277
    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->whandler:Ljava/lang/ref/Reference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1278
    :cond_1
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->whandler:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1303
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Lcom/androidquery/callback/AjaxStatus;
    .locals 1

    .prologue
    .line 1314
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1267
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    return-object v0
.end method

.method public handler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "handler"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->handler:Ljava/lang/Object;

    .line 218
    iput-object p2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->callback:Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->whandler:Ljava/lang/ref/Reference;

    .line 220
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public memCache(Z)Ljava/lang/Object;
    .locals 1
    .parameter "cache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-boolean p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->memCache:Z

    .line 286
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected memGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 651
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected memPut(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 656
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    .local p2, object:Ljava/lang/Object;,"TT;"
    return-void
.end method

.method public param(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->params:Ljava/util/Map;

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public params(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)TK;"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->params:Ljava/util/Map;

    .line 394
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public progress(Landroid/app/Dialog;)Ljava/lang/Object;
    .locals 1
    .parameter "dialog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public progress(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public progress(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "progress"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    if-eqz p1, :cond_0

    .line 419
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->progress:Ljava/lang/ref/WeakReference;

    .line 421
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Z)Ljava/lang/Object;
    .locals 1
    .parameter "refresh"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-boolean p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->refresh:Z

    .line 297
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 786
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v1}, Lcom/androidquery/callback/AjaxStatus;->getDone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 789
    :try_start_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->backgroundWork()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :goto_0
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v1}, Lcom/androidquery/callback/AjaxStatus;->getReauth()Z

    move-result v1

    if-nez v1, :cond_0

    .line 797
    iget-boolean v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->uiCallback:Z

    if-eqz v1, :cond_1

    .line 798
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->post(Ljava/lang/Runnable;)V

    .line 810
    :cond_0
    :goto_1
    return-void

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, e:Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 792
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/16 v2, -0x65

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    goto :goto_0

    .line 800
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_1
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->afterWork()V

    goto :goto_1

    .line 804
    :cond_2
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->afterWork()V

    goto :goto_1
.end method

.method protected showProgress(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 522
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->progress:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 555
    :cond_0
    return-void
.end method

.method protected transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 560
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-object v1

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v2, Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    invoke-direct {v2, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :try_start_1
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    move-object v1, v0

    .line 575
    goto :goto_0

    .line 571
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 572
    :goto_2
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 573
    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v2, Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 583
    :try_start_2
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    invoke-direct {v0, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 584
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    move-object v1, v0

    .line 588
    goto :goto_0

    .line 585
    :catch_1
    move-exception v0

    .line 586
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_3

    .line 591
    :cond_3
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 595
    :try_start_3
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    invoke-direct {v0, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v0

    goto :goto_0

    .line 596
    :catch_2
    move-exception v0

    .line 597
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 602
    :cond_4
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v2, Lcom/androidquery/util/XmlDom;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 607
    :try_start_4
    new-instance v0, Lcom/androidquery/util/XmlDom;

    invoke-direct {v0, p2}, Lcom/androidquery/util/XmlDom;-><init>([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v1, v0

    goto :goto_0

    .line 608
    :catch_3
    move-exception v0

    .line 609
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 616
    :cond_5
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v2, [B

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v1, p2

    .line 617
    goto/16 :goto_0

    .line 620
    :cond_6
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 621
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    .line 625
    :cond_7
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v2, Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 626
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 628
    :try_start_5
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v1, v0

    .line 633
    goto/16 :goto_0

    .line 629
    :catch_4
    move-exception v0

    .line 630
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 636
    :cond_8
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->transformer:Lcom/androidquery/callback/Transformer;

    if-eqz v0, :cond_9

    .line 637
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->transformer:Lcom/androidquery/callback/Transformer;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/androidquery/callback/Transformer;->transform(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    .line 640
    :cond_9
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->st:Lcom/androidquery/callback/Transformer;

    if-eqz v0, :cond_0

    .line 641
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->st:Lcom/androidquery/callback/Transformer;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/androidquery/callback/Transformer;->transform(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    .line 571
    :catch_5
    move-exception v0

    goto/16 :goto_2
.end method

.method public transformer(Lcom/androidquery/callback/Transformer;)Ljava/lang/Object;
    .locals 1
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/Transformer;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->transformer:Lcom/androidquery/callback/Transformer;

    .line 263
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public type(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)TK;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    .line 245
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public uiCallback(Z)Ljava/lang/Object;
    .locals 1
    .parameter "uiCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-boolean p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->uiCallback:Z

    .line 308
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public url(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    .line 231
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "handler"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, this:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<TT;TK;>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->whandler:Ljava/lang/ref/Reference;

    .line 204
    iput-object p2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->callback:Ljava/lang/String;

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->handler:Ljava/lang/Object;

    .line 206
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
