Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 76720443980
	for <lists+v9fs-developer@lfdr.de>; Wed,  3 Nov 2021 00:18:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mi335-0004Ys-9o; Tue, 02 Nov 2021 23:18:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1mi333-0004Ym-Qq
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 23:18:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1pTmdyOEPgOjYARloB4mWE8fy1Eol4wLWmFLu9HJ9HY=; b=kNFj81phQ6RreL95Xg35M93AX9
 3M9z5M62w+sSOY8MNVRVovlUWQjjs/tnsM+glS0NfPHib2KuDQV3QqilD5PcSX14mQgS+tOhyd14g
 OuKI6vtKDeJhmYOJUI0CxyEDOJOS7FQg5823ovis3i7/pljNUXqwMYD5nSUIzmO6S49w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1pTmdyOEPgOjYARloB4mWE8fy1Eol4wLWmFLu9HJ9HY=; b=QiV+atuilhRhBoSYiw0N9ztyfQ
 nUUZEYTv55/AuIMR5rKUyqafuYRNZGmAOOZHOr7lUzw0GRB9iBLqQMNxMykCq52nQjHhTFSFTzexE
 0gsoEonWWrsLNEwg4pAdF4ck/nuriR/gMkYAoutmNerOcbcYW97nT6UB3WQKICoSdBp0=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mi32z-0008Fn-HE
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 23:18:33 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id DF923C01A; Wed,  3 Nov 2021 00:18:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1635895101; bh=1pTmdyOEPgOjYARloB4mWE8fy1Eol4wLWmFLu9HJ9HY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RsSizjfBLZo+A7Tr8QCqojizST6Rej42yUFfmzsxy3Z55xz0cDwePnEsnsOj4d3Cw
 +89fahHbt9EE5rSOxdC9/4X9bkqHgZ1SsevkazeDI/dbj4HBS01uR4MF0je/7LyMvn
 +AZbJwWG4BR6artSc843qgKwZwv1w17mH/tsWYS9Ia6zg2DEjTL37WHZDl3nr/lmPD
 AwsfYOTfaZqMB4dY94Ytoj0MfRv3GfRmwsa7S2bjJ21b+4A+KOcalcP7clOQCg4IlK
 7gYWFHNK0oyeHoSewGvrKuDEwW0UbbEsd9ZU1KaTPi1pJgUa2Z9tAvMoPa3xVagcz0
 rb2cCBtnZ1P3Q==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 17F70C009;
 Wed,  3 Nov 2021 00:18:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1635895092; bh=1pTmdyOEPgOjYARloB4mWE8fy1Eol4wLWmFLu9HJ9HY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GfFvZOVHKaTCacEuOTpM+PDYMG1MHeEe72nG3gegKvRY75jnQ54IW59FrxLe2Ov0B
 rsb0Wd9/9Lowe8bULCnn/s8zQZH3aprHJXIZKcIEeOLV2dVVCkuuQlujwhu74Ok/Ib
 fA1Pj8iqPimUgFcTLlzFddFPN+tn3MXdgYSC7Dh6qfKsl5g8HKlzrs8RdF2yOCwjZ0
 744cjEWMXff+9KW72Hrt2Ak+ON6JCsil4LFudzQjUzTwDXaSPsqdw3ONbyy1+Cr0lP
 QYumJNUDypC/+OmHRbNTK/PxZQampBJEDUMUQ97vo5D0IkYpaBZOJnQuXAQ03aMBJt
 k7otCdrpvKy2w==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 42328f3f;
 Tue, 2 Nov 2021 23:18:06 +0000 (UTC)
Date: Wed, 3 Nov 2021 08:17:51 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>
Message-ID: <YYHHHy0qJGlpGEaQ@codewreck.org>
References: <20211017134611.4330-1-linux@weissschuh.net>
 <YYEYMt543Hg+Hxzy@codewreck.org>
 <922a4843-c7b0-4cdc-b2a6-33bf089766e4@t-8ch.de>
 <YYEmOcEf5fjDyM67@codewreck.org>
 <ddf6b6c9-1d9b-4378-b2ee-b7ac4a622010@t-8ch.de>
 <YYFSBKXNPyIIFo7J@codewreck.org>
 <3e8fcaff-6a2e-4546-87c9-a58146e02e88@t-8ch.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3e8fcaff-6a2e-4546-87c9-a58146e02e88@t-8ch.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Thomas Weißschuh wrote on Tue, Nov 02, 2021 at 04:32:21PM
    +0100: > > with 9p/9pnet loaded, > > running "mount -t 9p -o trans=virtio
    tmp /mnt" > > request_module("9p-%s", "virtio") returns -2 (ENOENT) [...]
    
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: codewreck.org]
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
X-Headers-End: 1mi32z-0008Fn-HE
Subject: Re: [V9fs-developer] [PATCH] net/9p: autoload transport modules
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, v9fs-developer@lists.sourceforge.net,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

