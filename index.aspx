<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>翰林书院</title>
    <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.png" />
    <link href="css/index.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="top-header">
            <div class="header-title">翰林图书 <asp:Button ID="Button1" runat="server" Text="登录"  CssClass="btn" OnClick="Button1_Click"/><asp:Button ID="Button2" runat="server" Text="注册"  CssClass="btn" OnClick="Button2_Click" /></div>
        </div>
        <div id="main">
            <div class="box">
                <div class="left">
                    <h2>新闻资讯</h2>
                    <br />
                    <span class="font">据《华盛顿邮报》里的一篇“美国休闲阅读量正处于历史最低水平”的文章，美国人总阅读时间从2004年的人均每天23分钟下降到2017年的17分钟。而据《新政治家》一篇“文学正在缓慢死亡”的报道，美国小说家里全职写作的比例从2005年的40%下降到2013年的11.5%，书籍价格和销售额的下降，使得作家们难以全靠他们写的小说谋生。</span>
                </div>
                <div class="right">
                    <h2>新闻资讯</h2>
                    <br />
                    <span class="font">高尔基曾经说过，“读书，这个我们习以为常的平凡过程，实际是人的心灵和上下古今一切民族的伟大智慧相结合的过程。”曾几何时，俄罗斯人以喜欢读书著称，1.4亿俄罗斯人的私人藏书就有200亿册，每个家庭平均藏书近300册。俄罗斯人以喜欢读书著称，莫斯科的地铁，仿佛就是一个流动的阅览室。不论男女老少，大多数乘客都在聚精会神地读书看报。令人称奇的是，在颠簸昏暗的车厢里他们也目不转睛地看着书。</span>
                </div>
                <footer class="footer">
                    <div class="bottom">
                        <p>
                            <span>Vitan ©  2018</span> <span>Power by <a href="https://vitan.me/" target="_blank">Vitan</a> </span>
                        </p>
                    </div>
                </footer>
                <div class="clv"></div>
            </div>
        </div>
    </form>
</body>
</html>
