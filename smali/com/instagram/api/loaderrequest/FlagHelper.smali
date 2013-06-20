.class public Lcom/instagram/api/loaderrequest/FlagHelper;
.super Ljava/lang/Object;
.source "FlagHelper.java"


# instance fields
.field private mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/AbstractApiCallbacks",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFlagType:Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

.field private mFragmentManager:Landroid/support/v4/app/p;

.field private mHandler:Landroid/os/Handler;

.field private mLoaderManager:Landroid/support/v4/app/af;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;Landroid/support/v4/app/p;)V
    .locals 1
    .parameter "context"
    .parameter "loaderManager"
    .parameter "fragmentManager"

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Lcom/instagram/api/loaderrequest/FlagHelper$1;

    invoke-direct {v0, p0}, Lcom/instagram/api/loaderrequest/FlagHelper$1;-><init>(Lcom/instagram/api/loaderrequest/FlagHelper;)V

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    .line 131
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mContext:Landroid/content/Context;

    .line 132
    iput-object p3, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mFragmentManager:Landroid/support/v4/app/p;

    .line 133
    iput-object p2, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mLoaderManager:Landroid/support/v4/app/af;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/api/loaderrequest/FlagHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/api/loaderrequest/FlagHelper;)Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mFlagType:Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/api/loaderrequest/FlagHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/api/loaderrequest/FlagHelper;)Landroid/support/v4/app/p;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mFragmentManager:Landroid/support/v4/app/p;

    return-object v0
.end method


# virtual methods
.method public flagComment(Lcom/instagram/android/model/Comment;Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;)V
    .locals 6
    .parameter "comment"
    .parameter "reason"

    .prologue
    .line 142
    sget-object v0, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;->Comment:Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mFlagType:Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    .line 143
    new-instance v0, Lcom/instagram/api/loaderrequest/FlagCommentRequest;

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mLoaderManager:Landroid/support/v4/app/af;

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/instagram/api/loaderrequest/FlagCommentRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;Lcom/instagram/android/model/Comment;Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;)V

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/FlagCommentRequest;->perform()V

    .line 144
    return-void
.end method

.method public flagRemoveFromPopular(Ljava/lang/String;)V
    .locals 4
    .parameter "mediaId"

    .prologue
    .line 147
    sget-object v0, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;->Photo:Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mFlagType:Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    .line 148
    new-instance v0, Lcom/instagram/api/loaderrequest/FlagRemovePopularRequest;

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mLoaderManager:Landroid/support/v4/app/af;

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/instagram/api/loaderrequest/FlagRemovePopularRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/FlagRemovePopularRequest;->perform()V

    .line 149
    return-void
.end method

.method public flagUser(Ljava/lang/String;)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 137
    sget-object v0, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;->User:Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    iput-object v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mFlagType:Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    .line 138
    new-instance v0, Lcom/instagram/api/loaderrequest/FlagUserRequest;

    iget-object v1, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mLoaderManager:Landroid/support/v4/app/af;

    iget-object v3, p0, Lcom/instagram/api/loaderrequest/FlagHelper;->mApiCallbacks:Lcom/instagram/api/AbstractApiCallbacks;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/instagram/api/loaderrequest/FlagUserRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/api/AbstractApiCallbacks;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/FlagUserRequest;->perform()V

    .line 139
    return-void
.end method
