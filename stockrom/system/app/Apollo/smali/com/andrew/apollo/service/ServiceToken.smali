.class public Lcom/andrew/apollo/service/ServiceToken;
.super Ljava/lang/Object;
.source "ServiceToken.java"


# instance fields
.field public mWrappedContext:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/andrew/apollo/service/ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 11
    return-void
.end method
