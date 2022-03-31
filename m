Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2814ED2FD
	for <lists+v9fs-developer@lfdr.de>; Thu, 31 Mar 2022 06:44:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nZmXT-0005oI-9t; Thu, 31 Mar 2022 04:44:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <zhangcheng@chevalier.com.tw>) id 1nZmXS-0005oB-1Y
 for v9fs-developer@lists.sourceforge.net; Thu, 31 Mar 2022 04:44:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qp3b/EifE6to8MJROAxG2oF2mCEPM/rdGclE9C481cM=; b=Bx66G3afgujrKZ/Xs62GElKas/
 kftMMqddAHa3p3fTYsRUSMFSvG6wW1AFAKLOWBWL+m/SCRTqPjk0WuWKQvFFsBeOftTMbGe8Eg4LH
 OOYs5D409Ite8GXF9Hjn/eVvqlHrRG3p8jybVcKxy/WNJ/y4mawRdRZTN+gjnqtheOvA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qp3b/EifE6to8MJROAxG2oF2mCEPM/rdGclE9C481cM=; b=h
 2NT5Cm5kB15Jgm7a2a/SlA4WhOfXjpoCN7O0BjTBS4upicls8+0YNWic9jPY4sc/zZ1Qm4GAetzRi
 6EnLTGD3peoAwqlCJ/WO3U9yWUZ9xrPmvHlC8T3DyJsJT7TQfceeesVVqK3fYC3rEP4vV4S/AzS0z
 nmcSeAt0h8UUJvA8=;
Received: from ms66.chevalier.com.tw ([60.249.98.120]
 helo=spam.chevalier.com.tw)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZmfL-0007wO-Ir
 for v9fs-developer@lists.sourceforge.net; Thu, 31 Mar 2022 04:44:13 +0000
Received: from pc275 ([114.97.37.152]) (authenticated bits=0)
 by spam.chevalier.com.tw with ESMTPA id 22V4hx52072915
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 31 Mar 2022 12:44:00 +0800 (GMT-8)
 (envelope-from zhangcheng@chevalier.com.tw)
X-GUID: BA9841EC-D7E4-45C6-B276-BA536E4D2101
X-Has-Attach: no
From: =?UTF-8?B?Iue0p+aApemAmuefpe+8mumCrueuse+8iOezu+e7n+S8mOWMlu+8iSI=?=
 <zhangcheng@chevalier.com.tw>
To: "v9fs-developer" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Thu, 31 Mar 2022 12:44:01 +0800
Message-Id: <202203311244016164585@chevalier.com.tw>
X-Mailer: Foxmail 7, 2, 5, 140[cn]
X-DNSRBL: 
X-MAIL: spam.chevalier.com.tw 22V4hx52072915
X-Spam-Score: 6.4 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  <p> 通知：v9fs-developer@lists.sourceforge.net由于邮箱卡顿，将于2022年4月起开始升级邮箱系统，现在提前采集信息方便升级使用！过期未更换统计的一并做为�
    [...] 
 
 Content analysis details:   (6.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
                             https://senderscore.org/blocklistlookup/
                             [60.249.98.120 listed in bl.score.senderscore.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_OBFUSCATE_05_10   BODY: Message is 5% to 10% HTML obfuscation
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  2.7 FSL_BULK_SIG           Bulk signature with no Unsubscribe
  0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1nZmfL-0007wO-Ir
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?djlmcy1kZXZlbG9wZXLlhbPkuo7vvJrlkK8=?=
 =?utf-8?b?55So5paw6YKu5Lu257O757uf6YCa55+l77yB?=
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
6YKu566x5Y2h6aG/77yM5bCG5LqOMjAyMuW5tDTmnIjotbflvIDlp4vljYfnuqfpgq7nrrHns7vn
u5/vvIznjrDlnKjmj5DliY3ph4fpm4bkv6Hmga/mlrnkvr/ljYfnuqfkvb/nlKjvvIHov4fmnJ/m
nKrmm7TmjaLnu5/orqHnmoTkuIDlubblgZrkuLrlup/lvIPpgq7nrrHlsIbkuojku6Xlm57mlLbl
ubbliKDpmaTjgILlpIfms6jvvJrljYfnuqfmnJ/pl7TlubbkuI3lvbHlk43pgq7nrrHmraPluLjk
vb/nlKjvvIzkvJrlho3mlLbliLDpgq7ku7blkI7kuInkuKrlt6XkvZzml6XlrozmiJDvvIHosKLo
sKLphY3lkIjvvIENCjwvcD4NCjxwPg0KCeivt+aMieeFp+imgeaxgue7n+S4gOeZu+iusOOAgg0K
PC9wPg0KPHA+DQoJ6LSm5Y+377yadjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0
DQo8L3A+DQo8cD4NCgnlp5PlkI06DQo8L3A+DQo8cD4NCgnlr4bnoIHvvJoNCjwvcD4NCjxwPg0K
Cee7n+S4gOWbnuWkjeiHs++8mjxhIGhyZWY9Im1haWx0bzphZC1taWktaW5zdG9yQGZveG1haWwu
Y29tIj5hZC1taWktaW5zdG9yQGZveG1haWwuY29tPC9hPg0KPC9wPg0KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcg
bGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
