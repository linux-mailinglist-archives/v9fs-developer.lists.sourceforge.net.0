Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D9E3A042C
	for <lists+v9fs-developer@lfdr.de>; Tue,  8 Jun 2021 21:49:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lqhjH-0004AL-2T; Tue, 08 Jun 2021 19:49:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hgcoin@gmail.com>) id 1lqhjF-0004A2-HM
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Jun 2021 19:49:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:Subject:From:References:Cc:To:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y/Ff8rqADy27tdtG8Art5Dx6DPCBrcW/tL3HXgpktt0=; b=inRhFN/nnqpy5v2rjSaAogzFpf
 BrXaMlMtRb5j5ckaMlQcCIrlFODnyeqKo6cThX84byrBOJHOMiNTbbyZJKxVuAcc9ukuAKJ9cLmNH
 6lOogXIN2aG1yYRXZpj4IsoaUcTcyGaQB6m/Qvic8AZBpqF5pKIVL7kdA70z4jsn4p6o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:Subject:From:References:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y/Ff8rqADy27tdtG8Art5Dx6DPCBrcW/tL3HXgpktt0=; b=cmCeeHkQDhgrMF1+UWZl662++K
 MakioKlWMQooejlgE84Z/mi7F/XGH77XreCymwItKZhhQZFR7AIj4kufQLJrehrEKU5kLDMXIV/3W
 PjSoskqVh7Ay5wgvj5SKUPN9cX7Nm6zCf7QGpKbYPMnuIB+b1Q4fVQIW9Wgr+xDOel8s=;
