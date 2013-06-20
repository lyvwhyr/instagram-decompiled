.class Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$ProcessingTextEvaluator;
.super Ljava/lang/Object;
.source "PendingMediaRowAdapter.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$ProcessingTextEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    check-cast p2, Ljava/lang/String;

    .end local p2
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$ProcessingTextEvaluator;->evaluate(FLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(FLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    float-to-double v2, p1

    const-wide/high16 v4, 0x3fd0

    div-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
