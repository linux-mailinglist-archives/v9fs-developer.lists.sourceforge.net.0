Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 701B82CD39E
	for <lists+v9fs-developer@lfdr.de>; Thu,  3 Dec 2020 11:33:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kklvr-0006TG-4V; Thu, 03 Dec 2020 10:33:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kklvp-0006T9-LG
 for v9fs-developer@lists.sourceforge.net; Thu, 03 Dec 2020 10:33:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-ID:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ikkg/HSWAD1AiCv77U2CISIVHfknsVVnjO+BUmSVA3Y=; b=UEZ9c55+YPgA275uOx84zBDSRx
 e1dXip9VFqeQFLJPVcHRVcpiOj3idJONIFjry0LTU1KsfT4NJ5yIdCArYXt10HkwSxE6niFOXwYaO
 T9LVbOfQJwdwx9v7KQUjAb3g4w3/Qulpj/4B/p6h+lBEd7waNy2KKaLCnOQVBPmT26ec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-ID:Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ikkg/HSWAD1AiCv77U2CISIVHfknsVVnjO+BUmSVA3Y=; b=J
 ahnWSxYt6ywB9d419wJbvmlT9dmJPP90rbMQieYf/6MjhqHC4g8b7YGgqQfEfTAD2V32IMEZHi78h
 GK9lATOvRHc3f7drTlWEsfnJ/gKNjCdUo9+IaoL46Y56XbePfP0AjAANmpRukOFYMY/Yzxv6rXjQU
 TUm0tjy1gTFedfoQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kklvm-0003R6-DQ
 for v9fs-developer@lists.sourceforge.net; Thu, 03 Dec 2020 10:33:49 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 01B08C009; Thu,  3 Dec 2020 11:33:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1606991611; bh=ikkg/HSWAD1AiCv77U2CISIVHfknsVVnjO+BUmSVA3Y=;
 h=Date:From:To:Cc:Subject:List-ID:From;
 b=x41meRBdt2P0FXeQOQhTkDTMFpSP5NXNK3QhGAdiOaDU1YM4GgAyXlWScjYz8S+B9
 FDepGTwy2LKAmOfb6K0vZRoSQLDpMLRlZ73jFynMc5xvBQo3Xq6qDEUkHNjGOZSMns
 uRtEUqbhsZWDI7nOxxJLLYY7ARGPAs5L9UJhB5uGyPA0oLBoXuZafFxprvkYTITDS+
 vz0yfaL1rHIW7ZgId001sspLU5zBZtR2U803IGKjNOg9/sEtdG+vekeVO61vwnZgEJ
 +0h2fF+iB3C2y0GyV2EbVP9i5ua5X0f20zB/qxJpvCryLgsAPnt7wb74xc/48JAAeL
 TfFXsu3bZ8gxg==
Date: Thu, 3 Dec 2020 11:33:15 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20201203103315.GA3298@nautica>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kklvm-0003R6-DQ
Subject: [V9fs-developer] [GIT PULL] 9p update for 5.10-rc7 (restore splice
 ops)
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
Cc: linux-fsdevel@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CkhpIExpbnVzLAoKU29tZW9uZSBqdXN0IHJlcG9ydGVkIHNwbGljZSBnb3QgZGlzYWJsZWQgaW4g
NS4xMC1yYzEsIGhlcmUncyBhIGNvdXBsZQpvZiBwYXRjaGVzIHRvIHR1cm4gaXQgYmFjayBvbiB1
c2luZyBnZW5lcmljIGhlbHBlcnMuCgooVGhhbmtzIGZvciBsZXR0aW5nIG1lIGtub3cgbXkgbWFp
bHMgZ290IGZsYWdnZWQgYXMgc3BhbSBsYXN0IHRpbWUsIEkndmUKdGFrZW4gdGhlIHRpbWUgdG8g
c2V0dXAgZGtpbS9kbWFyYyB3aGljaCBicmluZ3MgaXRzIHNoYXJlIG9mIHByb2JsZW1zCndpdGgg
c29tZSBtYWlsaW5nIGxpc3RzIGJ1dCBob3BlZnVsbHkgd2lsbCBoZWxwIGhlcmUpCgoKVGhlIGZv
bGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBiNjUwNTQ1OTc4NzJjZTNhZWZiYzZhNjY2Mzg1
ZWFiZGY5ZTI4OGRhOgoKICBMaW51eCA1LjEwLXJjNiAoMjAyMC0xMS0yOSAxNTo1MDo1MCAtMDgw
MCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoKICBodHRwczovL2dp
dGh1Yi5jb20vbWFydGluZXRkL2xpbnV4IHRhZ3MvOXAtZm9yLTUuMTAtcmM3Cgpmb3IgeW91IHRv
IGZldGNoIGNoYW5nZXMgdXAgdG8gOTYwZjRmOGE0ZTYwZGE2MTBhZjczYzEyNjQ2NzNmNzFmNWEz
NmVmZDoKCiAgZnM6IDlwOiBhZGQgZ2VuZXJpYyBzcGxpY2Vfd3JpdGUgZmlsZSBvcGVyYXRpb24g
KDIwMjAtMTItMDEgMjE6NDA6NDcKICArMDEwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KUmVzdG9yZSBzcGxpY2UgZnVu
Y3Rpb25hbGl0eSBmb3IgOXAKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KRG9taW5pcXVlIE1hcnRpbmV0ICgxKToKICAgICAg
ZnM6IDlwOiBhZGQgZ2VuZXJpYyBzcGxpY2Vfd3JpdGUgZmlsZSBvcGVyYXRpb24KClRva2UgSMO4
aWxhbmQtSsO4cmdlbnNlbiAoMSk6CiAgICAgIGZzOiA5cDogYWRkIGdlbmVyaWMgc3BsaWNlX3Jl
YWQgZmlsZSBvcGVyYXRpb25zCgogZnMvOXAvdmZzX2ZpbGUuYyB8IDEyICsrKysrKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykKLS0gCkRvbWluaXF1ZQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1h
aWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
