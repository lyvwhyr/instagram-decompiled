.class public Lcom/facebook/prefs/shared/d;
.super Lcom/facebook/common/h/a;
.source "PrefKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/common/h/a",
        "<",
        "Lcom/facebook/prefs/shared/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/common/h/a;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/String;)Lcom/facebook/common/h/a;
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/facebook/prefs/shared/d;->c(Ljava/lang/String;)Lcom/facebook/prefs/shared/d;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/String;)Lcom/facebook/prefs/shared/d;
    .locals 1
    .parameter

    .prologue
    .line 18
    new-instance v0, Lcom/facebook/prefs/shared/d;

    invoke-direct {v0, p1}, Lcom/facebook/prefs/shared/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
