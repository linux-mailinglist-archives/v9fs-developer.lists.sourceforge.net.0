Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D69752F3C2
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 May 2022 21:27:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ns8HZ-0003oz-Ap; Fri, 20 May 2022 19:27:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <5880500426829@fleety.com>) id 1ns8HX-0003ot-L8
 for v9fs-developer@lists.sourceforge.net; Fri, 20 May 2022 19:27:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1am/JwyOThjcmfrt+WEti6s2IOzDaChBrJCNyw4GcAA=; b=XfcV+IfXlmWWQjl/FhKc926J09
 UArcm2NtLJ3/e+3hnhrvuv4c1oS1bUhLXU7ALkXy6PQNiKWXeXmU/XXC0aRe7yXNTA8bxiHZ2ySTC
 XWEVKbzj6N9qZ8//y7qXTrj1B/pVyAVANhz6X/BGeMcwJSlGVDKUJpRdAA08kV5REINw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1am/JwyOThjcmfrt+WEti6s2IOzDaChBrJCNyw4GcAA=; b=J
 YLFwSaAu3t4/QteyGCy+v1jIIFZOVOFGVf/Bl8+yHHqGhywAc3XAXUKnWs0Ul9NyfSOU1liKQAEeS
 45fxtFhMUCDkgxBJexzaU8E18/g1MgUJtkdGi8elBWX/pm0qVuqBGmceXNihtCdeuKSmyyfULMJH6
 PbnnK6b6J1OW1tl4=;
Received: from [218.90.157.212] (helo=fleety.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLS1:DHE-RSA-AES256-SHA:256)
 (Exim 4.94.2) id 1ns8HR-00DhgK-TQ
 for v9fs-developer@lists.sourceforge.net; Fri, 20 May 2022 19:27:26 +0000
Received: from hfdomjmqx ([192.168.5.254]) (authenticated bits=0)
 by fleety.com (8.13.8/8.13.8) with ESMTP id 24KJRAvS032753
 for <v9fs-developer@lists.sourceforge.net>; Sat, 21 May 2022 03:27:11 +0800
Date: Sat, 21 May 2022 03:26:54 +0800
From: uswsvv <5880500426829@fleety.com>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7, 0, 1, 91[cn]
Mime-Version: 1.0
Message-ID: <202205210327084058083@fleety.com>
X-Spam-Score: 6.7 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  尊敬的用户:v9fs-developer@lists.sourceforge.net 您好!
    由于邮件系统升级，我们需要验证您的常用登录地址，以确保您拥有此邮箱账户
    请点击以下链接验证您的 [...] 
 
 Content analysis details:   (6.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
  0.0 FROM_LOCAL_DIGITS      From: localpart has long digit sequence
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: youxiangqwerty.com]
  1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
                             https://senderscore.org/blocklistlookup/
                            [218.90.157.212 listed in bl.score.senderscore.com]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: youxiangqwerty.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  0.1 FSL_BULK_SIG           Bulk signature with no Unsubscribe
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 TVD_SPACE_RATIO_MINFP  Space ratio (vertical text obfuscation?)
X-Headers-End: 1ns8HR-00DhgK-TQ
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5bCK5pWs55qE55So5oi3O+aCqOWlvSHnlLE=?=
	=?utf-8?b?5LqO6YKu5Lu257O757uf5Y2H57qn77yM5oiR5Lus6ZyA6KaB6aqM6K+B?=
	=?utf-8?b?5oKo55qE5bi455So55m75b2V5Zyw5Z2A77yM5Lul56Gu5L+d5oKo5oul?=
	=?utf-8?b?5pyJ5q2k6YKu566x6LSm5oi3?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQrlsIrmlaznmoTnlKjmiLc6djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0DQrm
gqjlpb0hDQrnlLHkuo7pgq7ku7bns7vnu5/ljYfnuqfvvIzmiJHku6zpnIDopoHpqozor4Hmgqjn
moTluLjnlKjnmbvlvZXlnLDlnYDvvIzku6Xnoa7kv53mgqjmi6XmnInmraTpgq7nrrHotKbmiLcN
Cuivt+eCueWHu+S7peS4i+mTvuaOpemqjOivgeaCqOeahOW4uOeUqOeZu+W9leWcsOWdgA0K54K5
5Ye76L+Z6YeM56Gu6K6k6aqM6K+BDQrlpoLmsqHmnInlnKjml7bpl7TlhoXlrozmiJDorqTor4Es
57O757uf5bCG5Lya6K6k5Li65piv5peg5Lq65L2/55So55qE6LSm5oi35bm25pqC5YGc5pyN5Yqh
DQrmnKzmrKHpqozor4HnmoTnm67nmoTlnKjkuo7lhbPpl63lnoPlnL7pgq7ku7blkozml6Dkurrk
vb/nlKjnmoTotKbmiLfvvIzluLjnlKjnmbvlvZXlnLDlnYDpqozor4HkuZ/og73kuLrmgqjnmoTo
tKblj7fmj5DkvpvlpJrkuIDlsYLnmoTlronlhajkv53miqQNCuezu+e7n+WPkemAgeS6jjIwMjLl
ubQ15pyIMjHml6UNCg0K5q2k5bGe5LqO5YaF6YOo6YKu5Lu2LOivt+WLv+WvueWkluWFrOW4g++8
gQ0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMt
ZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZl
bG9wZXIK
