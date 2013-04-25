.class public Lcom/android/settings/cyanogenmod/ChangeLog;
.super Lcom/android/internal/app/AlertActivity;
.source "ChangeLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/ChangeLog;)Lcom/android/internal/app/AlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ChangeLog;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 92
    const v0, 0x7f0b08b6

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ChangeLog;->finish()V

    .line 95
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/4 v9, 0x0

    .line 46
    .local v9, inputReader:Ljava/io/InputStreamReader;
    const/4 v6, 0x0

    .line 48
    .local v6, data:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v2, 0x800

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 49
    .end local v6           #data:Ljava/lang/StringBuilder;
    .local v7, data:Ljava/lang/StringBuilder;
    const/16 v2, 0x800

    :try_start_1
    new-array v13, v2, [C

    .line 51
    .local v13, tmp:[C
    new-instance v10, Ljava/io/FileReader;

    const-string v2, "/system/etc/CHANGELOG-CM.txt"

    invoke-direct {v10, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 52
    .end local v9           #inputReader:Ljava/io/InputStreamReader;
    .local v10, inputReader:Ljava/io/InputStreamReader;
    :goto_0
    :try_start_2
    invoke-virtual {v10, v13}, Ljava/io/InputStreamReader;->read([C)I

    move-result v11

    .local v11, numRead:I
    if-ltz v11, :cond_1

    .line 53
    const/4 v2, 0x0

    invoke-virtual {v7, v13, v2, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 55
    .end local v11           #numRead:I
    :catch_0
    move-exception v8

    move-object v6, v7

    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    move-object v9, v10

    .line 56
    .end local v10           #inputReader:Ljava/io/InputStreamReader;
    .end local v13           #tmp:[C
    .local v8, e:Ljava/io/IOException;
    .restart local v9       #inputReader:Ljava/io/InputStreamReader;
    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/ChangeLog;->showErrorAndFinish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    if-eqz v9, :cond_0

    .line 61
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 89
    .end local v8           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void

    .line 60
    .end local v6           #data:Ljava/lang/StringBuilder;
    .end local v9           #inputReader:Ljava/io/InputStreamReader;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    .restart local v10       #inputReader:Ljava/io/InputStreamReader;
    .restart local v11       #numRead:I
    .restart local v13       #tmp:[C
    :cond_1
    if-eqz v10, :cond_2

    .line 61
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 67
    :cond_2
    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 68
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/ChangeLog;->showErrorAndFinish()V

    move-object v6, v7

    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    move-object v9, v10

    .line 69
    .end local v10           #inputReader:Ljava/io/InputStreamReader;
    .restart local v9       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_2

    .line 59
    .end local v11           #numRead:I
    .end local v13           #tmp:[C
    :catchall_0
    move-exception v1

    .line 60
    :goto_4
    if-eqz v9, :cond_3

    .line 61
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 64
    :cond_3
    :goto_5
    throw v1

    .line 72
    .end local v6           #data:Ljava/lang/StringBuilder;
    .end local v9           #inputReader:Ljava/io/InputStreamReader;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    .restart local v10       #inputReader:Ljava/io/InputStreamReader;
    .restart local v11       #numRead:I
    .restart local v13       #tmp:[C
    :cond_4
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, webView:Landroid/webkit/WebView;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/plain"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/android/settings/cyanogenmod/ChangeLog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/cyanogenmod/ChangeLog$1;-><init>(Lcom/android/settings/cyanogenmod/ChangeLog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 84
    iget-object v12, p0, Lcom/android/settings/cyanogenmod/ChangeLog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 85
    .local v12, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0b08b5

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/ChangeLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 86
    iput-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ChangeLog;->setupAlert()V

    move-object v6, v7

    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    move-object v9, v10

    .line 89
    .end local v10           #inputReader:Ljava/io/InputStreamReader;
    .restart local v9       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_2

    .line 63
    .end local v0           #webView:Landroid/webkit/WebView;
    .end local v6           #data:Ljava/lang/StringBuilder;
    .end local v9           #inputReader:Ljava/io/InputStreamReader;
    .end local v12           #p:Lcom/android/internal/app/AlertController$AlertParams;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    .restart local v10       #inputReader:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    goto :goto_3

    .end local v7           #data:Ljava/lang/StringBuilder;
    .end local v10           #inputReader:Ljava/io/InputStreamReader;
    .end local v11           #numRead:I
    .end local v13           #tmp:[C
    .restart local v6       #data:Ljava/lang/StringBuilder;
    .restart local v8       #e:Ljava/io/IOException;
    .restart local v9       #inputReader:Ljava/io/InputStreamReader;
    :catch_2
    move-exception v1

    goto :goto_2

    .end local v8           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    goto :goto_5

    .line 59
    .end local v6           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v1

    move-object v6, v7

    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    goto :goto_4

    .end local v6           #data:Ljava/lang/StringBuilder;
    .end local v9           #inputReader:Ljava/io/InputStreamReader;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    .restart local v10       #inputReader:Ljava/io/InputStreamReader;
    .restart local v13       #tmp:[C
    :catchall_2
    move-exception v1

    move-object v6, v7

    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    move-object v9, v10

    .end local v10           #inputReader:Ljava/io/InputStreamReader;
    .restart local v9       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_4

    .line 55
    .end local v13           #tmp:[C
    :catch_4
    move-exception v8

    goto :goto_1

    .end local v6           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    :catch_5
    move-exception v8

    move-object v6, v7

    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    goto :goto_1
.end method
