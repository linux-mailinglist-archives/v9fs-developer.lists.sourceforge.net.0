Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E27EF4CCBFD
	for <lists+v9fs-developer@lfdr.de>; Fri,  4 Mar 2022 03:49:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nPy0T-0007aN-KJ; Fri, 04 Mar 2022 02:49:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hr@dahei.com>) id 1nPy0S-0007aB-1C
 for v9fs-developer@lists.sourceforge.net; Fri, 04 Mar 2022 02:49:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f7H6ypYPS4RXd2IjvDV7SnBuGfXVRCBqNUVrAwol0fs=; b=kuIBS9chK4jodiUJVzMG/HYEp2
 eq8HnFQDglTD9cIqpLfszTN7dk+IeHrDzKLfwFzM0oJS/gZyJvv7Iugx59Bn7BIggiEwzatXlcadq
 8VgB5xZWgI99UobVFNN5VsRU4Sl4VQLYBYKiP4emSy/Fn65A+j26jrleKXjUhxQ/EUwQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=f7H6ypYPS4RXd2IjvDV7SnBuGfXVRCBqNUVrAwol0fs=; b=P
 22y+5MpRlWdtPJo6+6MZNaCxU+NzkHodpbBCVYYMf4w4xRZ407FVWV/BivN/yKkBFf113Agjvd6/K
 TFuWJ0jK5tLvdXC/6o0HELCr8VEBtFEUkiQRVMH492E5poPETEPQKBhXtEA8qAM37+mkP+gHc1rY2
 zj+9zwylM0mUnj2g=;
Received: from [183.60.46.252] (helo=mail.hhchezi.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nPy0M-0000D8-CM
 for v9fs-developer@lists.sourceforge.net; Fri, 04 Mar 2022 02:49:22 +0000
Received: from mail.hhchezi.com (mail.hhchezi.com [127.0.0.1])
 by mail.hhchezi.com (Postfix) with ESMTP id 6A2695652A0
 for <v9fs-developer@lists.sourceforge.net>;
 Fri,  4 Mar 2022 10:03:41 +0800 (CST)
X-Virus-Scanned: amavisd-new at mail.hhchezi.com
X-Spam-Flag: NO
X-Spam-Score: 4.388
X-Spam-Level: ****
X-Spam-Status: No, score=4.388 tagged_above=2 required=6.2
 tests=[ALL_TRUSTED=-1, BAYES_00=-1.9, FSL_BULK_SIG=1.999,
 HTML_MESSAGE=0.001, MPART_ALT_DIFF=0.79, RAZOR2_CF_RANGE_51_100=1.886,
 RAZOR2_CHECK=0.922, T_SCC_BODY_TEXT_LINE=-0.01, URIBL_BLACK=1.7]
 autolearn=no
Received: from mail.hhchezi.com ([127.0.0.1])
 by mail.hhchezi.com (mail.hhchezi.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K26gSPhG_uj8 for <v9fs-developer@lists.sourceforge.net>;
 Fri,  4 Mar 2022 10:03:39 +0800 (CST)
Received: from thegiux (unknown [121.232.219.80])
 by mail.hhchezi.com (Postfix) with ESMTPA id E0EA756528F
 for <v9fs-developer@lists.sourceforge.net>;
 Fri,  4 Mar 2022 10:03:33 +0800 (CST)
From: fsdea <hr@dahei.com>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Fri, 4 Mar 2022 10:03:56 +0800
Message-ID: <0086b8d4d8a9$f0483131$917c7158$@thegiux>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
X-Spam-Score: 7.4 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  你好：v9fs-developer 由于安全协议,系统查检测到您的邮箱行为异常：
    你的的邮件已被锁定,请验证您的帐户： 
 
 Content analysis details:   (7.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [183.60.46.252 listed in dnsbl-1.uceprotect.net]
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: youxiangdx.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  2.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1nPy0M-0000D8-CM
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?6LSmIOWPtyDpgJog55+lIO+8mg==?=
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

DQrkvaDlpb3vvJp2OWZzLWRldmVsb3Blcg0KDQrnlLHkuo7lronlhajljY/orq4s57O757uf5p+l
5qOA5rWL5Yiw5oKo55qE6YKu566x6KGM5Li65byC5bi477yaDQoNCuS9oOeahOeahOmCruS7tuW3
suiiq+mUgeWumizor7fpqozor4HmgqjnmoTluJDmiLfvvJoNCg0K54K55q2k6aqM6K+B6YKu566x
DQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1k
ZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVs
b3Blcgo=
