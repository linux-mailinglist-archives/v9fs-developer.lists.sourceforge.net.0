Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 871918BD336
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 May 2024 18:53:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1s41b1-0000sE-Ar;
	Mon, 06 May 2024 16:53:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <no-reply@vhy14.com>) id 1s41az-0000s8-5u
 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 May 2024 16:53:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R219iE5bjQS66dlWBUu2+vqZVvhDeLhk/bMsOhOCLNg=; b=FHVlO3baD3jaWCMfYLxisZZ2gx
 gOAsttODWFM8xT3aaFmKXv9viBQGdEiVjI50J1Fr6bsImI8QP1bNFjCDHnz0aOkGeyVvwDVI4z5aq
 9KUJeudyJurMpzBMxOKRAvxF7m3b6PNH2baI7tjySxB3tdHtq+0DMguMGPuFeYF4GaCE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=R219iE5bjQS66dlWBUu2+vqZVvhDeLhk/bMsOhOCLNg=; b=E
 zgc5s2+T7cfXeJSn/xwFAshC0XHO86xOIVvJSb+KbmdkavwsdsgCw61i7HG2YmQ+ivve+1zgE0QrC
 cLL9ZJ6BzRg5FYZ+oDrwMXTp2dyd3An9I5lp1Y2zcnMZ6H/17WPrBrcBSbgj1i/bELKRfiEqdHTQR
 IvucjQny7h58Kr3w=;
Received: from [104.143.35.172] (helo=mail0.vhy14.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s41ax-00011A-CV for v9fs-developer@lists.sourceforge.net;
 Mon, 06 May 2024 16:53:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=vhy14.com; 
 h=Message-ID:From:To:Subject:Date:MIME-Version:Content-Type;
 i=no-reply@vhy14.com;
 bh=R219iE5bjQS66dlWBUu2+vqZVvhDeLhk/bMsOhOCLNg=;
 b=BLM/crTif3uxkSAWZ/H35zsCYF15tyxx9FKnC4cSj3BpzW2VxqFDKKHDO0vRGqLuj9Y0aQp6A3Hy
 i+sOid+IRedwUCs0jVewLVRtRUKn4lwr5b067U7Qc3oq9sH8yIz3Zbnrr4ActDpCAIFIz5hD3fb5
 0XcMhyTh0zlt+4qg6ew=
Message-ID: <eba1ef79a78f105c64c3610006823661@vhy14.com>
From: =?utf-8?B?6Ieq5YuV44Oh44O844Or6YCB5L+h?= <no-reply@vhy14.com>
To: <v9fs-developer@lists.sourceforge.net>
Date: Tue, 07 May 2024 00:33:20 +0800
MIME-Version: 1.0
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  三井住友カードをご利用のお客様へ このたびは三井住友カードをご利用いただき、誠にありがとうございます。
    下記のご利用照会がございましたので、お知らせいたします。
    
 
 Content analysis details:   (1.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: vhy14.com]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: nyc-painters.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1s41ax-00011A-CV
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQ5LiJ5LqV5L2P5Y+L44Kr44O844OJ44CR?=
	=?utf-8?b?44GU5Yip55So5YaF5a6544Gu44GK55+l44KJ44Gb?=
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

5LiJ5LqV5L2P5Y+L44Kr44O844OJ44KS44GU5Yip55So44Gu44GK5a6i5qeY44G4CgrjgZPjga7j
gZ/jgbPjga/kuInkupXkvY/lj4vjgqvjg7zjg4njgpLjgZTliKnnlKjjgYTjgZ/jgaDjgY3jgIHo
qqDjgavjgYLjgorjgYzjgajjgYbjgZTjgZbjgYTjgb7jgZnjgIIK5LiL6KiY44Gu44GU5Yip55So
54Wn5Lya44GM44GU44GW44GE44G+44GX44Gf44Gu44Gn44CB44GK55+l44KJ44Gb44GE44Gf44GX
44G+44GZ44CCCgrigLvmnKzjg6Hjg7zjg6vjga/jgIHjgZTliKnnlKjjg7voq4vmsYLjgpLnorrl
rprjgZnjgovjgoLjga7jgafjga/jgYLjgorjgb7jgZvjgpPjgIIK44GU5Yip55So5pel5pmC77ya
MjAyNC8wNS8wNiAgICAgIDIzOjE4CuOBlOWIqeeUqOWgtOaJgO+8muOCu+ODluODsy3jgqTjg6zj
g5bjg7Mg5Y2D5Luj55Sw5LiA44OE5qmLIDMg5LiB55uu5bqXCuOBlOWIqeeUqOmHkemhje+8mjE2
LCA1ODDlhoYKCuOCq+ODvOODieOCkuS9v+eUqOOBl+OBn+immuOBiOOBjOOBquOBhOWgtOWQiOOB
r+OAgeS7peS4iyDjga4g44OqIOODsyDjgq8g44KS44Kv44OqIOODgyDjgq8g44GXIOOBpuOCqyDj
g7wg44OJ5L2/55So44Gu6Kmz57Sw44KS56K66KqN44GX44Gm44GP44Gg44GV44GE44CCCmh0dHBz
Oi8vbnljLXBhaW50ZXJzLmNvbQoK77yc44GU5rOo5oSP54K577yeCuacrOOCteODvOODk+OCueOB
r+OAgeOBiuWuouanmOOBruS4ieS6leS9j+WPi+OCq+ODvOODieOBruOBlOWIqeeUqOeFp+S8muOB
jOihjOOCj+OCjOOBn+WgtOWQiOOAgQrkuIkg5LqVIOS9jyDlj4sgTkVU44Gr44GU55m76Yyy44GE
44Gf44Gg44GE44Gm44GE44KL44Oh44O844Or44Ki44OJ44Os44K544G444GK55+l44KJ44Gb44GZ
44KL44K144O844OT44K544Gn44GZ44CCCuKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKA
lOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlArilqDnmbog6KGMIOiAheKWoArkuInk
upXkvY/lj4vjgqvjg7zjg4nmoKrlvI/kvJrnpL4K44CSMTM1LTAwNjEK5p2x5Lqs6YO95rGf5p2x
5Yy66LGK5rSyMuS4geebrjLnlaozMQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJA
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
