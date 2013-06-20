.class public final enum Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;
.super Ljava/lang/Enum;
.source "MediaActionsView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

.field public static final enum AUTOPLAY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

.field public static final enum HIDDEN:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

.field public static final enum LOADING:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

.field public static final enum PAUSE:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

.field public static final enum PLAY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

.field public static final enum RETRY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->HIDDEN:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    .line 23
    new-instance v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    const-string v1, "AUTOPLAY"

    invoke-direct {v0, v1, v4}, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->AUTOPLAY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    .line 24
    new-instance v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v5}, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->LOADING:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    .line 25
    new-instance v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v6}, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->PLAY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    .line 26
    new-instance v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v7}, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->PAUSE:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    .line 27
    new-instance v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    const-string v1, "RETRY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->RETRY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    sget-object v1, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->HIDDEN:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->AUTOPLAY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->LOADING:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->PLAY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->PAUSE:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->RETRY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->$VALUES:[Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;
    .locals 1
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->$VALUES:[Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    invoke-virtual {v0}, [Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    return-object v0
.end method
