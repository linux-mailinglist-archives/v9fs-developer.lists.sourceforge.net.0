Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 137C7B17F5
	for <lists+v9fs-developer@lfdr.de>; Fri, 13 Sep 2019 07:53:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1i8eWm-0008B4-0u; Fri, 13 Sep 2019 05:53:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1i8eWk-0008At-V9
 for v9fs-developer@lists.sourceforge.net; Fri, 13 Sep 2019 05:53:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mSFZF4xXig6m60wskZLt3ODWWPd6hxY0QvlHRobrko4=; b=DTCCjw83kAXcbgrjFv22C5bLc3
 kVdvEQAqoCYhXjo/fLiEclziQmYcM+VAFg6QnGqwuBA6f0qhwTkBiXU1KTu8nIdnoQab61Eb9OdXI
 Gl9YHbxtL+0DlCoZhbgO7Nd9/B3HAVwd9NI89EmK0JexDoS1afDKJ5Xn5sW62I58AH4s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mSFZF4xXig6m60wskZLt3ODWWPd6hxY0QvlHRobrko4=; b=h9ZVYU22kbUqWF3dJUoHnSKrwl
 JO9DPLR3aNfxyci7AbAlkgj1TCVACT3hCUNwu3bPz6swj0E5iKqhM46SMEJNP7q/ZDOi6dWtnQFp5
 CKiG5ozOd84QzcnXWzZgINNPHlS6isN07CZlDfK6jgNc6gwYn+bY90pOuYgnZ9xNakEg=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i8eWi-0040BK-OT
 for v9fs-developer@lists.sourceforge.net; Fri, 13 Sep 2019 05:53:50 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 3575BC01D; Fri, 13 Sep 2019 07:53:42 +0200 (CEST)
Date: Fri, 13 Sep 2019 07:53:27 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Marc Gauthier <mg@gstardust.com>
Message-ID: <20190913055327.GB13319@nautica>
References: <7c1e27db-27ab-64f3-f99a-6a646962251b@gstardust.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7c1e27db-27ab-64f3-f99a-6a646962251b@gstardust.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gstardust.com]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i8eWi-0040BK-OT
Subject: Re: [V9fs-developer] Fixes for 9p network transport builtin to the
 kernel
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
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

