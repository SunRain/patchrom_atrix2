.class Lcom/andrew/apollo/menu/PlaylistDialog$1;
.super Ljava/lang/Object;
.source "PlaylistDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/menu/PlaylistDialog;
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
    .line 65
    iput-object p1, p0, Lcom/andrew/apollo/menu/PlaylistDialog$1;->this$0:Lcom/andrew/apollo/menu/PlaylistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog$1;->this$0:Lcom/andrew/apollo/menu/PlaylistDialog;

    #getter for: Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylist:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/andrew/apollo/menu/PlaylistDialog;->access$000(Lcom/andrew/apollo/menu/PlaylistDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog$1;->this$0:Lcom/andrew/apollo/menu/PlaylistDialog;

    iget-object v2, p0, Lcom/andrew/apollo/menu/PlaylistDialog$1;->this$0:Lcom/andrew/apollo/menu/PlaylistDialog;

    #getter for: Lcom/andrew/apollo/menu/PlaylistDialog;->mRenameId:J
    invoke-static {v2}, Lcom/andrew/apollo/menu/PlaylistDialog;->access$100(Lcom/andrew/apollo/menu/PlaylistDialog;)J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Lcom/andrew/apollo/utils/MusicUtils;->renamePlaylist(Landroid/content/Context;JLjava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog$1;->this$0:Lcom/andrew/apollo/menu/PlaylistDialog;

    invoke-virtual {v1}, Lcom/andrew/apollo/menu/PlaylistDialog;->finish()V

    .line 73
    return-void
.end method
