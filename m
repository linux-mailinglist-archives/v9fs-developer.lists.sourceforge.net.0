Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE217CA12C
	for <lists+v9fs-developer@lfdr.de>; Mon, 16 Oct 2023 10:02:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qsIYk-0006y3-5Z;
	Mon, 16 Oct 2023 08:02:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lukas.varga@venturelinkage.com>) id 1qsIYh-0006xw-U7
 for v9fs-developer@lists.sourceforge.net;
 Mon, 16 Oct 2023 08:02:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7iowqdzve/IIiUUjcEwx8j3uMrVqqiE7R9zbOCKRV9Q=; b=HLrfGIMsQqVI+EfjwjSHXTdyAl
 ISrNFy1jkELjxM5EvJi2FpBChzQJNO7hAdJ5sRhMoG7IUzJbpEkPyfVRkKsn0A04mw72LVfeWRLst
 qpY64t7/EgCH7Ld4/W+//FeAj8StwLsHPyKe+UvfSL7Wxak4eE0eNzQipD4/aQrYOc/s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:To:From:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7iowqdzve/IIiUUjcEwx8j3uMrVqqiE7R9zbOCKRV9Q=; b=U
 dNNYZN1+R/f/hOyPJIP4SBUwT7bvt0+Ul+qKQ/VYY4csNVSnxFzJvOOGkEd7w1xwZTc7LNfEjwPuo
 jQLJnnqZ6R9YXzrQwlDVnOHtbp17BUo6HAib8eWmJ33/VADEaKTLY0wzawhM7JVpIpawNbGq4ZqK0
 9T9XMp4HynoDoPYg=;
Received: from mail.venturelinkage.com ([80.211.143.151])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qsIYe-00GAti-Cr for v9fs-developer@lists.sourceforge.net;
 Mon, 16 Oct 2023 08:02:38 +0000
Received: by mail.venturelinkage.com (Postfix, from userid 1002)
 id 144AC82696; Mon, 16 Oct 2023 10:02:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturelinkage.com;
 s=mail; t=1697443350;
 bh=7iowqdzve/IIiUUjcEwx8j3uMrVqqiE7R9zbOCKRV9Q=;
 h=Date:From:To:Subject:From;
 b=tRif3wswIh2gDW+XIUFzLpeZQK1pe2vgupsZUUkEemHaMSRUAfqMhYT+l0Z3Lq5cK
 eQLY125Cq2xOQqOGYIJKoF5XMUQ8HA3wjU/vc9Bu2vd2giI9otVMaq1RtSkY78CyiT
 wVBAc3yz4w5jotBDjIZgCY2naUx93CIAJ/X1U+T/Mh/OqqSSwi2ZzacCIFJ6FcWzBd
 FVXNA/6fdXBOnfdlfL6w5I5RujUJ4lhEIDl2oSfgDv9M4/+VDWwF4hbgorBoqpRwFS
 q0/Rp91pODsQw/HL28zui7wDijbFrZDITzaR2D3f2Hb3i8B30PE5D3i/zbikrT2qEE
 ++fdloIorkn5A==
Received: by mail.venturelinkage.com for
 <v9fs-developer@lists.sourceforge.net>; Mon, 16 Oct 2023 08:02:28 GMT
Message-ID: <20231016084500-0.1.13.2el9.0.nnyniom570@venturelinkage.com>
Date: Mon, 16 Oct 2023 08:02:28 GMT
To: <v9fs-developer@lists.sourceforge.net>
X-Mailer: mail.venturelinkage.com
MIME-Version: 1.0
X-Spam-Score: 5.9 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Dobré ráno, Dovolil jsem si Vás kontaktovat, protože mám
    zájem ověřit možnost navázání spolupráce. Podporujeme firmy při
   získávání nových obchodních zákazníků. 
 
 Content analysis details:   (5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
                             blocklist
                             [URIs: venturelinkage.com]
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [80.211.143.151 listed in zen.spamhaus.org]
  0.1 URIBL_CSS_A            Contains URL's A record listed in the Spamhaus CSS
                             blocklist
                             [URIs: venturelinkage.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1qsIYe-00GAti-Cr
Subject: [V9fs-developer] =?utf-8?b?UG9wdMOhdmth?=
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
From: Lukas Varga via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Lukas Varga <lukas.varga@venturelinkage.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RG9icsOpIHLDoW5vLAoKRG92b2xpbCBqc2VtIHNpIFbDoXMga29udGFrdG92YXQsIHByb3Rvxb5l
IG3DoW0gesOhamVtIG92xJvFmWl0IG1vxb5ub3N0IG5hdsOhesOhbsOtIHNwb2x1cHLDoWNlLgoK
UG9kcG9ydWplbWUgZmlybXkgcMWZaSB6w61za8OhdsOhbsOtIG5vdsO9Y2ggb2JjaG9kbsOtY2gg
esOha2F6bsOta8WvLgoKTcWvxb5lbWUgc2kgcHJvbWx1dml0IGEgcG9za3l0bm91dCBwb2Ryb2Ju
b3N0aT8KClYgcMWZw61wYWTEmyB6w6FqbXUgVsOhcyBidWRlIGtvbnRha3RvdmF0IG7DocWhIGFu
Z2xpY2t5IG1sdXbDrWPDrSB6w6FzdHVwY2UuCgoKUG96ZHJhdnkKTHVrYXMgVmFyZ2EKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3Bl
ciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
