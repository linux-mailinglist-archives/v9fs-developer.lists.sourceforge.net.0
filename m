Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA5F660BF6
	for <lists+v9fs-developer@lfdr.de>; Sat,  7 Jan 2023 03:32:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pDz0Q-0004Eo-7X;
	Sat, 07 Jan 2023 02:32:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <alh@service.ajtl5u.cn>) id 1pDz0F-0004Eg-RJ
 for v9fs-developer@lists.sourceforge.net;
 Sat, 07 Jan 2023 02:32:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hJGk5deNZgBp5HH7sKhrqYM0Z1FtheslEV5maPY72dw=; b=dhVS5mV7pA7omlBaw56yMFWj5Q
 rgClGtOkBW/+mhyYKXJ/idpEIuWGttypAGi6wPkL8gOCYf5Io0nsVvRrzZ+JxtGoBlYk75qS0Aan/
 Boxf1ar7x+wFGR3UaMWGXSKpx7EIbzHgvcb38Ljy/ZWekQQyI17U/3+nb4O6OBEFGnF4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hJGk5deNZgBp5HH7sKhrqYM0Z1FtheslEV5maPY72dw=; b=D
 IO2LJVccIpUNC9hvGNdH+ObLBedKzc1rKpMCRS0gSC5aAzDAbYAtx0DDD1cYNQGrEEhVOIjONjuWR
 l3jn4+es0/0b/I7jVsChpUvhn/662HHi2qQynbxxbBncmzdPYKVJDRmzXxcM6UZHVisjX2B7aTRFY
 I6o2EhA5jNemn4PE=;
Received: from [185.22.154.215] (helo=service.ajtl5u.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1pDz0F-0082aS-5j for v9fs-developer@lists.sourceforge.net;
 Sat, 07 Jan 2023 02:32:11 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mykey;
 d=service.ajtl5u.cn; 
 h=Date:From:To:Subject:Message-ID:Mime-Version:Content-Type;
 bh=69XhUfQ9Fo36yAJXdPT+nVY1GAk=;
 b=I/LCKWxES1I5fanHPf+NvCfaLJh/LkLFZ4+gKzjS/XYju06NI8AOLvlZ/7Rf+Hjzb9vRKjjGxJv/
 PJuaJ27Rv+U7T2qgtyHiym8olEcxwMWtNOYZ7Lyg+FGCaJWQNUpb2HvtywaxuGoChIzWLzxB0Ws+
 JKUiSjjOeaoTjv4EKTI=
Received: from yahoo2.com.cn (144.202.18.157) by service.ajtl5u.cn id
 hn3cqm0001gk for <v9fs-developer@lists.sourceforge.net>;
 Sat, 7 Jan 2023 05:10:46 +0300 (envelope-from <alh@service.ajtl5u.cn>)
Date: Sat, 7 Jan 2023 10:10:33 +0800
From: =?utf-8?B?44GI44GN44Gt44Gj44Go?= <alh@service.ajtl5u.cn>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20230107101044248576@service.ajtl5u.cn>
X-mailer: Foxmail 6, 13, 102, 15 [cn]
Mime-Version: 1.0
X-Spam-Score: 6.6 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ●日頃より「えきねっと」をご利用いただきありがとうございます。
    ●当社は2023/1/7にシステムを更新する予定です。 ●アカウントに長期間ログイ�
    [...] 
 
 Content analysis details:   (6.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: eki-net.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  2.7 FSL_BULK_SIG           Bulk signature with no Unsubscribe
  0.8 UPPERCASE_50_75        message body is 50-75% uppercase
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1pDz0F-0082aS-5j
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CM44GI44GN44Gt44Gj44Go44CN44Ki44Kr?=
	=?utf-8?b?44Km44Oz44OI44Gu6Ieq5YuV6YCA5Lya5Yem55CG44Gr44Gk44GE44Gm?=
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

DQoNCg0KDQril4/ml6XpoIPjgojjgorjgIzjgYjjgY3jga3jgaPjgajjgI3jgpLjgZTliKnnlKjj
gYTjgZ/jgaDjgY3jgYLjgorjgYzjgajjgYbjgZTjgZbjgYTjgb7jgZnjgIINCuKXj+W9k+ekvuOB
rzIwMjMvMS8344Gr44K344K544OG44Og44KS5pu05paw44GZ44KL5LqI5a6a44Gn44GZ44CCDQri
l4/jgqLjgqvjgqbjg7Pjg4jjgavplbfmnJ/plpPjg63jgrDjgqTjg7PjgZfjgabjgYTjgarjgYTj
gZ/jgoHjgIENCuKXjzI05pmC6ZaT5Lul5YaF44Gr44Ki44Kr44Km44Oz44OI44Gr44Ot44Kw44Kk
44Oz44GX44Gm6Zai6YCj5oOF5aCx44KS5pu05paw44GX44Gm44GP44Gg44GV44GE44CCDQril4/j
gqLjgqvjgqbjg7Pjg4jmg4XloLHjgpLmm7TmlrDjgZfjgarjgYTloLTlkIjjga/jgIHjgqLjgqvj
gqbjg7Pjg4jjgpLliYrpmaTjgZXjgZvjgabjgYTjgZ/jgaDjgY3jgb7jgZnjgIINCuKXj+OBlOWN
lOWKm+OBguOCiuOBjOOBqOOBhuOBlOOBluOBhOOBvuOBmeOAgg0KICAg44Ot44Kw44Kk44Oz44Gv
44GT44Gh44KJIA0K4peP5pys44Oh44O844Or44Gv6YCB5L+h5bCC55So44Oh44O844Or44Ki44OJ
44Os44K544GL44KJ6YCB5L+h44GV44KM44G+44GZ44CC6L+U5L+h44KS44GE44Gf44Gg44GE44Gm
44KC6L+U5LqL44GM44Gn44GN44G+44Gb44KT44Gu44Gn44CB44GU5LqG5om/44GP44Gg44GV44GE
44CCICAgDQrjgJDnmbrooYzjgJHjgIzjgYjjgY3jga3jgaPjgajjgI3jgIINCuadseS6rOmDvead
ieS4puWMuuiNu+eqqjTkuIHnm64455WqNeWPtw0KQ29weXJpZ2h0ICBKUiBFYXN0IE5ldCBTdGF0
aW9uIENvLixMdGQuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuDQoNCg0KW1JBTkRfSkFURVhUXzIwXzIw
XVtSQU5EX0pBVEVYVF8yMF8yMF0NCltSQU5EX0pBVEVYVF8yMF8yMF1bUkFORF9KQVRFWFRfMjBf
MjBdDQpbUkFORF9KQVRFWFRfMjBfMjBdW1JBTkRfSkFURVhUXzIwXzIwXQ0KW1JBTkRfSkFURVhU
XzIwXzIwXVtSQU5EX0pBVEVYVF8yMF8yMF0NCltSQU5EX0pBVEVYVF8yMF8yMF1bUkFORF9KQVRF
WFRfMjBfMjBdDQpbUkFORF9KQVRFWFRfMjBfMjBdW1JBTkRfSkFURVhUXzIwXzIwXQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBt
YWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
