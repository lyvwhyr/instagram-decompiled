.class public final enum Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;
.super Ljava/lang/Enum;
.source "FeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

.field public static final enum DOWN:Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

.field public static final enum UP:Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    new-instance v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    const-string v1, "UP"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;->UP:Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    .line 135
    new-instance v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;->DOWN:Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    sget-object v1, Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;->UP:Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;->DOWN:Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;->$VALUES:[Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

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
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;
    .locals 1
    .parameter "name"

    .prologue
    .line 133
    const-class v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;->$VALUES:[Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    invoke-virtual {v0}, [Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/feed/adapter/FeedAdapter$ScrollDirection;

    return-object v0
.end method
