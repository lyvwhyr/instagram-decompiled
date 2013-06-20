.class final Landroid/support/v4/view/bc;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/support/v4/view/bg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/bg;Landroid/support/v4/view/bg;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 109
    iget v0, p1, Landroid/support/v4/view/bg;->b:I

    iget v1, p2, Landroid/support/v4/view/bg;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    check-cast p1, Landroid/support/v4/view/bg;

    .end local p1
    check-cast p2, Landroid/support/v4/view/bg;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/bc;->a(Landroid/support/v4/view/bg;Landroid/support/v4/view/bg;)I

    move-result v0

    return v0
.end method
