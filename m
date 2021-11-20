Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A8F458031
	for <lists+v9fs-developer@lfdr.de>; Sat, 20 Nov 2021 20:50:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1moWNC-0005NP-Id; Sat, 20 Nov 2021 19:50:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <info@viewsnet.jp>) id 1moWNB-0005NJ-KE
 for v9fs-developer@lists.sourceforge.net; Sat, 20 Nov 2021 19:50:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Subject:To:From:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MN8KrFY2k/zuevTI9QUG5QlE/88tP3ePm/p1ht9Mp0k=; b=iN1fa4HzaMarZjzUijk/JOqxd5
 XgNUqMTWOogBJLnPR7P/K6FjYTWm5nIZHTeGXkl8Ibp1C8NjMwV6MnUq8oDkpWfEOCGXiTJr4TfNc
 B4QAX2UrDN7j+/OiJmpsVSuuPeac3CCOrDoZ801coNdUshU8wiTnkQDjUALpQHYGN8wo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MN8KrFY2k/zuevTI9QUG5QlE/88tP3ePm/p1ht9Mp0k=; b=B
 1n3iqsd+xlESnwOC35DlN6B5E+jC8LgUWTcKzUrzrnozhu9HHU1tUR/KdqHFxs61AUm7aWvkqwXYn
 vJk/s44VMzgVmp2aGPyUF9setWsoDC0mLrJ/3gykCAvsJbAA/hXCyAqjH4AuKOVff3LSpKdg8J8Xu
 WxXHHNPCMzWi7rJ8=;
Received: from [117.50.173.236] (helo=viewsnet.jp)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1moWN8-000379-HG
 for v9fs-developer@lists.sourceforge.net; Sat, 20 Nov 2021 19:50:06 +0000
