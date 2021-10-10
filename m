Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B8642800D
	for <lists+v9fs-developer@lfdr.de>; Sun, 10 Oct 2021 10:32:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mZUGB-0006ss-QX; Sun, 10 Oct 2021 08:32:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <paskripkin@gmail.com>) id 1mZUGB-0006se-Cp
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Oct 2021 08:32:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=clxhe8GrcmKsIW5+IrExPbBhFqllWxFbPatBcuqSAno=; b=AnSUCPlHala2j3EnOX7bZY9nzJ
 KW5VXw8j7MnH8rCCpTwA015SyIttTHfe5OQCguf6eiWrKUb4HLsNn41p51Q+gisu1FO/wqpOq0+5K
 6rbDF58KHmZem4I3MEtzsVobWGNIJ5FDhwjffMN8IJF3xrk1A0gNlYamMsIu2+VwWkMU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=clxhe8GrcmKsIW5+IrExPbBhFqllWxFbPatBcuqSAno=; b=CIZn1mS8MPUelohKSSs26/AcV3
 bLRvF3cknvdxrNKSHGfVX8nRRlg8xov6d8s0jasF1y3VrDgc9K3EK7SxFeD8GrytiFKdIeaJcPAqo
 GsqJlh0W0IfQx7FKi2GB0Fee8u35KIY4v9FaINTnEWTAxf6+xM/d3iuRxMkdzxIAdY2E=;
