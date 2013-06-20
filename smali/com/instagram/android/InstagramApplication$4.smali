.class Lcom/instagram/android/InstagramApplication$4;
.super Ljava/lang/Object;
.source "InstagramApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/InstagramApplication;


# direct methods
.method constructor <init>(Lcom/instagram/android/InstagramApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/instagram/android/InstagramApplication$4;->this$0:Lcom/instagram/android/InstagramApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 191
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/mediacache/IgBitmapCache;->getInstance(Landroid/content/Context;)Lcom/instagram/android/mediacache/IgBitmapCache;

    move-result-object v0

    .line 192
    sget-object v1, Lcom/instagram/android/InstagramApplication;->REQUEST_FILTER:Lcom/instagram/android/mediacache/IgBitmapCache$RequestFilter;

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgBitmapCache;->setRequestFilter(Lcom/instagram/android/mediacache/IgBitmapCache$RequestFilter;)V

    .line 193
    return-void
.end method
