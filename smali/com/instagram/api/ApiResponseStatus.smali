.class public final enum Lcom/instagram/api/ApiResponseStatus;
.super Ljava/lang/Enum;
.source "ApiResponseStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/api/ApiResponseStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/api/ApiResponseStatus;

.field public static final enum ApiResponseStatusError:Lcom/instagram/api/ApiResponseStatus;

.field public static final enum ApiResponseStatusLoading:Lcom/instagram/api/ApiResponseStatus;

.field public static final enum ApiResponseStatusObjectNotFound:Lcom/instagram/api/ApiResponseStatus;

.field public static final enum ApiResponseStatusOk:Lcom/instagram/api/ApiResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/instagram/api/ApiResponseStatus;

    const-string v1, "ApiResponseStatusLoading"

    invoke-direct {v0, v1, v2}, Lcom/instagram/api/ApiResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/api/ApiResponseStatus;->ApiResponseStatusLoading:Lcom/instagram/api/ApiResponseStatus;

    .line 7
    new-instance v0, Lcom/instagram/api/ApiResponseStatus;

    const-string v1, "ApiResponseStatusOk"

    invoke-direct {v0, v1, v3}, Lcom/instagram/api/ApiResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/api/ApiResponseStatus;->ApiResponseStatusOk:Lcom/instagram/api/ApiResponseStatus;

    .line 8
    new-instance v0, Lcom/instagram/api/ApiResponseStatus;

    const-string v1, "ApiResponseStatusObjectNotFound"

    invoke-direct {v0, v1, v4}, Lcom/instagram/api/ApiResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/api/ApiResponseStatus;->ApiResponseStatusObjectNotFound:Lcom/instagram/api/ApiResponseStatus;

    .line 9
    new-instance v0, Lcom/instagram/api/ApiResponseStatus;

    const-string v1, "ApiResponseStatusError"

    invoke-direct {v0, v1, v5}, Lcom/instagram/api/ApiResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/api/ApiResponseStatus;->ApiResponseStatusError:Lcom/instagram/api/ApiResponseStatus;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/instagram/api/ApiResponseStatus;

    sget-object v1, Lcom/instagram/api/ApiResponseStatus;->ApiResponseStatusLoading:Lcom/instagram/api/ApiResponseStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/api/ApiResponseStatus;->ApiResponseStatusOk:Lcom/instagram/api/ApiResponseStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/api/ApiResponseStatus;->ApiResponseStatusObjectNotFound:Lcom/instagram/api/ApiResponseStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/api/ApiResponseStatus;->ApiResponseStatusError:Lcom/instagram/api/ApiResponseStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/instagram/api/ApiResponseStatus;->$VALUES:[Lcom/instagram/api/ApiResponseStatus;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/api/ApiResponseStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 5
    const-class v0, Lcom/instagram/api/ApiResponseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/ApiResponseStatus;

    return-object v0
.end method

.method public static values()[Lcom/instagram/api/ApiResponseStatus;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/instagram/api/ApiResponseStatus;->$VALUES:[Lcom/instagram/api/ApiResponseStatus;

    invoke-virtual {v0}, [Lcom/instagram/api/ApiResponseStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/api/ApiResponseStatus;

    return-object v0
.end method
