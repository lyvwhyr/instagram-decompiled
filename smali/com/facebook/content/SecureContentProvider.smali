.class public abstract Lcom/facebook/content/SecureContentProvider;
.super Lcom/facebook/content/a;
.source "SecureContentProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/content/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final e()Z
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/facebook/content/SecureContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/content/d;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
