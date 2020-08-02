Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA320235846
	for <lists+v9fs-developer@lfdr.de>; Sun,  2 Aug 2020 18:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:To:Message-ID:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EV6sOvt4L+qcEA9PmVckdoaMjGJyEQmYm/KdufQc0gQ=; b=hwvUc7/BE3BjOyPBns6R3uf3Va
	8QyFcqnhKvyMICMuUS5FvY68kRvmBS4lCTvIKqwUqPeJRneh0jOHgczmWAJcI1CWusV+sGSj6fYIq
	BPpgX/pwNQ8CUZGhE9cNq15gU77xUedL28CcHoOXEPtQ6rX2QwD5gqL3LFsXuzW6EH8E=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k2GUI-0004cS-0j; Sun, 02 Aug 2020 16:05:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <newsletter@yunhios.com>) id 1k2GUH-0004cI-3I
 for v9fs-developer@lists.sourceforge.net; Sun, 02 Aug 2020 16:05:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jmue2VGgrzTKVL52K5JulahtCiGtxHNVizq83S+Xljc=; b=cwg5izpKqp+Pec1G1HW9W2Ua6n
 aX2DGYxdSA5B64xS40loSdDor1qJoXCJTS8U4ibgkEuKuFtlRx8UYgCWuK2OvQUFhJL9xWDz5GB+F
 4IWmHAJ5ghftbiPUeNMuJhSt5+3ZvhMOC1YUDVTlJJx6CLQzslCppAJgZNSxUS1QCWH4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Jmue2VGgrzTKVL52K5JulahtCiGtxHNVizq83S+Xljc=; b=R
 np8r75Chmtj7boxxt4M92SBrfpYErv91RpPY1khzTQvv8IIIGgJRmN0sMYL7rS7uWPFVCV96dS70O
 CuPaQC4AaYnRnn+o0yN8JPo24m21JagOirP7hucQZdwilD1+6WIIuKtI8D77FSISkIBNaMpRxQz3v
 tk1vi3ZFDGDv/zaM=;
Received: from [180.76.196.5] (helo=alibaba)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k2GUC-000QlF-QM
 for v9fs-developer@lists.sourceforge.net; Sun, 02 Aug 2020 16:05:25 +0000
Received: from 127.0.0.0 (unknown [111.229.82.84])
 by alibaba (Postfix) with ESMTPA id 4E9DA6426A
 for <v9fs-developer@lists.sourceforge.net>;
 Sun,  2 Aug 2020 23:54:41 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 alibaba 4E9DA6426A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yunhios.com;
 s=default; t=1596383681;
 bh=Jmue2VGgrzTKVL52K5JulahtCiGtxHNVizq83S+Xljc=;
 h=From:To:Subject:Date:From;
 b=Z2wMUVJ+D6Wh84/EpQyyEIKTAHewuQWBIUDrFggu2P62PFAi/lQZOU1ZEXJwbA+6J
 c5PIeeLxbdIFERB09aDul67+RXK0KnQYD4CHpfAiQekNn5vgWJooSZZU0qzv66jZH8
 sVIwqOArs51p8GuCrnY4iL3qoNC/XH2yIWbrFI4c=
