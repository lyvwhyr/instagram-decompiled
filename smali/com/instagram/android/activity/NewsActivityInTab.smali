.class public Lcom/instagram/android/activity/NewsActivityInTab;
.super Lcom/instagram/android/activity/ActivityInTab;
.source "NewsActivityInTab.java"


# static fields
.field public static final EXTRA_NEWS_LAUNCH_BUNDLE:Ljava/lang/String; = "com.instagram.android.activity.NewsActivityInTab.EXTRA_NEWS_LAUNCH_BUNDLE"

.field private static final LOG_TAG:Ljava/lang/String; = "NewsActivityInTab"

.field private static loadInboxFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/android/activity/NewsActivityInTab;->loadInboxFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/instagram/android/activity/ActivityInTab;-><init>()V

    return-void
.end method

.method public static setLoadInboxFlag()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/android/activity/NewsActivityInTab;->loadInboxFlag:Z

    .line 35
    return-void
.end method

.method public static takeLoadInboxFlag()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 38
    sget-boolean v1, Lcom/instagram/android/activity/NewsActivityInTab;->loadInboxFlag:Z

    if-eqz v1, :cond_0

    .line 39
    sput-boolean v0, Lcom/instagram/android/activity/NewsActivityInTab;->loadInboxFlag:Z

    .line 40
    const/4 v0, 0x1

    .line 42
    :cond_0
    return v0
.end method


# virtual methods
.method protected onPostResume()V
    .locals 3

    .prologue
    .line 23
    invoke-super {p0}, Lcom/instagram/android/activity/ActivityInTab;->onPostResume()V

    .line 27
    invoke-static {}, Lcom/instagram/android/activity/NewsActivityInTab;->takeLoadInboxFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "NewsActivityInTab"

    const-string v1, "Resuming, but the news should reload due to push notification"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.instagram.android.receiver.C2DMReceiver.NOTIFICATION_RECEIVED_BROADCAST_PROXY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 31
    :cond_0
    return-void
.end method
