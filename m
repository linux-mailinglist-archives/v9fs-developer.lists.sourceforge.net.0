Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF65A9FF0F
	for <lists+v9fs-developer@lfdr.de>; Tue, 29 Apr 2025 03:30:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:To:From:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cUVUMXskMJ05r+7FS9uC7Zvj63dE3+7SMuPcdsHEa7I=; b=JzcMzK2nILZIlMbWuctTW9Qnrq
	B0fuVlJUkVDeWuO2xu0DDGh+0UjX9QziA9cmCS7MviYVqFkgS4kuoe8htsWkZuLXHdyvPL4EEe0no
	yJRaobRPAOunvVhQfI/DgqrMj1wBiwbJoowTvwtEU3RE+rt2KkayCUWdPCUmAHY9I20w=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1u9ZoE-0003yI-UG;
	Tue, 29 Apr 2025 01:30:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <amazon-update@gqxhgxjtyg.cn>) id 1u9ZoD-0003y9-Ob
 for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Apr 2025 01:30:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Subject:Date:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KhcTz8wDjHGwPfNNNi15AzpNl9eRTc6T/0HY6qfCnY0=; b=WI+h23pLN9BGAEtyJAm5L14w2y
 aqYpRtTVitonYBWhaQALabuJkF5dDSm3/ICTii5rcPDq+wod7Dvhe+1eWp+WjDjjCPYNXawR4L778
 GemehLGCS4Nl4U2kwalHwsUA3AQqAO41Wz7yz2XaQGxwJe09vJvt0R8LaCAmEksW6sko=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Subject:Date:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KhcTz8wDjHGwPfNNNi15AzpNl9eRTc6T/0HY6qfCnY0=; b=A
 zys2QeJfLsMed6DXX7LzGM+AZUTvgdBToSGZ+gUEaGry4VwQ7JjvCorRg9tA4iqRZUy0GL/l63yJM
 u/KIqepkCTy7WmEoei8PfGVi4F/AJYSznt6iIKRgavKQW7WZyJ/ggULe27k0nTMXxIPPXfUr4h+iJ
 VJgWmdHA8Cv/JU/o=;
