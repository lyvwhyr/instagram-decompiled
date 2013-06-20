.class public Landroid/support/v4/view/am;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/as;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 232
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v2, "JellyBean"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    :cond_0
    new-instance v0, Landroid/support/v4/view/ar;

    invoke-direct {v0}, Landroid/support/v4/view/ar;-><init>()V

    sput-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/as;

    .line 243
    :goto_0
    return-void

    .line 234
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 235
    new-instance v0, Landroid/support/v4/view/aq;

    invoke-direct {v0}, Landroid/support/v4/view/aq;-><init>()V

    sput-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/as;

    goto :goto_0

    .line 236
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 237
    new-instance v0, Landroid/support/v4/view/ap;

    invoke-direct {v0}, Landroid/support/v4/view/ap;-><init>()V

    sput-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/as;

    goto :goto_0

    .line 238
    :cond_3
    const/16 v1, 0x9

    if-lt v0, v1, :cond_4

    .line 239
    new-instance v0, Landroid/support/v4/view/ao;

    invoke-direct {v0}, Landroid/support/v4/view/ao;-><init>()V

    sput-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/as;

    goto :goto_0

    .line 241
    :cond_4
    new-instance v0, Landroid/support/v4/view/an;

    invoke-direct {v0}, Landroid/support/v4/view/an;-><init>()V

    sput-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/as;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 277
    sget-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/as;

    invoke-interface {v0, p0}, Landroid/support/v4/view/as;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 414
    sget-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/as;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/as;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 415
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 482
    sget-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/as;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/as;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 483
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 253
    sget-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/as;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/as;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 450
    sget-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/as;

    invoke-interface {v0, p0}, Landroid/support/v4/view/as;->b(Landroid/view/View;)V

    .line 451
    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 531
    sget-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/as;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/as;->b(Landroid/view/View;I)V

    .line 532
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 515
    sget-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/as;

    invoke-interface {v0, p0}, Landroid/support/v4/view/as;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method
