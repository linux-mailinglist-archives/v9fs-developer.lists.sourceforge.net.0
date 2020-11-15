Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B19A42B38F1
	for <lists+v9fs-developer@lfdr.de>; Sun, 15 Nov 2020 21:00:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:To:Message-ID:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jPlhScs3HWT9vBgTJXYqnKSUwckCSCukBopT2tC6T7I=; b=HhQx39zHU+pWESOr9r9AgLk4xA
	f46Qy+flfvhIKt1YrrLl2gH2srqw9LOMmwmVjSWt68WlptJqII4RzbleIm5ZPJoUd8lKTxlNiOMbN
	qs67XhS36dQtdD705QvI95eydLRJynirfGEQltFfn7KyDX3vvAVhJu58/2UHurRTJabw=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1keOBx-0002rQ-1D; Sun, 15 Nov 2020 20:00:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <updateaccount@transmit.monster>) id 1keLqW-0000wG-Oj
 for v9fs-developer@lists.sourceforge.net; Sun, 15 Nov 2020 17:29:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7rE9r2T8Dr90VmDUPcBqtduRisDp+iVIqhwUi+tOG+Y=; b=EYsQ6brohGgX9yfD92yC9CRV4y
 Rqb8btZ05eUAZs5jFkBXM/GvGXcNQUe4oSmjEVmoTF7Pl0oM30LLn/H1LEBGB5msZ3h5TR4pqyWJt
 d58HXSHKN09DcU25mfynZTDegs+MirlQ4VsesxlEJauG3XRf0kPM4A86z8j7RW3HtCWQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7rE9r2T8Dr90VmDUPcBqtduRisDp+iVIqhwUi+tOG+Y=; b=B
 Dneta0dYTchvfmobD+QtGEXeeexTlzmFrq5EemUJ6gDv/lEBRRt70u+iEYMiNpt+FrXseOcoUxL9A
 uFMTN7/+Dj9kqx4Xk8bAnQJO5vfCHrXxa3KsQ2yWyTrtlGfCq4JK/8XOj5xmxDSrrAu9qpxvB9Yo6
 5/YFuDyG6DfdI8Zg=;
Received: from [170.106.76.103] (helo=nyaaIoEv9H2)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1keLqG-004lh4-Ru
 for v9fs-developer@lists.sourceforge.net; Sun, 15 Nov 2020 17:29:48 +0000
Received: from uivfkg (unknown [222.247.190.89])
 by nyaaIoEv9H2 (Postfix) with ESMTPA id B609B20E5B
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 15 Nov 2020 23:41:00 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 nyaaIoEv9H2 B609B20E5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=transmit.monster;
 s=default; t=1605454862;
 bh=7rE9r2T8Dr90VmDUPcBqtduRisDp+iVIqhwUi+tOG+Y=;
 h=From:To:Subject:Date:From;
 b=z9eXV48Hoj1+kbrmDQ5vQJH4bAIbUrQgACwjpM7lDE9JsA+xAuaXSAuiQnsyryFcp
 ytpk2V4b4jJnTh8VkpjevtYNI6agaZRw0+AQvQxwBu+IVbKAcbV2LH6RezzBFz4ZBn
 plF5zUcCsGAxb4hgR4Uo6ksEZz3kXudhGtcV//98=
Message-ID: <0818B770BB426676E70EB26FD776E5E0@uivfkg>
To: <v9fs-developer@lists.sourceforge.net>
Date: Sun, 15 Nov 2020 23:40:48 +0800
MIME-Version: 1.0
X-Priority: 1
X-MSMail-Priority: High
X-Mailer: Microsoft Outlook Express 6.00.2900.5512
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.5512
X-Helo-Check: bad, Not FQDN (nyaaIoEv9H2)
X-Spam-Score: 2.7 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FSL_HELO_NON_FQDN_1    No description available.
 0.5 VA_HELO_CHECK          Host Used Invalid or Forged HELO/EHLO
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: postimg.cc]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
 background
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 HELO_NO_DOMAIN         Relay reports its domain incorrectly
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 0.0 T_REMOTE_IMAGE         Message contains an external image
 0.0 NORDNS_LOW_CONTRAST    No rDNS + hidden text
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1keLqG-004lh4-Ru
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?QW1hem9uLmNvLmpwIOmHjeimgeOBquOBig==?=
	=?utf-8?b?55+l44KJ44Gb77ya44GK5pSv5omV44GE5pa55rOV44Gu5oOF5aCx44KS?=
	=?utf-8?b?5pu05paw44GX44Gm44GP44Gg44GV44GE?=
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
From: =?utf-8?B?QW1hem9u44GL44KJ44GuIOOBiuefpeOCieOBmw==?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?utf-8?B?QW1hem9u44GL44KJ44GuIOOBiuefpeOCieOBmw==?=
 <updateaccount@transmit.monster>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoNCg0KDQoNCg0KDQoNCg0KDQpBbWF6b24uY28uanANCuOCq+ODvOODieOBruWIqeeUqOaJv+iq
