Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BC295AF68
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Aug 2024 09:39:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sh2PU-0002BB-AM;
	Thu, 22 Aug 2024 07:39:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <premonition@stncs.com>) id 1sh2PK-0002Af-UD
 for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Aug 2024 07:38:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UndyNqPM0tJ1WK8KRthoynUfIPVN4FZOXtXEhLhCwOI=; b=UVhK1UWKHwk54ZBKrICWnYWxWB
 i+w0/jaLOKIP4ARXV/LD39EKpQn4gdhShVvex2UH5XVw2H7QqxHgfmWw+XBzgBdLSE13NF1El8fO2
 gR3Mh6+0EavsUEy+M7akcu8nnRM3JIlXH8leMPeNznj3jj7iaV4YHQUgIg5NFEgqQmko=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=UndyNqPM0tJ1WK8KRthoynUfIPVN4FZOXtXEhLhCwOI=; b=g
 4UiI+uG5nX0SujJolVcMcTVN8e4eQMw/LwrAwqRhIYVaN8v7iVNTpgppBwG20JSsb1NjEF0DR8lbK
 HDzPKs+fArbJFRFKsAvqpFVzdrGCU8mWxSi1yQeA3vAqI49gA9bn+qCwJ3ohOBb1c2/inztApS6Nq
 GzEXsymuuDkg7U6A=;
Received: from mail.stncs.com ([157.7.114.112])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sh2PI-0001sh-KV for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Aug 2024 07:38:57 +0000
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.stncs.com C13FD10B2F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stncs.com;
 s=default; t=1724311838;
 bh=UndyNqPM0tJ1WK8KRthoynUfIPVN4FZOXtXEhLhCwOI=;
 h=From:To:Subject:Date:From;
 b=Jwp5Ulkr5E+SJo7X7k94tRxjRCUCXsrF7r567pzf3MVFnCOzjNgbdreombTrBFXRF
 CNcOaxUignKM3efOL9Rqj3mkGZQvumh+Wd1vSHI9sz4wHazOdqq+5nDDGydOTEsU0X
 8/8VNzZFbs9hEkbfpox1V5xcpYp3CeLz8Adz4DKw=
Received: from rhhiulm.fr (unknown [149.28.22.131])
 by mail.stncs.com (Postfix) with ESMTPA id C13FD10B2F4
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 22 Aug 2024 16:30:38 +0900 (JST)
Message-ID: <d3aec6ba39b300b141aba0d317393301@stncs.com>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Thu, 22 Aug 2024 16:30:38 +0900
X-Priority: 3
X-Mailer: Hnpefuqz Xfjvd 7.7
MIME-Version: 1.0
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ※重要なお知︉らせのため、メー⁤ルの配信を希望されて⁤いないお客⁤さまにも送付⁤してお⁤ります
    v9fs-developer さん メルカ⁤リをご⁡利用いただ⁤きありがとうございま⁡す。⁡
    
 
 Content analysis details:   (-0.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: qnetmobile.com]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: qnetmobile.com]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: qnetmobile.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [157.7.114.112 listed in list.dnswl.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [157.7.114.112 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [157.7.114.112 listed in sa-accredit.habeas.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
  2.5 XM_RANDOM              X-Mailer apparently random
X-Headers-End: 1sh2PI-0001sh-KV
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQ44Oh44Or44Kr44Oq44CR44GT44Gh44KJ?=
	=?utf-8?b?4oGk44Gv44CB44GK4oGh5a6i5qeY44Gr4oGk44Oh44Or77iJ44Kr44Oq?=
	=?utf-8?b?77iJ44Gu5Yip55So5Yi26ZmQ4oGk44KS44GK55+l44KJ44Gb44GZ44KL?=
	=?utf-8?b?77iJ44Oh44OD44K744O844K444Gn44GZ44CC?=
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
From: "no-reply@mercari via V9fs-developer"
 <v9fs-developer@lists.sourceforge.net>
Reply-To: "no-reply@mercari" <premonition@stncs.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

4oC76YeN6KaB44Gq44GK55+l77iJ44KJ44Gb44Gu44Gf44KB44CB44Oh44O84oGk44Or44Gu6YWN
5L+h44KS5biM5pyb44GV44KM44Gm4oGk44GE44Gq44GE44GK5a6i4oGk44GV44G+44Gr44KC6YCB
5LuY4oGk44GX44Gm44GK4oGk44KK44G+44GZDQoNCnY5ZnMtZGV2ZWxvcGVyIOOBleOCkw0KDQrj
g6Hjg6vjgqvigaTjg6rjgpLjgZTigaHliKnnlKjjgYTjgZ/jgaDigaTjgY3jgYLjgorjgYzjgajj
gYbjgZTjgZbjgYTjgb7igaHjgZnjgILigaENCg0K44Oh44Or44Kr44Oq44Gu4oGh44Ki44Kr44Km
44Oz44OI44Gv5LiN5q2j77iJ5Yip55So44Gu5Y+v4oGh6IO95oCn44GM44GC44KL77iJ44Gf44KB
44CB5Yip55So44KS5Yi26ZmQ44GX4oGh44Gm44GK44KK44G+44GZ44CCDQoNCuKWoOOBiuKBpOWV
j+OBhOWQiOOCj+OBm+OBj+OBoOOBleKBoeOBhOOAgg0KaHR0cHM6Ly9tZXJjYXJpLnFuZXRtb2Jp
bGUuY29tLz9tRDV2RzhMczI9QlhCZDY2eUpFYXJLQSZ0b2tlbj1XUUJPNjhuRDh0TnB6cQ0KDQri
gLvmnKzjg6Hjg7zjg6vjgqLigaHjg4njg6zjgrnjga/pgIHkv6HlsILnlKjjga7igaHjgZ/jgoHj
gIHjgZTov5TvuInkv6HjgYTjgZ/jgaDjgY3jgb7igaHjgZfjgabjgoLjgYrnrZTjgYjjgafjgY3j
gb7jgZvvuInjgpPjgIINCg0K44O844O844O844O844O844O844O844O844O844O8DQrmoKrlvI/k
vJrnpL7vuInjg6Hjg6vjgqvjg6oNCuODvOODvOODvOODvOODvOODvOODvOODvOODvOODvA0KaHR0
cHM6Ly9tZXJjYXJpLnFuZXRtb2JpbGUuY29tLz9tRDV2RzhMczI9WFQ2cjZvCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
