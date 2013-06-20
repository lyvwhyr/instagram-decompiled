.class public Lcom/instagram/util/IgGateKeeper;
.super Ljava/lang/Object;
.source "IgGateKeeper.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/util/IgGateKeeper;->mInit:Z

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/util/IgGateKeeper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCookies()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    sget-boolean v0, Lcom/instagram/util/IgGateKeeper;->mInit:Z

    if-eqz v0, :cond_0

    .line 23
    :goto_0
    return-void

    .line 22
    :cond_0
    sput-object p0, Lcom/instagram/util/IgGateKeeper;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static isQuarantined()Z
    .locals 2

    .prologue
    .line 38
    const-string v0, "quarantined"

    const-string v1, "yes"

    invoke-static {v0, v1}, Lcom/instagram/util/IgGateKeeper;->matchCookie(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVesper()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method private static matchCookie(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 29
    sget-object v0, Lcom/instagram/util/IgGateKeeper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/api/PersistentCookieStore;->getInstance(Landroid/content/Context;)Lcom/instagram/api/PersistentCookieStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/PersistentCookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/cookie/Cookie;

    .line 30
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