Received: from mail-lf1-f53.google.com ([209.85.167.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mZUG8-0007eA-6I
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Oct 2021 08:32:42 +0000
Received: by mail-lf1-f53.google.com with SMTP id y15so59286498lfk.7
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 10 Oct 2021 01:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :references:from:in-reply-to:content-transfer-encoding;
 bh=clxhe8GrcmKsIW5+IrExPbBhFqllWxFbPatBcuqSAno=;
 b=XaSoe4F+XN26IqAbSVgI8ns0lAzLVGF5g/KtanSI5C6Oz8sIhAYwWwOE2eaPf7jcCh
 LfphLMsShXHzOdOubprcyyikrTqexYcQHg86z4BzE1nQ0a970WCKBDT1Jk3yvt5fG5kV
 bADUhrT4u+vARtoEXsdWdWtlsihUCzXnpFS4XSrWeORwZ7gqT0BcHMUGj9SJjt14bsnJ
 EtVXUomK5KEJOr7mqlQOpPEeZuZ6gL0/fDrJNXWzQA73n23GLigRza1+68N2f+wbVRCr
 Y6GMNysVRFuWXTXd1lPcqdrelA+EoLcmVWkpxxUNgBRPLBgSnYCWqmCeOm585wAKS0L0
 gvUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=clxhe8GrcmKsIW5+IrExPbBhFqllWxFbPatBcuqSAno=;
 b=k0y8m5zyv7xSEsbjWxnBQY35wfylW1jroE6wcB5OGU27nSsSmcQDXmE047ykpiDRp2
 /xX/Ip5YhQZlhUH7JSI8zh1Htkz1w0ebldf8t5aaYjzCl8RB8b+B13qkdwR4/JkZIhB1
 6X76PTRHnynn1hIrT2KaenDryebuyjqt2B1HOlgWiqLO3p2ffUqtcOVgSmcIgBIOG5IZ
 99GmiAfX1B5PIQYOuhtob8gtXPjOI3xcGbYNiJ7mguXcly18vXSKQ0L9TAQWdhxfcTrM
 5bf/MMOs3nuqnmgvgSCa0Y77bwkPdxt3LeyzrueiKNHYJWRHbdOKOd2fwelLZDQrD1gl
 4sww==
X-Gm-Message-State: AOAM533acfr0+gcO+mgGo8BkJ/jofrjOLzK+gjr+A8ffGpEOe84tAmsp
 4+YLauXCtAxVYh+Kh5gDYag=
X-Google-Smtp-Source: ABdhPJxsrTDkcxpD9PN4XktVUjM26gPiVL0yzUXUXvmR2WXS7ZVVn+COfulEUIF19EDZxTA+W4qapg==
X-Received: by 2002:a05:651c:1504:: with SMTP id
 e4mr14986803ljf.131.1633854753504; 
 Sun, 10 Oct 2021 01:32:33 -0700 (PDT)
Received: from [192.168.1.11] ([94.103.235.120])
 by smtp.gmail.com with ESMTPSA id l8sm407746lfh.57.2021.10.10.01.32.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 10 Oct 2021 01:32:33 -0700 (PDT)
Message-ID: <99338965-d36c-886e-cd0e-1d8fff2b4746@gmail.com>
Date: Sun, 10 Oct 2021 11:32:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.1
Content-Language: en-US
To: syzbot <syzbot+06472778c97ed94af66d@syzkaller.appspotmail.com>,
 asmadeus@codewreck.org, davem@davemloft.net, ericvh@gmail.com,
 glider@google.com, kuba@kernel.org, linux-kernel@vger.kernel.org,
 lucho@ionkov.net, netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 v9fs-developer@lists.sourceforge.net
References: <000000000000baddc805cdf928c3@google.com>
From: Pavel Skripkin <paskripkin@gmail.com>
In-Reply-To: <000000000000baddc805cdf928c3@google.com>
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/10/21 08:48, syzbot wrote: > Hello, > > syzbot found
 the following issue on: > > HEAD commit: c7f84f4e1147 kmsan: core: do not
 touch interrupts when ent.. > git tree: https://github.com/google/k [...]
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paskripkin[at]gmail.com]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.53 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 CTE_8BIT_MISMATCH      Header says 7bits but body disagrees
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mZUG8-0007eA-6I
Subject: Re: [V9fs-developer] [syzbot] KMSAN: uninit-value in p9pdu_readf
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gMTAvMTAvMjEgMDg6NDgsIHN5emJvdCB3cm90ZToKPiBIZWxsbywKPiAKPiBzeXpib3QgZm91
bmQgdGhlIGZvbGxvd2luZyBpc3N1ZSBvbjoKPiAKPiBIRUFEIGNvbW1pdDogICAgYzdmODRmNGUx
MTQ3IGttc2FuOiBjb3JlOiBkbyBub3QgdG91Y2ggaW50ZXJydXB0cyB3aGVuIGVudC4uCj4gZ2l0
IHRyZWU6ICAgICAgIGh0dHBzOi8vZ2l0aHViLmNvbS9nb29nbGUva21zYW4uZ2l0IG1hc3Rlcgo+
IGNvbnNvbGUgb3V0cHV0OiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94L2xvZy50eHQ/
eD0xMThlODZhOGIwMDAwMAo+IGtlcm5lbCBjb25maWc6ICBodHRwczovL3N5emthbGxlci5hcHBz
cG90LmNvbS94Ly5jb25maWc/eD05NzhmMWIyZDdhNWFhZDNlCj4gZGFzaGJvYXJkIGxpbms6IGh0
dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL2J1Zz9leHRpZD0wNjQ3Mjc3OGM5N2VkOTRhZjY2
ZAo+IGNvbXBpbGVyOiAgICAgICBjbGFuZyB2ZXJzaW9uIDE0LjAuMCAoZ2l0QGdpdGh1Yi5jb206
bGx2bS9sbHZtLXByb2plY3QuZ2l0IDA5OTY1ODVjOGUzYjNkNDA5NDk0ZWI1ZjFjYWQ3MTRiOWUx
ZjdmYjUpLCBHTlUgbGQgKEdOVSBCaW51dGlscyBmb3IgRGViaWFuKSAyLjM1LjIKPiB1c2Vyc3Bh
Y2UgYXJjaDogaTM4Ngo+IAo+IFVuZm9ydHVuYXRlbHksIEkgZG9uJ3QgaGF2ZSBhbnkgcmVwcm9k
dWNlciBmb3IgdGhpcyBpc3N1ZSB5ZXQuCj4gCj4gSU1QT1JUQU5UOiBpZiB5b3UgZml4IHRoZSBp
c3N1ZSwgcGxlYXNlIGFkZCB0aGUgZm9sbG93aW5nIHRhZyB0byB0aGUgY29tbWl0Ogo+IFJlcG9y
dGVkLWJ5OiBzeXpib3QrMDY0NzI3NzhjOTdlZDk0YWY2NmRAc3l6a2FsbGVyLmFwcHNwb3RtYWls
LmNvbQo+IAo+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09Cj4gQlVHOiBLTVNBTjogdW5pbml0LXZhbHVlIGluIHA5cGR1X3ZyZWFkZiBuZXQvOXAv
cHJvdG9jb2wuYzoxNDcgW2lubGluZV0KPiBCVUc6IEtNU0FOOiB1bmluaXQtdmFsdWUgaW4gcDlw
ZHVfcmVhZGYrMHg0NmNmLzB4NGZjMCBuZXQvOXAvcHJvdG9jb2wuYzo1MjYKPiAgIHA5cGR1X3Zy
ZWFkZiBuZXQvOXAvcHJvdG9jb2wuYzoxNDcgW2lubGluZV0KPiAgIHA5cGR1X3JlYWRmKzB4NDZj
Zi8weDRmYzAgbmV0LzlwL3Byb3RvY29sLmM6NTI2Cj4gICBwOXBkdV92cmVhZGYgbmV0LzlwL3By
b3RvY29sLmM6MTk4IFtpbmxpbmVdCj4gICBwOXBkdV9yZWFkZisweDIwODAvMHg0ZmMwIG5ldC85
cC9wcm90b2NvbC5jOjUyNgo+ICAgcDlfY2xpZW50X3N0YXQrMHgyYjMvMHg3MTAgbmV0LzlwL2Ns
aWVudC5jOjE3MjQKPiAgIHY5ZnNfbW91bnQrMHhjMTQvMHgxMmMwIGZzLzlwL3Zmc19zdXBlci5j
OjE3MAo+ICAgbGVnYWN5X2dldF90cmVlKzB4MTYzLzB4MmUwIGZzL2ZzX2NvbnRleHQuYzo2MTAK
PiAgIHZmc19nZXRfdHJlZSsweGQ4LzB4NWQwIGZzL3N1cGVyLmM6MTQ5OAo+ICAgZG9fbmV3X21v
dW50KzB4N2JjLzB4MTY4MCBmcy9uYW1lc3BhY2UuYzoyOTg4Cj4gICBwYXRoX21vdW50KzB4MTA2
Zi8weDI5NjAgZnMvbmFtZXNwYWNlLmM6MzMxOAo+ICAgZG9fbW91bnQgZnMvbmFtZXNwYWNlLmM6
MzMzMSBbaW5saW5lXQo+ICAgX19kb19zeXNfbW91bnQgZnMvbmFtZXNwYWNlLmM6MzUzOSBbaW5s
aW5lXQo+ICAgX19zZV9zeXNfbW91bnQrMHg4ZWIvMHhhMTAgZnMvbmFtZXNwYWNlLmM6MzUxNgo+
ICAgX19pYTMyX3N5c19tb3VudCsweDE1Ny8weDFiMCBmcy9uYW1lc3BhY2UuYzozNTE2Cj4gICBk
b19zeXNjYWxsXzMyX2lycXNfb24gYXJjaC94ODYvZW50cnkvY29tbW9uLmM6MTE0IFtpbmxpbmVd
Cj4gICBfX2RvX2Zhc3Rfc3lzY2FsbF8zMisweDk2LzB4ZjAgYXJjaC94ODYvZW50cnkvY29tbW9u
LmM6MTgwCj4gICBkb19mYXN0X3N5c2NhbGxfMzIrMHgzNC8weDcwIGFyY2gveDg2L2VudHJ5L2Nv
bW1vbi5jOjIwNQo+ICAgZG9fU1lTRU5URVJfMzIrMHgxYi8weDIwIGFyY2gveDg2L2VudHJ5L2Nv
bW1vbi5jOjI0OAo+ICAgZW50cnlfU1lTRU5URVJfY29tcGF0X2FmdGVyX2h3ZnJhbWUrMHg0ZC8w
eDVjCj4gCj4gTG9jYWwgdmFyaWFibGUgLS0tLWVjb2RlQHA5X2NoZWNrX2Vycm9ycyBjcmVhdGVk
IGF0Ogo+ICAgcDlfY2hlY2tfZXJyb3JzKzB4NjgvMHhiOTAgbmV0LzlwL2NsaWVudC5jOjUwNgo+
ICAgcDlfY2xpZW50X3JwYysweGQ5MC8weDE0MTAgbmV0LzlwL2NsaWVudC5jOjgwMQoKCkxvb2tz
IGxpa2UgZm9sbG93aW5nIGNvZGUgY291bGQgYmUgYeKAgmN1bHByaXQKCnA5X2NoZWNrX2Vycm9y
cygpIHsKCWVyciA9IHA5cGR1X3JlYWRmKCZyZXEtPnJjLCBjLT5wcm90b192ZXJzaW9uLCAiZCIs
ICZlY29kZSk7CgllcnIgPSAtZWNvZGU7Cn0KCnA5cGR1X3JlYWRmKCkgY2FuIHJldHVybiBhbiBl
cnJvciBhbmQgaXQgbWVhbnMsIHRoYXQgZWNvZGUgd2Fzbid0IAppbml0aWFsaXplZC4KCkp1c3Qg
Zm9yIHRob3VnaHRzCgoKZGlmZiAtLWdpdCBhL25ldC85cC9jbGllbnQuYyBiL25ldC85cC9jbGll
bnQuYwppbmRleCAyMTNmMTJlZDc2Y2QuLjFmNjk3YWVmNGNhMSAxMDA2NDQKLS0tIGEvbmV0Lzlw
L2NsaWVudC5jCisrKyBiL25ldC85cC9jbGllbnQuYwpAQCAtNTQxLDYgKzU0MSw5IEBAIHN0YXRp
YyBpbnQgcDlfY2hlY2tfZXJyb3JzKHN0cnVjdCBwOV9jbGllbnQgKmMsIApzdHJ1Y3QgcDlfcmVx
X3QgKnJlcSkKICAJCWtmcmVlKGVuYW1lKTsKICAJfSBlbHNlIHsKICAJCWVyciA9IHA5cGR1X3Jl
YWRmKCZyZXEtPnJjLCBjLT5wcm90b192ZXJzaW9uLCAiZCIsICZlY29kZSk7CisJCWlmIChlcnIp
CisJCQlnb3RvIG91dF9lcnI7CisKCQllcnIgPSAtZWNvZGU7CgoJCXA5X2RlYnVnKFA5X0RFQlVH
XzlQLCAiPDw8IFJMRVJST1IgKCVkKVxuIiwgLWVjb2RlKTsKCgoKCldpdGggcmVnYXJkcywKUGF2
ZWwgU2tyaXBraW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L3Y5ZnMtZGV2ZWxvcGVyCg==
