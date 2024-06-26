Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E719179E2
	for <lists+v9fs-developer@lfdr.de>; Wed, 26 Jun 2024 09:39:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sMNFZ-0006wv-Ib;
	Wed, 26 Jun 2024 07:39:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <smbc-carde@jfjlwjttsqyz.com>) id 1sMNFX-0006wl-Lq
 for v9fs-developer@lists.sourceforge.net;
 Wed, 26 Jun 2024 07:39:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F6ix63YPAU/kGRSQI3fw9PgAAci+IlNTwg/eGlZdC+8=; b=Kcj8TnHVfEOnyjcf5aIBJ7S71A
 P1Bacu+qNiLLQ7QqJTWTWehu3TT66rAFN+qKnrvYwnM5okyFo1hIDZ9n6lY+NyMbDrtKXv8ImA3wo
 PH9iayR72S35+4LqWOwK+4c9kPx5nPPTC6Ee/MawIITfmqvPpimIsPQkWf9J64NJBUCc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=F6ix63YPAU/kGRSQI3fw9PgAAci+IlNTwg/eGlZdC+8=; b=m
 rmI0nKeiGtQSdsSV43u2cxr5ibGiCchg2TQ5yBjXzlaVQQWekaqyXTDGZmTioximFmjFCSkDuTz71
 SseobqrN1kaQmhyqVxkuX4Ww2kWAzTfxO2ttYjAz5x8Pqg2lFGeGRFIaiOfXA8FdwYCpiaBVQoCV6
 7+KmpOnfN7GgVW4E=;
Received: from mail1.jfjlwjttsqyz.com ([192.227.216.251])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sMNFX-0006Ie-UA for v9fs-developer@lists.sourceforge.net;
 Wed, 26 Jun 2024 07:39:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default;
 d=jfjlwjttsqyz.com; 
 h=Date:From:To:Subject:Mime-Version:Message-ID:Content-Type;
 i=smbc-carde@jfjlwjttsqyz.com;
 bh=F6ix63YPAU/kGRSQI3fw9PgAAci+IlNTwg/eGlZdC+8=;
 b=tDhk8eqNT4lEo98aokRZDeAiKbHdgrt9/HA40YkJGFuPdHA4uEVNZC4AZoUJC6IgTP4IN9K9PoWk
 N8qS1feEbnR4nW/iPIItNgqainSfxBb35jGXOkpfc8qqXxeTvNp2nLVuVzN9oKsZELAKDJGNAbyE
 23Rmm8GhaEJJuoAH2sQ=
