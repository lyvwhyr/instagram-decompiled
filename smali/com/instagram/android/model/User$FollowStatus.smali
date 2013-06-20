.class public final enum Lcom/instagram/android/model/User$FollowStatus;
.super Ljava/lang/Enum;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/model/User$FollowStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/model/User$FollowStatus;

.field public static final enum FollowStatusFetching:Lcom/instagram/android/model/User$FollowStatus;

.field public static final enum FollowStatusFollowing:Lcom/instagram/android/model/User$FollowStatus;

.field public static final enum FollowStatusNotFollowing:Lcom/instagram/android/model/User$FollowStatus;

.field public static final enum FollowStatusRequested:Lcom/instagram/android/model/User$FollowStatus;

.field public static final enum FollowStatusUnknown:Lcom/instagram/android/model/User$FollowStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    new-instance v0, Lcom/instagram/android/model/User$FollowStatus;

    const-string v1, "FollowStatusUnknown"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/model/User$FollowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusUnknown:Lcom/instagram/android/model/User$FollowStatus;

    .line 190
    new-instance v0, Lcom/instagram/android/model/User$FollowStatus;

    const-string v1, "FollowStatusFetching"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/model/User$FollowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusFetching:Lcom/instagram/android/model/User$FollowStatus;

    .line 191
    new-instance v0, Lcom/instagram/android/model/User$FollowStatus;

    const-string v1, "FollowStatusNotFollowing"

    invoke-direct {v0, v1, v4}, Lcom/instagram/android/model/User$FollowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusNotFollowing:Lcom/instagram/android/model/User$FollowStatus;

    .line 192
    new-instance v0, Lcom/instagram/android/model/User$FollowStatus;

    const-string v1, "FollowStatusFollowing"

    invoke-direct {v0, v1, v5}, Lcom/instagram/android/model/User$FollowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusFollowing:Lcom/instagram/android/model/User$FollowStatus;

    .line 193
    new-instance v0, Lcom/instagram/android/model/User$FollowStatus;

    const-string v1, "FollowStatusRequested"

    invoke-direct {v0, v1, v6}, Lcom/instagram/android/model/User$FollowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusRequested:Lcom/instagram/android/model/User$FollowStatus;

    .line 188
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/instagram/android/model/User$FollowStatus;

    sget-object v1, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusUnknown:Lcom/instagram/android/model/User$FollowStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusFetching:Lcom/instagram/android/model/User$FollowStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusNotFollowing:Lcom/instagram/android/model/User$FollowStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusFollowing:Lcom/instagram/android/model/User$FollowStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusRequested:Lcom/instagram/android/model/User$FollowStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/instagram/android/model/User$FollowStatus;->$VALUES:[Lcom/instagram/android/model/User$FollowStatus;

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
    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/model/User$FollowStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 188
    const-class v0, Lcom/instagram/android/model/User$FollowStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User$FollowStatus;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/model/User$FollowStatus;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/instagram/android/model/User$FollowStatus;->$VALUES:[Lcom/instagram/android/model/User$FollowStatus;

    invoke-virtual {v0}, [Lcom/instagram/android/model/User$FollowStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/model/User$FollowStatus;

    return-object v0
.end method
