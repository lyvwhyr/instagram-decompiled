.class final enum Lcom/instagram/android/model/Media$MediaSize;
.super Ljava/lang/Enum;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/model/Media$MediaSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/model/Media$MediaSize;

.field public static final enum HIGH_RES_PX:Lcom/instagram/android/model/Media$MediaSize;

.field public static final enum LOW_RES_PX:Lcom/instagram/android/model/Media$MediaSize;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    new-instance v0, Lcom/instagram/android/model/Media$MediaSize;

    const-string v1, "LOW_RES_PX"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/model/Media$MediaSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/Media$MediaSize;->LOW_RES_PX:Lcom/instagram/android/model/Media$MediaSize;

    .line 130
    new-instance v0, Lcom/instagram/android/model/Media$MediaSize;

    const-string v1, "HIGH_RES_PX"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/model/Media$MediaSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/Media$MediaSize;->HIGH_RES_PX:Lcom/instagram/android/model/Media$MediaSize;

    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/android/model/Media$MediaSize;

    sget-object v1, Lcom/instagram/android/model/Media$MediaSize;->LOW_RES_PX:Lcom/instagram/android/model/Media$MediaSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/model/Media$MediaSize;->HIGH_RES_PX:Lcom/instagram/android/model/Media$MediaSize;

    aput-object v1, v0, v3

    sput-object v0, Lcom/instagram/android/model/Media$MediaSize;->$VALUES:[Lcom/instagram/android/model/Media$MediaSize;

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
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/model/Media$MediaSize;
    .locals 1
    .parameter "name"

    .prologue
    .line 128
    const-class v0, Lcom/instagram/android/model/Media$MediaSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media$MediaSize;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/model/Media$MediaSize;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/instagram/android/model/Media$MediaSize;->$VALUES:[Lcom/instagram/android/model/Media$MediaSize;

    invoke-virtual {v0}, [Lcom/instagram/android/model/Media$MediaSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/model/Media$MediaSize;

    return-object v0
.end method
