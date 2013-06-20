.class public final enum Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;
.super Ljava/lang/Enum;
.source "FlagHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;

.field public static final enum Abuse:Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;

.field public static final enum Spam:Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;


# instance fields
.field private final mReasonId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 114
    new-instance v0, Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;

    const-string v1, "Spam"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;->Spam:Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;

    .line 115
    new-instance v0, Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;

    const-string v1, "Abuse"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;->Abuse:Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;

    .line 113
    new-array v0, v5, [Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;

    sget-object v1, Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;->Spam:Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;->Abuse:Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;->$VALUES:[Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 1
    .parameter
    .parameter
    .parameter "reasonId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;->mReasonId:I

    .line 121
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;
    .locals 1
    .parameter "name"

    .prologue
    .line 113
    const-class v0, Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;

    return-object v0
.end method

.method public static values()[Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;->$VALUES:[Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;

    invoke-virtual {v0}, [Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;

    return-object v0
.end method


# virtual methods
.method public getReasonId()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper$CommentFlagReason;->mReasonId:I

    return v0
.end method
