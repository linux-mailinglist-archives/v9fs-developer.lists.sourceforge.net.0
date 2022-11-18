Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C89662F6A9
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Nov 2022 14:57:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ow1sH-0004Z1-PP;
	Fri, 18 Nov 2022 13:57:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1ow1sG-0004Yv-00
 for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Nov 2022 13:57:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VQvQZFr5XOX6mVpYtpRmE/S6SSj33Skt2C2fmAo2mBQ=; b=YnjZSPBh2nbwf0BcH8SjoYOJ0L
 APrpBR5QyhxklMyQR2wlLJG6UMkixlCVaF111/wJTxiYh9yUWJcd4wWa40dOQyl7ovsjsceekPAEH
 7zIXiwmenVepGWLhydkI7lEqvtczKprg6rohhHLN670lZA6bTwm6utYro0OFgRQBfuOo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VQvQZFr5XOX6mVpYtpRmE/S6SSj33Skt2C2fmAo2mBQ=; b=AtWTeul3fRRNmSza/Apr4xD0eO
 F+YAc6ifOW5pW1S5suj2VdHT/lbPNUF3Eux6vGALGkd5wwG9AcFJ2IHpGmnQqgNbsDWI62qnA6xJo
 Y13UBMr/DGnahQTtT/DMv/8jb1hfUrKRkVgX/0OdBPQsh3RElxJCKfgXLRWtRvLV8rZE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ow1sF-0003br-8H for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Nov 2022 13:57:43 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 30F42C01F; Fri, 18 Nov 2022 14:57:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668779863; bh=VQvQZFr5XOX6mVpYtpRmE/S6SSj33Skt2C2fmAo2mBQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tUX5eVOb6vWixrgLrzthqJdSROlGDJJHiq5JNnNKuIRg1kSPNlE2d/fiebmFFfktS
 VEoiGy13q5Hxgl5cV6GNcfnc4KRkO657R9fR9mHUIBth5qGIa21z71ma8+6dsyzv9N
 eaGnGsary/JAwbdqCMynKIUfccfUDIfAPpNccBe/TSOk6SGaweuFBjI8Lm000seVuq
 LVwZxcT25LBSQZ1S6x/58BzNusmICIVyP347N+siiuVYp2GZ4Pa+6dJILn1t8IPoZq
 e/w6QotVeDLx32oi/7MnNvUBX9gGn2CmTqbef1TdLzoJS0Qi8mLnskdSyMDlRmkOYJ
 CI73+Qc/S6H+Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id C497BC009;
 Fri, 18 Nov 2022 14:57:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668779861; bh=VQvQZFr5XOX6mVpYtpRmE/S6SSj33Skt2C2fmAo2mBQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U0LzaW2K7atMmeU+JVE/GaCTSmjVg0tRzfZjuQQAxIVbWiDYB+3woQGkNMel+hitr
 3rTD0J3FpbYf4pN0Brco4XxROR1WC8rVFCw6jNBO/r4Y28sX1FAxdbpUg/5jqeNZ+F
 IuLWY+6c0OAZowNPAE/CdJNE0rGh2wTMDj4y8C5EGiDGCIdL9lcz4gotMEgVQhkC7q
 zcy9sfMmlMqaV932sCfZI/fnXWVEBXULvmYsrA0kPPGnoXoP1jqhD65SRKqIniEVrX
 2m+4vMWDDyLK4AeTxQ5HCB7FqLdtYgA6dDUT1siYm62YKw+qaZZrM2/1UFX446Cv5+
 vyUpPpGGZwalQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 5888f87b;
 Fri, 18 Nov 2022 13:57:30 +0000 (UTC)
Date: Fri, 18 Nov 2022 22:57:14 +0900
From: asmadeus@codewreck.org
To: "Guozihua (Scott)" <guozihua@huawei.com>
Message-ID: <Y3ePOhpctTf7Buf8@codewreck.org>
References: <20221117091159.31533-1-guozihua@huawei.com>
 <3918617.6eBe0Ihrjo@silver> <Y3cRJsRFCZaKrzhe@codewreck.org>
 <a6aec93a-1166-1d8a-48de-767bc1eb2214@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a6aec93a-1166-1d8a-48de-767bc1eb2214@huawei.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Guozihua (Scott) wrote on Fri, Nov 18, 2022 at 06:18:16PM
   +0800: > I retried the repro on your branch, the issue does not reproduce.
    What > a good pair of eyes :)！ Thanks! By the way the original check also
    compared size to msize directly, without an offset for headers, so with hindsight
    it looks clear enough that the size is the full size including the header.
    
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
X-Headers-End: 1ow1sF-0003br-8H
Subject: Re: [V9fs-developer] [PATCH 0/3 v2] 9p: Fix write overflow in
 p9_read_work
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

R3VvemlodWEgKFNjb3R0KSB3cm90ZSBvbiBGcmksIE5vdiAxOCwgMjAyMiBhdCAwNjoxODoxNlBN
ICswODAwOgo+IEkgcmV0cmllZCB0aGUgcmVwcm8gb24geW91ciBicmFuY2gsIHRoZSBpc3N1ZSBk
b2VzIG5vdCByZXByb2R1Y2UuIFdoYXQKPiBhIGdvb2QgcGFpciBvZiBleWVzIDop77yBCgpUaGFu
a3MhCkJ5IHRoZSB3YXkgdGhlIG9yaWdpbmFsIGNoZWNrIGFsc28gY29tcGFyZWQgc2l6ZSB0byBt
c2l6ZSBkaXJlY3RseSwKd2l0aG91dCBhbiBvZmZzZXQgZm9yIGhlYWRlcnMsIHNvIHdpdGggaGlu
ZHNpZ2h0IGl0IGxvb2tzIGNsZWFyIGVub3VnaAp0aGF0IHRoZSBzaXplIGlzIHRoZSBmdWxsIHNp
emUgaW5jbHVkaW5nIHRoZSBoZWFkZXIuCgpJJ20gbm90IHN1cmUgd2h5IEkgY29udmluY2VkIG15
c2VsZiBpdCBkaWRuJ3QuLi4KCkFueXdheSwgdGhpcyBtYWRlIG1lIGNoZWNrIG90aGVyIHBsYWNl
cyB3aGVyZSB3ZSBtaWdodCBmYWlsIGF0IHRoaXMgYW5kCkkndmUgYSBjb3VwbGUgbW9yZSBwYXRj
aGVzOyBwbGVhc2UgcmV2aWV3IGlmIHlvdSBoYXZlIHRpbWUuCkknbGwgc2VuZCB0aGVtIGFsbCB0
byBMaW51cyBuZXh0IHdlZWsuLi4KLS0gCkRvbWluaXF1ZQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApW
OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
