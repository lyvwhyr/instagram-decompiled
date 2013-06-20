.class public final enum Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;
.super Ljava/lang/Enum;
.source "FeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

.field public static final enum FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

.field public static final enum GRID:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    new-instance v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    const-string v1, "FEED"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    .line 130
    new-instance v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    const-string v1, "GRID"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->GRID:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    sget-object v1, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->GRID:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->$VALUES:[Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 128
    const-class v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->$VALUES:[Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    invoke-virtual {v0}, [Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    return-object v0
.end method
