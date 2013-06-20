.class public Lcom/instagram/android/service/MediaService;
.super Landroid/app/IntentService;
.source "MediaService.java"


# static fields
.field private static final INTENT_EXTRA_PENDING_MEDIA_ID:Ljava/lang/String; = "com.instagram.android.MediaService.INTENT_EXTRA_PENDING_MEDIA_ID"

.field private static final INTENT_EXTRA_PERFORM_ACTION:Ljava/lang/String; = "com.instagram.android.MediaService.INTENT_EXTRA_PERFORM_ACTION"

.field private static final PERFORM_ACTION_DELETE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaService"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "MediaService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static deleteMedia(Landroid/content/Context;Lcom/instagram/android/model/Media;)V
    .locals 1
    .parameter "context"
    .parameter "media"

    .prologue
    const/4 v0, 0x1

    .line 74
    invoke-virtual {p1, v0}, Lcom/instagram/android/model/Media;->setDeletedStatus(I)V

    .line 75
    invoke-virtual {p1, p0, v0}, Lcom/instagram/android/model/Media;->broadcastUpdatedMedia(Landroid/content/Context;Z)V

    .line 77
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/instagram/android/service/MediaService;->startService(Landroid/content/Context;Lcom/instagram/android/model/Media;I)V

    .line 78
    return-void
.end method

.method private deleteMedia(Lcom/instagram/android/model/Media;)V
    .locals 2
    .parameter "media"

    .prologue
    .line 56
    new-instance v0, Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask;

    new-instance v1, Lcom/instagram/android/service/MediaService$AsyncDeleteMediaHttpCallbacks;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/service/MediaService$AsyncDeleteMediaHttpCallbacks;-><init>(Lcom/instagram/android/service/MediaService;Lcom/instagram/android/model/Media;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask;-><init>(Lcom/instagram/android/service/MediaService;Lcom/instagram/android/model/Media;Lcom/instagram/android/service/MediaService$AsyncHttpRequestCallbacks;)V

    .line 57
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/MediaService$AsyncMediaDeleteRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    return-void
.end method

.method private getAction(Landroid/content/Intent;)I
    .locals 2
    .parameter "intent"

    .prologue
    .line 61
    const-string v0, "com.instagram.android.MediaService.INTENT_EXTRA_PERFORM_ACTION"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getMedia(Landroid/content/Intent;)Lcom/instagram/android/model/Media;
    .locals 2
    .parameter "intent"

    .prologue
    .line 65
    const-string v0, "com.instagram.android.MediaService.INTENT_EXTRA_PENDING_MEDIA_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/instagram/android/service/MediaStore;->getInstance(Landroid/content/Context;)Lcom/instagram/android/service/MediaStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/service/MediaStore;->get(Ljava/lang/Object;)Lcom/instagram/android/model/Media;

    move-result-object v0

    goto :goto_0
.end method

.method public static startService(Landroid/content/Context;Lcom/instagram/android/model/Media;I)V
    .locals 3
    .parameter "context"
    .parameter "media"
    .parameter "action"

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/android/service/MediaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    const-string v1, "com.instagram.android.MediaService.INTENT_EXTRA_PERFORM_ACTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string v1, "com.instagram.android.MediaService.INTENT_EXTRA_PENDING_MEDIA_ID"

    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 89
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/instagram/android/service/MediaService;->getAction(Landroid/content/Intent;)I

    move-result v0

    .line 38
    invoke-direct {p0, p1}, Lcom/instagram/android/service/MediaService;->getMedia(Landroid/content/Intent;)Lcom/instagram/android/model/Media;

    move-result-object v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    const-string v0, "MediaService"

    const-string v1, "Media is null, cannot continue"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void

    .line 45
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 51
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action not handled or invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/instagram/android/service/MediaService;->deleteMedia(Lcom/instagram/android/model/Media;)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
