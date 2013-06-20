.class public Lcom/instagram/android/service/AppContext;
.super Ljava/lang/Object;
.source "AppContext.java"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/instagram/android/service/AppContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    sput-object p0, Lcom/instagram/android/service/AppContext;->context:Landroid/content/Context;

    .line 15
    sget v0, Lcom/facebook/l;->InstagramTheme:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 16
    return-void
.end method
