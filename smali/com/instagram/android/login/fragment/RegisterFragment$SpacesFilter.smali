.class Lcom/instagram/android/login/fragment/RegisterFragment$SpacesFilter;
.super Landroid/text/LoginFilter$UsernameFilterGeneric;
.source "RegisterFragment.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 833
    invoke-direct {p0}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/instagram/android/login/fragment/RegisterFragment$SpacesFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public isAllowed(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 837
    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
