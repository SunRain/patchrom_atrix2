.class Lcom/andrew/apollo/menu/PlaylistDialog$3;
.super Ljava/lang/Object;
.source "PlaylistDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/menu/PlaylistDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/menu/PlaylistDialog;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/menu/PlaylistDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/andrew/apollo/menu/PlaylistDialog$3;->this$0:Lcom/andrew/apollo/menu/PlaylistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog$3;->this$0:Lcom/andrew/apollo/menu/PlaylistDialog;

    invoke-virtual {v0}, Lcom/andrew/apollo/menu/PlaylistDialog;->finish()V

    .line 183
    return-void
.end method
