.class public final enum Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;
.super Ljava/lang/Enum;
.source "GLRenderContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

.field public static final enum RENDER_CONTINUOUSLY:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

.field public static final enum RENDER_WHEN_DIRTY:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    const-string v1, "RENDER_CONTINUOUSLY"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;->RENDER_CONTINUOUSLY:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    .line 82
    new-instance v0, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    const-string v1, "RENDER_WHEN_DIRTY"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;->RENDER_WHEN_DIRTY:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    sget-object v1, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;->RENDER_CONTINUOUSLY:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;->RENDER_WHEN_DIRTY:Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;->$VALUES:[Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

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
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 80
    const-class v0, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;->$VALUES:[Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    invoke-virtual {v0}, [Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/video/gl/GLRenderContext$RenderMode;

    return-object v0
.end method
