Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B06D904347
	for <lists+v9fs-developer@lfdr.de>; Tue, 11 Jun 2024 20:13:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sH609-0005KP-Bm;
	Tue, 11 Jun 2024 18:13:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <no-reply@sqyihe.com>) id 1sH608-0005KI-30
 for v9fs-developer@lists.sourceforge.net;
 Tue, 11 Jun 2024 18:13:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XP6b1GDrxQqI0Cp1KXNpXwmPl7eVnY/wzVyD9mLNPKM=; b=UYR1+dSXT62KLV0DBjl7e5ik3/
 hXuC9bcprSSvOVG69ZIEH9JlEh6y9mQbwvfhSR8LhsFXrIb1oOIzytBel52AIRczJN5YybilzNdIs
 o6D6aWMhrtOVDwJV6u/2X3nAb5cPr50iZC2fphznb0snL/YP4jcujiLfgyAuWberHzcw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XP6b1GDrxQqI0Cp1KXNpXwmPl7eVnY/wzVyD9mLNPKM=; b=m
 5/3eo5YMfegUo1mmxxgG+MOZ4X7N7fYXSE/tknuzbQCxlyx2YRhVW9vlWdgdzIgGLngNhiYyPftIj
 0bS9tZdYeZY8aUdtolvZ+GtlS2yXESgbNz+axmyrxCcpaNtMBqvVNni5ts/JXbWh003n4AwjWLA3Q
 YsYp6zyYKbIw+ZSo=;
Received: from [137.220.181.208] (helo=mail0.sqyihe.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sH606-0003g3-6l for v9fs-developer@lists.sourceforge.net;
 Tue, 11 Jun 2024 18:13:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=sqyihe.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@sqyihe.com;
 bh=XP6b1GDrxQqI0Cp1KXNpXwmPl7eVnY/wzVyD9mLNPKM=;
 b=latKMW7SDpzvFT92iB+7WDWzck3pyoSuWizkpKC5TP6ll2b59VEVidDcdJf/iZPBgNk+RRwK60lF
 sXbIJlHINC2c2V6bWbECMnKskJpEgGuR3qYXdCqdKzNuibaskTuoAOP+DGdy/Z4ytwgmUFTs1Ka/
 Am/x/qhVnPwb3bjn6YE=
From: SMBC  CARD <no-reply@sqyihe.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
Date: Wed, 12 Jun 2024 01:53:22 +0800
Message-ID: <EDNACPGIPLMCGMGLDINGEDBIHOII.no-reply@sqyihe.com>
MIME-Version: 1.0
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Spam-Score: 5.3 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  いつも三井住友カードをご利用頂きありがとうございます。
    お客様のカードご利用内容をお知らせいたします。 ご利用カード：三井住友カード
    ◇利用先：国内加盟店ショッピング(通販·ネットショッピングなどでのご利用)
    ◇利用日：2024/6/11 ◇利用金額：39,800� [...] 
 
 Content analysis details:   (5.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [137.220.181.208 listed in list.dnswl.org]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: mvhinspect.com]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: mvhinspect.com]
  5.0 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
             [Blocked - see <https://www.spamcop.net/bl.shtml?137.220.181.208>]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [137.220.181.208 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                           [137.220.181.208 listed in bl.score.senderscore.com]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: sqyihe.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.3 CTE_8BIT_MISMATCH      Header says 7bits but body disagrees
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1sH606-0003g3-6l
Subject: [V9fs-developer] =?utf-8?b?44CQ5LiJ5LqV5L2P5Y+L44Kr44O844OJ44CR?=
	=?utf-8?b?44GU5Yip55So44Gu44GK55+l44KJ44Gb?=
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

44GE44Gk44KC5LiJ5LqV5L2P5Y+L44Kr44O844OJ44KS44GU5Yip55So6aCC44GN44GC44KK44GM
44Go44GG44GU44GW44GE44G+44GZ44CCCuOBiuWuouanmOOBruOCq+ODvOODieOBlOWIqeeUqOWG
heWuueOCkuOBiuefpeOCieOBm+OBhOOBn+OBl+OBvuOBmeOAggoK44GU5Yip55So44Kr44O844OJ
77ya5LiJ5LqV5L2P5Y+L44Kr44O844OJCuKXh+WIqeeUqOWFiO+8muWbveWGheWKoOebn+W6l+OC
t+ODp+ODg+ODlOODs+OCsCjpgJrosqnCt+ODjeODg+ODiOOCt+ODp+ODg+ODlOODs+OCsOOBquOB
qeOBp+OBruOBlOWIqeeUqCkK4peH5Yip55So5pel77yaMjAyNC82LzExCuKXh+WIqeeUqOmHkemh
je+8mjM5LDgwMOWGhgoK4pa844Kr44O844OJ44KS5L2/55So44GX44Gf6Kaa44GI44GM44Gq44GE
5aC05ZCI44Gv44CB5Lul5LiL44Gu44Oq44Oz44Kv44KS44Kv44Oq44OD44Kv44GX44Gm44Kr44O8
44OJ5L2/55So44Gu6Kmz57Sw44KS56K66KqN44GX44Gm44GP44Gg44GV44GE44CCCmh0dHBzOi8v
bXZoaW5zcGVjdC5jb20KCu+8nOOBlOazqOaEj+eCue+8ngrigLvvvJHvvI7mnKzjgrXjg7zjg5Pj
grnjga/jgIHjgYrlrqLmp5jjga7kuInkupXkvY/lj4vjgqvjg7zjg4njga7jgZTliKnnlKjnhafk
vJrjgYzooYzjgo/jgozjgZ/loLTlkIjjgIHkuInkupXkvY/lj4vjgqvjg7zjg4njgavjgZTnmbvp
jLLjgYTjgZ/jgaDjgYTjgabjgYTjgovjg6Hjg7zjg6vjgqLjg4njg6zjgrnjgbjjgYrnn6Xjgonj
gZvjgZnjgovjgrXjg7zjg5PjgrnjgafjgZnjgIIK4oC777yS77yO44GT44Gu44Oh44O844Or44Ki
44OJ44Os44K544Gv6YCB5L+h5bCC55So44Gn44GZ44CC44GU6L+U5L+h44Gr5Zue562U44Gn44GN
44G+44Gb44KT44CCCgrilqDnmbrooYzogIXilqAK5LiJ5LqV5L2P5Y+L44Kr44O844OJ5qCq5byP
5Lya56S+CuOAkjEzNS0wMDYxCuadseS6rOmDveaxn+adseWMuuixiua0sjLkuIHnm64y55WqMzHl
j7cgU01CQ+ixiua0suODk+ODqwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJA
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