TWFyYyBHYXV0aGllciB3cm90ZSBvbiBUaHUsIFNlcCAxMiwgMjAxOToKPiBUaGUgZm9sbG93aW5n
IGlzIGEgcGF0Y2ggdGhhdCBhbGxvd3MgbmV0LzlwIHRvIGJlIGJ1aWx0LWluIHRoZQo+IGtlcm5l
bCByYXRoZXIgdGhhbiBhcyBhIG1vZHVsZS4KClBsZWFzZSBzZW5kIHBhdGNoIHdpdGggZ2l0IHNl
bmQtZW1haWwgKHNvIGl0IGlzIGFwcGxpY2FibGUgd2l0aCBnaXQgYW0pCmlmIHBvc3NpYmxlLgpQ
YXRjaGVzIG11c3QgYmUgc2VudCB0byBrZXJuZWwgbGlzdHMgKGF0IGxlYXN0CmxpbnV4LWtlcm5l
bEB2Z2VyLmtlcm5lbC5vcmcgYW5kIHY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dCwKdGhlIG1haW50YWluZXJzLnBsIHNjcmlwdCB3aWxsIGFsc28gcG9pbnQgeW91IHRvIG5ldGRl
diBmb3IgdGhpcyBvbmUpLApJIGNhbm5vdCB0YWtlIHRoaXMgcGF0Y2ggYXMgaXMuCgo+IEkndmUg
aGl0IHRoZSBpc3N1ZSB0aGF0IGFsdGhvdWdoIGNvbmZpZ3VyZWQgYXMgYnVpbHQtaW4sIGNvZGUg
c3VjaAo+IGFzIG5ldC85cC90cmFuc192aXJ0aW8uYyB3YXNuJ3QgYmVpbmcgaW5jbHVkZWQsIGNh
dXNpbmcgbW91bnQKPiBmYWlsdXJlcy4KPiBJdCBhcHBlYXJzIHRoaXMgaXMgYSBsb25nLXN0YW5k
aW5nIGlzc3VlLCBqdWRnaW5nIGZyb20gdGhlIGZvbGxvd2luZwo+IHBvc3QgZnJvbSAyMDE1Ogo+
IGh0dHBzOi8vd3d3LmxpbnV4cXVlc3Rpb25zLm9yZy9xdWVzdGlvbnMvc2xhY2t3YXJlLTE0L3Fl
bXUtdmlydGlvLTlwLWhvc3QtZmlsZXN5c3RlbS1wYXNzdGhyb3VnaC1mYWlsdXJlLWluLXNsYWNr
d2FyZS1jdXJyZW50LTEzbWF5MjAxNS00MTc1NTQyNjA4Lwo+IAo+IEVzc2VudGlhbGx5IGl0IGZp
eGVzIHRoZSBNYWtlZmlsZSB0byB1c2UgdGhlIGNvcnJlY3QgZG9jdW1lbnRlZAo+IG1ldGhvZCBm
b3Igc3BlY2lmeWluZyBzdWItb2JqZWN0cywgdXNpbmcgLXkgYW5kIG5vdCAtb2JqcyAodGhlCj4g
bGF0dGVyIGlzIG1lYW50IGZvciBob3N0IHByb2dyYW1zLCBub3QgdGFyZ2V0IGNvZGUpLsKgIFNl
ZQo+IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL0RvY3VtZW50YXRpb24va2J1aWxkL21ha2Vm
aWxlcy50eHQKPiBGb3Igc29tZSByZWFzb24sIC1vYmpzIHdvcmtzIGNvbnNpc3RlbnRseSBmb3Ig
bW9kdWxlcywgYnV0IG9ubHkKPiB3b3JrcyBpbiBzb21lIGNhc2VzIGZvciBidWlsdC1pbnMuwqAg
UGVyaGFwcyBzb21ldGhpbmcgdG8gZG8gd2l0aAo+IHdoZXRoZXIgY2VydGFpbiBkZXBlbmRlbmNp
ZXMgYXJlIHByZXNlbnQuwqAgSSBoYXZlbid0IGZvbGxvd2VkIGFsbAo+IHRoZSBpbnRyaWNhY2ll
cyBvZiB0aGUgYnVpbGQgc3lzdGVtIChtb3N0bHkgc2NyaXB0cy9NYWtlZmlsZS5idWlsZCkKPiBu
b3IgaG93IG11Y2ggdGhpcyBtaWdodCBiZSBsZWdhY3kgbGVmdG92ZXJzLsKgIE1vc3QgZHJpdmVy
IGNvZGUKPiBjb3JyZWN0bHkgdXNlcyAteSwgYnV0IHNldmVyYWwgdXNlIC1vYmpzLCBwcmVzdW1h
Ymx5IGluY29ycmVjdGx5IGFuZAo+IG5lZWRpbmcgdG8gYmUgZml4ZWQgZm9yIHJvYnVzdG5lc3Mu
wqAgSG93ZXZlciwgSSd2ZSBvbmx5IHRlc3RlZCA5cC7CoAo+IEhlcmUgeW91IGdvIQoKCkkgYWdy
ZWUgaXQncyBub3QgZG9jdW1lbnRlZCB0aGF0IGZvby1vYmpzIHByb3Blcmx5IGFkZHMgZGVwZW5k
ZW5jaWVzIGJ1dApuZXQvOXAvYnVpbHQtaW4uYSBzZWVtcyB0byBoYXZlIHRoZSBzYW1lIGNvbnRl
bnQgd2l0aCBORVRfOVA9eSBhbmQKTkVUXzlQX1ZJUlRJTz15IGFuZCBlaXRoZXIgeW91ciBtYWtl
ZmlsZSBvciB0aGUgb2xkIG9uZSwgc28gdGhlIHN5bWJvbHMKbGlua2VkIGluIHdpbGwgYmUgdGhl
IHNhbWUuCgpbLi4uIGNvbXBpbGluZyBwbGVhc2Ugd2FpdC4uLl0KCkp1c3QgZG9uZSB0ZXN0aW5n
IGFuZCBJIGNvbmZpcm0gaXQganVzdCB3b3Jrc+KEoiB3aXRoIHRoZSBjdXJyZW50Ck1ha2VmaWxl
Ogpbcm9vdEBmOSB+XSMgbHNtb2QgfCBncmVwIDlwCjlwICAgICAgICAgICAgICAgICAgICAgNzc4
MjQgIDEKW3Jvb3RAZjkgfl0jIG1vdW50IC10IDlwCnNoYXJlZCBvbiAvbW50IHR5cGUgOXAgKHJ3
LHJlbGF0aW1lLHN5bmMsZGlyc3luYyxhY2Nlc3M9Y2xpZW50LHRyYW5zPXZpcnRpbykKClNvIHdo
aWxlIEkgYWdyZWUgdGhlIGRvY3VtZW50YXRpb24gaXNuJ3QgY2xlYXIsIHNvbWV0aGluZyBvYnZp
b3VzbHkKY2hhbmdlZCBzaW5jZSAyMDE1LgpUaGlzIHBhdGNoIG1pZ2h0IHN0aWxsIGJlIHVzZWZ1
bCBmb3IgdGhlIHNha2Ugb2YgY2xlYW51cCBpdHNlbGYsIGJ1dAp0aGF0IGlzbid0IG11Y2ggb2Yg
bXkgY29uY2VybiBhbmQgSSdkIHJhdGhlciBpdCBiZSBhIHRyZWUtd2lkZSBlZmZvcnQ7CnlvdXIg
Y29tbWl0IG1lc3NhZ2Ugc2VlbXMgdG8gaGludCB5b3UncmUgbm90IGdvaW5nIHRvIGNhdHRlciB0
byBvdGhlcgpwYXJ0cyBvZiB0aGUgdHJlZSBhbmQgdGhlcmUgaXNuJ3QgbXVjaCBwb2ludCBpbiB0
aGF0LgoKUGxlYXNlIGVpdGhlciBjb25zaWRlciBkb2luZyB0aGlzIHRyZWV3aWRlIGFuZCBzZW5k
IHRvIGphbml0b3JzIChzcGxpdApjb21taXRzIHN0aWxsIGNhbiBiZSB1c2VmdWwpLCBvciBqdXN0
IGRyb3AgdGhlIGlkZWEuCgoKVGhhbmtzLgoKCihsZWF2aW5nIHBhdGNoIGJlbG93IGZvciB0aGUg
bGlzdCkKPiBGcm9tOiBNYXJjIEdhdXRoaWVyIDxjb25zdWx0LW1nQGdzdGFyZHVzdC5jb20+Cj4g
RGF0ZTogVGh1LCAxMiBTZXAgMjAxOSAwMToyNjo0OSAtMDQwMAo+IFN1YmplY3Q6IFtQQVRDSF0g
OXA6IGZpeCBNYWtlZmlsZXMgdG8gdXNlIC15IGluc3RlYWQgb2YgLW9ianMKPiAKPiBUaGUgdXNl
IG9mIC1vYmpzIGNhdXNlcyBzb21lIChidXQgbm90IGFsbCkgb2JqZWN0cyB0byBub3QgYmUgaW5j
bHVkZWQKPiB3aGVuIGJ1aWx0LWluIGluc3RlYWQgb2YgYnVpbHQgYXMgYSBtb2R1bGUgLS0gc3Vj
aCBhcyBuZXQvOXAvdHJhbnNfdmlydGlvLgo+IAo+IERvY3VtZW50YXRpb24va2J1aWxkL21ha2Vm
aWxlcy5yc3QgZG9jdW1lbnRzIC1vYmpzIG9ubHkgZm9yIGhvc3QgY29kZS4KPiAKPiBTZXZlcmFs
IE1ha2VmaWxlcyBmb3IgdGFyZ2V0IGNvZGUgdHJlZXdpZGUgc3RpbGwgdXNlIC1vYmpzLiAgVm9s
dW50ZWVycwo+IHdpdGggdGltZSB0byB2ZXJpZnkgdGhlIHJlc3VsdHMgbWlnaHQgY29uc2lkZXIg
Zml4aW5nIHRoZXNlIHRvIHVzZSAteS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXJjIEdhdXRoaWVy
IDxjb25zdWx0LW1nQGdzdGFyZHVzdC5jb20+Cj4gLS0tCj4gIGZzLzlwL01ha2VmaWxlICB8IDIg
Ky0KPiAgbmV0LzlwL01ha2VmaWxlIHwgOCArKysrLS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDUg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZnMvOXAvTWFr
ZWZpbGUgYi9mcy85cC9NYWtlZmlsZQo+IGluZGV4IGU3ODAwYTVjNzM5NS4uOTE3NzQ0NWE3NTIz
IDEwMDY0NAo+IC0tLSBhL2ZzLzlwL01ha2VmaWxlCj4gKysrIGIvZnMvOXAvTWFrZWZpbGUKPiBA
QCAtMSw3ICsxLDcgQEAKPiAgIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICBv
YmotJChDT05GSUdfOVBfRlMpIDo9IDlwLm8KPiAgCj4gLTlwLW9ianMgOj0gXAo+ICs5cC15IDo9
IFwKPiAgCXZmc19zdXBlci5vIFwKPiAgCXZmc19pbm9kZS5vIFwKPiAgCXZmc19pbm9kZV9kb3Rs
Lm8gXAo+IGRpZmYgLS1naXQgYS9uZXQvOXAvTWFrZWZpbGUgYi9uZXQvOXAvTWFrZWZpbGUKPiBp
bmRleCBhYTBhNTY0MWU1ZDAuLjVhZGE2NDcxNzhmNSAxMDA2NDQKPiAtLS0gYS9uZXQvOXAvTWFr
ZWZpbGUKPiArKysgYi9uZXQvOXAvTWFrZWZpbGUKPiBAQCAtNCw3ICs0LDcgQEAgb2JqLSQoQ09O
RklHX05FVF85UF9YRU4pICs9IDlwbmV0X3hlbi5vCj4gIG9iai0kKENPTkZJR19ORVRfOVBfVklS
VElPKSArPSA5cG5ldF92aXJ0aW8ubwo+ICBvYmotJChDT05GSUdfTkVUXzlQX1JETUEpICs9IDlw
bmV0X3JkbWEubwo+ICAKPiAtOXBuZXQtb2JqcyA6PSBcCj4gKzlwbmV0LXkgOj0gXAo+ICAJbW9k
Lm8gXAo+ICAJY2xpZW50Lm8gXAo+ICAJZXJyb3IubyBcCj4gQEAgLTEyLDExICsxMiwxMSBAQCBv
YmotJChDT05GSUdfTkVUXzlQX1JETUEpICs9IDlwbmV0X3JkbWEubwo+ICAJdHJhbnNfZmQubyBc
Cj4gIAl0cmFuc19jb21tb24ubyBcCj4gIAo+IC05cG5ldF92aXJ0aW8tb2JqcyA6PSBcCj4gKzlw
bmV0X3ZpcnRpby15IDo9IFwKPiAgCXRyYW5zX3ZpcnRpby5vIFwKPiAgCj4gLTlwbmV0X3hlbi1v
YmpzIDo9IFwKPiArOXBuZXRfeGVuLXkgOj0gXAo+ICAJdHJhbnNfeGVuLm8gXAo+ICAKPiAtOXBu
ZXRfcmRtYS1vYmpzIDo9IFwKPiArOXBuZXRfcmRtYS15IDo9IFwKPiAgCXRyYW5zX3JkbWEubyBc
CgotLSAKRG9taW5pcXVlCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby92OWZzLWRldmVsb3Blcgo=
