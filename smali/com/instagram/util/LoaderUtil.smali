.class public Lcom/instagram/util/LoaderUtil;
.super Ljava/lang/Object;
.source "LoaderUtil.java"


# static fields
.field static loaderId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const v0, 0x5f5e100

    sput v0, Lcom/instagram/util/LoaderUtil;->loaderId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUniqueId()I
    .locals 2

    .prologue
    .line 10
    sget v0, Lcom/instagram/util/LoaderUtil;->loaderId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/instagram/util/LoaderUtil;->loaderId:I

    return v0
.end method
