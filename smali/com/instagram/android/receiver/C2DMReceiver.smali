.class public Lcom/instagram/android/receiver/C2DMReceiver;
.super Lcom/instagram/c2dm/C2DMBaseReceiver;
.source "C2DMReceiver.java"


# static fields
.field public static final C2DM_SENDER:Ljava/lang/String; = "instagramandroidmarket@gmail.com"

.field public static final LOG_TAG:Ljava/lang/String; = "InstagramC2DMReceiver"

.field public static final NOTIFICATION_RECEIVED_BROADCAST:Ljava/lang/String; = "com.instagram.android.receiver.C2DMReceiver.NOTIFICATION_RECEIVED_BROADCAST"

.field private static mCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/instagram/android/receiver/C2DMReceiver;->mCountMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "instagramandroidmarket@gmail.com"

    invoke-direct {p0, v0}, Lcom/instagram/c2dm/C2DMBaseReceiver;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;ILandroid/app/Notification;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/instagram/android/receiver/C2DMReceiver;->sendNotification(Landroid/content/Context;ILandroid/app/Notification;)V

    return-void
.end method

.method public static clearUnreadCount()V
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 226
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 227
    sget-object v0, Lcom/instagram/android/receiver/C2DMReceiver;->mCountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 228
    return-void
.end method

