.class public Lcom/instagram/util/FragmentUtil;
.super Ljava/lang/Object;
.source "FragmentUtil.java"


# static fields
.field public static final ARGUMENTS_KEY_NO_BACK_STACK:Ljava/lang/String; = "noBackStack"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1
    .parameter "manager"
    .parameter "fragment"
    .parameter "arguments"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/instagram/util/FragmentUtil;->navigateToHelper(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 21
    return-void
.end method

.method public static navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "manager"
    .parameter "fragment"
    .parameter "tag"
    .parameter "arguments"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/support/v4/app/p;->a()Landroid/support/v4/app/ac;

    move-result-object v0

    .line 63
    invoke-virtual {p1, p3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac;->a(Ljava/lang/String;)Landroid/support/v4/app/ac;

    .line 65
    sget v1, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/ac;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ac;

    .line 66
    invoke-virtual {v0}, Landroid/support/v4/app/ac;->a()I

    .line 67
    invoke-virtual {p0}, Landroid/support/v4/app/p;->b()Z

    .line 68
    return-void
.end method

.method public static navigateToAllowingStateLoss(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1
    .parameter "manager"
    .parameter "fragment"
    .parameter "arguments"

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/instagram/util/FragmentUtil;->navigateToHelper(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 30
    return-void
.end method

.method private static navigateToHelper(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2
    .parameter "manager"
    .parameter "fragment"
    .parameter "arguments"
    .parameter "allowStateLoss"

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/support/v4/app/p;->a()Landroid/support/v4/app/ac;

    move-result-object v0

    .line 42
    if-eqz p2, :cond_0

    const-string v1, "noBackStack"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "noBackStack"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 48
    :goto_0
    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    sget v1, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/ac;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ac;

    .line 51
    if-eqz p3, :cond_1

    .line 52
    invoke-virtual {v0}, Landroid/support/v4/app/ac;->b()I

    .line 57
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/app/p;->b()Z

    .line 58
    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac;->a(Ljava/lang/String;)Landroid/support/v4/app/ac;

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/ac;->a()I

    goto :goto_1
.end method
