.class Lcom/instagram/api/RequestParams$FileWrapper;
.super Ljava/lang/Object;
.source "RequestParams.java"


# instance fields
.field public contentType:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "inputStream"
    .parameter "fileName"
    .parameter "contentType"

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/instagram/api/RequestParams$FileWrapper;->inputStream:Ljava/io/InputStream;

    .line 226
    iput-object p2, p0, Lcom/instagram/api/RequestParams$FileWrapper;->fileName:Ljava/lang/String;

    .line 227
    iput-object p3, p0, Lcom/instagram/api/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    .line 228
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/instagram/api/RequestParams$FileWrapper;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/instagram/api/RequestParams$FileWrapper;->fileName:Ljava/lang/String;

    .line 234
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "nofilename"

    goto :goto_0
.end method
