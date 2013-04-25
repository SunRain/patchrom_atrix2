.class Lcom/android/settings/cyanogenmod/CIDLogoActivity$1;
.super Ljava/lang/Object;
.source "CIDLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/CIDLogoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/CIDLogoActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/CIDLogoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/CIDLogoActivity$1;->this$0:Lcom/android/settings/cyanogenmod/CIDLogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/CIDLogoActivity$1;->this$0:Lcom/android/settings/cyanogenmod/CIDLogoActivity;

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/CIDLogoActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/CIDLogoActivity$1;->this$0:Lcom/android/settings/cyanogenmod/CIDLogoActivity;

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/CIDLogoActivity;->mContent:Landroid/widget/ImageView;

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    return-void
.end method
