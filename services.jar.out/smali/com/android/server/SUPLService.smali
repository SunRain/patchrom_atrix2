.class public Lcom/android/server/SUPLService;
.super Landroid/os/Binder;
.source "SUPLService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SUPLService$1;,
        Lcom/android/server/SUPLService$SUPLThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SUPLService"

.field private static sServiceInstance:Lcom/android/server/SUPLService;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/server/SUPLService;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/SUPLService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/SUPLService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/SUPLService;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/server/SUPLService;->sServiceInstance:Lcom/android/server/SUPLService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/SUPLService;)Lcom/android/server/SUPLService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    sput-object p0, Lcom/android/server/SUPLService;->sServiceInstance:Lcom/android/server/SUPLService;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/SUPLService;
    .locals 1
    .parameter "context"

    .prologue
    .line 98
    invoke-static {p0}, Lcom/android/server/SUPLService$SUPLThread;->getServiceInstance(Landroid/content/Context;)Lcom/android/server/SUPLService;

    move-result-object v0

    return-object v0
.end method
