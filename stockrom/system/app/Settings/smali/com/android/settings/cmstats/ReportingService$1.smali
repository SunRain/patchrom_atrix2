.class Lcom/android/settings/cmstats/ReportingService$1;
.super Ljava/lang/Thread;
.source "ReportingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cmstats/ReportingService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cmstats/ReportingService;


# direct methods
.method constructor <init>(Lcom/android/settings/cmstats/ReportingService;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/cmstats/ReportingService$1;->this$0:Lcom/android/settings/cmstats/ReportingService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/cmstats/ReportingService$1;->this$0:Lcom/android/settings/cmstats/ReportingService;

    #calls: Lcom/android/settings/cmstats/ReportingService;->report()V
    invoke-static {v0}, Lcom/android/settings/cmstats/ReportingService;->access$000(Lcom/android/settings/cmstats/ReportingService;)V

    .line 61
    return-void
.end method
