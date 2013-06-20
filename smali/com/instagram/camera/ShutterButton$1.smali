.class Lcom/instagram/camera/ShutterButton$1;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/camera/ShutterButton;

.field final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lcom/instagram/camera/ShutterButton;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/instagram/camera/ShutterButton$1;->this$0:Lcom/instagram/camera/ShutterButton;

    iput-boolean p2, p0, Lcom/instagram/camera/ShutterButton$1;->val$pressed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/camera/ShutterButton$1;->this$0:Lcom/instagram/camera/ShutterButton;

    iget-boolean v1, p0, Lcom/instagram/camera/ShutterButton$1;->val$pressed:Z

    #calls: Lcom/instagram/camera/ShutterButton;->callShutterButtonFocus(Z)V
    invoke-static {v0, v1}, Lcom/instagram/camera/ShutterButton;->access$000(Lcom/instagram/camera/ShutterButton;Z)V

    .line 77
    return-void
.end method
