.class final Lcom/instagram/android/model/Media$MediaType$1;
.super Ljava/lang/Object;
.source "Media.java"

# interfaces
.implements Lcom/a/a/a/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/a/g",
        "<",
        "Lcom/instagram/android/model/Media$MediaType;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/instagram/android/model/Media$MediaType;)Ljava/lang/Integer;
    .locals 1
    .parameter "input"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 69
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/instagram/android/model/Media$MediaType;->toServerValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    check-cast p1, Lcom/instagram/android/model/Media$MediaType;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/model/Media$MediaType$1;->apply(Lcom/instagram/android/model/Media$MediaType;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
