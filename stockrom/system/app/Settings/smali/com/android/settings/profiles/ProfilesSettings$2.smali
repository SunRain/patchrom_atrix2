.class Lcom/android/settings/profiles/ProfilesSettings$2;
.super Ljava/lang/Object;
.source "ProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/ProfilesSettings;->resetAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/ProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/ProfilesSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/settings/profiles/ProfilesSettings$2;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings$2;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    #getter for: Lcom/android/settings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;
    invoke-static {v0}, Lcom/android/settings/profiles/ProfilesSettings;->access$000(Lcom/android/settings/profiles/ProfilesSettings;)Landroid/app/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProfileManager;->resetAll()V

    .line 308
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings$2;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    iget-object v0, v0, Lcom/android/settings/profiles/ProfilesSettings;->mTabManager:Lcom/android/settings/profiles/ProfilesSettings$TabManager;

    invoke-static {}, Lcom/android/settings/profiles/ProfilesSettings;->access$100()Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfilesSettings$TabManager;->refreshTab(Ljava/lang/String;)V

    .line 309
    return-void
.end method
