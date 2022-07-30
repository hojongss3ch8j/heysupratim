from .models import Server, Monitor
from ..op_drf.serializers import CustomModelSerializer


# ================================================= #
# ************** 服务器信息 序列化器  ************** #
# ================================================= #

class ServerSerializer(CustomModelSerializer):
    """
    服务器信息 简单序列化器
    """

    class Meta:
        model = Server
        fields = '__all__'

# ================================================= #
# ************** 服务器监控信息 序列化器  ************** #
# ================================================= #

class MonitorSerializer(CustomModelSerializer):
    """
    服务器监控信息 简单序列化器
    """

    class Meta:
        model = Monitor
        fields = '__all__'
