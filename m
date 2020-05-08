Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B6A1CB185
	for <lists+v9fs-developer@lfdr.de>; Fri,  8 May 2020 16:14:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jX3lo-0004SY-EZ; Fri, 08 May 2020 14:14:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ericvh@gmail.com>) id 1jX3lm-0004SR-ML
 for v9fs-developer@lists.sourceforge.net; Fri, 08 May 2020 14:14:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SBn504d2WE2bG3ODcn4J9Jdy96xFJjlQsKehdhCv/V0=; b=dkMtjvkATF6AQAanG/SZzzinF3
 yMI0BVRqjTvwyj+maWFGHkrsJfNU4gV/nH0HAeuPuWIBJT862qAWvAgK133JpjGaVZaU6uKcDDkmh
 fiiiNhiIm1rHmxuyzJYzp0zQlpbtPrNUyRLwiShS56yd+CCIlSHvXIvEXUI1GWTfeOaY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SBn504d2WE2bG3ODcn4J9Jdy96xFJjlQsKehdhCv/V0=; b=TNFiYpGkuDMN3S97RYiO9i/cA8
 /rXxjPtAJ94p1sjyPozJluY+wx7uM53WMQnXZyylzfPCQ9UqRXzI1dVFXpQYEnjZaoMt0QHx3IATv
 9cnlUeUKoDJDeTthz0rYkEpJh7HrSWrDFCbFTS+CoQcfbtXNRIt9AVc+cNyKq9q7aZxk=;
Received: from mail-vs1-f42.google.com ([209.85.217.42])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jX3lk-00CcrA-SE
 for v9fs-developer@lists.sourceforge.net; Fri, 08 May 2020 14:14:30 +0000
Received: by mail-vs1-f42.google.com with SMTP id y185so1113792vsy.8
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 08 May 2020 07:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SBn504d2WE2bG3ODcn4J9Jdy96xFJjlQsKehdhCv/V0=;
 b=Nj7rJAUm4Vb6yQpCjMYsF3MDBkiYJfuATsTijsbIhpupxU7/vaW61QLAOT4PYK4YcT
 RzWySEehSZEPXLMwnjVHIQ6v26ykXudupEMrr7O7l4LmdmgxJ7EVdmnDobJH+zqwHXCg
 ozffcGoRtR2jaoBxty6pAWX9fwlyphut4UmsNUGoEgiS1EuQ52SecLHphlyz8w6ZHors
 eivQuNFGQu0h2hDDIUZnht/TNubHEb2MtpJlyMUBaWBOnQ/JNOTZ8/6XVmuAwniZg2lT
 A/UmRzomzAw4TFhrf/ScJmW/auOZNhttZ86yyUPwfiakI0ky8ztyA7A882jRl2R3AEUT
 MPUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SBn504d2WE2bG3ODcn4J9Jdy96xFJjlQsKehdhCv/V0=;
 b=OBgH941aHaJNlwtzYjlH+hQY4hlkQtfGHyh71q9jYApfHYruFHqKieZoj5KQOL1hVI
 CDFL8wjBoHaZg8yUh+bKY6w9rEuTjPgxuI2ybA6W/Nv1gTh5RQDgVzJofSWRm7lUCpwJ
 9PW/ju0cHlQ1RtAM0OZMtByf/MdyDFqyUIGqG+Vf774h9gVDOOshGQxRlvAE39vJbBk2
 4ixrpj+aBM+EtL6iB8iVhT37G3DaIpoasXJoq4yMyJETSoTtqd3YGD0VBEfIVLUeMocD
 eI1/vkUuGN8Qdrlg0PaB3Ve0S52z8SEp8NkmundBMnz/hlRif5SGr2vpgw8BAfhKSV5W
 oQug==
X-Gm-Message-State: AGi0PuYE/jYoex7k5HXV7gJ/czXW9OXQx+eE3JP0irpdB7vhogX8rUt7
 L76mWFkfOCkCh/GZyIDR0/dwZNyzBOMg0vEGpuTNyUXv