.method private static getNumber(Ljava/lang/String;)I
    .locals 4
    .parameter "collapsekey"

    .prologue
    const/4 v1, 0x0

    .line 215
    sget-object v0, Lcom/instagram/android/receiver/C2DMReceiver;->mCountMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 216
    if-nez v0, :cond_0

    .line 217
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 219
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 220
    sget-object v2, Lcom/instagram/android/receiver/C2DMReceiver;->mCountMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static getPendingIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "igAction"
    .parameter "notificationID"

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/android/activity/MainTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 191
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ig://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "media"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    const-string v3, "screen"

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v3, "id"

    const-string v4, "id"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_0
    const-string v2, "com.instagram.android.activity.NewsActivityInTab.EXTRA_NEWS_LAUNCH_BUNDLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 207
    const/high16 v1, 0x800

    invoke-static {p0, p2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    const-string v3, "screen"

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v3, "id"

    const-string v4, "username"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_1
    const-string v2, "InstagramC2DMReceiver"

    const-string v3, "Unrecognized action type, just opening app"

    invoke-static {v2, v3}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static keyToNotificationID(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 56
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private queueImageNotification(Landroid/content/Context;Landroid/support/v4/app/ao;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "builder"
    .parameter "notificationID"
    .parameter "imageUrl"
    .parameter "avatarUrl"
    .parameter "summaryText"

    .prologue
    .line 155
    new-instance v0, Lcom/instagram/android/receiver/C2DMReceiver$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/instagram/android/receiver/C2DMReceiver$1;-><init>(Lcom/instagram/android/receiver/C2DMReceiver;Ljava/lang/String;Landroid/support/v4/app/ao;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)V

    .line 171
    iget-object v7, p0, Lcom/instagram/android/receiver/C2DMReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/receiver/C2DMReceiver$2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/instagram/android/receiver/C2DMReceiver$2;-><init>(Lcom/instagram/android/receiver/C2DMReceiver;Landroid/content/Context;Lcom/instagram/android/mediacache/MultiBitmapFetcher$MultiBitmapCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method

.method public static refreshAppC2DMRegistrationState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 258
    const-string v0, "instagramandroidmarket@gmail.com"

    invoke-static {p0, v0}, Lcom/instagram/c2dm/C2DMessaging;->register(Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method private static sendNotification(Landroid/content/Context;ILandroid/app/Notification;)V
    .locals 1
    .parameter "context"
    .parameter "notificationID"
    .parameter "notification"

    .prologue
    .line 182
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 184
    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 185
    return-void
.end method

.method private sendNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 90
    :try_start_0
    invoke-static {p1}, Lcom/instagram/android/service/CustomObjectMapper;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/CustomObjectMapper;

    move-result-object v0

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/CustomObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    .line 92
    const-string v0, "t"

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "t"

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 93
    :goto_0
    const-string v0, "m"

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v6

    .line 94
    const-string v0, "tt"

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "tt"

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 95
    :goto_1
    const-string v0, "ig"

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v8

    .line 96
    const-string v0, "i"

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "i"

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 97
    :goto_2
    const-string v0, "a"

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "a"

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v5

    .line 99
    :cond_0
    const-string v0, "collapse_key"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_5

    move-object v1, v0

    .line 101
    :goto_3
    const-string v0, "n"

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "n"

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    .line 103
    :goto_4
    const-string v3, "InstagramC2DMReceiver"

    const-string v9, "Status bar notification sent"

    invoke-static {v3, v9}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {v1}, Lcom/instagram/android/receiver/C2DMReceiver;->keyToNotificationID(Ljava/lang/String;)I

    move-result v3

    .line 106
    invoke-static {p1, v8, v3}, Lcom/instagram/android/receiver/C2DMReceiver;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 108
    new-instance v8, Landroid/support/v4/app/ao;

    invoke-direct {v8, p1}, Landroid/support/v4/app/ao;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v1}, Landroid/support/v4/app/ao;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ao;

    move-result-object v1

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/support/v4/app/ao;->a(Z)Landroid/support/v4/app/ao;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/support/v4/app/ao;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ao;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v4/app/ao;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ao;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/ao;->b(I)Landroid/support/v4/app/ao;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/ao;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ao;

    move-result-object v0

    sget v1, Lcom/facebook/f;->notification_icon:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ao;->a(I)Landroid/support/v4/app/ao;

    move-result-object v2

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_7

    if-nez v4, :cond_1

    if-eqz v5, :cond_7

    .line 119
    :cond_1
    invoke-static {p1, v4}, Lcom/instagram/android/model/Media;->getBestSizeMediaUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    .line 123
    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/receiver/C2DMReceiver;->queueImageNotification(Landroid/content/Context;Landroid/support/v4/app/ao;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_5
    return-void

    .line 92
    :cond_2
    sget v0, Lcom/facebook/k;->instagram:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/receiver/C2DMReceiver;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    :cond_3
    move-object v2, v6

    .line 94
    goto/16 :goto_1

    :cond_4
    move-object v4, v5

    .line 96
    goto/16 :goto_2

    .line 100
    :cond_5
    const-string v0, "default"

    move-object v1, v0

    goto :goto_3

    .line 101
    :cond_6
    invoke-static {v1}, Lcom/instagram/android/receiver/C2DMReceiver;->getNumber(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    .line 131
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_8

    if-eqz v5, :cond_8

    .line 134
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/receiver/C2DMReceiver;->queueImageNotification(Landroid/content/Context;Landroid/support/v4/app/ao;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 147
    :catch_0
    move-exception v0

    .line 148
    const-string v1, "InstagramC2DMReceiver"

    const-string v2, "Exception occurred trying to put up notification"

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 144
    :cond_8
    :try_start_1
    invoke-virtual {v2}, Landroid/support/v4/app/ao;->a()Landroid/app/Notification;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/instagram/android/receiver/C2DMReceiver;->sendNotification(Landroid/content/Context;ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/instagram/c2dm/C2DMBaseReceiver;->onCreate()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/receiver/C2DMReceiver;->mHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method public onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "errorId"

    .prologue
    .line 232
    const-string v0, "C2DMReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 73
    const-string v0, "InstagramC2DMReceiver"

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/instagram/android/activity/NewsActivityInTab;->setLoadInboxFlag()V

    .line 80
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.instagram.android.receiver.C2DMReceiver.NOTIFICATION_RECEIVED_BROADCAST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "InstagramC2DMReceiver"

    const-string v1, "Localbroadcast sent and received"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/receiver/C2DMReceiver;->sendNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "registrationId"

    .prologue
    .line 238
    const-string v0, "C2DMReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/android/service/PushRegistrationService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    const-string v1, "com.instagram.android.service.PushRegistrationService.DEVICE_TOKEN"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v0}, Lcom/instagram/android/receiver/C2DMReceiver;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 242
    invoke-super {p0, p1, p2}, Lcom/instagram/c2dm/C2DMBaseReceiver;->onRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public onUnregistered(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 248
    const-string v0, "C2DMReceiver"

    const-string v1, "Unregistered"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-super {p0, p1}, Lcom/instagram/c2dm/C2DMBaseReceiver;->onUnregistered(Landroid/content/Context;)V

    .line 251
    return-void
.end method
