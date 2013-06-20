.class final enum Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
.super Ljava/lang/Enum;
.source "H264TrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

.field public static final enum BUFFER:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

.field public static final enum END:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

.field public static final enum IGNORE:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

.field public static final enum STORE:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 223
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    const-string v1, "IGNORE"

    invoke-direct {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->IGNORE:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    const-string v1, "BUFFER"

    invoke-direct {v0, v1, v3}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->BUFFER:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    const-string v1, "STORE"

    invoke-direct {v0, v1, v4}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->STORE:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    const-string v1, "END"

    invoke-direct {v0, v1, v5}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->END:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    .line 222
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    sget-object v1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->IGNORE:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->BUFFER:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->STORE:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->END:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    aput-object v1, v0, v5

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->$VALUES:[Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

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
    .line 222
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    .locals 1
    .parameter "name"

    .prologue
    .line 222
    const-class v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    return-object v0
.end method

.method public static values()[Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->$VALUES:[Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    invoke-virtual {v0}, [Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    return-object v0
.end method
