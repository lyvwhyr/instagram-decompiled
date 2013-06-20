.class public Lcom/instagram/appirater/Appirater;
.super Ljava/lang/Object;
.source "Appirater.java"


# static fields
.field private static final APPIRATER_CURRENT_VERSION:Ljava/lang/String; = "APPIRATER_CURRENT_VERSION"

.field private static final APPIRATER_DECLINED_TO_RATE:Ljava/lang/String; = "APPIRATER_DECLINED_TO_RATE"

.field private static final APPIRATER_FIRST_USE_DATE:Ljava/lang/String; = "APPIRATER_FIRST_USE_DATE"

.field private static final APPIRATER_RATED_CURRENT_VERSION:Ljava/lang/String; = "APPIRATER_RATED_CURRENT_VERSION"

.field private static final APPIRATER_REMINDER_REQUEST_DATE:Ljava/lang/String; = "APPIRATER_REMINDER_REQUEST_DATE"

.field private static final APPIRATER_SIG_EVENT_COUNT:Ljava/lang/String; = "APPIRATER_SIG_EVENT_COUNT"

.field private static final APPIRATER_USE_COUNT:Ljava/lang/String; = "APPIRATER_USE_COUNT"

.field private static final DAYS_UNTIL_PROMPT:I = 0x0

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Appirater"

.field public static final RANDOM_CONSTANT_VERSION_NUMBER:I = 0x7d0

.field private static final SIG_EVENTS_UNTIL_PROMPT:I = 0x4

.field private static final TIME_BEFORE_REMINDING:I

.field private static final USES_UNTIL_PROMPT:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentVersion:I

.field private mDeclinedToRate:Z

.field private mFirstUseDate:Ljava/util/Date;

.field private mRatedCurrentVersion:Z

.field private mReminderRequestDate:Ljava/util/Date;

.field private mSignificantEventCount:I

.field private mUseCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/instagram/appirater/Appirater;->mContext:Landroid/content/Context;

    .line 124
    invoke-direct {p0}, Lcom/instagram/appirater/Appirater;->loadSettings()V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/appirater/Appirater;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/appirater/Appirater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/instagram/appirater/Appirater;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/instagram/appirater/Appirater;->mRatedCurrentVersion:Z

    return p1
.end method

