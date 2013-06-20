.class public final enum Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;
.super Ljava/lang/Enum;
.source "FlagHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

.field public static final enum Comment:Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

.field public static final enum Photo:Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

.field public static final enum User:Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;


# instance fields
.field private final mSuccessMessageResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    new-instance v0, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    const-string v1, "Comment"

    sget v2, Lcom/facebook/k;->we_will_review_this_comment_asap:I

    invoke-direct {v0, v1, v3, v2}, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;->Comment:Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    .line 99
    new-instance v0, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    const-string v1, "User"

    sget v2, Lcom/facebook/k;->we_will_review_this_user_asap:I

    invoke-direct {v0, v1, v4, v2}, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;->User:Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    .line 100
    new-instance v0, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    const-string v1, "Photo"

    sget v2, Lcom/facebook/k;->we_will_review_this_photo_asap:I

    invoke-direct {v0, v1, v5, v2}, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;->Photo:Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    sget-object v1, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;->Comment:Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;->User:Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;->Photo:Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;->$VALUES:[Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "successMessageResourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput p3, p0, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;->mSuccessMessageResourceId:I

    .line 106
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;
    .locals 1
    .parameter "name"

    .prologue
    .line 97
    const-class v0, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    return-object v0
.end method

.method public static values()[Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;->$VALUES:[Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    invoke-virtual {v0}, [Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;

    return-object v0
.end method


# virtual methods
.method public getSuccessMessageResourceId()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/instagram/api/loaderrequest/FlagHelper$FlagType;->mSuccessMessageResourceId:I

    return v0
.end method
