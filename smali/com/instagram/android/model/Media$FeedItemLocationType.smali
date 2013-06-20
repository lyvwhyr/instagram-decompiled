.class public final enum Lcom/instagram/android/model/Media$FeedItemLocationType;
.super Ljava/lang/Enum;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/model/Media$FeedItemLocationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/model/Media$FeedItemLocationType;

.field public static final enum Foursquare:Lcom/instagram/android/model/Media$FeedItemLocationType;

.field public static final enum Undefined:Lcom/instagram/android/model/Media$FeedItemLocationType;

.field public static final enum User:Lcom/instagram/android/model/Media$FeedItemLocationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    new-instance v0, Lcom/instagram/android/model/Media$FeedItemLocationType;

    const-string v1, "Undefined"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/model/Media$FeedItemLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/Media$FeedItemLocationType;->Undefined:Lcom/instagram/android/model/Media$FeedItemLocationType;

    .line 168
    new-instance v0, Lcom/instagram/android/model/Media$FeedItemLocationType;

    const-string v1, "User"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/model/Media$FeedItemLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/Media$FeedItemLocationType;->User:Lcom/instagram/android/model/Media$FeedItemLocationType;

    .line 169
    new-instance v0, Lcom/instagram/android/model/Media$FeedItemLocationType;

    const-string v1, "Foursquare"

    invoke-direct {v0, v1, v4}, Lcom/instagram/android/model/Media$FeedItemLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/Media$FeedItemLocationType;->Foursquare:Lcom/instagram/android/model/Media$FeedItemLocationType;

    .line 166
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/android/model/Media$FeedItemLocationType;

    sget-object v1, Lcom/instagram/android/model/Media$FeedItemLocationType;->Undefined:Lcom/instagram/android/model/Media$FeedItemLocationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/model/Media$FeedItemLocationType;->User:Lcom/instagram/android/model/Media$FeedItemLocationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/model/Media$FeedItemLocationType;->Foursquare:Lcom/instagram/android/model/Media$FeedItemLocationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/instagram/android/model/Media$FeedItemLocationType;->$VALUES:[Lcom/instagram/android/model/Media$FeedItemLocationType;

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
    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/model/Media$FeedItemLocationType;
    .locals 1
    .parameter "name"

    .prologue
    .line 166
    const-class v0, Lcom/instagram/android/model/Media$FeedItemLocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media$FeedItemLocationType;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/model/Media$FeedItemLocationType;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/instagram/android/model/Media$FeedItemLocationType;->$VALUES:[Lcom/instagram/android/model/Media$FeedItemLocationType;

    invoke-virtual {v0}, [Lcom/instagram/android/model/Media$FeedItemLocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/model/Media$FeedItemLocationType;

    return-object v0
.end method