.method static synthetic access$200(Lcom/instagram/appirater/Appirater;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/instagram/appirater/Appirater;->saveSettings()V

    return-void
.end method

.method static synthetic access$302(Lcom/instagram/appirater/Appirater;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/instagram/appirater/Appirater;->mSignificantEventCount:I

    return p1
.end method

.method static synthetic access$402(Lcom/instagram/appirater/Appirater;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/instagram/appirater/Appirater;->mDeclinedToRate:Z

    return p1
.end method

.method private connectedToNetwork()Z
    .locals 4

    .prologue
    .line 201
    :try_start_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>()V

    .line 202
    new-instance v1, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    const-string v2, "http://www.google.com/"

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 205
    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 206
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "Appirater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVersion()I
    .locals 1

    .prologue
    .line 359
    .line 364
    const/16 v0, 0x7d0

    .line 365
    return v0
.end method

.method private incrementAndRate(Z)V
    .locals 1
    .parameter "canPromptForRating"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/instagram/appirater/Appirater;->incrementUseCount()V

    .line 179
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/instagram/appirater/Appirater;->ratingConditionsHaveBeenMet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/appirater/Appirater;->connectedToNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/instagram/appirater/Appirater;->showRatingAlert()V

    .line 183
    :cond_0
    return-void
.end method

.method private incrementSignificantEventAndRate(Z)V
    .locals 1
    .parameter "canPromptForRating"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/instagram/appirater/Appirater;->incrementSignificantEventCount()V

    .line 187
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/instagram/appirater/Appirater;->ratingConditionsHaveBeenMet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/instagram/appirater/Appirater;->showRatingAlert()V

    .line 190
    :cond_0
    return-void
.end method

.method private incrementSignificantEventCount()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 370
    invoke-direct {p0}, Lcom/instagram/appirater/Appirater;->getVersion()I

    move-result v0

    .line 373
    iget v1, p0, Lcom/instagram/appirater/Appirater;->mCurrentVersion:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 374
    iput v0, p0, Lcom/instagram/appirater/Appirater;->mCurrentVersion:I

    .line 381
    :cond_0
    iget v1, p0, Lcom/instagram/appirater/Appirater;->mCurrentVersion:I

    if-ne v1, v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/instagram/appirater/Appirater;->mFirstUseDate:Ljava/util/Date;

    if-nez v0, :cond_1

    .line 384
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/instagram/appirater/Appirater;->mFirstUseDate:Ljava/util/Date;

    .line 388
    :cond_1
    iget v0, p0, Lcom/instagram/appirater/Appirater;->mSignificantEventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/appirater/Appirater;->mSignificantEventCount:I

    .line 403
    :goto_0
    invoke-direct {p0}, Lcom/instagram/appirater/Appirater;->saveSettings()V

    .line 404
    return-void

    .line 394
    :cond_2
    iput v0, p0, Lcom/instagram/appirater/Appirater;->mCurrentVersion:I

    .line 395
    iput-object v4, p0, Lcom/instagram/appirater/Appirater;->mFirstUseDate:Ljava/util/Date;

    .line 396
    iput v3, p0, Lcom/instagram/appirater/Appirater;->mUseCount:I

    .line 397
    const/4 v0, 0x1

    iput v0, p0, Lcom/instagram/appirater/Appirater;->mSignificantEventCount:I

    .line 398
    iput-boolean v3, p0, Lcom/instagram/appirater/Appirater;->mRatedCurrentVersion:Z

    .line 399
    iput-boolean v3, p0, Lcom/instagram/appirater/Appirater;->mDeclinedToRate:Z

    .line 400
    iput-object v4, p0, Lcom/instagram/appirater/Appirater;->mReminderRequestDate:Ljava/util/Date;

    goto :goto_0
.end method

.method private incrementUseCount()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 317
    invoke-direct {p0}, Lcom/instagram/appirater/Appirater;->getVersion()I

    move-result v0

    .line 323
    iget v1, p0, Lcom/instagram/appirater/Appirater;->mCurrentVersion:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 324
    iput v0, p0, Lcom/instagram/appirater/Appirater;->mCurrentVersion:I

    .line 331
    :cond_0
    iget v1, p0, Lcom/instagram/appirater/Appirater;->mCurrentVersion:I

    if-ne v1, v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/instagram/appirater/Appirater;->mFirstUseDate:Ljava/util/Date;

    if-nez v0, :cond_1

    .line 334
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/instagram/appirater/Appirater;->mFirstUseDate:Ljava/util/Date;

    .line 338
    :cond_1
    iget v0, p0, Lcom/instagram/appirater/Appirater;->mUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/appirater/Appirater;->mUseCount:I

    .line 354
    :goto_0
    invoke-direct {p0}, Lcom/instagram/appirater/Appirater;->saveSettings()V

    .line 355
    return-void

    .line 345
    :cond_2
    iput v0, p0, Lcom/instagram/appirater/Appirater;->mCurrentVersion:I

    .line 346
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/instagram/appirater/Appirater;->mFirstUseDate:Ljava/util/Date;

    .line 347
    const/4 v0, 0x1

    iput v0, p0, Lcom/instagram/appirater/Appirater;->mUseCount:I

    .line 348
    iput v3, p0, Lcom/instagram/appirater/Appirater;->mSignificantEventCount:I

    .line 349
    iput-boolean v3, p0, Lcom/instagram/appirater/Appirater;->mRatedCurrentVersion:Z

    .line 350
    iput-boolean v3, p0, Lcom/instagram/appirater/Appirater;->mDeclinedToRate:Z

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/appirater/Appirater;->mReminderRequestDate:Ljava/util/Date;

    goto :goto_0
.end method

.method private loadSettings()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 416
    iget-object v0, p0, Lcom/instagram/appirater/Appirater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 417
    iget-object v0, p0, Lcom/instagram/appirater/Appirater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/instagram/appirater/Appirater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 420
    const-string v1, "APPIRATER_FIRST_USE_DATE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 421
    const-string v1, "APPIRATER_FIRST_USE_DATE"

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 422
    cmp-long v3, v5, v1

    if-eqz v3, :cond_0

    .line 423
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/instagram/appirater/Appirater;->mFirstUseDate:Ljava/util/Date;

    .line 426
    :cond_0
    const-string v1, "APPIRATER_REMINDER_REQUEST_DATE"

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 427
    cmp-long v3, v5, v1

    if-eqz v3, :cond_1

    .line 428
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/instagram/appirater/Appirater;->mReminderRequestDate:Ljava/util/Date;

    .line 431
    :cond_1
    const-string v1, "APPIRATER_USE_COUNT"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/instagram/appirater/Appirater;->mUseCount:I

    .line 432
    const-string v1, "APPIRATER_SIG_EVENT_COUNT"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/instagram/appirater/Appirater;->mSignificantEventCount:I

    .line 433
    const-string v1, "APPIRATER_CURRENT_VERSION"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/instagram/appirater/Appirater;->mCurrentVersion:I

    .line 434
    const-string v1, "APPIRATER_RATED_CURRENT_VERSION"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/instagram/appirater/Appirater;->mRatedCurrentVersion:Z

    .line 435
    const-string v1, "APPIRATER_DECLINED_TO_RATE"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/appirater/Appirater;->mDeclinedToRate:Z

    .line 437
    :cond_2
    return-void
.end method

.method private ratingConditionsHaveBeenMet()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 283
    iget v1, p0, Lcom/instagram/appirater/Appirater;->mUseCount:I

    if-gez v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    .line 288
    :cond_1
    iget v1, p0, Lcom/instagram/appirater/Appirater;->mSignificantEventCount:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 293
    iget-boolean v1, p0, Lcom/instagram/appirater/Appirater;->mDeclinedToRate:Z

    if-nez v1, :cond_0

    .line 298
    iget-boolean v1, p0, Lcom/instagram/appirater/Appirater;->mRatedCurrentVersion:Z

    if-nez v1, :cond_0

    .line 312
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private saveSettings()V
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 440
    iget-object v0, p0, Lcom/instagram/appirater/Appirater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 441
    iget-object v0, p0, Lcom/instagram/appirater/Appirater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/instagram/appirater/Appirater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 442
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 445
    iget-object v0, p0, Lcom/instagram/appirater/Appirater;->mFirstUseDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/instagram/appirater/Appirater;->mFirstUseDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 448
    :goto_0
    const-string v5, "APPIRATER_FIRST_USE_DATE"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 451
    iget-object v0, p0, Lcom/instagram/appirater/Appirater;->mReminderRequestDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/instagram/appirater/Appirater;->mReminderRequestDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 454
    :cond_0
    const-string v0, "APPIRATER_REMINDER_REQUEST_DATE"

    invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 456
    const-string v0, "APPIRATER_USE_COUNT"

    iget v1, p0, Lcom/instagram/appirater/Appirater;->mUseCount:I

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 457
    const-string v0, "APPIRATER_SIG_EVENT_COUNT"

    iget v1, p0, Lcom/instagram/appirater/Appirater;->mSignificantEventCount:I

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 458
    const-string v0, "APPIRATER_CURRENT_VERSION"

    iget v1, p0, Lcom/instagram/appirater/Appirater;->mCurrentVersion:I

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 459
    const-string v0, "APPIRATER_RATED_CURRENT_VERSION"

    iget-boolean v1, p0, Lcom/instagram/appirater/Appirater;->mRatedCurrentVersion:Z

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 460
    const-string v0, "APPIRATER_DECLINED_TO_RATE"

    iget-boolean v1, p0, Lcom/instagram/appirater/Appirater;->mDeclinedToRate:Z

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 462
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 463
    return-void

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method private showRatingAlert()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 215
    new-instance v3, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/instagram/appirater/Appirater;->mContext:Landroid/content/Context;

    sget v1, Lcom/facebook/l;->IgDialog:I

    invoke-direct {v3, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 216
    iget-object v0, p0, Lcom/instagram/appirater/Appirater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 218
    const-string v0, "unknown"

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/instagram/appirater/Appirater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v4, p0, Lcom/instagram/appirater/Appirater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/appirater/Appirater;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 223
    :goto_0
    sget v0, Lcom/facebook/h;->appirater:I

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 224
    sget v0, Lcom/facebook/g;->appirater_title_area:I

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 225
    sget v4, Lcom/facebook/k;->APPIRATER_MESSAGE_TITLE:I

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    sget v0, Lcom/facebook/g;->appirater_message_area:I

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 228
    sget v4, Lcom/facebook/k;->APPIRATER_MESSAGE:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    sget v0, Lcom/facebook/g;->appirater_rate_button:I

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 231
    sget v4, Lcom/facebook/k;->APPIRATER_RATE_BUTTON:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 232
    sget v1, Lcom/facebook/g;->appirater_rate_later_button:I

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 233
    sget v2, Lcom/facebook/g;->appirater_cancel_button:I

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 235
    new-instance v4, Lcom/instagram/appirater/Appirater$1;

    invoke-direct {v4, p0, v3}, Lcom/instagram/appirater/Appirater$1;-><init>(Lcom/instagram/appirater/Appirater;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    new-instance v0, Lcom/instagram/appirater/Appirater$2;

    invoke-direct {v0, p0, v3}, Lcom/instagram/appirater/Appirater$2;-><init>(Lcom/instagram/appirater/Appirater;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    new-instance v0, Lcom/instagram/appirater/Appirater$3;

    invoke-direct {v0, p0, v3}, Lcom/instagram/appirater/Appirater$3;-><init>(Lcom/instagram/appirater/Appirater;Landroid/app/Dialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 266
    return-void

    .line 221
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public appEnteredForeground(Z)V
    .locals 0
    .parameter "canPromptForRating"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/instagram/appirater/Appirater;->incrementAndRate(Z)V

    .line 157
    return-void
.end method

.method public appLaunched(Z)V
    .locals 0
    .parameter "canPromptForRating"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/instagram/appirater/Appirater;->incrementAndRate(Z)V

    .line 141
    return-void
.end method

.method public userDidSignificantEvent(Z)V
    .locals 0
    .parameter "canPromptForRating"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/instagram/appirater/Appirater;->incrementSignificantEventAndRate(Z)V

    .line 175
    return-void
.end method