Received: from mail-il1-f169.google.com ([209.85.166.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lqhiy-0000gG-6j
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Jun 2021 19:49:37 +0000
Received: by mail-il1-f169.google.com with SMTP id w14so11366258ilv.1
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 08 Jun 2021 12:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:from:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Y/Ff8rqADy27tdtG8Art5Dx6DPCBrcW/tL3HXgpktt0=;
 b=psno8ePBY5SfkME9n0gSPekyG3CTH7C9VbepesuY7XZUMK+DCgVLMDRRCKaamLLvfS
 Jkyjm9BiSuCbsmJm0zYjsQ0jbpkej/ack9VweHIiUgoh6nzgAHSsx7yhXpfW/P95bpRv
 7LTOxrYCXUn9tMeBnM4fuCK2hB3/b0ezZ2MDkiSxGqHZWfTyOEC2ZzFqpQApEYph8H1E
 hVZxhurAZLsNDUvLZ4HksdvMQNMZYTxLy0NtMhJT/KFxGbeaqxdYJ+Zwfts/98XgygJG
 7sMVwEKvRNqAYo505TeE+ioCTXsX3tOo3vGdIx9ZBJYQd5AUZ9gb+IS3+zFRScBSSEBL
 UH2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:from:subject:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Y/Ff8rqADy27tdtG8Art5Dx6DPCBrcW/tL3HXgpktt0=;
 b=mAXZMmtETLj+YC3Ke9mq4NOP9qedtKKAKdPRIQcwYG8zGwy57uWU7v1Ko85FXb0ryZ
 T7oqZiH2QR12/0Sk2LWqtSs9ta/iCPgQrXetkAOi3qSkwoFUSeD3XR+OKn0+/sAKlKDf
 qfzM7GfVUEPd7Y+uEP8Sz/hrJqnNzU/7kQzSWa9NjQjExvudTZZj/QKLCLHiDf3JOj4i
 acpokA3r/5fgxf7MF/ekfJkusECeq6o5quA8Z4r8mqqIsKYTCcyr1MI4MDrSoV48ATh8
 PsI56ViMadT/k/4pwc9lzjFtu/t0MxrDD+kWUNzi0PRETfq+1ik4Iuppd7PTQ8aPrdxe
 QljQ==
X-Gm-Message-State: AOAM532oLKN42PrImbMsIe8xxAWb8wRgeyGpwt/YmSLV4a7YdRtM+P+k
 SFcKUQsC/j0YBk7GdtwHt+mMz79U7/56Fw==
X-Google-Smtp-Source: ABdhPJy+PMyhEWpXEpsvNpPGCVQBatHIrvzsSdUKrFLqHRLAMNNa2f8WzoBxPSs7YBtnXew2RT4+Hg==
X-Received: by 2002:a05:6e02:521:: with SMTP id
 h1mr3281929ils.295.1623181755154; 
 Tue, 08 Jun 2021 12:49:15 -0700 (PDT)
Received: from ceo1homenx.1.quietfountain.com (173-29-47-53.client.mchsi.com.
 [173.29.47.53])
 by smtp.gmail.com with ESMTPSA id p18sm345041ilg.32.2021.06.08.12.49.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Jun 2021 12:49:14 -0700 (PDT)
To: Vivek Goyal <vgoyal@redhat.com>
References: <20210608153524.GB504497@redhat.com>
 <8929c252-3d99-8cdb-1c56-5fdb1fd29fc2@gmail.com>
 <20210608192617.GC504497@redhat.com>
From: "Harry G. Coin" <hgcoin@gmail.com>
Message-ID: <97078f1e-0267-5ddf-15c0-51423e738487@gmail.com>
Date: Tue, 8 Jun 2021 14:49:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210608192617.GC504497@redhat.com>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.169 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (hgcoin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.169 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lqhiy-0000gG-6j
Subject: Re: [V9fs-developer] [Virtio-fs] [PATCH] init/do_mounts.c: Add
 root="fstag:<tag>" syntax for root device
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
Cc: David Howells <dhowells@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 Richard Weinberger <richard.weinberger@gmail.com>,
 linux kernel mailing list <linux-kernel@vger.kernel.org>, virtio-fs@redhat.com,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Ck9uIDYvOC8yMSAyOjI2IFBNLCBWaXZlayBHb3lhbCB3cm90ZToKPiBPbiBUdWUsIEp1biAwOCwg
MjAyMSBhdCAwMTozODo1NlBNIC0wNTAwLCBIYXJyeSBHLiBDb2luIHdyb3RlOgo+PiBPbiA2Lzgv
MjEgMTA6MzUgQU0sIFZpdmVrIEdveWFsIHdyb3RlOgo+Pj4gV2Ugd2FudCB0byBiZSBhYmxlIHRv
IG1vdW50IHZpcnRpb2ZzIGFzIHJvb3RmcyBhbmQgcGFzcyBhcHByb3ByaWF0ZQo+Pj4ga2VybmVs
IGNvbW1hbmQgbGluZS4gUmlnaHQgbm93IHRoZXJlIGRvZXMgbm90IHNlZW0gdG8gYmUgYSBnb29k
IHdheQo+Pj4gdG8gZG8gdGhhdC4gSWYgSSBzcGVjaWZ5ICJyb290PW15ZnMgcm9vdGZzdHlwZT12
aXJ0aW9mcyIsIHN5c3RlbQo+Pj4gcGFuaWNzLgo+Pj4KPj4+IHZpcnRpby1mczogdGFnIDwvZGV2
L3Jvb3Q+IG5vdCBmb3VuZAo+Pj4gLi4KPj4+IC4uCj4+PiBbIGVuZCBLZXJuZWwgcGFuaWMgLSBu
b3Qgc3luY2luZzogVkZTOiBVbmFibGUgdG8gbW91bnQgcm9vdCBmcyBvbiB1bmtub3duLWJsb2Nr
KDAsMCkgXQo+PiBXaGF0ZXZlciB0aGUgYmVzdCBkaXJlY3Rpb24gZm9yd2FyZCBtaWdodCBiZSBm
b3Iga2VybmVsIHBhdGNoZXMKPj4gcmVnYXJkaW5nICdub3QgYmxvY2sgZGV2aWNlIGFzIHJvb3Qn
LCBpdCB3b3VsZCBlYXNlIGxlYXJuaW5nIGN1cnZlcyBpZgo+PiAndGhlIHBhdHRlcm5zIHRoYXQg
c2V0IGNvbmZpZyBpc3N1ZSBYJyB3ZXJlIHRoZSBzYW1lIGFjcm9zcyByb290ICdub3QKPj4gYmxv
Y2sgZGV2aWNlIG9wdGlvbnMnIHdoZXRoZXIgY2VwaGZzLCBuZnMsIDlwLCB2aXJ0aW9mcy4KPiBJ
IHRoaW5rIGFjaGlldmVpbmcgc2FtZSBwYXR0ZXJuIGZvciBhbGwgbm9uLWJsb2NrIG9wdGlvbnMg
aXMgcHJldHR5Cj4gaGFyZC4gVGhlcmUgYXJlIHRvbyBtYW55IHZhcmllaXRzLCBtdGQsIHViaWZz
LCBuZnMsIGNpZnMsIGFuZCB5b3UKPiBqdXN0IG1lbnRpb25lZCBjZXBoZnMuCj4KPiBJdCB3b3Vs
ZCBiZSBuaWNlIGlmIHNvbWVib2R5IGNhbiBhY2hpZXZlIGl0LiBCdXQgdGhhdCBzaG91bGQgbm90
IGJlCj4gYSBibG9ja2VyIGZvciB0aGlzIHBhdGNoLiBHb2FsIG9mIHRoaXMgcGF0Y2ggaXMgdG8g
dGFrZSBjYXJlIG9mIHZpcnRpb2ZzCj4gYW5kIDlwLiBBbmQgYW55IG90aGVyIGZpbGVzeXN0ZW0g
d2hpY2ggY2FuIHdvcmsgd2l0aCB0aGlzIHBhdHRlcm4uCj4KPiBJIHRoaW5rIHViaSBhbmQgbXRk
IHNob3VsZCBiZSBhYmxlIHRvIHdvcmsgd2l0aCAicm9vdD1mc3RhZzo8dGFnPiIKPiBhcyB3ZWxs
LiBTb21ldGhpbmcgbGlrZSAicm9vdD1mc3RhZzp1Ymk6Zm9vIi4gQW5kIHRoZW4gdWJpOmZvbwo+
IHdpbGwgc2hvdWxkIGJlIHBhc3NlZCB0byB1Ymlmcy4gSSB0aGluayBvbmx5IHRoaW5nIG1pc3Np
bmcgaXMKPiB0aGF0IGN1cnJlbnQgY29kZSBhc3N1bWVzIHRoZXJlIGlzIG9uZSBmaWxlc3lzdGVt
IHBhc3NlZCBpbgo+IHJvb3Rmc3R5cGUuIElmIHdlIHdhbnQgdG8gdHJ5IG1vdW50aW5nIGRldmlj
ZSB3aXRoIG11bHRpcGxlCj4gZmlsZXN5c3RlbXMgdGhlbiBvbmUgY2FuIG1vZGlmeSB0aGUgY29k
ZSB0byBjYWxsIGRvX21vdW50X3Jvb3QoKQo+IGluIGEgbG9vcCBmcm9tIGEgZmlsZXN5c3RlbSBs
aXN0Lgo+Cj4gUmlnaHQgbm93IEkgZGlkIG5vdCBuZWVkIGl0LCBzbyBJIGRpZCBub3QgYWRkIGl0
Lgo+Cj4+IEFsbCBvZiB0aGVtCj4+IHdpbGwgaGF2ZSB0byBoYW5kbGUgdGhlIHNlbGludXggeGF0
dHIvaXNzdWUsIHBvc2l4IGFuZCBmbG9jayBpc3N1ZXMsCj4+IGNhY2hpbmcgZXRjLgo+IEZpbGVz
eXN0ZW0gc3BlY2lmaWMgZmxhZ3Mgd2lsbCBiZSBwYXNzZWQgYnkgcm9vdGZsYWdzPS4KPgo+PiBX
aGlsZSBieSBkZWZpbml0aW9uIHZpcnRpb2ZzIGhhcyB0byBleGlzdCBvbmx5IGluIGEgdm0KPj4g
Z3Vlc3QsIHRoZSBvdGhlcnMgY291bGQgYmUgYmFyZW1ldGFsIG9yIHZtIGd1ZXN0IHJvb3RzLsKg
IChIb3cgbXVjaCA5cCdzCj4+IG90aGVyLXRoYW4tZ3Vlc3QgdHJhbnNwb3J0cyBhcmUgdXNlZCBJ
IGRvbid0IGtub3cpLgo+Pgo+PiBGWUkgKHRob3VnaCBwYXRjaGluZyB0aGUga2VybmVsIG1heSBi
ZSB0aGUgYmVzdCBvcHRpb24pwqAgdGhlcmUgaXMgYSBjYXNlCj4+IHRoYXQgZG9lcyBub3QgaGF2
ZSB0aG9zZSBrZXJuZWwgcGFuaWNzIGZvciB2aXJ0aW9mcy1yb290IGFuZCA5cCByb290Cj4+IHVz
aW5nIHN0b2NrIGZjMzQuwqAgQXMgOXAsIHRoZSB2aXJ0aW9mcyBtZXRob2QgdXNlcyB0aGUgaW5p
dHJkIGNyZWF0aW9uCj4+IG1lY2hhbmlzbXMgcHJvdmlkZWQgYnkgJ2RyYWN1dCcgb3IgJ2luaXRy
YW1mcycgdG8gcHJvdmlkZSB0aGUgJ3N5c3Jvb3QKPj4gcGl2b3QgZ2x1ZScuCj4+Cj4+IE9uIHRo
ZSBmYzM0IGd1ZXN0IGEgc3VjY2Vzc2Z1bCAnZGlyZWN0IGtlcm5lbCBib290JyB0b2RheSBsb29r
cyBsaWtlOgo+Pgo+PiBrZXJuZWwgcGF0aDogL3Ztc3lzdGVtcy9mZWRvcmFfZ2VuZXJpYy9ib290
L3ZtbGludXoKPj4KPj4gaW5pdHJkIHBhdGg6IC92bXN5c3RlbXMvZmVkb3JhX2dlbmVyaWMvYm9v
dC9pbml0cmQuaW1nCj4+Cj4+IEtlcm5lbCBhcmdzOiByb290PXZpcnRpb2ZzOm15ZnMgcmQuc2hl
bGwgcmQuZnN0YWIKPiBEb2VzIGl0IHdvcmsgd2l0aCB1cHN0cmVhbSBkcmFjdXQgb3IgeW91IGhh
dmUgbW9kaWZpZWQgZHJhY3V0IHRvCj4gcGFyc2UgInJvb3Q9dmlydGlvZnM6bXlmcyIgb3B0aW9u
LgoKSXQgd29ya3Mgd2l0aCBkcmFjdXQgYW5kIHN0b2NrIGZzMzQga2VybmVsIHJpZ2h0IG5vdyBi
eSBleGFjdGx5IHRoZQp0aHJlZSBmaWxlcyA5cCB1cHN0cmVhbSB3b3JrcyB3aXRoIGRyYWN1dCB0
byByb290IGZzIGJvb3QsIGV4Y2VwdAondmlydGlvZnMnIGluc3RlYWQgb2YgJzlwJyBpbiB0aGUg
ZHJhY3V0LmNvbmYuZCBmaWxlcy7CoCBOb3RlIGl0IHJlcXVpcmVzCnRoZSB2aXJ0aW9mczogaW4g
dGhlIHJvb3Q9IGxpbmUsIGJ1dCBub3QgaW4gdGhlIGZzdGFiIGFuZCBxZW11IGNvbmZpZ3MuCgpy
ZTogY2VwaGZzIEhlcmUncyBhIGNlcGhmcyBhcHByb2FjaCB0byB0aGUgcHJvYmxlbTrCoApodHRw
czovL2dpdGh1Yi5jb20vanVyYXNoa2EvZHJhY3V0LWNlcGgtbW9kdWxlCgoKCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1h
aWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