Message-ID: <87814B5AD4642045628BF79E180A9C43@127.0.0.0>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Sun, 2 Aug 2020 23:54:31 +0800
MIME-Version: 1.0
X-Priority: 3
X-Mailer: dmDroid
X-Helo-Check: bad, Not FQDN (alibaba)
X-Spam-Score: 6.0 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: yunhios.com]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [180.76.196.5 listed in zen.spamhaus.org]
 0.1 URIBL_CSS_A Contains URL's A record listed in the Spamhaus CSS
 blocklist [URIs: yunhios.com]
 0.1 URIBL_CSS Contains an URL's NS IP listed in the Spamhaus CSS
 blocklist [URIs: yunhios.com]
 0.0 FSL_HELO_NON_FQDN_1    No description available.
 0.5 VA_HELO_CHECK          Host Used Invalid or Forged HELO/EHLO
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 HELO_NO_DOMAIN         Relay reports its domain incorrectly
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k2GUC-000QlF-QM
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5LiL6L29QVBQ57uR5a6a6LSm5Y+36YCBMTY=?=
 =?utf-8?b?5YWD5b2p6YeR?=
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
From: =?utf-8?B?5LiB5rKn?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?utf-8?B?5LiB5rKn?= <newsletter@yunhios.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoNCiANCi0tIA0KDQogDQoNCuS8mOaDoOa0u+WKqO+8mg0KDQox44CB5LiL6L29QVBQ57uR5a6a
6LSm5Y+36YCBMTblhYPlvanph5ENCjLjgIHmlrDkvJrlkZjms6jlhozmnIDpq5gyODg45YWD6aaW
5a2Y57qi5YipDQoz44CB6YCiNuW+l+aEj+e6ouWMhSDmnIDpq5jlj6/miqI4ODg4IOWFg++8geet
ieaCqOadpeaKou+8gQ0KNOOAgeaJi+acukFQUOavj+aXpeetvuWIsCDotZrlj5bnp6/liIbmjaLl
vanph5ENCjXjgIHmo4vniYzmuLjmiI855aSn5LyY5oOg5YWo572R54us5a62IOS4jeiuoei+k+i1
ouWkqeWkqeWPjeawtOmrmOi+vjMuMCUg5peg5LiK6ZmQDQo244CB5rS75Yqo5a6Y572R77yaaHR0
cDovL3pjd2Y5LmNvbS9yZWdpc3Rlcj9pZD04ODUxNzQzMA0KDQogDQoNCi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0NCg0KIA0K6YKu5Lu25Luj5Y+RIOWGheWuueS4jemZkCDogZTns7vpgq7n
rrHvvJppbmZvQHl1bmhpb3MuY29tICAgICAg5o6l5ZCE56eN5Z6D5Zy+6YKu5Lu25Luj5Y+R77yM
QkMvUVAvQ1AvR1AvRlAv562J562JIOaUr+aMgeaWh+Wtl++8jOWbvueJh++8jOmTvuaOpemDveWP
ryAg5Y+v5rWL6K+V77yM5Lu35qC877yaMzAvdyDogZTns7vpgq7nrrHvvJppbmZvQHl1bmhpb3Mu
Y29tICAg5rip6aao5o+Q56S677ya5aaC5pyJ5omT5omw77yM6K+35b+96KeG77yB5oSf6LCi5pSv
5oyBICAgICAgICAgICAgICAgICAgICAgICAgICDjgrvjg7Pjg43jg7Pjga7jgZPjgpPjgavjgaHj
ga8g44GC44Gq44Gf44Gu44Ki44Kr44Km44Oz44OI44Gv5Yip55So6KaP57SE44Gr6YGV5Y+N44GX
44Gm44GE44G+44GZIEFtYXpvbi5jby5qcCDjgYLjgarjgZ/jga7jgqLjgqvjgqbjg7Pjg4jjga8g
5pmC55qE44Gr44Gq44KK44G+44GZ54Sh5Yq5LiDnkIbnlLHvvJrjgYrmlK/miZXjgYTmg4XloLHj
gpLmm7TmlrDjgafjgY3jgb7jgZvjgpPjgafjgZfjgZ8g5YaN5bqm44Ki44Kr44Km44Oz44OI44KS
5pyJ5Yq544Gr44GZ44KL44Gr44Gv44CB5Lul5LiL44Gu44Oq44Oz44Kv44Go5omL6aCG44KS6ZaL
44GE44Gm44CB44GT44Gu44Ki44Kr44Km44Oz44OI44GM44GC44GqIOOBn+OBruOCouOCq+OCpuOD
s+ODiOOBp+OBguOCi+OBk+OBqOOCkueiuuiqjeOBl+OBpuOBj+OBoOOBleOBhOOAgu+8qO+8sOOB
r+OCreODoD/jg6njg7Pjg5Ljga7lhazlvI/vvKjvvLDjgajjgq3jg6A/44Op44Oz44OS44Kz44Os
44Kv44K344On44Oz44Gu77yo77yw44Gn44GZIA0KIA0KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZz
LWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
