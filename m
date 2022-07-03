Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC375648D3
	for <lists+v9fs-developer@lfdr.de>; Sun,  3 Jul 2022 19:19:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o83FH-0003OW-Nz; Sun, 03 Jul 2022 17:18:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <niuyy@znhxgroup.com>) id 1o83FG-0003OQ-AY
 for v9fs-developer@lists.sourceforge.net; Sun, 03 Jul 2022 17:18:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6XIlLJHEw266ANznDiEwzta1EpOVV+uNt+cbosWb5oU=; b=bQaEC6oFwiGIFSEjhGJgr4fK4G
 vGLRtI3aNUpWVoF2ocgCcCgscZ9unO+LNSXIZDiU+wpeolrfB7XgLlwAlQ6g/OAL2Opk+XGGLnxkV
 PxrzLRf5ncsUtL1Pa7AGCcfi16PNy20kIvAAwKHYZ+42frAPansDU375Fs+sCP0/G9jg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6XIlLJHEw266ANznDiEwzta1EpOVV+uNt+cbosWb5oU=; b=A
 /btzx1W4rqxUvTCjTYRulS60qd42tg4Jk9ih9lmJD6L/XnIFb0L9zXWRtPnW+Xb6k9g6lXWBjiMFD
 xVKKNnKbo2/T2k132vGURppxisgO0jpnzson3To4B7ZQH4jzbs4sko/oxe+fgb33v/48NwPEHQgXQ
 g+SUF1Y5Fss+AEAM=;
Received: from mail.cgpcgroup.com ([36.112.95.29] helo=znhxgroup.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1o83FF-0000ly-OU
 for v9fs-developer@lists.sourceforge.net; Sun, 03 Jul 2022 17:18:54 +0000
Received: from cfxgaqgh (unknown [125.87.84.127])
 by localhost.localdomain (Coremail) with SMTP id
 AQAAfwC3cRBqz8Fi6wp9Aw--.37382S2; 
 Mon, 04 Jul 2022 01:18:34 +0800 (CST)
Date: Mon, 4 Jul 2022 01:18:26 +0800
From: "OA" <niuyy@znhxgroup.com>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20220704011834140875@znhxgroup.com>
X-Priority: 1 (Highest)
X-mailer: Foxmail 6, 13, 102, 15 [cn]
Mime-Version: 1.0
X-CM-TRANSID: AQAAfwC3cRBqz8Fi6wp9Aw--.37382S2
X-Coremail-Antispam: 1UD129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
 VFW2AGmfu7bjvjm3AaLaJ3UjIYCTnIWjp_UUUoQ7k0a2IF6r1UM7kC6x804xWl14x267AK
 xVWUJVW8JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0rVWrJVCq3wAFIxvE14AKwVWUJVWUGw
 A2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK021l84ACjcxK6xIIjxv20xvE14v26w1j
 6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4UJVWxJr1l84ACjcxK6I8E87Iv67AKxV
 W0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_GcCE3s1le2I262IYc4CY6c8Ij28IcVAa
 Y2xG8wAqx4xG67k08I80eVW8JVW5JwAqx4xG64kEw2xG04xIwI0_Jr0_Gr1l5I8CrVC2j2
 CE0s8v4I0Ex7kE8s4lYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4U
 McvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwIxGrwACY4xI67k04243AVAKzVAKj4
 xxM4xvF2IEb7IF0Fy26I8I3I1lc2xSY4AK67AK6r4l42xK82IYc2Ij64vIr41l4c8EcI0E
 n4kS14v26rWUJr0E3s0q3wCF54CYxVCY1x0262kKe7AKxVW7Jr1j6s0q3s1l4I8I3I0E4I
 kC6x0Yz7v_Jr0_Gr1l4IxYO2xFxVAFwI0_Wr1UJVCq3s0DMI8I3I0E5I8CrVAFwI0_JrI_
 JrWlx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUJVWUXwCIc40Y0x0EwI
 xGrwCI42IY6xIIjxv20xvE14v26w1j6s0DMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8Jr0_
 Cr1UMIIF0xvE42xK8VAvwI8IcIk0rVWUCVW8JwCI42IY6I8E87Iv67AKxVWxJr0_GcWlIx
 AIcVC2z280aVCY1x0267AKxVWxJr0_GcWl3VCjccxEccI2aVAqY2ADYxBIdaVFxhVjvjDU
 0xZFpf9x0zE1v3xUUUUU=
X-CM-SenderInfo: 5qlx55g62qx5pjur31oofrz/
X-Helo-Check: bad, Forged Random Domain (znhxgroup.com)
X-Spam-Score: 7.7 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Ç×°®µÄÓÃ»§£º ÎªÁË¼ÓÇ¿ÍøÂç°²È«¹ÜÀí£¬Ìá¸ßÓÊ¼þÏµÍ³µÄ°²È«ÐÔºÍÎÈ¶¨ÐÔ£¬±£ÕÏÊÕ·¢³©Í¨£¬ÎªÓÃ»§Ìá¹©ÓÅÖÊµÄ·þÎñ£¬ÏÖ¼´½«ÆôÓÃÐÂ°æÏµÍ³£¬ÓÐ¹ØÊÂÏîÍ¨ÖªÈçÏÂ£º
    1.ÓÃ»§ÐèµÇÂ¼ÐÂÓÊ¼þÏµÍ³½«Ô­ÓÐÊý¾ÝÇ¨ÒÆÖÁÐÂÏµÍ³¡£ 2.Î´Ç¨ÒÆÊý¾Ýµ [...] 
 
 Content analysis details:   (7.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_PBL            RBL: Received via a relay in Spamhaus PBL
                             [36.112.95.29 listed in zen.spamhaus.org]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: hxsngg.cyou]
  0.0 T_PDS_OTHER_BAD_TLD    Untrustworthy TLDs
                             [URI: 10.10.2.12.hxsngg.cyou (cyou)]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.2 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1o83FF-0000ly-OU
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?gb2312?b?udjT2tPKz+TPtc2zx6jSxrmruObNqNaq?=
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
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQrH17CutcTTw7uno7ogDQrOqsHLvNPHv834wuewssirudzA7aOszOG439PKvP7Ptc2ztcSwssir
0NS6zc7ItqjQ1KOssaPVz8rVt6Kzqc2oo6zOqtPDu6fM4bmp08XWyrXEt/7O8aOsz9a8tL2rxvTT
w9DCsObPtc2zo6zT0LnYysLP7s2o1qrI58/Co7oNCjEu08O7p9DotcfCvNDC08q8/s+1zbO9q9St
09DK/b7dx6jSxtbB0MLPtc2zoaMNCjIuzrTHqNLGyv2+3bXE08O7p6Osz7XNs72rxuTIz7aozqrO
3sjLyrnTw7XE1cu7p7KizaPWubf+zvGhow0KMy7J/by2uvPTw7unw/u6zcPcwuu++bK7seSjrNPD
u6fO3tDo0N64xL/Nu6e2y8jtvP7J6NbDoaMNCrXjtMu1x8K8zeqzybG+tM7HqNLGDQrM2LTLzajW
qg0KMjAyMi03LTQNCg0KDQoNCiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby92OWZzLWRldmVsb3Blcgo=
