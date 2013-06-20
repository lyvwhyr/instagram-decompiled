.class Lcom/instagram/android/service/PendingMediaStore$1;
.super Ljava/lang/Object;
.source "PendingMediaStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/service/PendingMediaStore;


# direct methods
.method constructor <init>(Lcom/instagram/android/service/PendingMediaStore;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/instagram/android/service/PendingMediaStore$1;->this$0:Lcom/instagram/android/service/PendingMediaStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaStore$1;->this$0:Lcom/instagram/android/service/PendingMediaStore;

    invoke-virtual {v0}, Lcom/instagram/android/service/PendingMediaStore;->serialize()V

    .line 182
    return-void
.end method
