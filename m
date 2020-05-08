Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 073AD1CB14E
	for <lists+v9fs-developer@lfdr.de>; Fri,  8 May 2020 16:03:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jX3bP-0008VE-81; Fri, 08 May 2020 14:03:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lego12239@yandex.ru>) id 1jX3bN-0008V6-G8
 for v9fs-developer@lists.sourceforge.net; Fri, 08 May 2020 14:03:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kXbIe1A8z4JiO1CBf3e8Ndn0gyjA4tbE6scM9oGf+xo=; b=D9kNzPbDFkPjRtSfP7lIIWMGir
 PFFR0cjRiwNes6XUNozpWjNzYWwU7ehekzfWIV7tKgcauYeRpnZlvIMBrQA16kGzUPBdklHggOEYS
 BcABVRQxsfywSCG0njD4X01HiDPYRGRnZAV+6iP0yYJHEV65y7gXOjhvan24SBZqhUwo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kXbIe1A8z4JiO1CBf3e8Ndn0gyjA4tbE6scM9oGf+xo=; b=UenGgwlc5OaO57MjJCFLtj0a6n
 MQltvIV69aH+Mp1Wfs0GhtVXqdX6L68AV+KI6mQ5DJDqizXd1JbMdsl4lSHqsh1LTrcejVwDBI04J
 cPCWZISy+Jlv+H1U+jDiKLhaLsg4YsyL6IBt3qkF4FM579Lv58iDexcc53WshrOHlFXg=;
Received: from forward106o.mail.yandex.net ([37.140.190.187])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jX3bJ-00Fdf5-TO
 for v9fs-developer@lists.sourceforge.net; Fri, 08 May 2020 14:03:45 +0000
Received: from mxback5j.mail.yandex.net (mxback5j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::10e])
 by forward106o.mail.yandex.net (Yandex) with ESMTP id 70E9050608B7;
 Fri,  8 May 2020 17:03:34 +0300 (MSK)
Received: from myt5-1ebfaac9e69d.qloud-c.yandex.net
 (myt5-1ebfaac9e69d.qloud-c.yandex.net [2a02:6b8:c12:3b2d:0:640:1ebf:aac9])
 by mxback5j.mail.yandex.net (mxback/Yandex) with ESMTP id SqVfRVr4vc-3YxSZv9T; 
 Fri, 08 May 2020 17:03:34 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1588946614; bh=kXbIe1A8z4JiO1CBf3e8Ndn0gyjA4tbE6scM9oGf+xo=;
 h=In-Reply-To:Reply-To:Subject:Cc:To:From:References:Date:
 Message-ID;
 b=TT0RjNpo8sF7FhKIi6okyhmd6sSw+4SKzOO3zHJk36oUoO4QuytsK2k5nbSOLZjd+
 g+Ar+B8FqCEdOn9LV4dQMVMmGSlJTKdJtc4+BNdou4VT2ZZsIK11pY6XS/HsnpIMqe
 A04S/MyBmQKxQRiddGa4jfGCVMK9gYItqT0zBbTc=
Authentication-Results: mxback5j.mail.yandex.net; dkim=pass header.i=@yandex.ru
Received: by myt5-1ebfaac9e69d.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id Jbt8BRXj8l-3X288j60; Fri, 08 May 2020 17:03:33 +0300
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client certificate not present)
Date: Fri, 8 May 2020 17:04:49 +0300
From: Oleg <lego12239@yandex.ru>
To: Eric Van Hensbergen <ericvh@gmail.com>
Message-ID: <20200508140449.GA5874@legohost>
References: <20200507102339.GA7332@legohost>
 <CAFkjPTmot_1Sf6h3yfWXhon8EUWgyOFTUy-C2P9OOp8NF6d-BQ@mail.gmail.com>
 <20200507181856.GA32655@legohost>
 <CAFkjPTk7MtoabMVXXGSR+ih3n0BbtUQi1dCDNDvQRBQxo3M0yg@mail.gmail.com>
 <20200508091558.GB29480@legohost>
 <CAFkjPT=aRxKsd6oFmWxz91VVEDDm5xRy3uMJrZjz=dYwg91cOg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFkjPT=aRxKsd6oFmWxz91VVEDDm5xRy3uMJrZjz=dYwg91cOg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lego12239[at]yandex.ru)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [37.140.190.187 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (lego12239[at]yandex.ru)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (lego12239[at]yandex.ru)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jX3bJ-00Fdf5-TO
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
Reply-To: Oleg <lego12239@yandex.ru>
Cc: V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gRnJpLCBNYXkgMDgsIDIwMjAgYXQgMDc6MTQ6NDdBTSAtMDUwMCwgRXJpYyBWYW4gSGVuc2Jl
cmdlbiB3cm90ZToKPiBCYXNpY2FsbHkg4oCcc3R1cGlkIG1hcOKAnSBtb2RlIGlzIDlwMjAwMC51
LiDigJQgdGhlIG9uZSB0aGluZyBpdCBjaGFuZ2VzIGlzIHRoZQo+IHByb3RvY29sIGlzIHVpZC9n
aWQgZm9yIHVuYW1lL2duYW1lLgoKQmlnIHRoYW5rcyBmb3IgdGhlIGluZm8hIEkgYnJva2UgbGli
aXhwIGEgbGl0dGxlIGluIHN1Y2ggYSB3YXkgdGhhdCBpdCByZXNwb25kCnRvIDlQMjAwMC51IGF0
dGFjaCBhbmQgc3RhdCBtZXNzYWdlczsgYW5kIDlQMjAwMC51IHdvcmtzIGFzIG5lZWRlZCA6LSkh
CgpBbm90aGVyIHF1ZXN0aW9uLiBEbyBpIHVuZGVyc3RhbmQgcmlnaHQsIHRoYXQgdHJhbnM9ZmQg
Y2FuIGJlIHVzZWQgZm9yCm1ha2luZywgZm9yIGV4YW1wbGUsIGFuIGVuY3J5cHRlZCB0dW5uZWwg
d2l0aCA5cCBwYWNrZXRzIGluc2lkZSBpdD8KCgotLSAK0J7Qu9C10LMg0J3QtdC80LDQvdC+0LIg
KE9sZWcgTmVtYW5vdikKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
