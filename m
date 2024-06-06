Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A928FF30F
	for <lists+v9fs-developer@lfdr.de>; Thu,  6 Jun 2024 18:55:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sFGOx-0002SS-23;
	Thu, 06 Jun 2024 16:55:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <no-reply@fjfjjc.com>) id 1sFGOv-0002SL-Bd
 for v9fs-developer@lists.sourceforge.net;
 Thu, 06 Jun 2024 16:55:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lEyese4uOXblHDA4iDgvAvpNiif7Nx5WrQ/jkCX/++4=; b=RbC5yFmEopcei4z13S1Dw+57UV
 0gwkOCMfWyRaQ3Vo7s4XNUe/WDqDRBkcxh8Msr+dBkLTtIYSDQXfebDixY33tfeeyTrEcsAxT7fF0
 cyQoa1Ec3rqyP847M1Zp9J5Id6ptSu2NOz3rlGslQBHtRDCSFiGfknGZsHl94pcPHpgU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lEyese4uOXblHDA4iDgvAvpNiif7Nx5WrQ/jkCX/++4=; b=i
 N4Myt5ZGVPeECXdi47js3omhyd/FfmxQix4FtMcxTNLyvG2espfb9sIQCX0DuSebIx54EzIfW30lh
 fwcUdzj5GxCNvbOp4mvITRtmewYJCWt4FwKcwbEs4yIPQB4Qgu9ZSrKlpNPzMng8RxNOP/y2b0j0T
 yQiRi7rwCZoda7SQ=;
Received: from [137.220.181.232] (helo=mail0.fjfjjc.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sFGOt-0000bG-UC for v9fs-developer@lists.sourceforge.net;
 Thu, 06 Jun 2024 16:55:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=fjfjjc.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@fjfjjc.com;
 bh=lEyese4uOXblHDA4iDgvAvpNiif7Nx5WrQ/jkCX/++4=;
 b=KnVQ8Q/X4D0+tN7j6xWv+FF07YUslg26qpW3Y1lQ1XsK6DvKuaGUFg2kysdveAnRBjh8erCkgFEU
 c+nCGEpzZLcaOvdWKgSNrv/Zz9sBdKeowSb1uEBVlwuyaRCMyjOM2tqDRWUmxJVyoUxLywt/MK9+
 Xyf/BuEpqH+m4ApCvjo=
From: =?utf-8?Q?=E8=87=AA=E5=8B=95=E3=83=A1=E3=83=BC=E3=83=AB=E9=80=9A=E7=9F=A5?=
 <no-reply@fjfjjc.com>
To: "=?utf-8?Q?v9fs-developer@lists.sourceforge.net?="
 <v9fs-developer@lists.sourceforge.net>
Date: Fri, 07 Jun 2024 00:35:28 +0800
Message-ID: <LACIDHKFOPIIBJHGMLMOHJBMHIDN.no-reply@fjfjjc.com>
MIME-Version: 1.0
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  三井住友カードクラシック※会員 このたびは三井住友カードをご利用いただき、誠にありがとうございます。
    昨日、お客様のクレジットカードで消費支出が発生したことをお知らせ�
    [...] 
 
 Content analysis details:   (3.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: chauette.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                           [137.220.181.232 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [137.220.181.232 listed in sa-accredit.habeas.com]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: chauette.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1sFGOt-0000bG-UC
Subject: [V9fs-developer] =?utf-8?b?44CQIOS4ieS6leS9j+WPi+OCq+ODvOODiSA=?=
	=?utf-8?b?44CR5rG65riI5a6M5LqG44Gu44GK55+l44KJ44Gb?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

5LiJ5LqV5L2P5Y+L44Kr44O844OJ44Kv44Op44K344OD44Kv4oC75Lya5ZOhDQoNCuOBk+OBruOB
n+OBs+OBr+S4ieS6leS9j+WPi+OCq+ODvOODieOCkuOBlOWIqeeUqOOBhOOBn+OBoOOBjeOAgeiq
oOOBq+OBguOCiuOBjOOBqOOBhuOBlOOBluOBhOOBvuOBmeOAgg0K5pio5pel44CB44GK5a6i5qeY
44Gu44Kv44Os44K444OD44OI44Kr44O844OJ44Gn5raI6LK75pSv5Ye644GM55m655Sf44GX44Gf
44GT44Go44KS44GK55+l44KJ44Gb44GE44Gf44GX44G+44GZ44CCDQrjgZ3jga7mlK/miZXjgYTj
ga7oqbPntLDjga/mrKHjga7jgajjgYrjgorjgafjgZnjgIINCiAg44GUIOWIqSDnlKgg5pelIOaZ
giDvvJogMjAyNOW5tDbmnIg25pelIDE4OjQ5DQogIOOBlCDliKkg55SoIOWgtCDmiYAg77yaIOWN
g+S7o+eUsOS4gOODhOapiyAzIOS4geebruW6lyAoIOOCuyDjg5Yg44OzIOOCpCDjg6wg44OWIOOD
syApDQogIOOBlCDliKkg55SoIOmHkSDpoY0g77yaIDE3NTMwIOWGhg0KDQrjgqvjg7zjg4njgpLk
vb/nlKjjgZfjgZ/opprjgYjjgYzjgarjgYTloLTlkIjjga/jgIHku6XkuIvjga7jg6rjg7Pjgq/j
gpLjgq/jg6rjg4Pjgq/jgZfjgabjgq/jg6zjgrjjg4Pjg4gg44Kr44O844OJ5pSv5omV44GE44Gu
5om/6KqN44KS44Kt44Oj44Oz44K744Or44GX44Gm44GP44Gg44GV44GE44CCDQpodHRwczovL2No
YXVldHRlLmNvbQ0KDQrkuIkg5LqVIOS9jyDlj4sgTkVU44Gr44GU55m76Yyy44GE44Gf44Gg44GE
44Gm44GE44KL44Oh44O844Or44Ki44OJ44Os44K544G444GK55+l44KJ44Gb44GZ44KL44K144O8
44OT44K544Gn44GZ44CCDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K4pag
IOeZuiDooYwg6ICFIOKWoA0K5LiJ5LqV5L2P5Y+L44Kr44O844OJ5qCqIOW8jyDkvJog56S+DQrj
gJIxMzUtMDA2MSDmnbHkuqzpg73msZ/mnbHljLrosYrmtLIy5LiB55uuMueVqjMx5Y+3CgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxv
cGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
