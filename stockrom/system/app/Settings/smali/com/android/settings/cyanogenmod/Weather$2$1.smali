.class Lcom/android/settings/cyanogenmod/Weather$2$1;
.super Ljava/lang/Object;
.source "Weather.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/Weather$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/cyanogenmod/Weather$2;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/Weather$2;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/Weather$2$1;->this$1:Lcom/android/settings/cyanogenmod/Weather$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 217
    .local v1, woeid:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Weather$2$1;->this$1:Lcom/android/settings/cyanogenmod/Weather$2;

    iget-object v2, v2, Lcom/android/settings/cyanogenmod/Weather$2;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    #getter for: Lcom/android/settings/cyanogenmod/Weather;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/cyanogenmod/Weather;->access$000(Lcom/android/settings/cyanogenmod/Weather;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/Weather$2$1;->this$1:Lcom/android/settings/cyanogenmod/Weather$2;

    iget-object v3, v3, Lcom/android/settings/cyanogenmod/Weather$2;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    #getter for: Lcom/android/settings/cyanogenmod/Weather;->mCustomWeatherLoc:Landroid/preference/EditTextPreference;
    invoke-static {v3}, Lcom/android/settings/cyanogenmod/Weather;->access$100(Lcom/android/settings/cyanogenmod/Weather;)Landroid/preference/EditTextPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/weather/YahooPlaceFinder;->GeoCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 221
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 222
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 223
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Weather$2$1;->this$1:Lcom/android/settings/cyanogenmod/Weather$2;

    iget-object v2, v2, Lcom/android/settings/cyanogenmod/Weather$2;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    #getter for: Lcom/android/settings/cyanogenmod/Weather;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/cyanogenmod/Weather;->access$400(Lcom/android/settings/cyanogenmod/Weather;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 225
    return-void

    .line 219
    .end local v0           #msg:Landroid/os/Message;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