X-Google-Smtp-Source: APiQypKOpI1M7h8yOznhtla1ZkwlnatzbZwem8sLmWuTHcXZ8mUKnBMB42jJqu9qeLocBfD4Vyw72yX71w7ZBiAiZP0=
X-Received: by 2002:a67:69ca:: with SMTP id e193mr2064675vsc.19.1588947255401; 
 Fri, 08 May 2020 07:14:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200507102339.GA7332@legohost>
 <CAFkjPTmot_1Sf6h3yfWXhon8EUWgyOFTUy-C2P9OOp8NF6d-BQ@mail.gmail.com>
 <20200507181856.GA32655@legohost>
 <CAFkjPTk7MtoabMVXXGSR+ih3n0BbtUQi1dCDNDvQRBQxo3M0yg@mail.gmail.com>
 <20200508091558.GB29480@legohost>
 <CAFkjPT=aRxKsd6oFmWxz91VVEDDm5xRy3uMJrZjz=dYwg91cOg@mail.gmail.com>
 <20200508140449.GA5874@legohost>
In-Reply-To: <20200508140449.GA5874@legohost>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Fri, 8 May 2020 09:14:05 -0500
Message-ID: <CAFkjPTnF0J+wzcqxB67KL4DxkDv-mtpEzVvd-sL41xg+AGji=g@mail.gmail.com>
To: Oleg <lego12239@yandex.ru>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.217.42 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (ericvh[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.42 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jX3lk-00CcrA-SE
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] linux 9p mount & tattach
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
Cc: V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Q29ycmVjdCwgdGhhdCB3YXMgdGhlIGludGVuZGVkIHB1cnBvc2UuICBTb21ld2hlcmUgb24gdGhl
IGludGVyd2VicyAobWF5YmUKaW4gcGxhbjlwb3J0KSB0aGVyZSBpcyBhbiBleGFtcGxlIHNjcmlw
dCB3aGljaCBzZXRzIHVwIGFuIHNzaCB0dW5uZWwgYW5kCnRoZW4gbW91bnRzIDlwIHRocm91Z2gg
aXQuCgogICAgICAgICAgICAtZXJpYwoKCk9uIEZyaSwgTWF5IDgsIDIwMjAgYXQgOTowMyBBTSBP
bGVnIDxsZWdvMTIyMzlAeWFuZGV4LnJ1PiB3cm90ZToKCj4gT24gRnJpLCBNYXkgMDgsIDIwMjAg
YXQgMDc6MTQ6NDdBTSAtMDUwMCwgRXJpYyBWYW4gSGVuc2JlcmdlbiB3cm90ZToKPiA+IEJhc2lj
YWxseSDigJxzdHVwaWQgbWFw4oCdIG1vZGUgaXMgOXAyMDAwLnUuIOKAlCB0aGUgb25lIHRoaW5n
IGl0IGNoYW5nZXMgaXMKPiB0aGUKPiA+IHByb3RvY29sIGlzIHVpZC9naWQgZm9yIHVuYW1lL2du
YW1lLgo+Cj4gQmlnIHRoYW5rcyBmb3IgdGhlIGluZm8hIEkgYnJva2UgbGliaXhwIGEgbGl0dGxl
IGluIHN1Y2ggYSB3YXkgdGhhdCBpdAo+IHJlc3BvbmQKPiB0byA5UDIwMDAudSBhdHRhY2ggYW5k
IHN0YXQgbWVzc2FnZXM7IGFuZCA5UDIwMDAudSB3b3JrcyBhcyBuZWVkZWQgOi0pIQo+Cj4gQW5v
dGhlciBxdWVzdGlvbi4gRG8gaSB1bmRlcnN0YW5kIHJpZ2h0LCB0aGF0IHRyYW5zPWZkIGNhbiBi
ZSB1c2VkIGZvcgo+IG1ha2luZywgZm9yIGV4YW1wbGUsIGFuIGVuY3J5cHRlZCB0dW5uZWwgd2l0
aCA5cCBwYWNrZXRzIGluc2lkZSBpdD8KPgo+Cj4gLS0KPiDQntC70LXQsyDQndC10LzQsNC90L7Q
siAoT2xlZyBOZW1hbm92KQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
