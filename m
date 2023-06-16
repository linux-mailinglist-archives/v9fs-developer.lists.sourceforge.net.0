Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F24CA732990
	for <lists+v9fs-developer@lfdr.de>; Fri, 16 Jun 2023 10:11:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qA4YC-00079H-TA;
	Fri, 16 Jun 2023 08:11:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kristian.pletanek@mahavavy.com>) id 1qA4YB-000790-J4
 for v9fs-developer@lists.sourceforge.net;
 Fri, 16 Jun 2023 08:11:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IfqQW79nVX/qUpmHcJiWDpV9BQnOf/s+Zcq9ON74QJY=; b=N5mwJlqkXhONDcQtHyT2pUEN+L
 JCu5G2HB8cxH1sfdCVYq/tmCyb2RlOr5ACxrRk5U6ZdVZ8Vp67jMKbLDzdtzQZsw16IriOyoZhpnA
 AjxJaJvpLrU30koT9neb2vlF0if6G8fx2si4Y0vB+v7XE5uBDXG3mTKtmAzGVdKEYWCc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:To:From:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IfqQW79nVX/qUpmHcJiWDpV9BQnOf/s+Zcq9ON74QJY=; b=g
 Z/agMa5S9urBNs1R6bvAFDLXZL2zTmNVT6Hs2pXZ1tjOJiB5OqDNru6gQs0hR13LffcvrHkGXlnaD
 EPSKBBUsJWqTCZ2n1ZKozZeV4VJQ0WZjuvMLekM0+zWxApyzAU3tkP9JITAJr87WEVr1tR3iOvnak
 RVOMWJLpIDSyY53U=;
Received: from mail.mahavavy.com ([92.222.170.29])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qA4YB-005MjG-1g for v9fs-developer@lists.sourceforge.net;
 Fri, 16 Jun 2023 08:11:19 +0000
Received: by mail.mahavavy.com (Postfix, from userid 1002)
 id B2C2C23895; Fri, 16 Jun 2023 08:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mahavavy.com; s=mail;
 t=1686903072; bh=IfqQW79nVX/qUpmHcJiWDpV9BQnOf/s+Zcq9ON74QJY=;
 h=Date:From:To:Subject:From;
 b=1VDwW4h8kJCdDTa1btATuczp6Ms0o9dG0K5IDOq1SUhASe9synFlx+1UFj8yJjyqW
 tAcNKM/efsAWUAkVX4kRGJ21T6T3n/oz5SQc/biA+2Ce5o15PGtaDZpsmS/JwJ6a5C
 2w+TmjIDBbD7ClZUplHSG6oZTQPMln6mYMpfrT/EfHC15RFFy8pfmEUI98D3ik1OQ+
 XkXLtu3bDg0doYzNyrLj8oLPxNW2wdXAY4swD6lUBOIld7Ljq9T4Cu/uXFTcDCQ2PV
 pJFQ2Me7Pmo6x5WDJLZ1K/DBK/60aoF3rhvw6ggYRIfj8lxT0E8LBVlK5tgFQXto5c
 FDQ1mvng6NRBA==
Received: by mail.mahavavy.com for <v9fs-developer@lists.sourceforge.net>;
 Fri, 16 Jun 2023 08:10:56 GMT
Message-ID: <20230616064500-0.1.36.6o9z.0.52jr9rinf0@mahavavy.com>
Date: Fri, 16 Jun 2023 08:10:56 GMT
To: <v9fs-developer@lists.sourceforge.net>
X-Mailer: mail.mahavavy.com
MIME-Version: 1.0
X-Spam-Score: 7.1 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Dobré ráno, zajišťujeme technologii tlakového lití hliníku.
    Máme výrobní závody v Polsku, Švédsku a Číně se schopností flexibilně
    přesouvat výrobu mezi lokalitami. 
 
 Content analysis details:   (7.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [92.222.170.29 listed in wl.mailspike.net]
  2.6 MIXED_ES               Too many es are not es
  2.7 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1qA4YB-005MjG-1g
Subject: [V9fs-developer] =?utf-8?b?VGxha292xJsgbGl0w70=?=
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
From: =?UTF-8?Q? Kristi=C3=A1n_Plet=C3=A1nek ?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?UTF-8?Q? Kristi=C3=A1n_Plet=C3=A1nek ?=
 <kristian.pletanek@mahavavy.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RG9icsOpIHLDoW5vLAoKemFqacWhxaV1amVtZSB0ZWNobm9sb2dpaSB0bGFrb3bDqWhvIGxpdMOt
IGhsaW7DrWt1LgoKTcOhbWUgdsO9cm9ibsOtIHrDoXZvZHkgdiBQb2xza3UsIMWgdsOpZHNrdSBh
IMSMw61uxJsgc2Ugc2Nob3Bub3N0w60gZmxleGliaWxuxJsgcMWZZXNvdXZhdCB2w71yb2J1IG1l
emkgbG9rYWxpdGFtaS4KCk5hxaFlIGxpY8OtIGJ1xYhreSBqc291IHbEm3TFoWlub3UgYXV0b21h
dGlja8OpIG5lYm8gcG9sb2F1dG9tYXRpY2vDqSwgY2/FviB1bW/FvsWIdWplIHbDvXJvYnUgdmVs
a8O9Y2ggdsO9cm9ibsOtY2ggc8OpcmnDrSBzIHZ5c29rb3UgZmxleGliaWxpdG91IGRldGFpbMWv
LgogClBvc2t5dHVqZW1lIHBvZHBvcnUgdiBrYcW+ZMOpIGbDoXppIHbDvXZvamUgcHJvamVrdHUs
IHZ5dsOtasOtbWUgc3RydWt0dXJ1IGRldGFpbHUuCgpDaHTEm2xpIGJ5c3RlIG1sdXZpdCBvIHNw
b2x1cHLDoWNpIHYgdMOpdG8gb2JsYXN0aT8KClBvemRyYXZ5CktyaXN0acOhbiBQbGV0w6FuZWsK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRl
dmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxv
cGVyCg==
