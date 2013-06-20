.class Lcom/instagram/android/receiver/C2DMReceiver$2;
.super Ljava/lang/Object;
.source "C2DMReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/receiver/C2DMReceiver;

.field final synthetic val$avatarUrl:Ljava/lang/String;

.field final synthetic val$callback:Lcom/instagram/android/mediacache/MultiBitmapFetcher$MultiBitmapCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instagram/android/receiver/C2DMReceiver;Landroid/content/Context;Lcom/instagram/android/mediacache/MultiBitmapFetcher$MultiBitmapCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/instagram/android/receiver/C2DMReceiver$2;->this$0:Lcom/instagram/android/receiver/C2DMReceiver;

    iput-object p2, p0, Lcom/instagram/android/receiver/C2DMReceiver$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/instagram/android/receiver/C2DMReceiver$2;->val$callback:Lcom/instagram/android/mediacache/MultiBitmapFetcher$MultiBitmapCallback;

    iput-object p4, p0, Lcom/instagram/android/receiver/C2DMReceiver$2;->val$imageUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/instagram/android/receiver/C2DMReceiver$2;->val$avatarUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 174
    new-instance v0, Lcom/instagram/android/mediacache/MultiBitmapFetcher;

    iget-object v1, p0, Lcom/instagram/android/receiver/C2DMReceiver$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/android/receiver/C2DMReceiver$2;->val$callback:Lcom/instagram/android/mediacache/MultiBitmapFetcher$MultiBitmapCallback;

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/mediacache/MultiBitmapFetcher;-><init>(Landroid/content/Context;Lcom/instagram/android/mediacache/MultiBitmapFetcher$MultiBitmapCallback;)V

    .line 175
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/receiver/C2DMReceiver$2;->val$imageUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/instagram/android/receiver/C2DMReceiver$2;->val$avatarUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/MultiBitmapFetcher;->fetch([Ljava/lang/String;)V

    .line 176
    return-void
.end method
