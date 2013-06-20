.class public final enum Lcom/instagram/android/model/PendingMedia$Status;
.super Ljava/lang/Enum;
.source "PendingMedia.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/model/PendingMedia$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/model/PendingMedia$Status;

.field public static final enum CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

.field public static final enum CREATED_MEDIA:Lcom/instagram/android/model/PendingMedia$Status;

.field public static final enum NOT_UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

.field public static final enum UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

.field public static final enum UPLOADED_VIDEO:Lcom/instagram/android/model/PendingMedia$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/instagram/android/model/PendingMedia$Status;

    const-string v1, "NOT_UPLOADED"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/model/PendingMedia$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/PendingMedia$Status;->NOT_UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    .line 29
    new-instance v0, Lcom/instagram/android/model/PendingMedia$Status;

    const-string v1, "UPLOADED"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/model/PendingMedia$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    .line 30
    new-instance v0, Lcom/instagram/android/model/PendingMedia$Status;

    const-string v1, "CONFIGURED"

    invoke-direct {v0, v1, v4}, Lcom/instagram/android/model/PendingMedia$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/PendingMedia$Status;->CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

    .line 33
    new-instance v0, Lcom/instagram/android/model/PendingMedia$Status;

    const-string v1, "CREATED_MEDIA"

    invoke-direct {v0, v1, v5}, Lcom/instagram/android/model/PendingMedia$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/PendingMedia$Status;->CREATED_MEDIA:Lcom/instagram/android/model/PendingMedia$Status;

    .line 34
    new-instance v0, Lcom/instagram/android/model/PendingMedia$Status;

    const-string v1, "UPLOADED_VIDEO"

    invoke-direct {v0, v1, v6}, Lcom/instagram/android/model/PendingMedia$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED_VIDEO:Lcom/instagram/android/model/PendingMedia$Status;

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/instagram/android/model/PendingMedia$Status;

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->NOT_UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED:Lcom/instagram/android/model/PendingMedia$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->CREATED_MEDIA:Lcom/instagram/android/model/PendingMedia$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->UPLOADED_VIDEO:Lcom/instagram/android/model/PendingMedia$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/instagram/android/model/PendingMedia$Status;->$VALUES:[Lcom/instagram/android/model/PendingMedia$Status;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/model/PendingMedia$Status;
    .locals 1
    .parameter "name"

    .prologue
    .line 27
    const-class v0, Lcom/instagram/android/model/PendingMedia$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/PendingMedia$Status;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/model/PendingMedia$Status;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/instagram/android/model/PendingMedia$Status;->$VALUES:[Lcom/instagram/android/model/PendingMedia$Status;

    invoke-virtual {v0}, [Lcom/instagram/android/model/PendingMedia$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/model/PendingMedia$Status;

    return-object v0
.end method
