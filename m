Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0607A797F
	for <lists+v9fs-developer@lfdr.de>; Wed, 20 Sep 2023 12:43:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qiufu-00022A-Ne;
	Wed, 20 Sep 2023 10:43:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kara.wan@ysedm.com.cn>) id 1qiuft-000224-IS
 for v9fs-developer@lists.sourceforge.net;
 Wed, 20 Sep 2023 10:43:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Content-Type:Mime-Version:Reply-To:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OzHxGFP6RStTiASNTNKtXlCW/i2m/iMswgp7LYb9T8A=; b=mzdwcMfNDKjGEr2No5f4gW/69r
 soQ6eLi+gNzaIT3e7SzhOJTuczwn2IclRWE9Fb2fl28to2kgqp03oe6xEW4C287EDMXoLDSk1Jebq
 brzzL9Bp+SfTJVdC6u3ewrRKoRDC9i+8IuHB91hzATRD8tziyvW4+zyynKd5K1vJ97BM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Content-Type:Mime-Version:Reply-To:Subject:To:From:Date:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OzHxGFP6RStTiASNTNKtXlCW/i2m/iMswgp7LYb9T8A=; b=J
 GjO+LITJuweoOoEuhql1h/jj/rBNhCsEH3YHqKDyt43BUDRKbOVOrpagpWW0pbm/LM0zVrTIl8WTW
 vgDnRQ8xQ6ux8eAk4r+Ln0TtRaSnnRRoNXetpRUCZnJ+b++F++xAj5IFxipzu2wvWy+VUnoGc+t8a
 KNuLB9JcI689ciO8=;
Received: from fzty06.sosung.net.cn ([110.84.129.132])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiufi-00053y-BH for v9fs-developer@lists.sourceforge.net;
 Wed, 20 Sep 2023 10:43:18 +0000
Received: from edm01.bossedm.com (edm01.chinaemail.cn [180.76.132.54])
 by fzty06.sosung.net.cn (Postfix) with ESMTPS id 0209F2013EA8
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 20 Sep 2023 18:24:33 +0800 (CST)
Received: from unknown (unknown [127.0.0.1])
 by edm01.bossedm.com (Bossedm) with SMTP id 2850112BCCE
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 20 Sep 2023 18:26:25 +0800 (CST)
Date: Wed, 20 Sep 2023 18:26:24 +0800 (CST)
From: "=?utf-8?B?WXVtaSA=?=" <yumi@hardfindtech.com>
To: <v9fs-developer@lists.sourceforge.net>
Mime-Version: 1.0
X-Notify-Mail: No
Message-ID: <5096#124779#v9fs-developer@lists.sourceforge.net#b7685d8384c9a4ec01e29ab9bcfc16eb#1695205584952>
X-Iszbb: Yes
X-ZZY-MESSAGE-ID: FA202007B958336C000000000000D1C80A65000000001D00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ysedm.com.cn; s=s9527; 
 t=1695205585; bh=+Wny/RmvTCz2Jj0HRf3TBC7UxYHuJh96JIdjyUwXF/Q=; 
 h=Date:From:Subject:Message-ID;
 b=zmuVpN7DKk+GrID/vuylI+dYwk6jVt9rMS8c77rWI1eHvJ2RmlDDDRqD5PmRy7zJX
 QeESCb8ecbf7EZhXKR8EiGx+yTFUj2KoxFIOYcnIqnZx1hx+qIQGvFZltqowcfiLTK
 yPpQNkDQYLABtDT46B9J70ZXL32zbQHYNZ11MN1Y=
