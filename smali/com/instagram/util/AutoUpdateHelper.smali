.class public Lcom/instagram/util/AutoUpdateHelper;
.super Ljava/lang/Object;
.source "AutoUpdateHelper.java"


# static fields
.field private static final PREF_FILE:Ljava/lang/String; = "autoUpdatePreferences"

.field private static final PREF_KEY_LAST_REQUEST_TIME:Ljava/lang/String; = "last_request_time"

.field private static final RESCHEDULE_INTERVAL_MILLIS:J = 0x1499700L

.field public static final TAG:Ljava/lang/String; = "AutoUpdateHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/util/AutoUpdateHelper;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/instagram/util/AutoUpdateHelper;->mContext:Landroid/content/Context;

    const-string v1, "autoUpdatePreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/util/AutoUpdateHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/util/AutoUpdateHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/util/AutoUpdateHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/util/AutoUpdateHelper;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/instagram/util/AutoUpdateHelper;->askToDownloadUpdate(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/util/AutoUpdateHelper;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/instagram/util/AutoUpdateHelper;->reportUpToDate(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method private askToDownloadUpdate(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 4
    .parameter "activity"
    .parameter "newVersionUrl"

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 117
    new-instance v1, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-direct {v1, p1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/facebook/k;->autoupdater_upgrade_available:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v1

    sget v2, Lcom/facebook/k;->autoupdater_new_version:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v1

    sget v2, Lcom/facebook/k;->autoupdater_install:I

    new-instance v3, Lcom/instagram/util/AutoUpdateHelper$2;

    invoke-direct {v3, p0, p1, v0}, Lcom/instagram/util/AutoUpdateHelper$2;-><init>(Lcom/instagram/util/AutoUpdateHelper;Landroid/support/v4/app/FragmentActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setCancelable(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 128
    return-void
.end method

.method private doCheckForNewVersion(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/af;Lcom/instagram/util/AutoUpdateHelper$ReportType;)V
    .locals 3
    .parameter "activity"
    .parameter "loaderManager"
    .parameter "reportType"

    .prologue
    .line 82
    new-instance v0, Lcom/instagram/util/AutoUpdateHelper$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/instagram/util/AutoUpdateHelper$1;-><init>(Lcom/instagram/util/AutoUpdateHelper;Landroid/support/v4/app/FragmentActivity;Lcom/instagram/util/AutoUpdateHelper$ReportType;)V

    .line 108
    const-string v1, "AutoUpdateHelper"

    const-string v2, "Checking if new version is available"

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/instagram/util/AutoUpdateHelper;->setLastRequestTimeMillis(J)V

    .line 110
    new-instance v1, Lcom/instagram/api/loaderrequest/AutoUpdateRequest;

    invoke-direct {v1, p1, p2, v0}, Lcom/instagram/api/loaderrequest/AutoUpdateRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;)V

    .line 111
    invoke-virtual {v1}, Lcom/instagram/api/loaderrequest/AutoUpdateRequest;->perform()V

    .line 112
    return-void
.end method

.method private reportUpToDate(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 131
    new-instance v0, Lcom/instagram/android/widget/IgDialogBuilder;

    invoke-direct {v0, p1}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/k;->autoupdater_no_upgrade_available:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setTitle(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->autoupdater_up_to_date:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(I)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->ok:I

    new-instance v2, Lcom/instagram/util/AutoUpdateHelper$3;

    invoke-direct {v2, p0}, Lcom/instagram/util/AutoUpdateHelper$3;-><init>(Lcom/instagram/util/AutoUpdateHelper;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setCancelable(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 142
    return-void
.end method


# virtual methods
.method public checkForNewVersionIfNeeded(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/af;)V
    .locals 1
    .parameter "activity"
    .parameter "loaderManager"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/instagram/util/AutoUpdateHelper;->isAutoUpdateRequestNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/instagram/util/AutoUpdateHelper$ReportType;->REPORT_NEW_VERSION_ONLY:Lcom/instagram/util/AutoUpdateHelper$ReportType;

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/util/AutoUpdateHelper;->doCheckForNewVersion(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/af;Lcom/instagram/util/AutoUpdateHelper$ReportType;)V

    goto :goto_0
.end method

.method public forceCheckForNewVersion(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/af;)V
    .locals 1
    .parameter "activity"
    .parameter "loaderManager"

    .prologue
    .line 76
    sget-object v0, Lcom/instagram/util/AutoUpdateHelper$ReportType;->REPORT_UP_TO_DATE:Lcom/instagram/util/AutoUpdateHelper$ReportType;

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/util/AutoUpdateHelper;->doCheckForNewVersion(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/af;Lcom/instagram/util/AutoUpdateHelper$ReportType;)V

    .line 77
    return-void
.end method

.method public getLastRequestTimeMillis()J
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/instagram/util/AutoUpdateHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_request_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isAutoUpdateEnabled()Z
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/instagram/util/BuildInfoUtil;->isInhouseBuild()Z

    move-result v0

    .line 54
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/a/b;->b()Z

    move-result v1

    .line 55
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoUpdateRequestNeeded()Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/instagram/util/AutoUpdateHelper;->isAutoUpdateEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    :goto_0
    return v0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/util/AutoUpdateHelper;->getLastRequestTimeMillis()J

    move-result-wide v1

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 47
    sub-long v5, v3, v1

    const-wide/32 v7, 0x1499700

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    const/4 v0, 0x1

    .line 48
    :cond_1
    const-string v5, "AutoUpdateHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Last check: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLastRequestTimeMillis(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/util/AutoUpdateHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    return-void
.end method
