.class Lcom/instagram/android/gl/TiltShiftManager$1;
.super Ljava/lang/Object;
.source "TiltShiftManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/gl/TiltShiftManager;


# direct methods
.method constructor <init>(Lcom/instagram/android/gl/TiltShiftManager;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/instagram/android/gl/TiltShiftManager$1;->this$0:Lcom/instagram/android/gl/TiltShiftManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 167
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->tiltShiftFadeOutMaskHighlight()V

    .line 168
    return-void
.end method
