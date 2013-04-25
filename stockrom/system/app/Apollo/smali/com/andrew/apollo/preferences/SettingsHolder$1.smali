.class Lcom/andrew/apollo/preferences/SettingsHolder$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/preferences/SettingsHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/preferences/SettingsHolder;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/preferences/SettingsHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/andrew/apollo/preferences/SettingsHolder$1;->this$0:Lcom/andrew/apollo/preferences/SettingsHolder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/andrew/apollo/preferences/SettingsHolder$1;->this$0:Lcom/andrew/apollo/preferences/SettingsHolder;

    invoke-virtual {v0}, Lcom/andrew/apollo/preferences/SettingsHolder;->initActionBar()V

    .line 101
    return-void
.end method
