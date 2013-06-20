.class public abstract Lcom/instagram/api/request/AbstractRequest;
.super Ljava/lang/Object;
.source "AbstractRequest.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/instagram/api/request/AbstractRequest;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method protected final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/instagram/api/request/AbstractRequest;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getMethod()Lcom/instagram/api/request/AbstractRequest$Method;
.end method

.method public abstract getParams()Lcom/instagram/api/RequestParams;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method
