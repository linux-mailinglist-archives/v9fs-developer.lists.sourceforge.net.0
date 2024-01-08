Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D1ED48269BB
	for <lists+v9fs-developer@lfdr.de>; Mon,  8 Jan 2024 09:46:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rMlGt-0000uK-PT;
	Mon, 08 Jan 2024 08:46:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lukas.varga@venturelinkage.com>) id 1rMlGs-0000u7-0L
 for v9fs-developer@lists.sourceforge.net;
 Mon, 08 Jan 2024 08:46:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7iowqdzve/IIiUUjcEwx8j3uMrVqqiE7R9zbOCKRV9Q=; b=Fqntw7ioLXi6bbvwDsSXaOsS00
 d9opE9+0yqEsobSJimvdPfOxOQA2YFaNC0lFxk1cbJJnFCibr07jV8VCX0pn1SFqzKTxHt7LENH0A
 6vbVriz1P8cak1MhuLgdaY1Rv0ptdRxQOkhzW0DT1Kh/he+Kr3Fh5yX9d2Znji+c4OR8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:To:From:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7iowqdzve/IIiUUjcEwx8j3uMrVqqiE7R9zbOCKRV9Q=; b=C
 4oj1RyWVzISN6Y0PHdvs7S2EpGdTlzMSRFA81iPoC0h3Jbq3v32Cbc2DqQKbZAnJq6TYrY5RAcMyV
 PHohV+ol5mdRCH7kOlBcxNXuawQHWZwP4ReQYX/mE5p5Om1PGo7IJ7u8zk2hUglCzVn4Q1bKYY8Qo
 naXDReF+sO2qn2ZA=;
Received: from mail.venturelinkage.com ([80.211.143.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rMlGp-0003nv-96 for v9fs-developer@lists.sourceforge.net;
 Mon, 08 Jan 2024 08:46:07 +0000
Received: by mail.venturelinkage.com (Postfix, from userid 1002)
 id 6864B82F92; Mon,  8 Jan 2024 09:45:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturelinkage.com;
 s=mail; t=1704703554;
 bh=7iowqdzve/IIiUUjcEwx8j3uMrVqqiE7R9zbOCKRV9Q=;
 h=Date:From:To:Subject:From;
 b=CkJT6SqvM43JdolS4m71rv2rJL7NQiyjldaW7JNvO1/Hg7qMHS13obJvUBN5OmHCE
 60gMsTJLAljvxRmUblOoP1nU2fo8C3PdBAJ77PBVszoO+THn8L49Jza8zjkpzlN+x1
 LmVsYHTK6PlYuz1LwNZoJ05X9/2rh4NEm3aGhjr4LHmDHVTKP16bcwJ2qDoWhSdBHW
 jHIFmqGtTE9yIekyESULqM59S6RjFDK/pivb4LTl/wjTn40MR47UQED+TLYc+XGzls
 vah8R4qjUqVPk64ns/yoNcvYB51rrMgPUHyG1/uGOCdFREwOfc7v/Slx/4ZDicZcNh
 LQ4VcE565K9pg==
Received: by mail.venturelinkage.com for
 <v9fs-developer@lists.sourceforge.net>; Mon,  8 Jan 2024 08:45:43 GMT
Message-ID: <20240108084500-0.1.2l.6row.0.cojhg2pp0n@venturelinkage.com>
Date: Mon,  8 Jan 2024 08:45:43 GMT
To: <v9fs-developer@lists.sourceforge.net>
X-Mailer: mail.venturelinkage.com
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Dobré ráno, Dovolil jsem si Vás kontaktovat, protože mám
    zájem ověřit možnost navázání spolupráce. Podporujeme firmy při
   získávání nových obchodních zákazníků. 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rMlGp-0003nv-96
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
