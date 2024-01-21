Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF26583544A
	for <lists+v9fs-developer@lfdr.de>; Sun, 21 Jan 2024 04:10:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rROEM-0002H4-J8;
	Sun, 21 Jan 2024 03:10:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lxxin@hisw.cn>) id 1rROEK-0002Gy-3f
 for v9fs-developer@lists.sourceforge.net;
 Sun, 21 Jan 2024 03:10:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T5phYI4Wt4gCe1JZlOSq0suGY/HsYpWi4CtejTB0Orc=; b=DURyaVuKT2c7PYh/Dcic1+vQ1N
 0mpz4QBlEOVfcR4uO6Ex3tnUGfNQxwXf1mNMg/wcFngLQ14XdzIZGnYml936Mh+9YelffYuEFzG4Z
 puep5VxCOCnaDuD2J8XV8+6Jxq+PHK/ngxJibLrPVOWO0GmjX+x5ldahIgsaLfboE5YY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=T5phYI4Wt4gCe1JZlOSq0suGY/HsYpWi4CtejTB0Orc=; b=O
 sNc1vMkXIU82F7U49AbmYBBDdJHqeBpzmwsJ1QAzW3+52f+twi3MKTSckgOZwLD/UIWo8n5hUclQq
 ZWRGWTEtXHSudlRIk9jSUnGp1TU6nzF5pSXTjTV6EhGTGotSWgbwldM4JBNApDBpSXqE3sIygbZMF
 YxGRIHuB+32gX3OE=;
Received: from [58.34.17.43] (helo=email.hisw.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rROEF-0003sf-I6 for v9fs-developer@lists.sourceforge.net;
 Sun, 21 Jan 2024 03:10:40 +0000
Received: by email.hisw.cn (Postfix, from userid 492)
 id E1D5B3C12AB; Sun, 21 Jan 2024 11:10:22 +0800 (CST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on email.hisw.cn
X-Spam-Level: 
X-Spam-Status: No, score=-95.2 required=5.0 tests=FSL_HELO_NON_FQDN_1,
 HELO_NO_DOMAIN,HTML_MESSAGE,RCVD_IN_PBL,RCVD_IN_SORBS_DUL,RDNS_NONE,
 TVD_SPACE_RATIO_MINFP,T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,
 USER_IN_WHITELIST autolearn=no version=3.3.1
Received: from ABC-3135 (unknown [121.225.140.34])
 by email.hisw.cn (Postfix) with ESMTPS id 5899D3C11E0
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 21 Jan 2024 11:10:22 +0800 (CST)
X-GUID: 53F6C794-50C6-4CFF-B12C-8FAB8FF8DF03
X-Has-Attach: no
From: =?UTF-8?B?44CQ5LyB6YKu6YCa5ZGK44CR?= <lxxin@hisw.cn>
To: "v9fs-developer" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Sun, 21 Jan 2024 11:10:21 +0800
X-Priority: 1
Message-Id: <202401211110215076032@hisw.cn>
X-Mailer: Foxmail 7, 2, 5, 140[cn]
X-Spam-Score: 7.8 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  橙元较田侯噪胜亡瓮棵米来暑疟破挥窑沾毕掖诸驶
    橙元较田侯噪胜亡瓮棵米来暑疟破挥窑沾毕掖诸驶 
 
 Content analysis details:   (7.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_PBL            RBL: Received via a relay in Spamhaus PBL
                             [58.34.17.43 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  1.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1rROEF-0003sf-I6
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?57u05a6c5LyY54qv5oOc6Ze46I6x5ouM6aG3?=
 =?utf-8?b?5Lul5Zq36KWf56eL5q+N55iq56KJ5by5546W6Z2p6IKD5Z+f?=
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

5qmZ5YWD6L6D55Sw5L6v5Zmq6IOc5Lqh55Ou5qO157Gz5p2l5pqR55af56C05oyl56qR5rK+5q+V
5o6W6K+46am2DQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92
OWZzLWRldmVsb3Blcgo=
