Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A19893D749
	for <lists+v9fs-developer@lfdr.de>; Fri, 26 Jul 2024 19:09:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sXORb-0001Db-OF;
	Fri, 26 Jul 2024 17:09:28 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <nhk-plus@yvo364.com>) id 1sXORZ-0001DT-Rk
 for v9fs-developer@lists.sourceforge.net;
 Fri, 26 Jul 2024 17:09:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nmJqR4FxuUcU/Ub3SeeM8Qm3w4pV0OmiBMl2HuugGWg=; b=X0TMPJNVrAU3J65Ca5Qls5vhFQ
 HraTZTzj8g1WbXKSIGIOhclwzNPT1Qt5Iv9AaLKPkWtenHHEk3TqgCNJ6RYqNBFpgBUypWyDFUZ8x
 7JhMy52bnJzQROmg6sG9nhNsG6L9r5lwDkEh60jV8ZXZZKlKkgNBgjBgiZnh9i+AU8BY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nmJqR4FxuUcU/Ub3SeeM8Qm3w4pV0OmiBMl2HuugGWg=; b=E
 YCd1nIrKzYVbhI0NqiGk9BcEIQ6SB/L/p0EDKP/bKuelmS2GD2UDKvbfQA2hYC0mbcIClgCqO8vjt
 5R4j4ibrjDQJE33qqMZ8KAmAE3gcEzlffaKlh42N7BeaXAp+asF84Mx86hM11R4Tn/6bdXfd6CO3J
 KR3ASPYzr6GmybiU=;
Received: from mail4.yvo364.com ([192.227.191.84])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sXORY-000312-CP for v9fs-developer@lists.sourceforge.net;
 Fri, 26 Jul 2024 17:09:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=yvo364.com; 
 h=Date:From:To:Subject:Mime-Version:Message-ID:Content-Type;
 i=nhk-plus@yvo364.com;
 bh=nmJqR4FxuUcU/Ub3SeeM8Qm3w4pV0OmiBMl2HuugGWg=;
 b=ceOpc3btmYdGDgN5A89pEu2lT9E1/GD3chFkJO0S7fSLw5qpF1jpE5l5whn3929H9s9+TtDkHFLt
 jGsvAF6Ajjfkw6U5Zg5DfEOshJBJ9ELMqnQC0t9D+KZXcK71QOJytEVIGtLj3cuUZcv0+xcBbf/8
 UuTa+d4PH5dG9zXLtcw=
