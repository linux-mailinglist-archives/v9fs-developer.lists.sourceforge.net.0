Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6018D408B
	for <lists+v9fs-developer@lfdr.de>; Wed, 29 May 2024 23:53:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sCREn-0000QZ-4g;
	Wed, 29 May 2024 21:53:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <no-reply@sxamyl.com>) id 1sCREl-0000QT-CG
 for v9fs-developer@lists.sourceforge.net;
 Wed, 29 May 2024 21:53:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xCCW+Pq+TkhnOfeZdDG2K3DqL6C14rmJcIl1SX7tLOw=; b=d7kxU/KnQW7ufJ5U4mMZQ0FNen
 r17MQQZmewrt1TJc0rcv4J5ebDR6eLpT0F0lGhF2N2wTqcuV6rKZC7FOAXJtz1mrMA5iD0xct10o9
 /V8ebE3WQOyaDgtPwes9kpCEB75ZYeZNw8K2CjNZx3ZzXSKal//dT9mDXmS9aLHHqRh0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xCCW+Pq+TkhnOfeZdDG2K3DqL6C14rmJcIl1SX7tLOw=; b=h
 VbVw18eRI0rrQSUThDnlOq6gxeGyq1VkyOVOibAmhqT9MNTuLgUgIbWCKwH1hTUnIoJ0QCzV8Mo92
 Z59Ekp61kKbliiHSMVyPcW8g1nn7F1qunOV+aW0yTN5YepI9OpuQIIIvRUmTJtFlnQtFdoAZv61Ka
 SxVv+PBiiiGFrk9Q=;
Received: from [137.220.181.214] (helo=mail0.sxamyl.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sCREl-0006fA-Hs for v9fs-developer@lists.sourceforge.net;
 Wed, 29 May 2024 21:53:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=sxamyl.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@sxamyl.com;
 bh=xCCW+Pq+TkhnOfeZdDG2K3DqL6C14rmJcIl1SX7tLOw=;
 b=LL9Av2Zx5tfs5sppcYYBoC/pDZHMI2yBS557qq6ezBpL/oo/N2gQbF8m6pB5Vaqn2IWpQ7sEJshL
 uKD1aLhofomtP6GmxDq/BtRqNjEjYDk51ubJGpJ1EAdXzZdJSfBAqFTQa2XrcDm5bMcDHsUKzaNZ
 kRVHGHwS4KYIvkwJ93o=
From: =?utf-8?B?5qiqIOa1nCDpioAg6KGM?= <no-reply@sxamyl.com>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Thu, 30 May 2024 05:33:09 +0800
Message-ID: <LNFIJKMMIIJGDPCDDEHCFBIGGIDM.no-reply@sxamyl.com>
MIME-Version: 1.0
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  いつも横浜銀行をご利用いただきありがとうございます。
    別の国からの誰かによるあなたのアカウントへのログインの試みが検出されたため、あな�
    [...] 
 
 Content analysis details:   (3.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: cgqrzt.com]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: cgqrzt.com]
  5.0 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
             [Blocked - see <https://www.spamcop.net/bl.shtml?137.220.181.214>]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                           [137.220.181.214 listed in bl.score.senderscore.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [137.220.181.214 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  0.0 CTE_8BIT_MISMATCH      Header says 7bits but body disagrees
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sCREl-0006fA-Hs
Subject: [V9fs-developer] =?utf-8?b?5qiq5rWc6YqA6KGM44Gu6YeN6KaB44Gq44GK?=
	=?utf-8?b?55+l44KJ44Gb77yI5b+F44Ga44GU56K66KqN44GP44Gg44GV44GE77yJ?=
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

44GE44Gk44KC5qiq5rWc6YqA6KGM44KS44GU5Yip55So44GE44Gf44Gg44GN44GC44KK44GM44Go
44GG44GU44GW44GE44G+44GZ44CCCuWIpeOBruWbveOBi+OCieOBruiqsOOBi+OBq+OCiOOCi+OB
guOBquOBn+OBruOCouOCq+OCpuODs+ODiOOBuOOBruODreOCsOOCpOODs+OBruippuOBv+OBjOak
nOWHuuOBleOCjOOBn+OBn+OCgeOAgeOBguOBquOBn+OBruOCouOCq+OCpuODs+ODiOOBr+OCu+OC
reODpeODquODhuOCoyDjg53jg6rjgrfjg7zjgavjgojjgaPjgabjg5bjg63jg4Pjgq/jgZXjgozj
gb7jgZfjgZ/jgIIKCuODreOCsOOCpOODs+aXpeaZgjogMjAyNOW5tDXmnIgyOeaXpSAyMzo1OApJ
UOOCouODieODrOOCuTogMTczLjEyMC4xNDkuMzYK44OW44Op44Km44K244Gu44OQ44O844K444On
44OzOiBNb3ppbGxhLzUuMCAoTGludXg7IEFuZHJvaWQxMTsKMjIwMTExN1RMKUFwcGxlV2ViS2l0
LzUzNy4zNihLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzEwOS4wLjAuMCBNb2JpbGUgClNhZmFy
aS81MzcuMzYKCuOCouOCq+OCpuODs+ODiOOBuOOBrumHkemKreeahOaQjeWkseOCkumYsuOBkOOB
n+OCgeOAgeS4i+iomFVSTOOBi+OCieWwgueUqOOCteOCpOODiOOBq+OCouOCr+OCu+OCueOBhOOB
n+OBoOOBjeOBlOacrOS6uueiuuiqjeOBl+OBpuOBj+OBoOOBleOBhCAKCuKWvOacrOS6uueiuuiq
jQpodHRwczovL2NncXJ6dC5jb20vZWx2aXNhci5waHAKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQrmnKzjg6Hj
g7zjg6vjgYzjgZToh6rouqvlrpvjgafjgarjgYTloLTlkIjjgIHku5bjga7mlrnjgYzoqqTjgaPj
gablkIzjgZjjg6Hjg7zjg6vjgqLjg4njg6zjgrnjgpLnmbvpjLLjgZfjgZ/jgoLjga7jgajogIPj
gYjjgonjgozjgb7jgZnjgIIK6YWN5L+h5YGc5q2i44Gu44GK5omL57aa44GN44KS44GV44Gb44Gm
44GE44Gf44Gg44GN44G+44GZ44Gu44Gn44CB44Oh44O844Or5pys5paH44KS5YmK6Zmk44Gb44Ga
44CB5Lu25ZCN44KS44CM5a6b5YWI44Gu6ZaT6YGV44GE44CN44Go5L+u5q2j44Gu44GG44GI44CB
44GU6L+U5L+h44KS44GK6aGY44GE44GE44Gf44GX44G+44GZ44CCCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQrm
oKrlvI/kvJrnpL7mqKrmtZzpioDooYwgCumHkeiejeapn+mWouOCs+ODvOODie+8mjAxMzgK55m7
6Yyy6YeR6J6N5qmf6ZaiIOmWouadseiyoeWLmeWxgOmVt++8iOeZu+mHke+8ieesrDM25Y+3CuWK
oOWFpeWNlOS8miDml6XmnKzoqLzliLjmpa3ljZTkvJog5LiA6Iis56S+5Zuj5rOV5Lq66YeR6J6N
5YWI54mp5Y+W5byV5qWt5Y2U5LyaCkNvcHlyaWdodCAoQykgMjAyMyBUaGUgQmFuayBvZiBZb2tv
aGFtYSwgTHRkLiBBbGwgcmlnaHRzIHJlc2VydmVkLgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlm
cy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
