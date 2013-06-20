.class public final enum Lcom/instagram/android/model/User$UserAction;
.super Ljava/lang/Enum;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/model/User$UserAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/model/User$UserAction;

.field public static final enum UserActionApprove:Lcom/instagram/android/model/User$UserAction;

.field public static final enum UserActionCancelRequest:Lcom/instagram/android/model/User$UserAction;

.field public static final enum UserActionFollow:Lcom/instagram/android/model/User$UserAction;

.field public static final enum UserActionIgnore:Lcom/instagram/android/model/User$UserAction;

.field public static final enum UserActionUnfollow:Lcom/instagram/android/model/User$UserAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    new-instance v0, Lcom/instagram/android/model/User$UserAction;

    const-string v1, "UserActionFollow"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/model/User$UserAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/User$UserAction;->UserActionFollow:Lcom/instagram/android/model/User$UserAction;

    .line 176
    new-instance v0, Lcom/instagram/android/model/User$UserAction;

    const-string v1, "UserActionUnfollow"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/model/User$UserAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/User$UserAction;->UserActionUnfollow:Lcom/instagram/android/model/User$UserAction;

    .line 177
    new-instance v0, Lcom/instagram/android/model/User$UserAction;

    const-string v1, "UserActionCancelRequest"

    invoke-direct {v0, v1, v4}, Lcom/instagram/android/model/User$UserAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/User$UserAction;->UserActionCancelRequest:Lcom/instagram/android/model/User$UserAction;

    .line 178
    new-instance v0, Lcom/instagram/android/model/User$UserAction;

    const-string v1, "UserActionIgnore"

    invoke-direct {v0, v1, v5}, Lcom/instagram/android/model/User$UserAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/User$UserAction;->UserActionIgnore:Lcom/instagram/android/model/User$UserAction;

    .line 179
    new-instance v0, Lcom/instagram/android/model/User$UserAction;

    const-string v1, "UserActionApprove"

    invoke-direct {v0, v1, v6}, Lcom/instagram/android/model/User$UserAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/User$UserAction;->UserActionApprove:Lcom/instagram/android/model/User$UserAction;

    .line 174
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/instagram/android/model/User$UserAction;

    sget-object v1, Lcom/instagram/android/model/User$UserAction;->UserActionFollow:Lcom/instagram/android/model/User$UserAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/model/User$UserAction;->UserActionUnfollow:Lcom/instagram/android/model/User$UserAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/model/User$UserAction;->UserActionCancelRequest:Lcom/instagram/android/model/User$UserAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/android/model/User$UserAction;->UserActionIgnore:Lcom/instagram/android/model/User$UserAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instagram/android/model/User$UserAction;->UserActionApprove:Lcom/instagram/android/model/User$UserAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/instagram/android/model/User$UserAction;->$VALUES:[Lcom/instagram/android/model/User$UserAction;

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
    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/model/User$UserAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 174
    const-class v0, Lcom/instagram/android/model/User$UserAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User$UserAction;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/model/User$UserAction;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/instagram/android/model/User$UserAction;->$VALUES:[Lcom/instagram/android/model/User$UserAction;

    invoke-virtual {v0}, [Lcom/instagram/android/model/User$UserAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/model/User$UserAction;

    return-object v0
.end method