Date: Sat, 27 Jul 2024 02:09:02 +0900
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Has-Attach: no
Mime-Version: 1.0
Message-ID: <202407270209128040242@yvo364.com>
X-Spam-Score: 1.9 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  NHKのサービスをご利用いただきありがとうございます、
    NHKがNHKプラスにアップグレードされました。 NHKアップグレードの内容を以下に説明させていただきます。
    パソコンやスマートフォン、タブレットで、総合テレビやEテレの番組を放送と同時に視
    [...] 
 
 Content analysis details:   (1.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: wdqvhcox.com]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: yvo364.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [192.227.191.84 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                         [192.227.191.84 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1sXORY-000312-CP
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?TkhL44OX44Op44K544Ki44OD44OX44Kw44Os?=
	=?utf-8?b?44O844OJ44K144O844OT44K544GK55+l44KJ44Gb?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: =?UTF-8?B?5pel5pys5pS+6YCB5Y2U5Lya77yITkhL44OX44Op44K577yJ?= via
 V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: =?UTF-8?B?5pel5pys5pS+6YCB5Y2U5Lya77yITkhL44OX44Op44K577yJ?=
 <nhk-plus@yvo364.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQpOSEvjga7jgrXjg7zjg5PjgrnjgpLjgZTliKnnlKjjgYTjgZ/jgaDjgY3jgYLjgorjgYzjgajj
gYbjgZTjgZbjgYTjgb7jgZnjgIENCk5IS+OBjE5IS+ODl+ODqeOCueOBq+OCouODg+ODl+OCsOOD
rOODvOODieOBleOCjOOBvuOBl+OBn+OAgg0KDQpOSEvjgqLjg4Pjg5fjgrDjg6zjg7zjg4njga7l
hoXlrrnjgpLku6XkuIvjgavoqqzmmI7jgZXjgZvjgabjgYTjgZ/jgaDjgY3jgb7jgZnjgIINCuOD
keOCveOCs+ODs+OChOOCueODnuODvOODiOODleOCqeODs+OAgeOCv+ODluODrOODg+ODiOOBp+OA
gee3j+WQiOODhuODrOODk+OChEXjg4bjg6zjga7nlarntYTjgpLmlL7pgIHjgajlkIzmmYLjgavo
ppbogbTjgafjgY3jgb7jgZnjgIINCue3j+WQiOODhuODrOODk+OChEXjg4bjg6zjga7nlarntYTj
gpLmlL7pgIHlvozjgYvjgokx6YCx6ZaT44GE44Gk44Gn44KC6KaW6IG044Gn44GN44G+44GZ44CC
DQropovpgIPjgZfnlarntYTjgpLjgrjjg6Pjg7Pjg6vjgoTjg4bjg7zjg57liKXjgavkuKbjgbnj
gIHnlarntYTjgpLopovjgaTjgZHjgoTjgZnjgY/jgZfjgb7jgZfjgZ/jgIINCuimi+mAg+OBl+eV
que1hOOCkuOAgeaXpeS7mOOChOODgeODo+ODs+ODjeODq+OAgeOCreODvOODr+ODvOODieOBp+aO
ouOBmeOBk+OBqOOBjOOBp+OBjeOBvuOBmeOAgg0KDQrmlL7pgIHlj5fkv6HlpZHntITjga7jgYLj
govmlrnjga/ov73liqDjga7osqDmi4XjgarjgY/jgYrkvb/jgYTjgYTjgZ/jgaDjgZHjgb7jgZnj
gIINCuOCouODg+ODl+OCsOODrOODvOODieOBr+eEoeaWmeOBp+OAgeWlkee0hOOCkue1kOOCk+OB
p+OBhOOCi+S6uuOBr+iqsOOBp+OCguOCouODg+ODl+OCsOODrOODvOODieOBmeOCi+W/heimgeOB
jOOBguOCiuOBvuOBmeOAgg0K5LuK44GZ44GQ44Ki44OD44OX44Kw44Os44O844OJ44GX44Gm44CB
54m55Yil44Gq54m55YW444KS44GK5qW944GX44G/44GP44Gg44GV44GE44CBNuOAnDEy44GL5pyI
5Yip55So5Y+v6IO95pS+6YCB5Y+X5L+h5paZ5YWN6Zmk44CCDQrlpZHntITjgZfjgabjgYTjgovj
gZnjgbnjgabjga7jgrLjgrnjg4jjga9OSEvjg5fjg6njgrnjgavjgqLjg4Pjg5fjgrDjg6zjg7zj
g4njgZnjgovlv4XopoHjgYzjgYLjgorjgb7jgZnjgIINCuOBiuWuouanmOOBrueKtuazgeOBq+W/
nOOBmOOBn+aJi+e2muOBrua1geOCjOOCkuOBlOahiOWGheOBl+OBvuOBmeOAgg0K5Lul5LiL44Gu
VVJM44KS44Kv44Oq44OD44Kv44GX44CB44Ki44OD44OX44Kw44Os44O844OJ5pON5L2c44KS5a6f
6KGM44GX44G+44GZ44CCDQogICANCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K4oC7aHR0cHM6
Ly9waWQubmhrLm9yLmpwL2FjY291bnQvcmVnaXN0L2lkL2lucHV0MS5kbz9yZWNlaXB0aWQ9NDU4
OTkNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KICAgICANCuOBk+OBrlVSTOOBruacieWKueac
n+mZkOOBrzI05pmC6ZaT44Gn44GZ44CCMjTmmYLplpPku6XlhoXjgavjgqLjgq/jgrvjgrnjgZfj
gIHlhaXlipvjgb7jgafntYLjgYjjgabjgY/jgaDjgZXjgYTjgIINCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQ0K44Oh44O844Or44Gu5YaF5a6544Gr44GK5b+D5b2T44Gf44KK44GM44Gq44GE5aC0
5ZCI44Gv44CB5LiL6KiY44GK5ZWP5ZCI44Gb5YWI44G444GU6YCj57Wh44GP44Gg44GV44GE44CC
DQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCuOBk+OBruODoeODvOODq+OBiuOCiOOBs+WIqeeU
qOeZu+mMsuOBq+mWouOBmeOCi+OBiuWVj+OBhOWQiOOCj+OBm+OBr+OBk+OBoeOCiQ0K44CQ44OK
44OT44OA44Kk44Ok44Or44CRIDA1OTAtMDk5LTAzMw0K44OK44OT44OA44Kk44Ok44Or44KS44GU
5Yip55So44Gr44Gq44KM44Gq44GE5aC05ZCI44GvIDA1MC0yNzg2LTUwMDcNCuWNiOWJjTnmmYLv
vZ7ljYjlvow15pmC77yI5Zyf44O75pel44O756Wd44KC5Y+X5LuY77yJDQrigLsxMuaciDMw5pel
5Y2I5b6MNeaZgu+9njHmnIgz5pel44Gv44GU5Yip55So44GE44Gf44Gg44GR44G+44Gb44KT44CC
DQogICANCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KIENvcHlyaWdodCBOSEsgKEphcGFuIEJy
b2FkY2FzdGluZyBDb3Jwb3JhdGlvbikgQWxsIHJpZ2h0cyByZXNlcnZlZC4NCi0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQ0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vdjlmcy1kZXZlbG9wZXIK
