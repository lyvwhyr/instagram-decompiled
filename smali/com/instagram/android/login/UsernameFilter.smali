.class public Lcom/instagram/android/login/UsernameFilter;
.super Landroid/text/LoginFilter$UsernameFilterGeneric;
.source "UsernameFilter.java"


# static fields
.field private static final mAllowed:Ljava/lang/String; = "_"


# instance fields
.field private final res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .parameter "res"

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/instagram/android/login/UsernameFilter;->res:Landroid/content/res/Resources;

    .line 21
    return-void
.end method


# virtual methods
.method public isAllowed(C)Z
    .locals 3
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 26
    const/16 v1, 0x30

    if-gt v1, p1, :cond_1

    const/16 v1, 0x39

    if-gt p1, v1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v0

    .line 28
    :cond_1
    const/16 v1, 0x61

    if-gt v1, p1, :cond_2

    const/16 v1, 0x7a

    if-le p1, v1, :cond_0

    .line 30
    :cond_2
    const/16 v1, 0x41

    if-gt v1, p1, :cond_3

    const/16 v1, 0x5a

    if-le p1, v1, :cond_0

    .line 32
    :cond_3
    const-string v1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 35
    iget-object v0, p0, Lcom/instagram/android/login/UsernameFilter;->res:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/k;->invalid_username_character:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(Ljava/lang/CharSequence;)V

    .line 36
    const/4 v0, 0x0

    goto :goto_0
.end method
