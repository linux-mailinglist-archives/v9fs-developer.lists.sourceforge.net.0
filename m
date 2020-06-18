Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B68DD1FF59F
	for <lists+v9fs-developer@lfdr.de>; Thu, 18 Jun 2020 16:49:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jlvqm-0004qe-Pe; Thu, 18 Jun 2020 14:49:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jlvql-0004qS-Hc
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jun 2020 14:49:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UdmumBnc0D3X2Ca6gb8OK9JD0Vk+60PxgsXihTleE8s=; b=QngcPgx3cTb0tCOjv9/98FhqCI
 4vLRiwMiErgIE5N7uZW+YTBOO+GFarlCFNohapjnl1gcfqaoRPCniji8/Reblzpj7zWcQwW/6rESa
 4B5PHhjzhJQpowsnXVJoR9VwhIvwFv7gYuq9mnLFrq8bsN84alBy2FdQjU/PFm2tcs60=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UdmumBnc0D3X2Ca6gb8OK9JD0Vk+60PxgsXihTleE8s=; b=B2N3LPqXoza4P9rcVl2vLGerpS
 bX0+Mt81ocnqN6C1B7wC5fFXW1h6EQSABQH1jVw4nXHETRx+vvLBUNOIUphSx4RnVfMexj70SDkq8
 ymOytvHBDz7ymQ7573UhRei15pM2ZXzXfLPILRP5PnlxOND9tfVIYFeJF2iqOS2o0oxQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jlvqg-008aOX-Bc
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jun 2020 14:49:07 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 8D62BC01C; Thu, 18 Jun 2020 16:48:48 +0200 (CEST)
Date: Thu, 18 Jun 2020 16:48:33 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Lionel Fourquaux <lionel.fourquaux@normalesup.org>
Message-ID: <20200618144833.GB6838@nautica>
References: <20200618134502.GA3973@emris.lionel.fourquaux.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618134502.GA3973@emris.lionel.fourquaux.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jlvqg-008aOX-Bc
Subject: Re: [V9fs-developer] Question on v9fs performance
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
Cc: V9fs-developer <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGkgTGlvbmVsLAoKTGlvbmVsIEZvdXJxdWF1eCB3cm90ZSBvbiBUaHUsIEp1biAxOCwgMjAyMDoK
PiBJIGFwb2xvZ2l6ZSBmb3IgdGhlIHVuc29sbGljaXRlZCBlbWFpbC4gIFBsZWFzZSBpZ25vcmUg
aXQgaWYgeW91Cj4gZG9uJ3QgaGF2ZSB0aGUgdGltZSBhbmQgdGhlIGluY2xpbmF0aW9uIHRvIGFu
c3dlciBuYWl2ZSBxdWVzdGlvbnMKPiBhYm91dCB2OWZzLgoKTm8gcHJvYmxlbSwgYnV0IGxldCdz
IGtlZXAgdjlmcy1kZXZlbG9wZXIgaW4gQ2MgLS0gSSd2ZSBhZGRlZCB0aGUgbGlzdCwKYXBvbG9n
aWVzIGlmIHlvdSB3YW50ZWQgdG8ga2VlcCB0aGlzIHByaXZhdGUgYnV0IHRoZXJlIGlzbid0IGFu
eXRoaW5nCnRoYXQgbG9va3MgY29uZmlkZW50aWFsIGhlcmUuIEhvcGVmdWxseSBub3JtYWxlIHN1
cCB3b24ndCBnZXQgeW91IGZpcmVkCmJlY2F1c2UgeW91IHRyaWVkIHRvIGRvIG9wZW4gc291cmNl
IHN0dWZmLi4uIDopCgoKPiBJIGhhdmUgYmVlbiB1c2luZyB2OWZzIGFuZCBkaW9kIGF0IGhvbWUg
Zm9yIG15IGhvbWUtYnVpbHQgTkFTLCBhbmQgSQo+IG5vdGljZWQgdGhhdCB0aGUgcGVyZm9ybWFu
Y2UsIHdoaWxlIHJlbWFya2FibGUgZm9yIHN1Y2ggYW4gb2xkCj4gcHJvdG9jb2wsIGlzIHN0aWxs
IGZhciBiZWxvdyB0aGUgcmF3IHRjcCB0aHJvdWdocHV0ICgqKS4gIEFzIGZhciBhcwo+IEkgdW5k
ZXJzdGFuZCwgdGhpcyBpcyBjYXVzZWQgYnkgdGhlIGxhdGVuY3kgb2YgdGhlIGNvbm5lY3Rpb24g
d2hpY2gKPiBzbG93cyBkb3duIHNlcXVlbmNlcyBvZiBmaWxlc3lzdGVtIG9wZXJhdGlvbnMuCgpZ
ZXMsIGJhc2ljYWxseSB0aGUgY2xpZW50IGlzIG5vdCBzbWFydCBlbm91Z2ggdG8gInBpcGVsaW5l
IiByZXF1ZXN0cywgc28KaXQgd2lsbCB3YWl0IGZvciB0aGUgZmlyc3QgY2h1bmsgdG8gaGF2ZSBi
ZWVuIHJlY2VpdmVkIHRvIGFzayBmb3IgdGhlCm5leHQgb25lIGFuZCBsYXRlbmN5IHdpbGwgaGF2
ZSBhIGRpcmVjdCBpbXBhY3Qgb24gcGVyZm9ybWFuY2VzLAplc3BlY2lhbGx5IHdpdGggc21hbGwg
YnVmZmVycy4KSSB3cm90ZSBhIHRveSB1c2Vyc3BhY2UgOXAgY2xpZW50IGFnZXMgYWdvIHRoYXQg
aW1wbGVtZW50cyBwaXBlbGluaW5nCmFuZCBnaXZlcyBtdWNoIGJldHRlciBwZXJmb3JtYW5jZSBm
b3IgbGFyZ2UgZmlsZXMsIHVuZm9ydHVuYXRlbHkgSSdtIG5vdAphd2FyZSBvZiBhbnkgdXNlciAo
bm90IGV2ZW4gbXlzZWxmLCBJIG5vIGxvbmdlciBhY3RpdmVseSBkZXZlbG9wIGFueQpzZXJ2ZXIg
c28gbXkgZWZmb3J0IHRvIHVzZSBpdCBmb3IgcmVncmVzc2lvbiB0ZXN0aW5nIGtpbmQgb2YgZGll
ZCBhCndoaWxlIGFnbyksIGJ1dCB3b3VsZCBiZSBoYXBweSB0byBhZGRyZXNzIGFueSBpc3N1ZSBp
ZiB5b3Ugd2FudCB0byBwbGF5CndpdGggaXQuCllvdSBjYW4gZmluZCBpdCBoZXJlLCBJIGJlbGll
dmUgaXQgd2lsbCBwZXJmb3JtIGJldHRlciBpZiBpdCBzdGlsbAp3b3Jrc8KgOgpodHRwczovL2dp
dGh1Yi5jb20vbWFydGluZXRkL3NwYWNlOQoKCj4gRm9yIGxhcmdlIGZpbGVzLCB1c2luZyBhIGxh
cmdlciBtc2l6ZSBsb29rcyBsaWtlIGl0IHdvdWxkIGhlbHAuCj4gVXNpbmcgYSBwYXRjaGVkIGRp
b2Qgc2VydmVyLCBhbmQgdGhlIGRpb2RjYXQgdG9vbCwgd2l0aCBtc2l6ZT0xTQo+IChpbnN0ZWFk
IG9mIDY0ayksIEkgZG8gZ2V0IHNwZWVkcyBjbG9zZSB0byB0aGUgbGluayB0aHJvdWdocHV0Lgo+
IEhvd2V2ZXIsIGl0IGlzIG5vdCBwb3NzaWJsZSB0byBzZXQgbXNpemU+NjRrIGZvciB2OWZzIHdp
dGhvdXQKPiBwYXRjaGluZyB0aGUga2VybmVsLCBiZWNhdXNlIE1BWF9TT0NLX0JVRiBpcyBoYXJk
Y29kZWQgYXQgNjRrIGluCj4gbmV0LzlwL3RyYW5zX2ZkLmMuCgpPaCBpcyB0aGF0IHN0aWxsIDY0
az8gSSB0aG91Z2h0IEkgaGFkIGluY3JlYXNlZCB0aGUgbWF4IGEgd2hpbGUgYWdvLCBJCmhhdmUg
dGhpcyBzZXQgdG8gMU1CIG9uIHNvbWUgbWFjaGluZXMgYnV0IHRoZXkgbXVzdCBiZSBydW5uaW5n
IGEgcGF0Y2hlZAp2ZXJzaW9uLi4uIEFsdGhvdWdoIHRoaXMgYWxzbyBwcmVkYXRlcyBteSBjaGFu
Z2UgZnJvbSBwcmUtYWxsb2NhdGVkCmJ1ZmZlcnMgdG8gdXNpbmcgYSBrbWVtX2NhY2hlIHNvIEkg
aGF2ZSBubyByZWNlbnQgZGF0YSBwb2ludC4KCgo+IFNpbmNlIGFsbCBvdGhlciB0cmFuc3BvcnRz
IHNlZW0gYWJsZSB0byB1c2UgYSBsYXJnZXIgbXNpemUsIHdvdWxkIGl0Cj4gYmUgcG9zc2libGUg
dG8gaW5jcmVhc2UgTUFYX1NPQ0tfQlVGIGluIG5ldC85cC90cmFuc19mZC5jIChJIHdvdWxkCj4g
c3VnZ2VzdCBNQVhfU09DS19CVUY9Mk0gdG8gaGF2ZSBzb21lIGxlZXdheSksIHNvIHRoYXQgdXNl
cnMgd2hvIHdhbnQKPiBmYXN0IGZpbGUgdHJhbnNmZXJzIHJlZ2FyZGxlc3Mgb2YgbWVtb3J5IHVz
YWdlIGNhbiBzZXQgYSBsYXJnZQo+IG1zaXplPyAgT3Igd291bGQgaXQgaGF2ZSB1bndhbnRlZCBz
aWRlIGVmZmVjdHM/CgpXZWxsLCB0aGVyZSBhbHNvIGlzIGEgaGlnaCBjaGFuY2UgdGhlIGFsbG9j
YXRpb25zIHdpbGwgc3RhcnQgdG8gZmFpbApvbmNlIHlvdXIgY2xpZW50IGhhcyBmcmFnbWVudGVk
IGl0cyBtZW1vcnkgZW5vdWdoLgpMYXJnZSBjb250aWd1b3VzIG1lbW9yeSBhbGxvY2F0aW9ucyBh
cmUgcmVhbGx5IGZyb3duZWQgdXBvbiBhbmQgaXQgd291bGQKaGVscCB0byBiZSBhYmxlIHRvIHVz
ZSBpb3ZlYyBvciBzY2F0dGVyLWdhdGhlciBsaWtlIHN0cnVjdHVyZXMgdG8KYmVuZWZpdCBmcm9t
IGxhcmdlciBtZXNzYWdlcyB3aXRob3V0IGltcG9zaW5nIHRoaXM7IEkgd291bGRuJ3QgYWN0aXZl
bHkKcmVjb21tZW5kIGdvaW5nIGFib3ZlIDEyOCBvciBtYXliZSAyNTZrIGZvciBsYXJnZSwgYWN0
aXZlIHNlcnZlcnMKCk9uIHRoZSBvdGhlciBoYW5kIGFzIGxvbmcgYXMgeW91IGhhdmUgZW5vdWdo
IGZyZWUgY29udGlndW91cyBtZW1vcnkgSQpzZWUgbm8gb3RoZXIgcHJvYmxlbSwgdG8gdGhlIHBv
aW50IEkgdGhvdWdodCB0aGlzIHdhcyBhY3R1YWxseSBpbiwgSQp3aWxsIHNlbmQgYSBwYXRjaCB0
aGF0IGluY3JlYXNlIHRoZSBsaW1pdCB0byAxTUIgYW5kIGRvY3VtZW50IHRoZQpwaXRmYWxsIHNv
IExpbnVzIGNhbiByZWZ1c2UgaWYgaGUgd2FudHMgdG8uCgoKPiAoKikgSGVyZSBpcyBhIG1pY3Jv
LWJlbmNobWFyayBmb3IgcmVhZGluZyBhIDFHQiBmaWxlOgo+ICBMaW51eCB2OWZzOiAzMDBNYi9z
Cj4gIGRpb2RjYXQgKGRlZmF1bHQgbXNpemU9NjRrKTogNDAwTWIvcwo+ICBkaXJlY3QgdGNwIChu
ZXRjYXQpOiA5MDBNYi9zCj4gKEV0aGVybmV0IDFHYi9zLCBsYXRlbmN5IDAuNG1zLCBtdHUgOTAw
MCkKCklzIGl0IG1pc3NpbmcgbXNpemU9MU1CIHRlc3RzIGZpZ3VyZXM/IDspCgotLSAKRG9taW5p
cXVlCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlm
cy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRl
dmVsb3Blcgo=
