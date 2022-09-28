Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6554C5EE886
	for <lists+v9fs-developer@lfdr.de>; Wed, 28 Sep 2022 23:44:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1odeqz-00083H-EV;
	Wed, 28 Sep 2022 21:44:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mails@apps.douyinemail.fun>) id 1odeqm-000835-Gz
 for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 21:44:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Reply-To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TTdfisjTLsjuTYNyt774ERf2elaq6IT9H3KArZLs3qg=; b=aLJiXiQKQYIvsL5DxNq14iWpmh
 s91f2M1nHVfn4W6ExorKcOnaZbw7l2XMjdZUxEVHtpEuMtgQW7+e04PvniACK6ahoxeVgahLBc1mN
 WAPdGsmSfQBz7pZSJPXUfWvy58M+9WRjUzBtw1wDjgySB0iofYH7aRQj8jo1uBoSsNZg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TTdfisjTLsjuTYNyt774ERf2elaq6IT9H3KArZLs3qg=; b=g
 My7lYv3GY8h3LRT4dy1LDOUX4AVukY3rRO+aIRCPmMCQx/u6ziifDFfgH1DtI3rWBzdMgZkTOGJ7w
 sMX3mb1RisDI4ILAaqBu2nYEKgiaA4RD/LeRrLlp9sc6bt+ijiIa+TYktQcj9SmVmIXrNO7Tg2dv3
 fGgguoTzRMAcBA2g=;
Received: from miner.yunhios.com ([180.76.51.56])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odeqx-005wDk-Vn for v9fs-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 21:44:29 +0000
Received: from qyaqu (unknown [223.116.25.116])
 by miner.yunhios.com (Postfix) with ESMTPSA id 43BACA4ABD
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 29 Sep 2022 05:44:21 +0800 (CST)
From: Sendmail <mails@apps.douyinemail.fun>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Thu, 29 Sep 2022 05:44:13 +0800
Message-ID: <009759584797$231f5222$0eea26d0$@qyaqu>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
X-Spam-Score: 4.5 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  他域互通接收方移除通知 body { font-family:verdana;font-size:14px;
    }.openmail_wrapper { width: 100%;}.openmail_container { margin: 30px auto;
    width: 600px; height: 368px;}.openmail_content_c [...] 
 
 Content analysis details:   (4.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: qq.com]
  1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [180.76.51.56 listed in dnsbl-1.uceprotect.net]
  0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  1.5 MPART_ALT_DIFF_COUNT   BODY: HTML and text parts are different
  0.0 HTML_OBFUSCATE_05_10   BODY: Message is 5% to 10% HTML obfuscation
  0.0 FROM_SUSPICIOUS_NTLD   From abused NTLD
  2.0 FROM_SUSPICIOUS_NTLD_FP From abused NTLD
X-Headers-End: 1odeqx-005wDk-Vn
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5LuW5Z+f5LqS6YCa5o6l5pS25pa556e76Zmk?=
 =?utf-8?b?6YCa55+l?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: noreply@52campus.top
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

5LuW5Z+f5LqS6YCa5o6l5pS25pa556e76Zmk6YCa55+lDQpib2R5IHsgZm9udC1mYW1pbHk6dmVy
ZGFuYTtmb250LXNpemU6MTRweDsgfS5vcGVubWFpbF93cmFwcGVyIHsgd2lkdGg6IDEwMCU7fS5v
cGVubWFpbF9jb250YWluZXIgeyBtYXJnaW46IDMwcHggYXV0bzsgd2lkdGg6IDYwMHB4OyBoZWln
aHQ6IDM2OHB4O30ub3Blbm1haWxfY29udGVudF9jYXJkIHsgd2lkdGg6IDEwMCU7IGhlaWdodDog
MzMwcHg7IGJhY2tncm91bmQ6dXJsKGh0dHBzOi8vcmVzY2RuLnFxbWFpbC5jb20vcXFtYWlsL2lt
YWdlcy9yaWdodF90b3AyeC5wbmcpIHJpZ2h0dG9wLzExM3B4IDE5M3B4IG5vLXJlcGVhdCwgdXJs
KGh0dHBzOi8vcmVzY2RuLnFxbWFpbC5jb20vcXFtYWlsL2ltYWdlcy9sZWZ0X2Rvd24yeC5wbmcp
bGVmdCBib3R0b20vMjE0cHggMTAwcHggbm8tcmVwZWF0O30ub3Blbm1haWxfY29udGVudF9mb290
ZXIgeyB3aWR0aDogMTAwJTsgbGluZS1oZWlnaHQ6IDE4cHg7IG1hcmdpbi10b3A6IDIwcHg7IHRl
eHQtYWxpZ246Y2VudGVyOyBjb2xvcjogIzk1OURBNjsgZm9udC1zaXplOiAxMnB4O30NCnY5ZnMt
ZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldO+8jOS9oOWlve+8mg0K5L2g55qE6YKu566x
6LSm5Y+35Zyo5LuW5Z+f5LqS6YCa5LuO5Z+f5ZCNdWtjenEuY29t5oqV6K+J5Y+N6aaI6YKu5Lu2
5o6l5pS25YiX6KGo5Lit56e76Zmk77yM5LiN5YaN5o6l5pS26K+l5Z+f5ZCN55qE5oqV6K+J5Y+N
6aaI6YKu5Lu244CCIA0KDQroi6XpnZ7kvaDmnKzkurrmk43kvZzvvIzor7fliY3lvoDku5bln5/k
upLpgJrvvIzmo4Dmn6Xor6Xln5/lkI3nmoTnrqHnkIblkZjotKblj7fmmK/lkKblvILluLjjgIIg
DQrmnKzpgq7ku7bnlLHns7vnu5/oh6rliqjlj5Hlh7rvvIzor7fli7/lm57lpI0gCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1h
aWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
