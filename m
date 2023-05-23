Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B3870D3CE
	for <lists+v9fs-developer@lfdr.de>; Tue, 23 May 2023 08:18:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1q1LLM-0001LL-So;
	Tue, 23 May 2023 06:18:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ngql@sa.hk>) id 1q1LLK-0001LB-OJ
 for v9fs-developer@lists.sourceforge.net;
 Tue, 23 May 2023 06:17:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+H3VRe2T85BIXUEdT9gayfCNWaKgBHRKHdDP+dFA5pU=; b=CEHxntczpBdUJzWv6sPKv32j1E
 uOm5H9KA9BckxgtAObhdAb4k1ozPHgS4MkOCtDHv4oDQyBCz5UDDYULx/+tLITX8yRCso1E9YuKRI
 NSWR5wBUMGU3el6jFYmCbGHtve3CjELOI4ShItOOAPh7mv+nqm3+2M1dv4Se9eljehYQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+H3VRe2T85BIXUEdT9gayfCNWaKgBHRKHdDP+dFA5pU=; b=c
 ELgrKl9os41F/d9EA/SuiJj79exvU+yYNusITG0c1P0pbzDlLi+XPDyLA3Irc3ATStoicWbC69/JW
 RyT73tqqp/a1uAQ70DryUUsXDbczPLqFFXARiDjkoT7Vv8q6wg9CWNceDugHgyR41jakIQfJrfCfb
 RH1Gy/kUcv3Yp110=;
Received: from [118.143.140.68] (helo=hkmail.eastmoney.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1q1LLJ-0001er-RC for v9fs-developer@lists.sourceforge.net;
 Tue, 23 May 2023 06:17:58 +0000
Received: from csfzyzpic (unknown [103.127.83.61])
 by hkmail.eastmoney.com (Postfix) with ESMTPA id 5E6BB10BA06EE
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 23 May 2023 13:52:52 +0800 (HKT)
Message-ID: <0679FEC505EF316982D162D5F23AB2ED@csfzyzpic>
From: Admin <ngql@sa.hk>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Tue, 23 May 2023 13:51:59 +0800
MIME-Version: 1.0
X-Priority: 3
X-Mailer: Supmailer 38.1.1
X-Spam-Score: 6.8 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  升级企业邮箱通知 尊敬的领导、同事： 近日我们发现，公司邮箱收到了大量垃圾邮件。经过分析，发现是由于部分用户的邮箱账户被盗用，导致内部发送了钓鱼邮件，给公司带来了安全隐患�
    [...] 
 
 Content analysis details:   (6.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: icorernail.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [118.143.140.68 listed in wl.mailspike.net]
  1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [118.143.140.68 listed in dnsbl-1.uceprotect.net]
  0.1 URIBL_SBL_A            Contains URL's A record listed in the Spamhaus SBL
                             blocklist
                             [URIs: icorernail.net]
  1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
                             https://senderscore.org/blocklistlookup/
                            [118.143.140.68 listed in bl.score.senderscore.com]
  0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.8 DKIM_ADSP_NXDOMAIN     No valid author signature and domain not in
                             DNS
  0.0 HTML_MESSAGE           BODY: HTML included in message
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1q1LLJ-0001er-RC
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5a6J5YWo5Y2H57qn5o+Q6YaS77yB?=
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

5Y2H57qn5LyB5Lia6YKu566x6YCa55+lDQrlsIrmlaznmoTpooblr7zjgIHlkIzkuovvvJoNCg0K
6L+R5pel5oiR5Lus5Y+R546w77yM5YWs5Y+46YKu566x5pS25Yiw5LqG5aSn6YeP5Z6D5Zy+6YKu
5Lu244CC57uP6L+H5YiG5p6Q77yM5Y+R546w5piv55Sx5LqO6YOo5YiG55So5oi355qE6YKu566x
6LSm5oi36KKr55uX55So77yM5a+86Ie05YaF6YOo5Y+R6YCB5LqG6ZKT6bG86YKu5Lu277yM57uZ
5YWs5Y+45bim5p2l5LqG5a6J5YWo6ZqQ5oKj44CCDQoNCuS4uui/m+S4gOatpeaPkOWNh+WFrOWP
uOmCruS7tuezu+e7n+eahOWuieWFqOaAp++8jOaIkemDqOmXqOW3suS6jui/keaXpemZhue7reab
tOaWsOS6huWQhOeUqOaIt+mCruS7tuezu+e7n+eahOWuieWFqOivgeS5puOAguS4uuS6huS/nema
nOWFrOWPuOmCrueuseeahOWuieWFqO+8jOaIkeS7rOmcgOimgeaCqOWwveW/q+WujOaIkOivgeS5
pueahOi/geenu++8jOWFt+S9k+aTjeS9nOWmguS4i++8mg0KDQrnq4vljbPljYfnuqcNCg0K56e7
5Yqo6K6+5aSH5aSN5Yi25Lul5LiL6ZO+5o6l5Zyo5rWP6KeI5Zmo5Lit5omT5byA77yaaHR0cDov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldA0KDQrlpoLmnpzmgqjml6Dms5Xngrnlh7vkuIrpnaLnmoTp
k77mjqXvvIzor7flsIbpk77mjqXlnLDlnYDlpI3liLblubbnspjotLTliLDmgqjnmoTmtY/op4jl
majnmoTlnLDlnYDmoI/kuK3ov5vooYzorr/pl67jgIINCg0K6LCi6LCi5oKo55qE6YWN5ZCI77yB
DQoNCuWmguaenOaCqOWvueatpOmCruS7tuacieS7u+S9leeWkemXruaIlumcgOimgeW4ruWKqe+8
jOivt+iBlOezu+aKgOacr+aUr+aMgeWboumYn+OAgg0KDQrmraTpgq7ku7bkuLrns7vnu5/oh6rl
iqjnlJ/miJDvvIzor7fli7/lm57lpI3jgIINCg0K6Ziy5q2i5q2k57G76YKu5Lu26KKr5oum5oiq
77yM6K+35bCG5oqA5pyv5pSv5oyB5Zui6Zif55qE5Zyw5Z2A5Yqg5YWl5oKo55qE6IGU57O75Lq6
5YiX6KGo77yaDQoNClvmioDmnK/mlK/mjIHmi6bmiKrlnLDlnYBdDQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBs
aXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
