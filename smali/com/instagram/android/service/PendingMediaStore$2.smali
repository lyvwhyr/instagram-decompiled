.class Lcom/instagram/android/service/PendingMediaStore$2;
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
    .line 233
    iput-object p1, p0, Lcom/instagram/android/service/PendingMediaStore$2;->this$0:Lcom/instagram/android/service/PendingMediaStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/instagram/android/service/PendingMediaStore$2;->this$0:Lcom/instagram/android/service/PendingMediaStore;

    #calls: Lcom/instagram/android/service/PendingMediaStore;->deserialize()V
    invoke-static {v0}, Lcom/instagram/android/service/PendingMediaStore;->access$000(Lcom/instagram/android/service/PendingMediaStore;)V

    .line 237
    return-void
.end method
