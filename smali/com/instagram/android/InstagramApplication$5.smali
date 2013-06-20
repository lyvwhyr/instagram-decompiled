.class Lcom/instagram/android/InstagramApplication$5;
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
    .line 201
    iput-object p1, p0, Lcom/instagram/android/InstagramApplication$5;->this$0:Lcom/instagram/android/InstagramApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 204
    invoke-static {}, Lcom/instagram/android/model/Hashtag;->loadContentAdvisoryWarnings()V

    .line 205
    return-void
.end method
