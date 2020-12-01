Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3BE2CA73A
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Dec 2020 16:40:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kk7le-00031I-JT; Tue, 01 Dec 2020 15:40:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kk7lK-0002xz-0J
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 15:40:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GoRwIwonAOU1Q5PokVg4Jw2hvJ7Uen6eODPUPTDWBsw=; b=c1ihBMKMyK4s9f4TMP3W9+AySp
 Tz1wUlR2eECXKJe9LpR025FtpXsrjdOe5tDiptfTjQB9BMJK8H28aXuW9/c/Z3xbDQ6/sBmcABFmB
 pgEzMvCWWoiTrxSYLbCOcVyJ5A+opWQwRCsmlSp4QrXhqmHaqgDfmykFk17EjbAI0r20=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GoRwIwonAOU1Q5PokVg4Jw2hvJ7Uen6eODPUPTDWBsw=; b=gFQgOjC3uFRzCWvRWNdA8nl6+T
 QPEY5oKAXg0RpHJA3fC97I7X81RHrYig9FiKd1HBjw3RHZ2Xjc0hPcMtbxCcgcFAWQ5LkLU8TDpBb
 Pfox25AnXe5B9vnSWD54wtUAZE8SAh7QlycDdOH8GtSVpiSBrL1sSNUq5n5ULTiCZhTo=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kk7lD-009Nys-Jq
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 15:40:17 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 29740C009; Tue,  1 Dec 2020 16:40:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1606837205; bh=GoRwIwonAOU1Q5PokVg4Jw2hvJ7Uen6eODPUPTDWBsw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=a91gR3o5zarCtnU2Ikl2WiUlVy/+sJQanroKYqVUEMnAcWoCHTWsNf1fNiupZib7e
 wVEcGRRiEpL7xBeZNXzrl9BlvdM44V8tuKOIhHTuSS37ChVLJ8P2jBpBVN2rm2Q+KQ
 SJTYPktxWUY05qNAER+/7EiBY4LlpactC+Ldsw1i/exRkUFSTVFbYxSStbIdnb3AUA
 rsIECmjCLseY1kJVBxdVHfLQb1T44nTxDj5wfRU0gSYireS8ezLfCVWb9lc9Y0+SjI
 0vKY7Xj64TgL+qUk50pp3hmzNwM+nfQ4586EPwPhWf29M5wpohgJcrkkDdHmJKqEU4
 NgdbhPy+UXpiA==
Date: Tue, 1 Dec 2020 16:39:50 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Message-ID: <20201201153950.GA20545@nautica>
References: <20201201135409.55510-1-toke@redhat.com>
 <20201201145728.GA11144@nautica> <20201201151658.GA13180@nautica>
 <87mtyx1rem.fsf@toke.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87mtyx1rem.fsf@toke.dk>
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
X-Headers-End: 1kk7lD-009Nys-Jq
Subject: Re: [V9fs-developer] [PATCH] fs: 9p: add generic splice_read file
 operations
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlIG9uIFR1ZSwgRGVjIDAxLCAyMDIwOgo+ID4g
VGhpcyBtYWRlIG1lIHRlc3QgY29weV9maWxlX3JhbmdlLCBhbmQgaXQgd29ya3Mgd2l0aCBib3Ro
IGFzIHdlbGwgKHVzZWQKPiA+IG5vdCB0bykKPiA+Cj4gPiBpbnRlcmVzdGluZ2x5IG9uIG9sZGVy
IGtlcm5lbHMgdGhpcyBjYW1lIGFzIGRlZmF1bHQgc29tZWhvdz8gSSBoYXZlCj4gPiBzcGxpY2Ug
d29ya2luZyBvbiA1LjQuNjcgOi8gc28gdGhpcyBicm9rZSBzb21ld2hhdCByZWNlbnRseS4uLgo+
IAo+IEh1aCwgbm8gaWRlYTsgdGhpcyBpcyBteSBmaXJzdCB0aW1lIGRpZ2dpbmcgaW50byBmaWxl
c3lzdGVtIGNvZGUsIEkKPiBub3JtYWxseSBkbyBuZXR3b3JraW5nIGFuZCBCUEYgOikKCkluIGNh
c2UgYW55b25lIGVsc2Ugd2FudHMgdG8ga25vdywgdGhpcyBicm9rZSBpbiA1LjEwLXJjMSB3aXRo
CjM2ZTJjNzQyMWYwMiAoImZzOiBkb24ndCBhbGxvdyBzcGxpY2UgcmVhZC93cml0ZSB3aXRob3V0
IGV4cGxpY2l0IG9wcyIpCgpTbyByZWFsbHkgYSByZWNlbnQgcmVncmVzc2lvbiwgZ29vZCBjYXRj
aCA6KQoKLS0gCkRvbWluaXF1ZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
