.class Lcom/instagram/android/InstagramApplication$6;
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
    .line 210
    iput-object p1, p0, Lcom/instagram/android/InstagramApplication$6;->this$0:Lcom/instagram/android/InstagramApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Lcom/instagram/android/InstagramApplication;->getFailedToLoadLibrary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/instagram/android/InstagramApplication$6;->this$0:Lcom/instagram/android/InstagramApplication;

    #calls: Lcom/instagram/android/InstagramApplication;->reauthFacebook()V
    invoke-static {v0}, Lcom/instagram/android/InstagramApplication;->access$200(Lcom/instagram/android/InstagramApplication;)V

    .line 219
    :cond_0
    return-void
.end method
