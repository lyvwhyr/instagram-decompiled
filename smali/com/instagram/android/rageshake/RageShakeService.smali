.class public Lcom/instagram/android/rageshake/RageShakeService;
.super Landroid/app/IntentService;
.source "RageShakeService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RageShakeService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRequest:Lcom/instagram/api/request/FlytrapRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "RageShakeService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private onFailure()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/instagram/android/rageshake/RageShakeService;->showFailureNotification()V

    .line 101
    return-void
.end method

.method private onSuccess()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/instagram/android/rageshake/RageShakeService;->showSuccessNotification()V

    .line 105
    return-void
.end method

.method private parseServerResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/instagram/android/rageshake/RageShakeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/android/service/CustomObjectMapper;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/CustomObjectMapper;

    move-result-object v0

    .line 86
    const-class v1, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, p1, v1}, Lcom/instagram/android/service/CustomObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 87
    const-string v1, "bug_id"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/instagram/android/rageshake/RageShakeService;->onSuccess()V

    .line 97
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    const-string v1, "RageShakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/instagram/android/rageshake/RageShakeService;->onFailure()V

    goto :goto_0
.end method

.method private showFailureNotification()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 125
    new-instance v5, Landroid/content/Intent;

    iget-object v0, p0, Lcom/instagram/android/rageshake/RageShakeService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/instagram/android/rageshake/RageShakeActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    const-string v0, "com.instagram.android.rageshake.RageShakeUtil.INTENT_EXTRA_RETRY"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    const-string v0, "com.instagram.android.rageshake.RageShakeUtil.INTENT_EXTRA_DESCRIPTION"

    iget-object v1, p0, Lcom/instagram/android/rageshake/RageShakeService;->mRequest:Lcom/instagram/api/request/FlytrapRequest;

    invoke-virtual {v1}, Lcom/instagram/api/request/FlytrapRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v0, "com.instagram.android.rageshake.RageShakeUtil.INTENT_EXTRA_MEDIA_FILE_PATH"

    iget-object v1, p0, Lcom/instagram/android/rageshake/RageShakeService;->mRequest:Lcom/instagram/api/request/FlytrapRequest;

    invoke-virtual {v1}, Lcom/instagram/api/request/FlytrapRequest;->getScreenShotPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    sget v0, Lcom/facebook/k;->rageshake_fail_title:I

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/rageshake/RageShakeService;->mRequest:Lcom/instagram/api/request/FlytrapRequest;

    invoke-virtual {v3}, Lcom/instagram/api/request/FlytrapRequest;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/rageshake/RageShakeService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/facebook/k;->rageshake_fail_text:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/rageshake/RageShakeService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x108008a

    sget v0, Lcom/facebook/k;->rageshake_fail_ticker:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/rageshake/RageShakeService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/rageshake/RageShakeService;->showSystemNotification(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)V

    .line 140
    return-void
.end method

.method private showSuccessNotification()V
    .locals 7

    .prologue
    .line 112
    sget v0, Lcom/facebook/k;->rageshake_send_success:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/rageshake/RageShakeService;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/facebook/k;->rageshake_send_description:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/rageshake/RageShakeService;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/facebook/f;->notification_icon:I

    sget v0, Lcom/facebook/k;->rageshake_send_success:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/rageshake/RageShakeService;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/rageshake/RageShakeService;->showSystemNotification(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)V

    .line 118
    return-void
.end method

.method private showSystemNotification(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)V
    .locals 4
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "smallIcon"
    .parameter "ticker"
    .parameter "contentIntent"
    .parameter "notificationId"

    .prologue
    .line 151
    new-instance v0, Landroid/support/v4/app/ao;

    iget-object v1, p0, Lcom/instagram/android/rageshake/RageShakeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/ao;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ao;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ao;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/ao;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ao;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v4/app/ao;->a(I)Landroid/support/v4/app/ao;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ao;->a(Z)Landroid/support/v4/app/ao;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/support/v4/app/ao;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ao;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ao;->a(J)Landroid/support/v4/app/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/rageshake/RageShakeService;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    const/high16 v3, 0x1000

    invoke-static {v1, v2, p5, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ao;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ao;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ao;->a()Landroid/app/Notification;

    move-result-object v1

    .line 164
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/instagram/android/rageshake/RageShakeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 165
    invoke-virtual {v0, p6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 166
    return-void
.end method

.method public static startService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "description"
    .parameter "screenShotPath"
    .parameter "fbAccessToken"

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/instagram/android/rageshake/RageShakeService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    const-string v1, "com.instagram.android.rageshake.RageShakeUtil.INTENT_EXTRA_DESCRIPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v1, "com.instagram.android.rageshake.RageShakeUtil.INTENT_EXTRA_MEDIA_FILE_PATH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "com.instagram.android.rageshake.RageShakeUtil.INTENT_EXTRA_FB_ACCESS_TOKEN"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 54
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/instagram/android/rageshake/RageShakeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/rageshake/RageShakeService;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/instagram/android/rageshake/RageShakeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/api/ApiHttpClient;->getInstance(Landroid/content/Context;)Lcom/instagram/api/ApiHttpClient;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/instagram/api/request/FlytrapRequest;

    iget-object v2, p0, Lcom/instagram/android/rageshake/RageShakeService;->mContext:Landroid/content/Context;

    const-string v3, "com.instagram.android.rageshake.RageShakeUtil.INTENT_EXTRA_DESCRIPTION"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.instagram.android.rageshake.RageShakeUtil.INTENT_EXTRA_FB_ACCESS_TOKEN"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.instagram.android.rageshake.RageShakeUtil.INTENT_EXTRA_MEDIA_FILE_PATH"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/instagram/api/request/FlytrapRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/instagram/android/rageshake/RageShakeService;->mRequest:Lcom/instagram/api/request/FlytrapRequest;

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/instagram/android/rageshake/RageShakeService;->mRequest:Lcom/instagram/api/request/FlytrapRequest;

    invoke-virtual {v0, v1}, Lcom/instagram/api/ApiHttpClient;->perform(Lcom/instagram/api/request/AbstractRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 72
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 74
    invoke-direct {p0, v1}, Lcom/instagram/android/rageshake/RageShakeService;->parseServerResponse(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/rageshake/RageShakeService;->onFailure()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v1, "RageShakeService"

    const-string v2, "Server request resulted in exception"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    invoke-direct {p0}, Lcom/instagram/android/rageshake/RageShakeService;->onFailure()V

    goto :goto_0
.end method
