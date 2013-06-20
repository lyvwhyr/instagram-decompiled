.class public final enum Lcom/instagram/android/model/Media$MediaType;
.super Ljava/lang/Enum;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/model/Media$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/model/Media$MediaType;

.field public static final enum PHOTO:Lcom/instagram/android/model/Media$MediaType;

.field public static final enum VIDEO:Lcom/instagram/android/model/Media$MediaType;

.field private static final sReverseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/instagram/android/model/Media$MediaType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mServerValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 61
    new-instance v0, Lcom/instagram/android/model/Media$MediaType;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v3, v2}, Lcom/instagram/android/model/Media$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instagram/android/model/Media$MediaType;->PHOTO:Lcom/instagram/android/model/Media$MediaType;

    .line 62
    new-instance v0, Lcom/instagram/android/model/Media$MediaType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v2, v4}, Lcom/instagram/android/model/Media$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    .line 60
    new-array v0, v4, [Lcom/instagram/android/model/Media$MediaType;

    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->PHOTO:Lcom/instagram/android/model/Media$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/instagram/android/model/Media$MediaType;->$VALUES:[Lcom/instagram/android/model/Media$MediaType;

    .line 64
    invoke-static {}, Lcom/instagram/android/model/Media$MediaType;->values()[Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/model/Media$MediaType$1;

    invoke-direct {v1}, Lcom/instagram/android/model/Media$MediaType$1;-><init>()V

    invoke-static {v0, v1}, Lcom/a/a/b/fx;->a(Ljava/lang/Iterable;Lcom/a/a/a/g;)Lcom/a/a/b/do;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/model/Media$MediaType;->sReverseMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "serverValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/instagram/android/model/Media$MediaType;->mServerValue:I

    .line 78
    return-void
.end method

.method static fromServerValue(I)Lcom/instagram/android/model/Media$MediaType;
    .locals 2
    .parameter "serverValue"

    .prologue
    .line 81
    sget-object v0, Lcom/instagram/android/model/Media$MediaType;->sReverseMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media$MediaType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/model/Media$MediaType;
    .locals 1
    .parameter "name"

    .prologue
    .line 60
    const-class v0, Lcom/instagram/android/model/Media$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/model/Media$MediaType;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/instagram/android/model/Media$MediaType;->$VALUES:[Lcom/instagram/android/model/Media$MediaType;

    invoke-virtual {v0}, [Lcom/instagram/android/model/Media$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/model/Media$MediaType;

    return-object v0
.end method


# virtual methods
.method public toServerValue()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/instagram/android/model/Media$MediaType;->mServerValue:I

    return v0
.end method
