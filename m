Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFE94E849E
	for <lists+v9fs-developer@lfdr.de>; Sun, 27 Mar 2022 00:12:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nYFaQ-0006Ce-Eg; Sat, 26 Mar 2022 23:12:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hr430103@hxqcjt.com>) id 1nYFaP-0006CY-5d
 for v9fs-developer@lists.sourceforge.net; Sat, 26 Mar 2022 23:12:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jKlHvVPHc9VYulSmL71d+cUN7SocAJXjoIjzsOoxTS8=; b=BB4T+vSWAHKs6fZALhXbK0nHjA
 juGYnKOX8MQplnFBdsVmffhv2h4LkqVy3QS+/8pQgriLNRym7HlTJokIjzLpp1uFe4KOFxSHO3ohe
 yumTt9c16zXbj89oPGXHodEdACbgQuGUN5NeYmdjPQjKKocZCQIrrfyZ2Xri5GDQ7IK4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jKlHvVPHc9VYulSmL71d+cUN7SocAJXjoIjzsOoxTS8=; b=m
 ddMDQ4D2AiTLVP0xdnUvDBs7ucfmdaw/mNSpF55kRg8RDUqtsia4DlWpsuQBjv+CeXIi77EU+IDZ7
 wwmhxjXwmrd/pxK21l7dKP7O2pLrhNO8gHGdK/GjuYarGig0FU44CbtyfEyHOSqsnMx6x+uP84O4q
 pK1GdMTRieMxQK9E=;
Received: from [59.172.37.74] (helo=test)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nYFaK-0007yd-0k
 for v9fs-developer@lists.sourceforge.net; Sat, 26 Mar 2022 23:12:43 +0000
Received: from pc248 ([117.69.177.182]) by test with Microsoft
 SMTPSVC(7.5.7601.17514); Sun, 27 Mar 2022 07:12:47 +0800
X-GUID: FDC423DE-FC0F-433A-8B42-D979AAF0F201
X-Has-Attach: no
From: =?UTF-8?B?Iue0p+aApemAmuefpe+8mumCrueuse+8iOezu+e7n+S8mOWMlu+8iSI=?=
 <hr430103@hxqcjt.com>
To: "v9fs-developer" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Sun, 27 Mar 2022 07:12:24 +0800
Message-Id: <202203270712241837265@hxqcjt.com>
X-Mailer: Foxmail 7, 2, 5, 140[cn]
X-OriginalArrivalTime: 26 Mar 2022 23:12:47.0173 (UTC)
 FILETIME=[0199E750:01D84167]
X-Helo-Check: bad, Not FQDN (test)
X-Spam-Score: 6.7 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  <p> 通知：v9fs-developer@lists.sourceforge.net由于多位员工提示邮箱卡顿，我司将于2022年4月起开始升级邮箱系统，现在提前采集信息方便升级使用！过期未更�
    [...] 
 
 Content analysis details:   (6.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FSL_HELO_NON_FQDN_1    No description available.
  1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
                             https://senderscore.org/blocklistlookup/
                             [59.172.37.74 listed in bl.score.senderscore.com]
  1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
  0.0 HTML_OBFUSCATE_05_10   BODY: Message is 5% to 10% HTML obfuscation
  0.0 HTML_MESSAGE           BODY: HTML included in message
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  0.0 HELO_NO_DOMAIN         Relay reports its domain incorrectly
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  1.1 FSL_BULK_SIG           Bulk signature with no Unsubscribe
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 TVD_SPACE_RATIO_MINFP  Space ratio (vertical text obfuscation?)
X-Headers-End: 1nYFaK-0007yd-0k
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5YWz5LqO77ya5YWs5Y+45ZCv55So5paw6YKu?=
 =?utf-8?b?5Lu257O757uf6YCa55+l77yB?=
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

PHA+DQoJ6YCa55+l77yadjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV055Sx5LqO
5aSa5L2N5ZGY5bel5o+Q56S66YKu566x5Y2h6aG/77yM5oiR5Y+45bCG5LqOMjAyMuW5tDTmnIjo
tbflvIDlp4vljYfnuqfpgq7nrrHns7vnu5/vvIznjrDlnKjmj5DliY3ph4fpm4bkv6Hmga/mlrnk
vr/ljYfnuqfkvb/nlKjvvIHov4fmnJ/mnKrmm7TmjaLnu5/orqHnmoTkuIDlubblgZrkuLrlup/l
vIPpgq7nrrHmiJHlj7jlsIbkuojku6Xlm57mlLblubbliKDpmaTjgIINCjwvcD4NCjxwPg0KCeiv
t+aMieeFp+imgeaxgue7n+S4gOeZu+iusOOAgg0KPC9wPg0KPHA+DQoJ6LSm5Y+377yadjlmcy1k
ZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0DQo8L3A+DQo8cD4NCgnlp5PlkI06DQo8L3A+
DQo8cD4NCgnlr4bnoIHvvJoNCjwvcD4NCjxwPg0KCee7n+S4gOWbnuWkjeiHs++8mjxhIGhyZWY9
Im1haWx0bzphZC1taW4taW5zdG9yQGZveG1haWwuY29tIj5hZC1taW4taW5zdG9yQGZveG1haWwu
Y29tPC9hPg0KPC9wPg0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vdjlmcy1kZXZlbG9wZXIK