Received: from [172.245.211.208] (helo=mail1.gqxhgxjtyg.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u9Znx-0001cJ-KC for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Apr 2025 01:30:53 +0000
Message-ID: <202504291010190667876@gqxhgxjtyg.cn>
From: Amazon.co.jp <v9fs-developer@lists.sourceforge.net>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Tue, 29 Apr 2025 10:10:19 +0900
MIME-Version: 1.0
X-Spam-Score: 7.9 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Amazonプライム会員資格更新のご案内 Amazonプライムをご利用いただき、誠にありがとうございます。
    お客様のAmazonプライム会員資格は、2025年4月30日� [...] 
 
 Content analysis details:   (7.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [172.245.211.208 listed in zen.spamhaus.org]
  0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: emwsency.sbs]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [172.245.211.208 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                           [172.245.211.208 listed in bl.score.senderscore.com]
  1.1 DKIM_ADSP_ALL          No valid author signature, domain signs all mail
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  0.0 TO_EQ_FM_DIRECT_MX     To == From and direct-to-MX
X-Headers-End: 1u9Znx-0001cJ-KC
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQ6YeN6KaB44Gq44GK55+l44KJ44Gb44CR?=
	=?utf-8?b?QW1hem9u44OX44Op44Kk44Og5Lya5ZOh6LOH5qC85pu05paw44Gu44GU?=
	=?utf-8?b?5qGI5YaF?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

QW1hem9u44OX44Op44Kk44Og5Lya5ZOh6LOH5qC85pu05paw44Gu44GU5qGI5YaFDQpBbWF6b27j
g5fjg6njgqTjg6DjgpLjgZTliKnnlKjjgYTjgZ/jgaDjgY3jgIHoqqDjgavjgYLjgorjgYzjgajj
gYbjgZTjgZbjgYTjgb7jgZnjgIINCuOBiuWuouanmOOBrkFtYXpvbuODl+ODqeOCpOODoOS8muWT
oeizh+agvOOBr+OAgTIwMjXlubQ05pyIMzDml6Xjgavmm7TmlrDjgpLov47jgYjjgb7jgZnjgILj
gqLjgqvjgqbjg7Pjg4jjgpLntq3mjIHjgZnjgovjgZ/jgoHjgIHjgYrlrqLmp5jjga5BbWF6b27j
gqLjgqvjgqbjg7Pjg4jmg4XloLHjgpLjgZTnorroqo3jgYTjgZ/jgaDjgY/lv4XopoHjgYzjgZTj
gZbjgYTjgb7jgZnjgILku6XkuIvjga7jg6rjg7Pjgq/jgYvjgonjg63jgrDjgqTjg7PjgZfjgIHm
g4XloLHjgpLmm7TmlrDjgZfjgabjgY/jgaDjgZXjgYTjgIIgW0hJREUxXSAgICBbL0hJREUxXQ0K
QW1hem9u44Gr44Ot44Kw44Kk44OzIA0K44Gq44GK44CBNDjmmYLplpPku6XlhoXjgavjgZTnorro
qo3jgYTjgZ/jgaDjgZHjgarjgYTloLTlkIjjgIHjgYrlrqLmp5jjga7jgqLjgqvjgqbjg7Pjg4jj
ga7lronlhajmgKfjgpLnorrkv53jgZnjgovjgZ/jgoHjgIHliKnnlKjliLbpmZDjgpLjgZXjgZvj
gabjgYTjgZ/jgaDjgY/lj6/og73mgKfjgYzjgZTjgZbjgYTjgb7jgZnjgILjgYLjgonjgYvjgZjj
goHjgZTkuobmib/jgY/jgaDjgZXjgYTjgIIgIFtISURFMl0gICAgWy9ISURFMl0NCuOCouOCq+OC
puODs+ODiOOBq+eZu+mMsuOBleOCjOOBpuOBhOOCi+ODoeODvOODq+OCouODieODrOOCueOBq+OC
ouOCr+OCu+OCueOBp+OBjeOBquOBhOWgtOWQiOOBr+OAgUFtYXpvbuOCq+OCueOCv+ODnuODvOOC
teODvOODk+OCueOBvuOBp+OBiuWVj+OBhOWQiOOCj+OBm+OBj+OBoOOBleOBhOOAgg0K4oC7IOOB
k+OBruODoeODvOODq+OBr+mAmuefpeWwgueUqOOCouODieODrOOCueOBi+OCiemAgeS/oeOBleOC
jOOBpuOBiuOCiuOAgei/lOS/oeOCkuWPl+OBkeS7mOOBkeOBpuOBiuOCiuOBvuOBm+OCk+OAguOB
lOS6huaJv+OBj+OBoOOBleOBhOOAgg0K5LuK5b6M44Go44KCQW1hem9u44OX44Op44Kk44Og44KS
44KI44KN44GX44GP44GK6aGY44GE44GE44Gf44GX44G+44GZ44CCICBbSElERTNdICAgICAgWy9I
SURFM10NCsKpIDIwMjUgQW1hem9uLmNvbSwgSW5jLuOBvuOBn+OBr+OBneOBrumWoumAo+S8muek
vuOAguOBmeOBueOBpuOBruaoqeWIqeOBr0FtYXpvbi5jb20sIEluYy7jgb7jgZ/jga/jgZ3jga7p
lqLpgKPkvJrnpL7jgavluLDlsZ7jgZfjgb7jgZnjgIINCkFtYXpvbuOAgUFtYXpvbi5jby5qcOOA
gUFtYXpvbuODl+ODqeOCpOODoOOAgVByaW1l44CB44GK44KI44GzQW1hem9uLmNvLmpw44Gu44Ot
44K044Gv44CBQW1hem9uLmNvbSwgSW5jLuOBvuOBn+OBr+OBneOBrumWoumAo+S8muekvuOBruWV
huaomeOBp+OBmeOAgg0KQW1hem9uLmNvbSwgNDEwIFRlcnJ5IEF2ZW51ZSBOLiwgU2VhdHRsZSwg
V0EgOTgxMDktNTIxMApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L3Y5ZnMtZGV2ZWxvcGVyCg==
