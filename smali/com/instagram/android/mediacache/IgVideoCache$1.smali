.class final Lcom/instagram/android/mediacache/IgVideoCache$1;
.super Ljava/lang/Object;
.source "IgVideoCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/instagram/android/mediacache/IgVideoCache;->access$100()Lcom/instagram/android/mediacache/IgVideoCache;

    move-result-object v0

    #calls: Lcom/instagram/android/mediacache/IgVideoCache;->getStorage()Lcom/instagram/android/mediacache/DiskLruCache;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgVideoCache;->access$200(Lcom/instagram/android/mediacache/IgVideoCache;)Lcom/instagram/android/mediacache/DiskLruCache;

    .line 138
    invoke-static {}, Lcom/instagram/android/mediacache/IgVideoCache;->access$100()Lcom/instagram/android/mediacache/IgVideoCache;

    move-result-object v0

    #calls: Lcom/instagram/android/mediacache/IgVideoCache;->getHttpClient()Lch/boye/httpclientandroidlib/client/HttpClient;
    invoke-static {v0}, Lcom/instagram/android/mediacache/IgVideoCache;->access$300(Lcom/instagram/android/mediacache/IgVideoCache;)Lch/boye/httpclientandroidlib/client/HttpClient;

    .line 139
    return-void
.end method
