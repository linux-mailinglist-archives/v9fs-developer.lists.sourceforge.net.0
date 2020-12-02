Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2693C2CB8BE
	for <lists+v9fs-developer@lfdr.de>; Wed,  2 Dec 2020 10:25:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kkOOP-0002o4-SB; Wed, 02 Dec 2020 09:25:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <3il3HXw8JAGcRWXLNWIFQFIeJfgLRFNQ.HTR@trix.bounces.google.com>)
 id 1kkOOO-0002np-Eh
 for v9fs-developer@lists.sourceforge.net; Wed, 02 Dec 2020 09:25:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Date:Message-ID:
 Reply-To:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KQ+qnHslXWKUUo2hvALh6V/NCAb6NdcUhsLoGP0QCic=; b=YMsAGVGES0tlEHACLvPyQ4tum+
 ZyPubM7MY0MIqXj9Wach9W1yR6ocjrSeO/9PcTuilhVosNFiDC0blN1EVEfwZ/r1t0ppIlL16FPPq
 Xqg1A6Gdv8ekKDh667e/vgwAA7yEE44V/6P0/ueOjEjC0rIsGP1+csZGjU1umXvyS49A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Date:Message-ID:Reply-To:MIME-Version:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KQ+qnHslXWKUUo2hvALh6V/NCAb6NdcUhsLoGP0QCic=; b=L
 4Y0VbFaEHx4r0N3X4OXrVSCOEJZXkrvENjvCVYI7IsvGNrLn4zbkYNN9DQ4/a5iD4f228aQwBZN/x
 ZMetqPXScMAHgbum4xp+xVyHTTfchAWd6F5rFSJGZJ5F8y5jgHAGRihSrS+aXs9aRX7dbg9pGS9rI
 tR8pQI3J4/8F5Zjw=;
