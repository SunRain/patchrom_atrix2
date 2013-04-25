.class Lcom/android/settings/cyanogenmod/Weather$1;
.super Landroid/os/Handler;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/Weather;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/Weather;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/Weather$1;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 174
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 189
    :goto_0
    return-void

    .line 176
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather$1;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    #getter for: Lcom/android/settings/cyanogenmod/Weather;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/Weather;->access$000(Lcom/android/settings/cyanogenmod/Weather;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Weather$1;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    #getter for: Lcom/android/settings/cyanogenmod/Weather;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/cyanogenmod/Weather;->access$000(Lcom/android/settings/cyanogenmod/Weather;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b076b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 186
    :goto_1
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather$1;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    #getter for: Lcom/android/settings/cyanogenmod/Weather;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/Weather;->access$300(Lcom/android/settings/cyanogenmod/Weather;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather$1;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    #getter for: Lcom/android/settings/cyanogenmod/Weather;->mCustomWeatherLoc:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/Weather;->access$100(Lcom/android/settings/cyanogenmod/Weather;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, cLoc:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather$1;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    #getter for: Lcom/android/settings/cyanogenmod/Weather;->mCustomWeatherLoc:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/Weather;->access$100(Lcom/android/settings/cyanogenmod/Weather;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather$1;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    #getter for: Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/Weather;->access$200(Lcom/android/settings/cyanogenmod/Weather;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "weather_custom_location"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 183
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather$1;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    #getter for: Lcom/android/settings/cyanogenmod/Weather;->mCustomWeatherLoc:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/Weather;->access$100(Lcom/android/settings/cyanogenmod/Weather;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather$1;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    #getter for: Lcom/android/settings/cyanogenmod/Weather;->mCustomWeatherLoc:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/Weather;->access$100(Lcom/android/settings/cyanogenmod/Weather;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
