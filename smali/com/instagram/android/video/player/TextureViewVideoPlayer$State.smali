.class final enum Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;
.super Ljava/lang/Enum;
.source "TextureViewVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

.field public static final enum END:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

.field public static final enum ERROR:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

.field public static final enum IDLE:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

.field public static final enum INITIALIZED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

.field public static final enum PAUSED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

.field public static final enum PLAYBACK_COMPLETED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

.field public static final enum PREPARED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

.field public static final enum PREPARING:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

.field public static final enum STARTED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

.field public static final enum STOPPED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->IDLE:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 42
    new-instance v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->INITIALIZED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 43
    new-instance v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v5}, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PREPARING:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 44
    new-instance v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v6}, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PREPARED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 45
    new-instance v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v7}, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->STARTED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 46
    new-instance v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    const-string v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PAUSED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 47
    new-instance v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->STOPPED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 48
    new-instance v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    const-string v1, "PLAYBACK_COMPLETED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PLAYBACK_COMPLETED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 49
    new-instance v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    const-string v1, "ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->ERROR:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 50
    new-instance v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    const-string v1, "END"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->END:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    .line 40
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    sget-object v1, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->IDLE:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->INITIALIZED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PREPARING:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PREPARED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->STARTED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PAUSED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->STOPPED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->PLAYBACK_COMPLETED:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->ERROR:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->END:Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->$VALUES:[Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 40
    const-class v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->$VALUES:[Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    invoke-virtual {v0}, [Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/video/player/TextureViewVideoPlayer$State;

    return-object v0
.end method