Received: from mail-vs1-f72.google.com ([209.85.217.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kkOOI-00B0jL-06
 for v9fs-developer@lists.sourceforge.net; Wed, 02 Dec 2020 09:25:44 +0000
Received: by mail-vs1-f72.google.com with SMTP id g12so247176vsm.5
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 02 Dec 2020 01:25:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:message-id:date:subject:from:to;
 bh=KQ+qnHslXWKUUo2hvALh6V/NCAb6NdcUhsLoGP0QCic=;
 b=PWPMQgKEkH2Efz8TTMNga1AahyYNyuUftgzMO4s26SmI7c6jixqEUNYLBIAAkskUJi
 eVETHRUcIBlhXewGGUQQ5YdPSraFwb7IYfvwtQsTzdEXAx9f4VU5JdYzVhYdZiL3/taq
 OyReIvcV+U4e8C43SyVB9jup8UTRAYMwKJjzVy9+PrpepOS5IVypdbro98mGy21yxsd6
 mUEHecu1SUy1WnVCxWunY95SkGDCHh+mX1AxD0ZxU5/ng9FX5E79JES+GOw6RUuNQ5LR
 EfBo7BGLJDlDkUl8tKkIQ2HoodFu/tf6ar3ruhZ0DKF89QWxB73jI4jRJ+RKFYZ13erz
 bkwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:message-id:date:subject
 :from:to;
 bh=KQ+qnHslXWKUUo2hvALh6V/NCAb6NdcUhsLoGP0QCic=;
 b=uiIq8r191YiAH/c5Mo8smHYFZzMFdY5lacNAV5m8Y+THcF+G3t8xV26tG6FrsiRcL6
 ScM2qlaxLoFEg+eg8ssaMOkMWndaL6DoL7quollEN7yvcWTFuZh/UrdL6DIAq5leeFOr
 2iW4UY7RwgyWcBsjSLQs4EaVE5mS/e/oXbs2TSlrT3SgafoIMtQzNjh1/l+0LvzrDKXz
 k1PBNM0PPDhqm7kHM6P/wnKcqREZIm1k24smg/NwcratlEJEe0ixlrT7sEY1OnQj68ZQ
 nWWpg2182cVAa4+FTbiRImIqImYRegT6NaLTgsLsVztqMIAmIDs6uDXStf8cGkBd93Ay
 jdlQ==
X-Gm-Message-State: AOAM531k8hAgQNhmECQ/4NYA3z9EH3BtKFoLsGLiWHyK3ZJs+4xEOXcu
 XbsOod08BWI9z0A4mCSxeLi6kQIwGSxEP+3oN558
MIME-Version: 1.0
X-Received: by 2002:a67:e918:: with SMTP id c24mt812626vso.55.1606901130817;
 Wed, 02 Dec 2020 01:25:30 -0800 (PST)
X-No-Auto-Attachment: 1
Message-ID: <000000000000179fa605b577d3c9@google.com>
Date: Wed, 02 Dec 2020 09:25:32 +0000
From: mrsgirdaladze01@gmail.com
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: 5.1 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mrsgirdaladze01[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (mrsgirdaladze01[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.72 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.217.72 listed in list.dnswl.org]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain different
 freemails
 0.0 ADVANCE_FEE_4_NEW      Appears to be advance fee fraud (Nigerian 419)
 2.5 GOOGLE_DOC_SUSP        Suspicious use of Google Docs
X-Headers-End: 1kkOOI-00B0jL-06
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Donation
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
Reply-To: mrsgirdaladze01@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SSd2ZSBpbnZpdGVkIHlvdSB0byBmaWxsIG91dCB0aGUgZm9sbG93aW5nIGZvcm06DQpDb250YWN0
IGluZm9ybWF0aW9uDQoNClRvIGZpbGwgaXQgb3V0LCB2aXNpdDoNCmh0dHBzOi8vZG9jcy5nb29n
bGUuY29tL2Zvcm1zL2QvZS8xRkFJcFFMU2RxVDN2bFZzbkttR0dnYTM2RlNoVGZQYmZCNHEtV3No
WWloS3VEb2tibW1DTlZBQS92aWV3Zm9ybT92Yz0wJmFtcDtjPTAmYW1wO3c9MSZhbXA7ZmxyPTAm
YW1wO3VzcD1tYWlsX2Zvcm1fbGluaw0KDQpEb25hdGlvbg0KTXkgRGVhciBGcmllbmQsDQpNeSBu
YW1lIGlzIE1ycy5HaXJkYWxhZHplIEtydW1tZW5hY2hlcg0KSSYjMzk7bSBhbiBBbWVyaWNhbiBj
dXJyZW50bHkgaG9zcGl0YWxpemVkIGluIGEgcHJpdmF0ZSBob3NwaXRhbD8NCk15IHB1cnBvc2Ug
b2Ygd3JpdGluZyB0byB5b3UgaXMgYmVjYXVzZSBJIHdhcyBsZWQgYnkgdGhlIHNwaXJpdCBvZiBH
b2QgdG8NCm9mZmVyIHlvdSB0aGUgbW9uZXkgdGhhdCBJIGFuZCBNeSBsYXRlIGh1c2JhbmQgaGF2
ZSBpbiBvdXIgcHJpdmF0ZSBhY2NvdW50Lg0KDQpJ4oCZbSA3OSB5ZWFyIG9sZCBhbmQgbWF5ICBo
YXZlIG5vIG5lZWQgZm9yIHRoZSBmdW5kLCBzaW5jZSBteSBkb2N0b3JzDQpoYXZlIG9mZmljaWFs
bHkgZ2l2ZW4gbWUgYSBkYXRlIG9mIHN1cmdlcnkgYW5kIGFsc28gIGluZm9ybWVkIG1lIHRoYXQN
Cm15IHN1cnZpdmFsIGR1cmluZyBteSBsYXN0IHN1cmdlcnkgd2lsbCBiZSBieSBoaXMgZ3JhY2Ug
Y291cGxlIHdpdGgNCnRoZSBjdXJyZW50IHBhbmRlbWljIG9mIGNvcm9uYSB2aXJ1cy4NCg0KSSBh
bmQgbXkgIGh1c2JhbmQgd2VyZSB0b2dldGhlciBmb3IgbWFueSB5ZWFycywgd2l0aG91dCBraWRz
IG9mIG91ciBvd24uDQpJ4oCZbSBvZmZlcmluZyB5b3UgdGhpcyBzdW0gb2YgbW9uZXkgYXMgYSBk
b25hdGlvbiBmb3IgdGhlIHdvcmsgb2YgR29kIGFuZA0KY2hhcml0eSBhbmQgdG8gdGFrZSBjYXJl
IG9mIG9ycGhhbnMgYW5kIGhlbHAgdGhlIGxlc3MgcHJpdmlsZWdlZC4NCk1heSB0aGUgZ29vZCBM
b3JkIGJsZXNzIHlvdSBhbmQgeW91ciBmYW1pbHkuDQoNCkkgd2lsbCBkaXJlY3QgeW91IG9uIGhv
dyB0byByZWNlaXZlIHRoZSBmdW5kIG9uY2UgSSByZWNlaXZlIHlvdXINCnJlc3BvbnNlIHRvIG15
IHJlcXVlc3QuLg0KQ29udGFjdCBtZSB0aHJvdWdoIG15IGVtYWlsIGFkZHJlc3M6ICBNcnNHaXJk
YWxhZHplMUBvdXRsb29rLmNvbQ0KDQpQbGVhc2UgZG9uJiMzOTt0IGZhaWwgdG8gcGxhY2UgbWUg
aW4geW91ciBkYWlseSBwcmF5ZXJzLA0KTXJzLkdpcmRhbGFkemUgS3J1bW1lbmFjaGVyDQoNCkdv
b2dsZSBGb3JtczogQ3JlYXRlIGFuZCBhbmFseXplIHN1cnZleXMuDQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBs
aXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
