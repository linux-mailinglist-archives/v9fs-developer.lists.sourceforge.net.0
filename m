Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C46E12CA663
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Dec 2020 15:58:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kk76Q-0003LE-QZ; Tue, 01 Dec 2020 14:58:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kk76P-0003L3-Rg
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 14:58:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KWM9/yD4Vf2GzZmCpfsa4i12NAQl3U3t4hvjjC22bOg=; b=iY23OBi0b+HyAyj0Zj7m7t5XRd
 PBghF0MYTcCPfyLEP0u8Wy+fJ4rF9aSX/LjAsE0laIWKWFRXS92OcXlBclXOdw0Ix/vBGpAxNtho3
 F4QBTFqjwHkJ0NjzMfHciJmwiT7edky9Dw1mxkqew55fUohTtdQ2qTa4mQ57lpepXwKU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KWM9/yD4Vf2GzZmCpfsa4i12NAQl3U3t4hvjjC22bOg=; b=ZS5g9E2kCZBX6+IQ7zWk3+EReq
 cAFboLfc83W86PqE38GXf16vJU0Byn0T5IOcNEuPwOETY/rYrGlFIi1L9EEQT/y5JQKMg4Gsmrxat
 cjY0mAwyNpbaD4I1DQDTZQyMDbZrTLZPIW6901a7qP2x3icOCsjn38cujS7I5l2HrBss=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kk76F-00E97B-QK
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 14:58:01 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 9C8B2C009; Tue,  1 Dec 2020 15:57:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1606834663; bh=KWM9/yD4Vf2GzZmCpfsa4i12NAQl3U3t4hvjjC22bOg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MFKTVGZOh4oWAw0CakGRic0UDGpkp8pWIkr8bX5tDScoKsPIdHhLZAWk7YX8av9En
 mlfIhkeYy0qBFbIT23fFHxnHdHnNW2RP3QYYhvN40UAT1k/oKigfn5rXuYTYdCFo/u
 Uk/Y/NQ9nUNrFo5toEIyczPDT+ggFf72SRjtAFMByDL+EHqSaRz7leYda06Aa3V7fY
 xKJjo8o7sfWmrFr2M7TcGruAXAKoubEHJFdiiPXc+0n9rAb2qtKfU2zPnTDR5F2MMe
 14G80x3mJEutD6kVcO3yL0lpLwdNl0Z5/J2KXRLk38BtUTk1ugGO/84EPtmqLydnMX
 UWifdvQnHNoZw==
Date: Tue, 1 Dec 2020 15:57:28 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Message-ID: <20201201145728.GA11144@nautica>
References: <20201201135409.55510-1-toke@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201201135409.55510-1-toke@redhat.com>
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
X-Headers-End: 1kk76F-00E97B-QK
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

VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlIG9uIFR1ZSwgRGVjIDAxLCAyMDIwOgo+IFRo
ZSB2OWZzIGZpbGUgb3BlcmF0aW9ucyB3ZXJlIG1pc3NpbmcgdGhlIHNwbGljZV9yZWFkIG9wZXJh
dGlvbnMsIHdoaWNoCj4gYnJlYWtzIHNlbmRmaWxlKCkgb2YgZmlsZXMgb24gc3VjaCBhIGZpbGVz
eXN0ZW0uIEkgZGlzY292ZXJlZCB0aGlzIHdoaWxlCj4gdHJ5aW5nIHRvIGxvYWQgYW4gZUJQRiBw
cm9ncmFtIHVzaW5nIGlwcm91dGUyIGluc2lkZSBhICd2aXJ0bWUnIGVudmlyb25tZW50Cj4gd2hp
Y2ggdXNlcyA5cGZzIGZvciB0aGUgdmlydHVhbCBmaWxlIHN5c3RlbS4gaXByb3V0ZTIgcmVsaWVz
IG9uIHNlbmRmaWxlKCkKPiB3aXRoIGFuIEFGX0FMRyBzb2NrZXQgdG8gaGFzaCBmaWxlcywgd2hp
Y2ggd2FzIGVycm9yaW5nIG91dCBpbiB0aGUgdmlydHVhbAo+IGVudmlyb25tZW50Lgo+IAo+IFNp
bmNlIGdlbmVyaWNfZmlsZV9zcGxpY2VfcmVhZCgpIHNlZW1zIHRvIGp1c3QgaW1wbGVtZW50IHNw
bGljZV9yZWFkIGluCj4gdGVybXMgb2YgdGhlIHJlYWRfaXRlciBvcGVyYXRpb24sIEkgc2ltcGx5
IGFkZGVkIHRoZSBnZW5lcmljIGltcGxlbWVudGF0aW9uCj4gdG8gdGhlIGZpbGUgb3BlcmF0aW9u
cywgd2hpY2ggZml4ZWQgdGhlIGVycm9yIEkgd2FzIHNlZWluZy4gQSBxdWljayBncmVwCj4gaW5k
aWNhdGVzIHRoYXQgdGhpcyBpcyB3aGF0IG1vc3Qgb3RoZXIgZmlsZSBzeXN0ZW1zIGRvIGFzIHdl
bGwuCgpHb29kIGNhdGNoLCBtaWdodCBhcyB3ZWxsIGRvIHRoYXQuCkknbSBzdXJwcmlzZWQgeW91
IGRpZG4ndCBoaXQgdGhlIHNhbWUgcHJvYmxlbSB3aXRoIHNwbGljZV93cml0ZT8KCkkgc2VlIGl0
ZXJfZmlsZV9zcGxpY2Vfd3JpdGUgYmVpbmcgdXNlZCBmb3IgaXQgb24gbWFueSBmaWxlc3lzdGVt
cywKaXQncyBwcm9iYWJseSBiZXR0ZXIgdG8gYWRkIGJvdGg/CgoKPiBUaGUgb25seSBjYXZlYXQg
aXMgdGhhdCBteSB0ZXN0IGNhc2Ugd2FzIG9ubHkgaGl0dGluZyB0aGUKPiB2OWZzX2ZpbGVfb3Bl
cmF0aW9uc19kb3RsIGltcGxlbWVudGF0aW9uLiBJIGFkZGVkIGl0IHRvIHRoZSBvdGhlciBmaWxl
Cj4gb3BlcmF0aW9ucyBzdHJ1Y3RzIGFzIHdlbGwgYmVjYXVzZSBpdCBzZWVtZWQgbGlrZSB0aGUg
c2Vuc2libGUgdGhpbmcgdG8gZG8KPiBnaXZlbiB0aGF0IHRoZXkgYWxsIGltcGxlbWVudCByZWFk
X2l0ZXIsIGJ1dCB0aG9zZSBhcmUgb25seSBjb21waWxlIHRlc3RlZC4KClRoZSBsb2dpYyBpcyBj
bG9zZSBlbm91Z2ggdGhhdCBpdCBzaG91bGQgd29yaywgSSdsbCBydW4gaXQgdGhyb3VnaCBpbgpj
YWNoZWQgbW9kZSBhdCBsZWFzdCBmaXJzdCB0aG91Z2ggKGp1c3QgbW91bnQgd2l0aCBjYWNoZT1s
b29zZSBvcgpjYWNoZT1mc2NhY2hlIHRvIGhpdCB2OWZzX2NhY2hlZF9maWxlX29wZXJhdGlvbnNf
ZG90bCB5b3Vyc2VsZiBpZiB5b3UKd2FudCB0bykKbm9uLWRvdGwgb3BlcmF0aW9ucyBhcmUgaGFy
ZGVyIHRvIHRlc3QsIEkgZG9uJ3QgaGF2ZSBhbnkgc2VydmVyCmNvbXBhdGlibGUgZWl0aGVyIHNv
IHdlJ2xsIGhhdmUgdG8gdHJ1c3QgaXQgd29ya3MgY2xvc2UgZW5vdWdoLi4uCgoobm90ZSB5b3Ug
Y2FuIHdyaXRlIGNvbW1lbnRzIHN1Y2ggYXMgdGhpcyBvbmUgYWZ0ZXIgdGhlIHRocmVlIGRhc2hl
cwpsaW5lIGJlZm9yZSB0aGUgZGlmZiBjaHVuayBzbyBtYWludGFpbmVycyBjYW4gcmVwbHkgd2l0
aG91dCBoYXZpbmcgaXQgaW4KY29tbWl0IG1lc3NhZ2UgaXRzZWxmKQoKLS0gCkRvbWluaXF1ZQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2
ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9w
ZXIK