Message-ID: <20211121035002551688@viewsnet.jp>
From: "VIEWCARD" <info@viewsnet.jp>
To: <v9fs-developer@lists.sourceforge.net>
Date: Sun, 21 Nov 2021 03:49:49 +0800
MIME-Version: 1.0
X-mailer: Mtrlp 4
X-Spam-Score: 6.6 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  このたび、ご本人様のご利用かどうかを確認させていただきたいお取引がありましたので、誠に勝手ながら、カードのご利用を一部制限させていた�
    [...] 
 
 Content analysis details:   (6.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [117.50.173.236 listed in zen.spamhaus.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [117.50.173.236 listed in dnsbl-1.uceprotect.net]
  1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
                             https://senderscore.org/blocklistlookup/
                            [117.50.173.236 listed in bl.score.senderscore.com]
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1moWN8-000379-HG
Subject: [V9fs-developer] =?utf-8?b?44CQ6YeN6KaB44CR44OT44Ol44O844Kr44O8?=
 =?utf-8?b?44OJ44GU5Yip55So56K66KqN?=
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

44GT44Gu44Gf44Gz44CB44GU5pys5Lq65qeY44Gu44GU5Yip55So44GL44Gp44GG44GL44KS56K6
6KqN44GV44Gb44Gm44GE44Gf44Gg44GN44Gf44GE44GK5Y+W5byV44GM44GC44KK44G+44GX44Gf
44Gu44Gn44CB6Kqg44Gr5Yud5omL44Gq44GM44KJ44CB44Kr44O844OJ44Gu44GU5Yip55So44KS
5LiA6YOo5Yi26ZmQ44GV44Gb44Gm44GE44Gf44Gg44GN44CB44GU6YCj57Wh44GV44Gb44Gm44GE
44Gf44Gg44GN44G+44GX44Gf44CCDQrjgaTjgY3jgb7jgZfjgabjga/jgIHku6XkuIvjgbjjgqLj
gq/jgrvjgrnjga7kuIrjgIHjgqvjg7zjg4njga7jgZTliKnnlKjnorroqo3jgavjgZTljZTlipvj
gpLjgYrpoZjjgYToh7TjgZfjgb7jgZnjgIINCuOBiuWuouanmOOBq+OBr+OBlOi/t+aDkeOAgeOB
lOW/g+mFjeOCkuOBiuaOm+OBkeOBl+OAgeiqoOOBq+eUs+OBl+ios+OBlOOBluOBhOOBvuOBm+OC
k+OAgg0K5L2V5Y2S44GU55CG6Kej44GE44Gf44Gg44GN44Gf44GP44GK6aGY44GE55Sz44GX44GC
44GS44G+44GZ44CCDQrjgZTlm57nrZTjgpLjgYTjgZ/jgaDjgZHjgarjgYTloLTlkIjjgIHjgqvj
g7zjg4njga7jgZTliKnnlKjliLbpmZDjgYzntpnntprjgZXjgozjgovjgZPjgajjgoLjgZTjgZbj
gYTjgb7jgZnjga7jgafjgIHkuojjgoHjgZTkuobmib/kuIvjgZXjgYTjgIINCuKWvOOBlOWIqeeU
qOeiuuiqjeOBr+OBk+OBoeOCiQ0KaHR0cHM6Ly92aWV3c25ldF9qcC5ndWFuZ3pob3Utc2hhbmdo
YWkuY29tLz9fZ2E9ODA0NDczMDAxNC45MDQ5NjA1MzA0Ljk5NjA2NDg2NjEuNTU0NDUzNzk2Mi4y
ODA5MzUyNTg2LjgyMTQ3MTk5OTQuNDk2ODM0OTkwOS4wNzExODc5OTA0DQoNCuKAu+OBiuaJi+OC
guOBqOOBq1ZpZXfjgqvjg7zjg4njgpLjgZTnlKjmhI/jgY/jgaDjgZXjgYTjgIINCuKAu+OBiuaM
geOBoeOBruOCq+ODvOODieOBq+OCiOOBo+OBpuOBr+OAgeOCteODvOODk+OCueOCkuWIqeeUqOOB
p+OBjeOBquOBhOWgtOWQiOOBjOOBguOCiuOBvuOBmeOAgg0KKuOBlOazqOaEj+OBj+OBoOOBleOB
hCoNCuWkieabtOOBruOBiuaJi+e2muOBjeOBjOOBquOBhOWgtOWQiOOAgeW8iuekvuOBi+OCieOB
rumHjeimgeOBquOBiuefpeOCieOBm+OBjOWxiuOBi+OBquOBhOWgtOWQiOOBjOOBguOCiuOBvuOB
meOAgg0KDQrjgYrjgZfjgonjgZvjg6Hjg7zjg6vjgavjgaTjgYTjgaYuDQrjg5Pjg6Xjg7zjga7j
gYrjgZfjgonjgZvjg6Hjg7zjg6vphY3kv6HjgpLjgIzluIzmnJvjgZnjgovjgI3jgavoqK3lrprj
gZnjgovjgajjgIENCuWQhOeoruOCteODvOODk+OCueOChOOCreODo+ODs+ODmuODvOODs+OBquOB
qeOAgeOBiuODiOOCr+OBquaDheWgseOCkuOBiuWxiuOBkeOBhOOBn+OBl+OBvuOBmeOAgg0KPT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0K
5qCq5byP5Lya56S+44OT44Ol44O844Kr44O844OJDQrmnbHkuqzpg73lk4Hlt53ljLrlpKfltI4t
5LiB55uuNeeVqjHlj7flpKfltI7jgrvjg7Pjgr/jg7zjg5Pjg6vjgJIxNDEtODYwMeacrOODoeOD
vOODq+OBr+mAgeS/oeWwgueUqOOBp+OBmeOAgg0K6JGX5L2c5qip44Gv44GZ44G544Gm44CB5qCq
5byP5Lya56S+44OT44Ol44O844Kr44O844OJ44Gr5biw5bGe44GX44G+44GZ44CCDQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIg
bWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
