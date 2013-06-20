.class Lcom/instagram/android/service/TumblrService$TumblrAccountNotFoundException;
.super Ljava/lang/Exception;
.source "TumblrService.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/service/TumblrService;


# direct methods
.method private constructor <init>(Lcom/instagram/android/service/TumblrService;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/instagram/android/service/TumblrService$TumblrAccountNotFoundException;->this$0:Lcom/instagram/android/service/TumblrService;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/service/TumblrService;Lcom/instagram/android/service/TumblrService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/instagram/android/service/TumblrService$TumblrAccountNotFoundException;-><init>(Lcom/instagram/android/service/TumblrService;)V

    return-void
.end method
