.class public Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;
.super Ljava/lang/Object;
.source "IgBitmapCache.java"


# instance fields
.field private mCallback:Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;

.field private mClearCachedItem:Z

.field private mContext:Landroid/content/Context;

.field private mQueueAtFront:Z

.field private mReportProgress:Z

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object v1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->mUrl:Ljava/lang/String;

    .line 466
    iput-object v1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->mCallback:Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;

    .line 467
    iput-boolean v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->mReportProgress:Z

    .line 468
    iput-boolean v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->mQueueAtFront:Z

    .line 469
    iput-boolean v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->mClearCachedItem:Z

    .line 472
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->mContext:Landroid/content/Context;

    .line 473
    return-void
.end method


# virtual methods
.method public queue()V
    .locals 6

    .prologue
    .line 501
    iget-object v0, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/android/mediacache/IgBitmapCache;->getInstance(Landroid/content/Context;)Lcom/instagram/android/mediacache/IgBitmapCache;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->mCallback:Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;

    iget-boolean v3, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->mReportProgress:Z

    iget-boolean v4, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->mQueueAtFront:Z

    iget-boolean v5, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->mClearCachedItem:Z

    #calls: Lcom/instagram/android/mediacache/IgBitmapCache;->loadBitmap(Ljava/lang/String;Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;ZZZ)V
    invoke-static/range {v0 .. v5}, Lcom/instagram/android/mediacache/IgBitmapCache;->access$700(Lcom/instagram/android/mediacache/IgBitmapCache;Ljava/lang/String;Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;ZZZ)V

    .line 508
    return-void
.end method

.method public setCallback(Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;
    .locals 0
    .parameter "callback"

    .prologue
    .line 481
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->mCallback:Lcom/instagram/android/mediacache/IgBitmapCache$BitmapCallback;

    .line 482
    return-object p0
.end method

.method public setClearCachedItem(Z)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;
    .locals 0
    .parameter "clearCachedItem"

    .prologue
    .line 496
    iput-boolean p1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->mClearCachedItem:Z

    .line 497
    return-object p0
.end method

.method public setQueueAtFront(Z)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;
    .locals 0
    .parameter "queueAtFront"

    .prologue
    .line 491
    iput-boolean p1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->mQueueAtFront:Z

    .line 492
    return-object p0
.end method

.method public setReportProgress(Z)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;
    .locals 0
    .parameter "reportProgress"

    .prologue
    .line 486
    iput-boolean p1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->mReportProgress:Z

    .line 487
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;
    .locals 0
    .parameter "url"

    .prologue
    .line 476
    iput-object p1, p0, Lcom/instagram/android/mediacache/IgBitmapCache$LoadBitmapBuilder;->mUrl:Ljava/lang/String;

    .line 477
    return-object p0
.end method
