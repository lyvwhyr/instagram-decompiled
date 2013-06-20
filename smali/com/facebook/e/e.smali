.class Lcom/facebook/e/e;
.super Ljava/lang/Object;
.source "RageSensorEventListener.java"


# instance fields
.field a:F

.field b:J


# direct methods
.method constructor <init>(Landroid/hardware/SensorEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p0, p1}, Lcom/facebook/e/e;->a(Landroid/hardware/SensorEvent;)V

    .line 77
    return-void
.end method


# virtual methods
.method a(Landroid/hardware/SensorEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/facebook/e/e;->a:F

    .line 81
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/facebook/e/e;->b:J

    .line 82
    return-void
.end method
