.class public final enum Lcom/instagram/android/model/FeedMessage$FeedMessageType;
.super Ljava/lang/Enum;
.source "FeedMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/model/FeedMessage$FeedMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/model/FeedMessage$FeedMessageType;

.field public static final enum mapreview:Lcom/instagram/android/model/FeedMessage$FeedMessageType;

.field public static final enum unknown:Lcom/instagram/android/model/FeedMessage$FeedMessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/instagram/android/model/FeedMessage$FeedMessageType;

    const-string v1, "mapreview"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/model/FeedMessage$FeedMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/FeedMessage$FeedMessageType;->mapreview:Lcom/instagram/android/model/FeedMessage$FeedMessageType;

    .line 50
    new-instance v0, Lcom/instagram/android/model/FeedMessage$FeedMessageType;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/model/FeedMessage$FeedMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/model/FeedMessage$FeedMessageType;->unknown:Lcom/instagram/android/model/FeedMessage$FeedMessageType;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/android/model/FeedMessage$FeedMessageType;

    sget-object v1, Lcom/instagram/android/model/FeedMessage$FeedMessageType;->mapreview:Lcom/instagram/android/model/FeedMessage$FeedMessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/model/FeedMessage$FeedMessageType;->unknown:Lcom/instagram/android/model/FeedMessage$FeedMessageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/instagram/android/model/FeedMessage$FeedMessageType;->$VALUES:[Lcom/instagram/android/model/FeedMessage$FeedMessageType;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/model/FeedMessage$FeedMessageType;
    .locals 1
    .parameter "name"

    .prologue
    .line 48
    const-class v0, Lcom/instagram/android/model/FeedMessage$FeedMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/FeedMessage$FeedMessageType;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/model/FeedMessage$FeedMessageType;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/instagram/android/model/FeedMessage$FeedMessageType;->$VALUES:[Lcom/instagram/android/model/FeedMessage$FeedMessageType;

    invoke-virtual {v0}, [Lcom/instagram/android/model/FeedMessage$FeedMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/model/FeedMessage$FeedMessageType;

    return-object v0
.end method
