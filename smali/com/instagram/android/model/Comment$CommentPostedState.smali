.class public final enum Lcom/instagram/android/model/Comment$CommentPostedState;
.super Ljava/lang/Enum;
.source "Comment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/model/Comment$CommentPostedState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/model/Comment$CommentPostedState;

.field public static final enum DeletePending:Lcom/instagram/android/model/Comment$CommentPostedState;

.field public static final enum Deleted:Lcom/instagram/android/model/Comment$CommentPostedState;

.field public static final enum Failure:Lcom/instagram/android/model/Comment$CommentPostedState;

.field public static final enum Posting:Lcom/instagram/android/model/Comment$CommentPostedState;

.field public static final enum Success:Lcom/instagram/android/model/Comment$CommentPostedState;

.field public static final enum Unposted:Lcom/instagram/android/model/Comment$CommentPostedState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    new-instance v0, Lcom/instagram/android/model/Comment$CommentPostedState;

    const-string v1, "Unposted"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/model/Comment$CommentPostedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->Unposted:Lcom/instagram/android/model/Comment$CommentPostedState;

    .line 73
    new-instance v0, Lcom/instagram/android/model/Comment$CommentPostedState;

    const-string v1, "Failure"

    invoke-direct {v0, v1, v4}, Lcom/instagram/android/model/Comment$CommentPostedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->Failure:Lcom/instagram/android/model/Comment$CommentPostedState;

    .line 74
    new-instance v0, Lcom/instagram/android/model/Comment$CommentPostedState;

    const-string v1, "Posting"

    invoke-direct {v0, v1, v5}, Lcom/instagram/android/model/Comment$CommentPostedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->Posting:Lcom/instagram/android/model/Comment$CommentPostedState;

    .line 75
    new-instance v0, Lcom/instagram/android/model/Comment$CommentPostedState;

    const-string v1, "Deleted"

    invoke-direct {v0, v1, v6}, Lcom/instagram/android/model/Comment$CommentPostedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->Deleted:Lcom/instagram/android/model/Comment$CommentPostedState;

    .line 76
    new-instance v0, Lcom/instagram/android/model/Comment$CommentPostedState;

    const-string v1, "DeletePending"

    invoke-direct {v0, v1, v7}, Lcom/instagram/android/model/Comment$CommentPostedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->DeletePending:Lcom/instagram/android/model/Comment$CommentPostedState;

    .line 77
    new-instance v0, Lcom/instagram/android/model/Comment$CommentPostedState;

    const-string v1, "Success"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/model/Comment$CommentPostedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->Success:Lcom/instagram/android/model/Comment$CommentPostedState;

    .line 71
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/instagram/android/model/Comment$CommentPostedState;

    sget-object v1, Lcom/instagram/android/model/Comment$CommentPostedState;->Unposted:Lcom/instagram/android/model/Comment$CommentPostedState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/model/Comment$CommentPostedState;->Failure:Lcom/instagram/android/model/Comment$CommentPostedState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/android/model/Comment$CommentPostedState;->Posting:Lcom/instagram/android/model/Comment$CommentPostedState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instagram/android/model/Comment$CommentPostedState;->Deleted:Lcom/instagram/android/model/Comment$CommentPostedState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/instagram/android/model/Comment$CommentPostedState;->DeletePending:Lcom/instagram/android/model/Comment$CommentPostedState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/instagram/android/model/Comment$CommentPostedState;->Success:Lcom/instagram/android/model/Comment$CommentPostedState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->$VALUES:[Lcom/instagram/android/model/Comment$CommentPostedState;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/model/Comment$CommentPostedState;
    .locals 1
    .parameter "name"

    .prologue
    .line 71
    const-class v0, Lcom/instagram/android/model/Comment$CommentPostedState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Comment$CommentPostedState;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/model/Comment$CommentPostedState;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->$VALUES:[Lcom/instagram/android/model/Comment$CommentPostedState;

    invoke-virtual {v0}, [Lcom/instagram/android/model/Comment$CommentPostedState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/model/Comment$CommentPostedState;

    return-object v0
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->Deleted:Lcom/instagram/android/model/Comment$CommentPostedState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/instagram/android/model/Comment$CommentPostedState;->DeletePending:Lcom/instagram/android/model/Comment$CommentPostedState;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
