Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E20264B3121
	for <lists+v9fs-developer@lfdr.de>; Sat, 12 Feb 2022 00:04:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nIexS-0000Ck-Nz; Fri, 11 Feb 2022 23:04:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <support-amazon.jp@ncecxtk.cn>) id 1nIexR-0000Cd-Qp
 for v9fs-developer@lists.sourceforge.net; Fri, 11 Feb 2022 23:04:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3RA3bynzkaZlE9/3keMgUmS2p8bkIMODHBPbilp7M3M=; b=HtW/nP9rSMR81PYXccotQ29bH3
 0wO7ML/1YYj9uK3eS/m77PVeS7mXFzGJzeaW7fAx5pjfZp7vAViA4Y+6IvO3LiFQmuPOg3y9CMlwi
 2S+kVCdh5Fy+kYaLVFGNADkx9RpEkFI+39exbYn2huft5kP+Uj9VrtYKT6iSJtK8fWMY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3RA3bynzkaZlE9/3keMgUmS2p8bkIMODHBPbilp7M3M=; b=i
 GJcQvmgKMejS5S7LLluFjErjm60inZF9KDlk3N8HlkGkymYG+J4tjURX7qc53QJWm6P59j0S+/u4O
 BR3dtHhpsaTAXtMlRPZzhPQ3qwKlFzXxl9VO7tyvdhkk6TleWk1KO38+WxPttCYr2ptJ+uowBLb91
 SlWYDj1lPYdI/7CA=;
Received: from [139.198.9.119] (helo=mail.ncecxtk.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nIexH-0002zD-6j
 for v9fs-developer@lists.sourceforge.net; Fri, 11 Feb 2022 23:04:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=ncecxtk.cn; 
 h=Date:From:To:Subject:Message-ID:Mime-Version:Content-Type;
 i=support-amazon.jp@ncecxtk.cn;
 bh=3RA3bynzkaZlE9/3keMgUmS2p8bkIMODHBPbilp7M3M=;
 b=bQN9ODeMMNn9bOLjKcEHdUjES/g9vfjH09sUjI6gruMmr/lrp9WjdID7J17mmpzUcztW8sf8VUEo
 Au2xEa/mAjYCdDwg7xJIO+XGTTZ9Ca4484k5Nr/hkZHTalRC9Z90LXziaJ+OUvH0S9roYGLu5WKw
 umkoMIbE9cZqJVw7fmc=
Date: Sat, 12 Feb 2022 08:02:42 +0900
From: "Amazon" <support-amazon.jp@ncecxtk.cn>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20220212080247335125@ncecxtk.cn>
Mime-Version: 1.0
X-Spam-Score: 6.9 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Amazon お客様 平素は、Amazonをご利用いただき、誠にありがとうございます。
    あなたのアカウントは使用不可になりました。 あなたは複数回間違いの�
    [...] 
 
 Content analysis details:   (6.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: ax1x.com]
  0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [139.198.9.119 listed in dnsbl-1.uceprotect.net]
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [139.198.9.119 listed in zen.spamhaus.org]
  0.1 URIBL_CSS_A            Contains URL's A record listed in the Spamhaus CSS
                             blocklist
                             [URIs: ncecxtk.cn]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1nIexH-0002zD-6j
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQQW1hem9u44CR44Ki44Kr44Km44Oz44OI?=
	=?utf-8?b?44Gu5Yip55So54q25rOB44KS44GU56K66KqN44GP44Gg44GV44GE44CC?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoNCg0KDQpBbWF6b24g44GK5a6i5qeYDQrlubPntKDjga/jgIFBbWF6b27jgpLjgZTliKnnlKjj
gYTjgZ/jgaDjgY3jgIHoqqDjgavjgYLjgorjgYzjgajjgYbjgZTjgZbjgYTjgb7jgZnjgIINCuOB
guOBquOBn+OBruOCouOCq+OCpuODs+ODiOOBr+S9v+eUqOS4jeWPr+OBq+OBquOCiuOBvuOBl+OB
n+OAgg0K44GC44Gq44Gf44Gv6KSH5pWw5Zue6ZaT6YGV44GE44Gu44OR44K544Ov44O844OJ44KS
5YWl5Yqb44GX44Gf44Gu44Gn44CB5LuK44OR44K544Ov44O844OJ44Gv44GZ44Gn44Gr5L2/55So
5LiN5Y+v44Gr44Gq44KK44G+44GX44Gf44CC44K744Kt44Ol44Oq44OG44Kj44Gu44Gf44KB44CB
56eB44Gf44Gh44Gv44GC44Gq44Gf44Gu44Ki44Kr44Km44Oz44OI44KS5L2/55So5LiN5Y+v44Gr
44Gq44KL44CCDQrjgqLjgqvjgqbjg7Pjg4jjga7pgJrluLjjgpLkvb/nlKjjgZnjgovjgZ/jgoHj
gavjgIHkvb/nlKjkuI3lj6/jga7nirbmhYvjgpLlgZzmraLjgZfjgabjgIHlm57lvqnjgZnjgovj
gavjga/ku6XkuIvjgpLmk43kvZzjga/lv4XopoHjgafjgZnjgIINCuOBiuWuouanmOOBriBBbWF6
b24g44Ki44Kr44Km44Oz44OIDQpBbWF6b27jg4Hjg7zjg6Djga/jgYLjgarjgZ/jga7jgqLjgqvj
gqbjg7Pjg4jjga7nirbmhYvjgYznlbDluLjjgafjgYLjgovjgZPjgajjgpLnmbropovjgZfjgb7j
gZfjgZ/jgILjgqLjgqvjgqbjg7Pjg4jmiYDmnInmqKnjga7oqLzmmI7jgpLjgZToh6rouqvjgafo
oYzjgYbloLTlkIjjga/jgIFBbWF6b24g566h55CG44Kz44Oz44K944O844Or44Gr44Ot44Kw44Kk
44Oz44GX44CB5omA5a6a44Gu5omL6aCG44Gn44GK5omL57aa44GN44GP44Gg44GV44GE44CCDQrn
irbmhYs6IA0K55Ww5bi444Gv5pu05paw5b6F44Gh44Gn44GZDQrjgqLjgqvjgqbjg7Pjg4jjgpLn
orroqo3jgZnjgosNCg0KDQoNCuOBguOBquOBn+OBjDI05pmC6ZaT5Lul5YaF44Gr56K66KqN44Gn
44GN44Gq44GE5aC05ZCI44Gv55Sz44GX6Kiz44GC44KK44G+44Gb44KT44CC44GC44Gq44Gf44Gu
6LKh55Sj44Gu5a6J5YWo44Gu44Gf44KB44Gr44CB44GT44Gu44Ki44Kr44Km44Oz44OI44Gu5L2/
55So44KS5Yi26ZmQ44GX44G+44GZ44CCDQoNCg0KDQoNCkFtYXpvbuOBruOBvuOBn+OBruOBlOWI
qeeUqOOCkuOBiuW+heOBoeOBl+OBpuOBiuOCiuOBvuOBmeOAgg0KDQoNCg0KDQrCqSAxOTk2LTIw
MjIsIEFtYXpvbi4gSW5jLiBvciBpdHMgYWZmaWxpYXRlcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlm
cy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
