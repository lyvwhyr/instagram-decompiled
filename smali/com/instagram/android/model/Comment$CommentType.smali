.class final enum Lcom/instagram/android/model/Comment$CommentType;
.super Ljava/lang/Enum;
.source "Comment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/model/Comment$CommentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/model/Comment$CommentType;

.field public static final enum Caption:Lcom/instagram/android/model/Comment$CommentType;

.field public static final enum Normal:Lcom/instagram/android/model/Comment$CommentType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/instagram/android/model/Comment$CommentType;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/model/Comment$CommentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/Comment$CommentType;->Normal:Lcom/instagram/android/model/Comment$CommentType;

    .line 47
    new-instance v0, Lcom/instagram/android/model/Comment$CommentType;

    const-string v1, "Caption"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/model/Comment$CommentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/Comment$CommentType;->Caption:Lcom/instagram/android/model/Comment$CommentType;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/android/model/Comment$CommentType;

    sget-object v1, Lcom/instagram/android/model/Comment$CommentType;->Normal:Lcom/instagram/android/model/Comment$CommentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/model/Comment$CommentType;->Caption:Lcom/instagram/android/model/Comment$CommentType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/instagram/android/model/Comment$CommentType;->$VALUES:[Lcom/instagram/android/model/Comment$CommentType;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromValue(I)Lcom/instagram/android/model/Comment$CommentType;
    .locals 1
    .parameter "i"

    .prologue
    .line 50
    packed-switch p0, :pswitch_data_0

    .line 55
    sget-object v0, Lcom/instagram/android/model/Comment$CommentType;->Normal:Lcom/instagram/android/model/Comment$CommentType;

    :goto_0
    return-object v0

    .line 52
    :pswitch_0
    sget-object v0, Lcom/instagram/android/model/Comment$CommentType;->Caption:Lcom/instagram/android/model/Comment$CommentType;

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/model/Comment$CommentType;
    .locals 1
    .parameter "name"

    .prologue
    .line 45
    const-class v0, Lcom/instagram/android/model/Comment$CommentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Comment$CommentType;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/model/Comment$CommentType;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/instagram/android/model/Comment$CommentType;->$VALUES:[Lcom/instagram/android/model/Comment$CommentType;

    invoke-virtual {v0}, [Lcom/instagram/android/model/Comment$CommentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/model/Comment$CommentType;

    return-object v0
.end method
