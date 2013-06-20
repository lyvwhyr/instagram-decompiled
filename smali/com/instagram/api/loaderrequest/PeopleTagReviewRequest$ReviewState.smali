.class public final enum Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;
.super Ljava/lang/Enum;
.source "PeopleTagReviewRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

.field public static final enum REVIEW_DISABLED:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

.field public static final enum REVIEW_ENABLED:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    const-string v1, "REVIEW_ENABLED"

    invoke-direct {v0, v1, v2}, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;->REVIEW_ENABLED:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    new-instance v0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    const-string v1, "REVIEW_DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;->REVIEW_DISABLED:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    sget-object v1, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;->REVIEW_ENABLED:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;->REVIEW_DISABLED:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;->$VALUES:[Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;
    .locals 1
    .parameter "name"

    .prologue
    .line 24
    const-class v0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    return-object v0
.end method

.method public static values()[Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;->$VALUES:[Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    invoke-virtual {v0}, [Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    return-object v0
.end method
