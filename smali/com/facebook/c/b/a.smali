.class public Lcom/facebook/c/b/a;
.super Ljava/lang/Object;
.source "BLog.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LogUse"
    }
.end annotation


# static fields
.field private static a:Lcom/facebook/c/b/b;

.field private static volatile b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x2

    sput v0, Lcom/facebook/c/b/a;->b:I

    return-void
.end method

.method public static a(Lcom/facebook/c/b/b;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    sput-object p0, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    .line 53
    return-void
.end method

.method public static a(Lcom/facebook/c/b/d;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/c/b/d;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 790
    sget v0, Lcom/facebook/c/b/a;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 791
    sget-object v0, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    if-eqz v0, :cond_1

    .line 792
    sget-object v0, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    invoke-static {p1}, Lcom/facebook/c/b/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1, p2, p3}, Lcom/facebook/c/b/b;->wtf(Lcom/facebook/c/b/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    invoke-static {p1}, Lcom/facebook/c/b/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    sget v0, Lcom/facebook/c/b/a;->b:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 89
    sget-object v0, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    invoke-static {p0}, Lcom/facebook/c/b/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/c/b/b;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-static {p0}, Lcom/facebook/c/b/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    sget v0, Lcom/facebook/c/b/a;->b:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 126
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    sget-object v1, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    if-eqz v1, :cond_1

    .line 128
    sget-object v1, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    invoke-static {p0}, Lcom/facebook/c/b/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/c/b/b;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {p0}, Lcom/facebook/c/b/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 179
    sget v0, Lcom/facebook/c/b/a;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 180
    sget-object v0, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    if-eqz v0, :cond_1

    .line 181
    sget-object v0, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    invoke-interface {v0, p0, p1}, Lcom/facebook/c/b/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 610
    sget v0, Lcom/facebook/c/b/a;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 611
    sget-object v0, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    if-eqz v0, :cond_1

    .line 612
    sget-object v0, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/c/b/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 412
    sget v0, Lcom/facebook/c/b/a;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 413
    sget-object v0, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    if-eqz v0, :cond_1

    .line 414
    sget-object v0, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    invoke-static {p0}, Lcom/facebook/c/b/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/c/b/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-static {p0}, Lcom/facebook/c/b/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 233
    sget v0, Lcom/facebook/c/b/a;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 234
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 235
    sget-object v1, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    if-eqz v1, :cond_1

    .line 236
    sget-object v1, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    invoke-static {p0}, Lcom/facebook/c/b/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/c/b/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-static {p0}, Lcom/facebook/c/b/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 395
    sget v0, Lcom/facebook/c/b/a;->b:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 396
    sget-object v0, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    if-eqz v0, :cond_1

    .line 397
    sget-object v0, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    invoke-interface {v0, p0, p1}, Lcom/facebook/c/b/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 554
    sget v0, Lcom/facebook/c/b/a;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 555
    sget-object v0, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    if-eqz v0, :cond_1

    .line 556
    sget-object v0, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    invoke-static {p0}, Lcom/facebook/c/b/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/c/b/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    invoke-static {p0}, Lcom/facebook/c/b/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 537
    sget v0, Lcom/facebook/c/b/a;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 538
    sget-object v0, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    if-eqz v0, :cond_1

    .line 539
    sget-object v0, Lcom/facebook/c/b/a;->a:Lcom/facebook/c/b/b;

    invoke-interface {v0, p0, p1}, Lcom/facebook/c/b/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