VGhvbWFzIFdlacOfc2NodWggd3JvdGUgb24gVHVlLCBOb3YgMDIsIDIwMjEgYXQgMDQ6MzI6MjFQ
TSArMDEwMDoKPiA+IHdpdGggOXAvOXBuZXQgbG9hZGVkLAo+ID4gcnVubmluZyAibW91bnQgLXQg
OXAgLW8gdHJhbnM9dmlydGlvIHRtcCAvbW50Igo+ID4gcmVxdWVzdF9tb2R1bGUoIjlwLSVzIiwg
InZpcnRpbyIpIHJldHVybnMgLTIgKEVOT0VOVCkKPiAKPiBDYW4geW91IHJldHJ5IHdpdGhvdXQg
OXAvOXBuZXQgbG9hZGVkIGFuZCBzZWUgaWYgdGhleSBhcmUgbG9hZGVkIGJ5IHRoZSBtb3VudAo+
IHByb2Nlc3M/Cj4gVGhlIHNhbWUgYXV0b2xvYWRpbmcgZnVuY3Rpb25hbGl0eSBleGlzdHMgZm9y
IGZpbGVzeXN0ZW1zIHVzaW5nCj4gcmVxdWVzdF9tb2R1bGUoImZzLSVzIikgaW4gZnMvZmlsZXN5
c3RlbXMuYwo+IElmIHRoYXQgYWxzbyBkb2Vzbid0IHdvcmsgaXQgd291bGQgaW5kaWNhdGUgYW4g
aXNzdWUgd2l0aCB0aGUga2VybmVsIHNldHVwIGluIGdlbmVyYWwuCgpSaWdodCwgdGhhdCBhbHNv
IGRpZG4ndCB3b3JrLCB3aGljaCBtYXRjaGVzIG1vZHByb2JlIG5vdCBiZWluZyBjYWxsZWQKY29y
cmVjdGx5CgoKPiA+IExvb2tpbmcgYXQgdGhlIGNvZGUgaXQgc2hvdWxkIGJlIHJ1bm5pbmcgIm1v
ZHByb2JlIC1xIC0tIDlwLXZpcnRpbyIKPiA+IHdoaWNoIGZpbmRzIHRoZSBtb2R1bGUganVzdCBm
aW5lLCBoZW5jZSBteSBzdXBwb3NpdGlvbiB1c2VybW9kaGVscGVyIGlzCj4gPiBub3Qgc2V0dXAg
Y29ycmVjdGx5Cj4gPiAKPiA+IERvIHlvdSBoYXBwZW4gdG8ga25vdyB3aGF0IEkgbmVlZCB0byBk
byBmb3IgaXQ/Cj4gCj4gV2hhdCBpcyB0aGUgdmFsdWUgb2YgQ09ORklHX01PRFBST0JFX1BBVEg/
Cj4gQW5kIHRoZSBjb250ZW50cyBvZiAvcHJvYy9zeXMva2VybmVsL21vZHByb2JlPwoKYWhhLCB0
aGVzZSB0d28gd2VyZSBpbmRlZWQgZGlmZmVyZW50IGZyb20gd2hlcmUgbXkgbW9kcHJvYmUgaXMg
c28gaXQgaXMKYSBzZXR1cCBwcm9ibGVtIC0tIEkgbWlnaHQgaGF2ZSBiZWVuIGEgbGl0dGxlIHJh
c2ggd2l0aCB0aGlzIGluaXRyZApzZXR1cCBhbmQgbW9kcHJvYmUgZW5kZWQgdXAgaW4gL2JpbiB3
aXRoIHBhdGggaGVyZSBpbiAvc2Jpbi4uLgoKVGhhbmtzIGZvciB0aGUgcG9pbnRlciwgSSBzYXcg
dGhlIGNvZGUgc2V0dXAgYW4gZW52aXJvbm1lbnQgd2l0aCBhCmZ1bGwtYmxvd24gUEFUSCBzbyBk
aWRuJ3QgdGhpbmsgb2YgY2hlY2tpbmcgaWYgdGhpcyBraW5kIG9mIHNldHRpbmcKZXhpc3RlZCEK
QWxsIGxvb2tzIGluIG9yZGVyIHRoZW4gOikKCi0tIApEb21pbmlxdWUKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