X-Spam-Score: 8.0 (++++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Dear customer, Good&nbsp;day,&nbsp;how&nbsp;are&nbsp;you?&nbsp;
    We are good at&nbsp;Hard Find&nbsp;electronic components： IC:&nbsp;AD,TI,
    Maxim,Xilinx, Altera, LT.. MLCC Capacitor: Murata, Samsung, Yageo, AVX, Ta
    [...] 
 
 Content analysis details:   (8.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
                             blocklist
                             [URIs: ysedm.com.cn]
  3.6 RCVD_IN_PBL            RBL: Received via a relay in Spamhaus PBL
                             [110.84.129.132 listed in zen.spamhaus.org]
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: ysedm.com.cn]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-Headers-End: 1qiufi-00053y-BH
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] =?utf-8?q?Microchip_quote?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: yumi@hardfindtech.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoNCg0KDQoNCg0KCQ0KCQlEZWFyIGN1c3RvbWVyLA0KCQ0KCQ0KCQlHb29kJm5ic3A7ZGF5LCZu
YnNwO2hvdyZuYnNwO2FyZSZuYnNwO3lvdT8mbmJzcDsNCldlIGFyZSBnb29kIGF0Jm5ic3A7SGFy
ZCBGaW5kJm5ic3A7ZWxlY3Ryb25pYyBjb21wb25lbnRz77yaDQpJQzombmJzcDtBRCxUSSwgTWF4
aW0sWGlsaW54LCBBbHRlcmEsIExULi4NCk1MQ0MgQ2FwYWNpdG9yOiBNdXJhdGEsIFNhbXN1bmcs
IFlhZ2VvLCBBVlgsIFRhaXlvLi4NCk1MQ0MgUmVzaXN0b3I6Jm5ic3A7WWFnZW8sU2Ftc3VuZyxV
bmlvaG0sV2Fsc2luLi4uDQpEaW9kZSAmYW1wO1RyYW5zaXN0b3I6Jm5ic3A7VmlzaGF5LCBEaW9k
ZXMsTlhQLE9OLFNULi4NCkhlcmUgYXJlIHNvbWUgb2Ygb3VyIHJlZmVyZW5jZXM6Jm5ic3A7DQoN
ClBJQzE2RjE4MzI2LUkvU1QgTUlDUk9DSElQIDIwMjIrIDIuNXVzZA0KUElDMTZGNjg4LUkvUCBN
SUNST0NISVAgMjAyMisgMS43OHVzZA0KUElDMTZGODgzLUkvU1MgTUlDUk9DSElQIDIwMjErIDEu
MjR1c2QNClBJQzE4RjQ1MjAtSS9QVCBNSUNST0NISVAgMjAyMisgMy4yMnVzZA0KUElDMThGNDU1
MC1JL1AgTUlDUk9DSElQIDIwMjErIDguM3VzZA0KDQoNCipMZWFkIHRpbWU6IHdlIGNhbiBzaGlw
IHRoZW0gdG8geW91IGluIDUtN2RheXMNCipGcmVlIFNoaXBwaW5nIGNvc3QgZm9yIGZpcnN0IG9y
ZGVyDQoqMzY1ZGF5cyBxdWFsaXR5IHdhcnJhbnR5IGZvciBlYWNoIHBhcnQNCiANCgkNCgkNCgkJ
Jm5ic3A7IA0KCQ0KCQ0KCQlLZWVwIHNtaWxpbmcgZXZlcnkgZGF5Jm5ic3A7KCrvv6Mp77+jKSAN
CgkNCgkNCgkJJm5ic3A7IA0KCQ0KCQ0KCQlZdW1pIA0KCQ0KCQ0KCQlBY2NvdW50IE1hbmFnZXIg
DQoJDQoJDQoJCUhhcmQmbmJzcDtGaW5kJm5ic3A7RWxlY3Ryb25pY3MgTHRkLiANCgkNCgkNCgkJ
c291cmNpbmcgaGFyZCZuYnNwO2ZpbmQmbmJzcDtlbGVjdHJvbmljIGNvbXBvbmVudHMgDQoJDQoJ
DQoJCQ0KMzE1LCBTaGFoZSBSb2QsIExvbmcgR2FuZyBEaXN0cmljdCwgU2hlbnpoZW4sIENOLCA1
MTgwMDANClRlbDogKzg2LTc1NS04NDE4IDgxMDMmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgDQoJDQoJDQoJCVNreXBlL0Vt
YWlsOiB5dW1pQGhhcmRmaW5kZWxlY3Ryb25pY3MuY29tIA0KCQ0KCQ0KCQlMaW5rZWRsbjombmJz
cDt3d3cubGlua2VkaW4uY29tL2luL3l1bWktZ2FvIA0KCQ0KCQ0KCQlGYWNlYm9vazogZmFjZWJv
b2suY29tL1l1bWloYXJkZmluZCANCgkNCgkNCgkJV2ViOmh0dHBzOi8vd3d3LmhhcmRmaW5kZWxl
Yy5jb20gDQoJDQoJDQoJCSZuYnNwOyANCgkNCgkNCgkJDQoJDQoJDQoJCSZuYnNwOyANCgkNCg0K
DQoNCg0KCeaho+mTuue9keKAlOKAlOWcqOe6v+aWh+aho+WFjei0ueWkhOeQhiANCklmIHlvdSBk
byBub3Qgd2lzaCB0byByZWNlaXZlIGFueSBtb3JlIGVtYWlscywgeW91IGNhbiB1bnN1YnNjcmli
ZSBoZXJlLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpW
OWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMt
ZGV2ZWxvcGVyCg==
