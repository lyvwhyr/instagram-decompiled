.class public final enum Lcom/instagram/api/request/AbstractRequest$Method;
.super Ljava/lang/Enum;
.source "AbstractRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/api/request/AbstractRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/api/request/AbstractRequest$Method;

.field public static final enum GET:Lcom/instagram/api/request/AbstractRequest$Method;

.field public static final enum POST:Lcom/instagram/api/request/AbstractRequest$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/instagram/api/request/AbstractRequest$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/instagram/api/request/AbstractRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/api/request/AbstractRequest$Method;->GET:Lcom/instagram/api/request/AbstractRequest$Method;

    .line 23
    new-instance v0, Lcom/instagram/api/request/AbstractRequest$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/instagram/api/request/AbstractRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/api/request/AbstractRequest$Method;->POST:Lcom/instagram/api/request/AbstractRequest$Method;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/api/request/AbstractRequest$Method;

    sget-object v1, Lcom/instagram/api/request/AbstractRequest$Method;->GET:Lcom/instagram/api/request/AbstractRequest$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/api/request/AbstractRequest$Method;->POST:Lcom/instagram/api/request/AbstractRequest$Method;

    aput-object v1, v0, v3

    sput-object v0, Lcom/instagram/api/request/AbstractRequest$Method;->$VALUES:[Lcom/instagram/api/request/AbstractRequest$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/api/request/AbstractRequest$Method;
    .locals 1
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcom/instagram/api/request/AbstractRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/request/AbstractRequest$Method;

    return-object v0
.end method

.method public static values()[Lcom/instagram/api/request/AbstractRequest$Method;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/instagram/api/request/AbstractRequest$Method;->$VALUES:[Lcom/instagram/api/request/AbstractRequest$Method;

    invoke-virtual {v0}, [Lcom/instagram/api/request/AbstractRequest$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/api/request/AbstractRequest$Method;

    return-object v0
.end method