jeOBjOW+l+OCieOCjOOBvuOBm+OCk+OBp+OBl+OBnw0K55Wq5Y+377yaODYxLTM3MTg4OTYtNzcw
ODY1Ng0Kdjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV05qeYDQpBbWF6b27jg5fj
g6njgqTjg6DjgqTjg6Djga7nhKHmlpnkvZPpqJPjgavjgZTnmbvpjLLjgYTjgZ/jgaDjgY3jgb7j
gZfjgaboqqDjgavjgYLjgorjgYzjgajjgYbjgZTjgZbjgYTjgb7jgZnjgILnhKHmlpnkvZPpqJPn
mbvpjLLjga7pmpvjgavmnInlirnjgarjgYrmlK/miZXjgYTmlrnms5Xjga7jgZTnmbvpjLLjgpLj
gYrpoZjjgYTjgZfjgabjgYrjgorjgb7jgZfjgZ/jgYzjgIHoqo3oqLzjgafjgqjjg6njg7zjgYzn
mbrnlJ/jgZfjgb7jgZfjgZ/jgILku6XkuIvjgavlvpPjgaPjgabjgYrmlK/miZXjgYTmlrnms5Xj
ga7lho3nmbvpjLLjgpLjgYrpoZjoh7TjgZfjgb7jgZnjgIINCjEuIOOBk+OBoeOCieOBi+OCieOB
iuWuouanmOOBruOCouOCq+OCpuODs+ODiOaDheWgseOCkuOBlOWFpeWKm+S4i+OBleOBhDog5pSv
5omV5pa55rOV44Gu5oOF5aCx44KS5pu05paw44GZ44KL44CCDQoyLiBBbWF6b27jg5fjg6njgqTj
g6DjgavnmbvpjLLjgZfjgZ9BbWF6b24uY28uanDjga7jgqLjgqvjgqbjg7Pjg4jjgpLkvb/nlKjj
gZfjgabjgrXjgqTjg7PjgqTjg7PjgZfjgb7jgZnjgIINCjMuIOW3puWBtOOBq+ihqOekuuOBleOC
jOOBpuOBhOOCi+OAjOePvuWcqOOBruaUr+aJleaWueazleOAjeOBruS4i+OBq+OBguOCi+OAjOaU
r+aJleaWueazleOCkuWkieabtOOBmeOCi+OAjeOBruODquODs+OCr+OCkuOCr+ODquODg+OCr+OB
l+OBvuOBmeOAgg0KNC4g5pyJ5Yq55pyf6ZmQ44Gu5pu05paw44G+44Gf44Gv5paw44GX44GE44Kv
44Os44K444OD44OI44Kr44O844OJ5oOF5aCx44KS5YWl5Yqb44GX44Gm44GP44Gg44GV44GE44CC
DQrkuIvoqJjjg5zjgr/jg7PjgpLjgq/jg6rjg4Pjgq/jgZnjgovjgajjgIHjgYrmlK/miZXjgYTm
lrnms5XjgpLlpInmm7TjgafjgY3jgb7jgZnjgIINCg0KDQoNCg0K5pSv5omV5pa55rOV44Gu5oOF
5aCx44KS5pu05paw44GZ44KLDQoNCg0KDQoNCjLml6Xku6XlhoXjgavjgYrmlK/miZXjgYTmlrnm
s5XjgYzlho3nmbvpjLLjgZXjgozjgarjgYTloLTlkIjjgIHjgYrlrqLmp5jjga7lronlhajjga7n
grrjgIHjgqLjgqvjgqbjg7Pjg4jjga4g5Yip55So5Yi26ZmQ44KS44GV44Gb44Gm44GE44Gf44Gg
IOOBjeOBvuOBmeOBruOBp+OAgg0K44G+44Gf44Gu44GU5Yip55So44KS44GK5b6F44Gh44GX44Gm
44GK44KK44G+44GZ44CCDQpBbWF6b24uY28uanANCg0KDQoNCg0KDQoNCkFtYXpvbi5jby5qcCDj
gafjga/jgIHjgqvjg7zjg4njga7mib/oqo3jgYzlvpfjgonjgozjgarjgYvjgaPjgZ/nkIbnlLHj
ga7oqbPntLDjgpLnorroqo3jgafjgY3jgb7jgZvjgpPjgILjgq/jg6zjgrjjg4Pjg4jjgqvjg7zj
g4nmg4XloLHjga7mm7TmlrDjgIHmlrDjgZfjgYTjgq/jg6zjgrjjg4Pjg4jjgqvjg7zjg4njga7o
v73liqDjgavjgaTjgYTjgabjga/miYvpoIbjgpLjgZTnorroqo3jgY/jgaDjgZXjgYTjgIINCuOB
k+OBrkXjg6Hjg7zjg6vjgqLjg4njg6zjgrnjga/phY3kv6HlsILnlKjjgafjgZnjgILjgZPjga7j
g6Hjg4Pjgrvjg7zjgrjjgavov5Tkv6HjgZfjgarjgYTjgojjgYbjgYrpoZjjgYTjgYTjgZ/jgZfj
gb7jgZnjgIINCg0KbWJtZWpsaTEzDQoNCg0KDQoNCg0KDQogCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApW
OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