Date: Wed, 26 Jun 2024 16:39:01 +0900
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Has-Attach: no
Mime-Version: 1.0
Message-ID: <202406261639157317476@jfjlwjttsqyz.com>
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  平素より三井住友カードをご利用いただきありがとうございます。
    こちらは三井住友カードのカスタマーサポートセンターです。これまでのご支持と信頼に感謝申し上げます。
    残念ながら、最近のシステムチェック� [...] 
 
 Content analysis details:   (2.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: jfjlwjttsqyz.com]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: fqhnifnoexvnq.com]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: fqhnifnoexvnq.com]
  0.5 FROM_DOMAIN_NOVOWEL    From: domain has series of non-vowel letters
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [192.227.216.251 listed in list.dnswl.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                           [192.227.216.251 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [192.227.216.251 listed in sa-accredit.habeas.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1sMNFX-0006Ie-UA
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5LiJ5LqV5L2P5Y+L44Kr44O844OJ44Gu55Ww?=
 =?utf-8?b?5bi46YCa55+l?=
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
From: =?UTF-8?B?5LiJ5LqV5L2P5Y+L44Kr44O844OJ?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?UTF-8?B?5LiJ5LqV5L2P5Y+L44Kr44O844OJ?=
 <smbc-carde@jfjlwjttsqyz.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQrlubPntKDjgojjgorkuInkupXkvY/lj4vjgqvjg7zjg4njgpLjgZTliKnnlKjjgYTjgZ/jgaDj
gY3jgYLjgorjgYzjgajjgYbjgZTjgZbjgYTjgb7jgZnjgIINCg0K44GT44Gh44KJ44Gv5LiJ5LqV
5L2P5Y+L44Kr44O844OJ44Gu44Kr44K544K/44Oe44O844K144Od44O844OI44K744Oz44K/44O8
44Gn44GZ44CC44GT44KM44G+44Gn44Gu44GU5pSv5oyB44Go5L+h6aC844Gr5oSf6Kyd55Sz44GX
5LiK44GS44G+44GZ44CCDQrmrovlv7XjgarjgYzjgonjgIHmnIDov5Hjga7jgrfjgrnjg4bjg6Dj
g4Hjgqfjg4Pjgq/jgafjgYrlrqLmp5jjga7jgqvjg7zjg4nlj6PluqfjgavjgYTjgY/jgaTjgYvj
ga7nlbDluLjjgYzopovjgaTjgYvjgorjgb7jgZfjgZ/jgILjgYrlrqLmp5jjga7os4fph5Hjga7l
ronlhajjgpLnorrkv53jgZnjgovjgZ/jgoHjgIHjgZPjga7llY/poYzjgpLop6PmsbrjgZnjgovj
gZ/jgoHjga7jg6Hjg7zjg6vjgpLpgIHkv6Hoh7TjgZfjgb7jgZfjgZ/jgIINCg0K5pel5pys5ZCE
5Zyw44Gn6LW344GT44KL54G95a6z44Gu6KKr54G96ICF44KS5Yqx44G+44GX57aa44GR44Gm44GE
44KL5bm06LOA54q244GM44GC44KK44G+44GZ44CCDQoNCuWVj+mhjOOBruips+e0sO+8mg0K55+t
5pyf6ZaT44Gn5aSa44GP44Gu5bCP6aGN5Y+W5byV44GM55m655Sf44GX44Gm44GE44KL44GT44Go
44CCIOWPo+W6p+OBruizh+mHkeOBjOmgu+e5geOBq+WkieWLleOBl+OAgemHkemhjeOBruWkieWL
leOBjOWkp+OBjeOBhOOBk+OBqOOAgiDlj6Pluqfjgbjjga7jg63jgrDjgqTjg7PloLTmiYDjgYzn
lbDluLjjgafjgIHpgJrluLjjga7jg63jgrDjgqTjg7PloLTmiYDjgajlpKfjgY3jgY/nlbDjgarj
govjgZPjgajjgIINCuino+axuuetlu+8mg0K44GK5a6i5qeY44Gr44Gv44CB5LuK44GZ44GQ5LiJ
5LqV5L2P5Y+L6YqA6KGM44Gr44Ot44Kw44Kk44Oz44GX44Gm44GE44Gf44Gg44GP44KI44GG44GK
6aGY44GE44GE44Gf44GX44G+44GZ44CCDQoNCkIzICBTTUJDIENBUkTjgqrjg7Pjg6njgqTjg7Pm
nKzkurroqo3oqLzjgrXjg7zjg5PjgrkgIA0KDQrjgqTjg7Pjgr/jg7zjg43jg4Pjg4jjg5Djg7Pj
gq3jg7PjgrDjgoTjg6Ljg5DjgqTjg6vjg5Djg7Pjgq3jg7PjgrDjga7jg5Hjgrnjg6/jg7zjg4nj
gpLlrprmnJ/nmoTjgavlpInmm7TjgZfjgabjgIHjgqLjgqvjgqbjg7Pjg4jjga7lronlhajmgKfj
gpLlkJHkuIrjgZXjgZvjgovjgZPjgajjgpLjgYrli6fjgoHjgZfjgb7jgZnjgIINCkVUQ+WIqeeU
qOeFp+S8muOCteODvOODk+OCueOBp+OBr+OAgeODpuODvOOCtuODvOeZu+mMsuOBhOOBn+OBoOOB
j+OBk+OBqOOBp+OAgUVUQ+OCq+ODvOODieOCkueUqOOBhOOBn+mAmuihjOOBq+mWouOBmeOCi+aD
heWgseOCkuaPkOS+m+OBl+OBvuOBmeOAgg0KDQrigLvmnKzjg6Hjg7zjg6vjga/ph43opoHjgarj
gYrnn6XjgonjgZvjga7jgZ/jgoHjgIHjg6Hjg7zjg6vphY3kv6HjgpLjgIzlkKbjgI3jgavjgZXj
gozjgabjgYTjgovmlrnjgavjgoLpgIHkv6HjgZfjgabjgYrjgorjgb7jgZnjgIINCuKUgeKUgeKU
geKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgQ0K
55m66KGM6ICFDQoNCuS4ieS6leS9j+WPi+OCq+ODvOODieagquW8j+S8muekvg0KDQrjgJIxMzUt
MDA2MSDmnbHkuqzpg73msZ/mnbHljLrosYrmtLIy5LiB55uuMueVqjMx5Y+3IFNNQkPosYrmtLLj
g5Pjg6sNCuKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKU
geKUgeKUgeKUgeKUgQ0KQ29weXJpZ2h0IChDKSBTdW1pdG9tbyBNaXRzdWkgQ2FyZCBDby4sIEx0
ZC4NCg0K44Gd44Gu5aSa44GP44Gv6Zai56+A44Gu5aSJ5b2i44Gr5Ly044GE44CBDQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIg
bWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
