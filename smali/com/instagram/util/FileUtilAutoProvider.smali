.class public final Lcom/instagram/util/FileUtilAutoProvider;
.super Lcom/facebook/d/b;
.source "FileUtilAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/d/b",
        "<",
        "Lcom/instagram/util/FileUtil;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/facebook/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 18
    instance-of v0, p1, Lcom/instagram/util/FileUtilAutoProvider;

    return v0
.end method

.method public get()Lcom/instagram/util/FileUtil;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/instagram/util/FileUtil;

    invoke-direct {v0}, Lcom/instagram/util/FileUtil;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/instagram/util/FileUtilAutoProvider;->get()Lcom/instagram/util/FileUtil;

    move-result-object v0

    return-object v0
.end method
