.class public Lcom/facebook/c/a/a;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method public static a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-static {}, Lcom/facebook/c/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 72
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/facebook/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
